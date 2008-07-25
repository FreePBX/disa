<?php 
/* $Id */


// This is the hook for 'destinations'
function disa_destinations() {
	$results = disa_list();
	// return an associative array with destination and description
	if (isset($results)) {
		foreach($results as $result){
			$extens[] = array('destination' => 'disa,'.$result['disa_id'].',1', 'description' => $result['displayname']);
		}
		return $extens;
	} else {
		return null;
	}
}

function disa_getdest($exten) {
	return array('disa,'.$exten.',1');
}

function disa_getdestinfo($dest) {
	global $active_modules;

	if (substr(trim($dest),0,5) == 'disa,') {
		$exten = explode(',',$dest);
		$exten = $exten[1];
		$thisexten = disa_get($exten);
		if (empty($thisexten)) {
			return array();
		} else {
			//$type = isset($active_modules['announcement']['type'])?$active_modules['announcement']['type']:'setup';
			return array('description' => 'DISA : '.$thisexten['displayname'],
			             'edit_url' => 'config.php?display=disa&itemid='.urlencode($exten),
								  );
		}
	} else {
		return false;
	}
}

// This actually generates the dialplan
function disa_get_config($engine) {
	global $ext; 
	switch($engine) {
	case "asterisk":
		$disalist = disa_list();
		if(is_array($disalist)) {
			foreach($disalist as $item) {
				$nopass = false;
					
				// delete it incase there was one from before (of course if it was deleted???
				// this should all be done properly in class, see pinsets, but for now ...
				//
				$filename = "/etc/asterisk/disa-".$item['disa_id'].".conf";
				unlink($filename);
				if (isset($item['pin']) && !empty($item['pin']) && (strtolower($item['pin']) != 'no-password')) {
					// Create the disa-$id.conf file
					$fh = fopen($filename, "w+");
					$pinarr = explode(',' , $item['pin'] );
					if (count($pinarr) > 1) {
						$is_file = true;
						foreach($pinarr as $pin) {
							// Don't support remote MWI, too easy for users to break.
							fwrite($fh, "$pin\n");
						}
						fclose($fh);
						chmod($filename, 0660);
					} else {
						$is_file = false;
					}
				} else {
					$nopass = true;
				}
                                        
				$thisitem = disa_get(ltrim($item['disa_id']));
				// add dialplan

				if ($thisitem['needconf'] == 'CHECKED') {
					$ext->add('disa', $item['disa_id'], '', new ext_setvar('RESCOUNT', '1'));
					$ext->add('disa', $item['disa_id'], 'loop',  new ext_gotoif('$[ ${RESCOUNT} > 5]', 'end'));
					$ext->add('disa', $item['disa_id'], '',  new ext_read('RRES', 'press-1', '1', ',1,3'));
					$ext->add('disa', $item['disa_id'], '', new ext_setvar('RESCOUNT', '$[${RESCOUNT}+1]'));
					$ext->add('disa', $item['disa_id'], '', new ext_gotoif('$["x${RRES}"="x"]', 'loop'));
				}
				if (!$nopass) {
					if ($is_file) {
						$ext->add('disa', $item['disa_id'], '', new ext_authenticate('/etc/asterisk/disa-'.$item['disa_id'].'.conf'));
					} else {
						$ext->add('disa', $item['disa_id'], '', new ext_authenticate($item['pin']));
					}
				}
				$ext->add('disa', $item['disa_id'], '', new ext_setvar('_DISA', '"disa,'.$item['disa_id'].',newcall"'));
				$ext->add('disa', $item['disa_id'], 'newcall', new ext_setvar('_DISACONTEXT', $thisitem['context']));
				$ext->add('disa', $item['disa_id'], '', new ext_setvar('_KEEPCID', 'TRUE')); 
				if ($thisitem['hangup'] == 'CHECKED') {
					$ext->add('disa', $item['disa_id'], '', new ext_setvar('_HANGUP', 'Hg'));
				}
				$ext->add('disa', $item['disa_id'], '', new ext_setvar('TIMEOUT(digit)', $thisitem['digittimeout']));
				$ext->add('disa', $item['disa_id'], '', new ext_setvar('TIMEOUT(response)', $thisitem['resptimeout']));
					
				if ($item['cid']) {
					$ext->add('disa', $item['disa_id'], '', new ext_setvar('CALLERID(all)', $item['cid'])); 
				}
				$ext->add('disa', $item['disa_id'], '', new ext_disa('no-password,disa-dial'));
		
				//	$ext->add('disa', $item['disa_id'], 'end', new ext_hangup(''));
			}
		}
		break;
	}
}

function disa_list() {
	$results = sql("SELECT * FROM disa","getAll",DB_FETCHMODE_ASSOC);
	if(is_array($results)){
		foreach($results as $result){
			// check to see if we have a dept match for the current AMP User.
			if (!isset($results['deptname']) || checkDept($result['deptname'])){
				// return this item's dialplan destination, and the description
				$allowed[] = $result;
			}
		}
	}
	if (isset($allowed)) {
		return $allowed;
	} else {
		return null;
	}
}

function disa_get($id){
	//get all the variables for the meetme
	$results = sql("SELECT * FROM disa WHERE disa_id = '$id'","getRow",DB_FETCHMODE_ASSOC);
	return $results;
}

function disa_chk($post) {
	return true;
}

function disa_add($post) {
	if(!disa_chk($post)) {
		return null;
	}
	extract($post);
	if (!isset($needconf)) 
		$needconf = '';
		if(empty($displayname)) { 
			$displayname = "unnamed";
		}
		$results = sql("INSERT INTO disa (displayname,pin,cid,context,resptimeout,digittimeout,needconf,hangup) values (\"".str_replace("\"", "\"\"",$displayname)."\",\"".$pin."\",\"".str_replace("\"", "\"\"", $cid)."\",\"".$context."\", \"$resptimeout\", \"$digittimeout\", \"$needconf\", \"$hangup\")");
}

function disa_del($id) {
	$results = sql("DELETE FROM disa WHERE disa_id = \"$id\"","query");
	unlink("/etc/asterisk/disa-{$id}.conf");
}

function disa_edit($id, $post) {
	if (!disa_chk($post)) {
		return null;
	}
	extract($post);
	if (!isset($needconf)) {
		$needconf = '';
	}
	if(empty($displayname)) {
	 	$displayname = "unnamed";
	}
	$results = sql("UPDATE disa  set displayname = \"".str_replace("\"", "\"\"",$displayname)."\", pin = \"$pin\", cid = \"".str_replace("\"", "\"\"",$cid)."\", context = \"$context\", resptimeout = \"$resptimeout\", digittimeout = \"$digittimeout\", needconf = \"$needconf\", hangup = \"$hangup\" where disa_id = \"$id\"");
}
?>
