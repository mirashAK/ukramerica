<?php
include_once ('CommClasses.php');
include_once ('../config.php');

//$_POST['obj_id'] = 3;
if (isset($_POST['obj_id'])) {
	$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `clics` FROM `".$ukamConfig_dbprefix."counter`"
	." WHERE `story_id` = '".$_POST['obj_id']."' LIMIT 1;";
	if ($query = $TQ->exec()){
		$result = mysql_fetch_assoc ($query);
		if (!$result ['clics']) $fields['clics'] = 1; else $fields['clics'] = $result ['clics']+1;
		$conditions['story_id'] = $_POST['obj_id'];
		$TQ->update ($ukamConfig_dbprefix."counter",$fields,$conditions,1,1);
	}
}//if (isset($_POST['obj_id'])) {
?>
