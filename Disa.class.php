<?php
namespace FreePBX\modules;

class Disa implements \BMO {
	public function __construct($freepbx = null) {
		if ($freepbx == null) {
			throw new Exception("Not given a FreePBX Object");
		}
		$this->FreePBX = $freepbx;
		$this->db = $freepbx->Database;
	}
    public function install() {}
    public function uninstall() {}
    public function backup() {}
    public function restore($backup) {}
    public function doConfigPageInit($page) {
      $action = isset($_REQUEST['action'])?$_REQUEST['action']:'';
      $itemid = isset($_REQUEST['itemid'])?$_REQUEST['itemid']:'';
      switch ($action) {
      	case "add":
      		$_REQUEST['itemid'] = disa_add($_POST);
      		needreload();
      	break;
      	case "delete":
      		$oldItem = disa_get($itemid);
      		disa_del($itemid);
      		needreload();
      	break;
      	case "edit":  //just delete and re-add
      		disa_edit($itemid,$_POST);
          $_REQUEST['itemid'] = $itemid;
      		needreload();
      	break;
      }
    }
	public function getActionBar($request) {
		$buttons = array();
		switch($request['display']) {
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
        if(!isset($request['view'])){
          $buttons = array();
        }
			break;
		}
		return $buttons;
	}
  public function listAll() {
    $dbh = $this->db;
    $sql = 'SELECT * FROM disa';
    $stmt = $dbh->prepare($sql);
    $stmt->execute();
    $results = $stmt->fetchAll(\PDO::FETCH_ASSOC);
  	if(is_array($results)){
  		return $results;
  	}
  	return array();
  }
  public function ajaxRequest($req, &$setting) {
    switch ($req) {
      case 'getJSON':
        return true;
      break;
      default:
        return false;
      break;
    }
  }
  public function ajaxHandler(){
    switch ($_REQUEST['command']) {
      case 'getJSON':
        switch ($_REQUEST['jdata']) {
          case 'grid':
            return array_values($this->listAll());
          break;
          default:
            return false;
          break;
        }
      break;
      default:
        return false;
      break;
    }
  }
}
