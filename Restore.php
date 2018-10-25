<?php
namespace FreePBX\modules\Disa;
use FreePBX\modules\Backup as Base;
class Restore Extends Base\RestoreBase{
	public function runRestore($jobid){
		$configs = reset($this->getConfigs());
		foreach ($configs as $item) {
				$id = $item['disa_id'];
				$this->FreePBX->Disa->edit($id, $item);
		}
		return $this;
	}
	public function processLegacy($pdo, $data, $tables, $unknownTables, $tmpfiledir){
		$tables = array_flip($tables + $unknownTables);
		if (!isset($tables['disa'])) {
			return $this;
		}
		$disa = $this->FreePBX->Disa;
		$disa->setDatabase($pdo);
		$configs = $disa->listAll();
		$disa->resetDatabase();
		foreach ($configs as $item) {
			$id = $item['disa_id'];
			$disa->edit($id, $item);
		}
		return $this;
	}
}