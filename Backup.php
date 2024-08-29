<?php
namespace FreePBX\modules\Disa;
use FreePBX\modules\Backup as Base;
class Backup Extends Base\BackupBase{
  public function runBackup($id,$transaction){
    $configs = $this->FreePBX->Disa->listAll();
    foreach ($configs as $conf) {
      $conf['recording'] = $this->FreePBX->Disa->getRecording($conf['disa_id']);
    }
    $this->addDependency('callrecording');
    $this->addConfigs($configs);
  }
}