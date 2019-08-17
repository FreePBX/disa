<?php
namespace FreePBX\modules\Disa;
use FreePBX\modules\Backup as Base;
class Restore Extends Base\RestoreBase{
	public function runRestore(){
		$configs = $this->getConfigs();
		foreach ($configs as $item) {
				$id = $item['disa_id'];
				$this->FreePBX->Disa->edit($id, $item);
		}
		return $this;
	}
	public function processLegacy($pdo, $data, $tables, $unknownTables){
		$this->restoreLegacyDatabase($pdo);
	}
}
