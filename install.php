<?php

global $db;

// Manage upgrade from DISA 1.0
// r2.0 Add Timeouts and add wait for confirmation
$sql = "SELECT digittimeout FROM disa";
$check = $db->getRow($sql, DB_FETCHMODE_ASSOC);
if(DB::IsError($check)) {
	// add new fields - Digit Timeout
	$sql = 'ALTER TABLE disa ADD COLUMN digittimeout INT DEFAULT "5"';
	$result = $db->query($sql);
	if(DB::IsError($result)) {
		die_freepbx($result->getDebugInfo());
	}
	// Response Timeout
	$sql = 'ALTER TABLE disa ADD COLUMN resptimeout INT DEFAULT "10"';
	$result = $db->query($sql);
	if(DB::IsError($result)) {
		die_freepbx($result->getDebugInfo());
	}
	$sql = 'ALTER TABLE disa ADD COLUMN needconf VARCHAR ( 10 )  DEFAULT ""';
	$result = $db->query($sql);
	if(DB::IsError($result)) {
		die_freepbx($result->getDebugInfo());
	}
}


?>
