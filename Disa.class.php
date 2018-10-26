<?php
namespace FreePBX\modules;
use PDO;
use BMO;
use FreePBX_Helpers;
class Disa extends FreePBX_Helpers implements BMO {
	const DEFAULTS = [
		'needconf' => '',
		'displayname' => 'unnamed',
		'keepcid' => 0,
		'pin' => '',
		'cid' => '',
		'context' => '',
		'resptimeout' => '',
		'digittimeout' => '',
		'hangup' => '',
	];
	
	public function __construct($freepbx = null){
		$this->FreePBX = $freepbx;
		$this->db = $freepbx->Database;
	}

	public function install() {}
	public function uninstall() {}
	public function doConfigPageInit($page) {
	  $action = isset($_REQUEST['action'])?$_REQUEST['action']:'';
	  $itemid = isset($_REQUEST['itemid'])?$_REQUEST['itemid']:'';
	  switch ($action) {
		case "add":
			$this->add($_POST);
				needreload();
		break;
		case "delete":
			$this->delete($itemid);
			needreload();
		break;
		case "edit":  //just delete and re-add
			$this->edit($itemid,$_POST);
			needreload();
		break;
	  }
	}
	
	public function setDatabase($pdo){
		$this->db = $pdo;
		return $this;
	}
	
	public function resetDatabase(){
		$this->db = $this->FreePBX->Database;
		return $this;
	}

	public function getActionBar($request) {
		$buttons = array();
		if (!isset($_GET['view'])){
			return $buttons;
		}
		switch($_GET['display']) {
			case 'disa':
				$buttons = array(
					'delete' => array(
						'name' => 'delete',
						'id' => 'delete',
						'value' => _('Delete')
					),
					'reset' => array(
						'name' => 'reset',
						'id' => 'reset',
						'value' => _('Reset')
					),
					'submit' => array(
						'name' => 'submit',
						'id' => 'submit',
						'value' => _('Submit')
					)
				);
				if (empty($request['itemid'])) {
					unset($buttons['delete']);
				}
			break;
		}
		return $buttons;
	}
	public function listAll() {
		$sql = 'SELECT * FROM disa';
		$stmt = $this->db->prepare($sql);
		$stmt->execute();
		$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
		if(is_array($results)){
			return $results;
		}
		return [];
	}

	/**
	 * Get DISA item
	 *
	 * @param int $id item id
	 * @return array Disa item or empty array
	 */
	public function get($id){
		$sql = 'SELECT * FROM disa WHERE disa_id = :id LIMIT 1';
		$stmt = $this->db->prepare($sql);
		$stmt->execute(array(':id' => $id));
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		if(is_array($result)){
			$result['recording'] = $this->getRecording($id);
			return $result;
		}
		return [];
	}

	/**
	 * Add DISA item
	 *
	 * @param array $itemArray settings array, typicaly the form POST see self::defaults
	 * @return int Item id;
	 */
	public function add($itemArray){
		$final = [];
		foreach (self::DEFAULTS as $key => $value) {
			$final[':'.$key] = isset($itemArray[$key])?$itemArray[$key]:$value;
		}
		
		$sql = "INSERT INTO disa (displayname,pin,cid,context,resptimeout,digittimeout,needconf,hangup,keepcid) VALUES (:displayname, :pin, :cid, :context, :resptimeout, :digittimeout, :needconf, :hangup, :keepcid)";
		$this->db->prepare($sql)
		 ->execute($final);
		$id = $this->db->lastInsertId('disa_id');
		$this->putRecording($id, $post['recording']);

		return $id;
	}

	/**
	 * Update DISA item
	 * @param int Item id
	 * @param array $itemArray settings array, typically the form post. see self::defaults
	 * @return object self
	 */
	public function edit($id, $itemArray){
		$final[':disa_id'] = $id;
		foreach (self::DEFAULTS as $key => $value) {
			$final[':' . $key] = isset($itemArray[$key]) ? $itemArray[$key] : $value;
		}

		$sql = "REPLACE INTO disa (disa_id, displayname,pin,cid,context,resptimeout,digittimeout,needconf,hangup,keepcid) VALUES (:disa_id, :displayname, :pin, :cid, :context, :resptimeout, :digittimeout, :needconf, :hangup, :keepcid)";
		$this->db->prepare($sql)
			->execute($final);
		$this->putRecording($id, $post['recording']);

		return $this;
	}

	/**
	 * Delete DISA item 
	 * @param integer $id
	 * @return object Self
	 */	
	public function delete($id){
		$sql = "DELETE FROM disa WHERE disa_id = :id";
		$this->db->prepare($sql)
			->execute(array(':id' => $id));
		@unlink($this->FreePBX->Config->get('ASTETCDIR') . '/disa-{$id}.conf');
		return $this;
	}

	/**
	 * Set the recording setting
	 *
	 * @param int $id
	 * @param string $recording recording setting
	 * @return object Self
	 */
	public function putRecording($id, $recording = 'dontcare'){
		$this->FreePBX->astman->database_put("DISA", $id, $recording);
		return $this;
	}

	/**
	 * Get the recording setting
	 *
	 * @param int $id
	 * @return string the setting or dontcare
	 */
	public function getRecording($id){
		if ($rec = $this->FreePBX->astman->database_get("DISA", $id)){
			return $rec;
		}
		return 'dontcare';
	}

	public function ajaxRequest($command, &$setting) {
		if($command === 'getJSON'){
			return true;
		}
		return false;
	}

	public function ajaxHandler(){
		if ('getJSON' === $_REQUEST['command'] && 'grid' === $_REQUEST['jdata']) {
			return array_values($this->listAll());
		}
		return false;
	}
	public function getRightNav($request) {
		if($request['view'] === 'form'){
			return load_view(__DIR__."/views/bootnav.php",array());
		}
		return '';
	}
	public function search($query, &$results) {
		$disas = $this->listAll();
		foreach($disas as $disa){
			$results[] = array("text" => sprintf(_("DISA: %s"), $disa['displayname']), "type" => "get", "dest" => "?display=disa&view=form&itemid=".$disa['disa_id']);
		}
	}
}
