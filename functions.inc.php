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

// This actually generates the dialplan
function disa_get_config($engine) {
        global $ext; 
        switch($engine) {
                case "asterisk":
                        $disalist = disa_list();
                        if(is_array($disalist)) {
                                foreach($disalist as $item) {
					$nopass = false;
					
					if (isset($item['pin']) && !empty($item['pin']) && (strtolower($item['pin']) != 'no-password')) {
						// Create the disa-$id.conf file
						$filename = "/etc/asterisk/disa-".$item['disa_id'].".conf";
						$fh = fopen($filename, "w+");
						$pinarr = explode(',' , $item['pin'] );
						foreach($pinarr as $pin) {
						
							// Don't support remote MWI, too easy for users to break.
							fwrite($fh, "$pin|".$item['context']."|".$item['cid']."\n");
						}
						fclose($fh);
						chmod($filename, 0660);
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
					$ext->add('disa', $item['disa_id'], '', new ext_setvar('TIMEOUT(digit)', $thisitem['digittimeout']));
					$ext->add('disa', $item['disa_id'], '', new ext_setvar('TIMEOUT(response)', $thisitem['resptimeout']));
					
					if ($nopass) {
						$ext->add('disa', $item['disa_id'], '', new ext_disa('no-password|'.$item['context']));
					} else {
						$ext->add('disa', $item['disa_id'], '', new ext_playback('enter-password'));
						$ext->add('disa', $item['disa_id'], '', new ext_disa('/etc/asterisk/disa-'.$item['disa_id'].'.conf'));
					}
					
					$ext->add('disa', $item['disa_id'], 'end', new ext_hangup(''));
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
        if(!disa_chk($post))
                return null;
        extract($post);
	if (!isset($needconf)) 
		$needconf = '';
        if(empty($displayname)) $displayname = "unnamed";
        $results = sql("INSERT INTO disa (displayname,pin,cid,context,resptimeout,digittimeout,needconf) values (\"".str_replace("\"", "\"\"",$displayname)."\",\"".$pin."\",\"".str_replace("\"", "\"\"", $cid)."\",\"".$context."\", \"$resptimeout\", \"$digittimeout\", \"$needconf\")");
}

function disa_del($id) {
	$results = sql("DELETE FROM disa WHERE disa_id = \"$id\"","query");
	unlink("/etc/asterisk/disa-{$id}.conf");
}

function disa_edit($id, $post) {
	if (!disa_chk($post))
		return null;
	extract($post);
	if (!isset($needconf)) 
		$needconf = '';
        if(empty($displayname)) $displayname = "unnamed";
        $results = sql("UPDATE disa  set displayname = \"".str_replace("\"", "\"\"",$displayname)."\", pin = \"$pin\", cid = \"".str_replace("\"", "\"\"",$cid)."\", context = \"$context\", resptimeout = \"$resptimeout\", digittimeout = \"$digittimeout\", needconf = \"$needconf\" where disa_id = \"$id\"");
}
?>
