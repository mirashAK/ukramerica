<?php
include_once ('CommClasses.php');
include_once ('common.php');
include_once ('../config.php');

if (isset($_POST['method'])) {
header("Content-type: text/html; charset=utf-8");
	$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	if ($_POST['method']=="name"){
		$TQ->q = "SELECT t1.name, t1.url, t1.image, t1.description, t2.stori_id, t2.cat_id, t3.name AS catName"
		." FROM `".$ukamConfig_dbprefix."stories` AS t1, `".$ukamConfig_dbprefix."xref` AS t2, `".$ukamConfig_dbprefix."categories` AS t3"
		." WHERE t1.id=t2.stori_id AND t2.cat_id=t3.id AND t1.name LIKE '%".$_POST['searchString']."%' ORDER BY t2.cat_id";
		
	}
	if ($_POST['method']=="desc"){
		$TQ->q = "SELECT t1.name, t1.url, t1.image, t1.description, t2.stori_id, t2.cat_id, t3.name AS catName"
		." FROM `".$ukamConfig_dbprefix."stories` AS t1, `".$ukamConfig_dbprefix."xref` AS t2, `".$ukamConfig_dbprefix."categories` AS t3"
		." WHERE t1.id=t2.stori_id AND t2.cat_id=t3.id AND t1.description LIKE '%".$_POST['searchString']."%' ORDER BY t2.cat_id";
	}
	if ($query = $TQ->exec()){
	$curCatName = null;
	$count = mysql_num_rows($query);
	echo ("<h3>Найдено ".$count." совпадений: </h2>");
	while ($result = mysql_fetch_assoc($query)){
	if (isset($curCatName)){
		if (strpos($result["catName"],$curCatName)===false){
			echo ("</ul>\n");
			echo ("<h2 style=\"text-transform: uppercase; text-align:center;\">".$result["catName"]."</h2>");
			echo ("<ul class=\"storList\">");
		}
	} else {
		echo ("<h2 style=\"text-transform: uppercase; text-align:center;\">".$result["catName"]."</h2>");
		echo ("<ul class=\"storList\">");
			}
		$curCatName = $result["catName"];
	formStoriCell ($result);
	};//while ($result = mysql_fetch_assoc($query)){
	echo ("</ul>\n");
	
	}//if ($query = $TQ->exec(1)){
	else echo "<h3>Совпадений не найдено</h2>";
	//echo htmlspecialchars_decode($_POST['searchString']);
	//echo (" > ");
}//if (isset($_POST['obj_id'])) {
?>
