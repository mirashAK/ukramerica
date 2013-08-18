<?php
require_once("../scripts/config.php");
require_once("../scripts/php/CommClasses.php");
require_once("../scripts/php/html_headers.php");
require_once("../scripts/php/common.php");
session_start();

if (isset($_GET['itemId']))
	if (isset($_SESSION['name'])&&isset($_SESSION['pass'])){
	$passw = md5($_SESSION['pass']);
	//echo($ukamConfig_user);
	$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `id`,`name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_SESSION['name']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) {		
		writeItemBlank ($_GET['itemId'],$ukamConfig_live_site,$TQ,$ukamConfig_dbprefix);
	}//if ($query = $TQ->exec()) {		
}//if (isset($_GET['mhName'])&&isset($_GET['mhPass'])){
	
if (isset($_POST['action'])){
if ($_POST['action']=="changePass"){
	$passw = md5($_POST['mhPass1']);
	$TQ = new TmhQuery ($ukamConfig_wUser,$ukamConfig_wPassword,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `id`,`name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_POST['mhName']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) {
		$userResult = mysql_fetch_assoc ($query);
		$colsArray["pass"] = md5($_POST['mhPass2']);
		$condArray["id"] = $userResult["id"];
		if ($TQ->update ($ukamConfig_dbprefix."users",$colsArray,$condArray,1)) echo "Пароль успешно изменён";
	}//if ($query = $TQ->exec())
	else echo "Неправильно указан старый пароль";
}//if ($_POST['action'])=="changePass"){
	
if ($_POST['action']=="update")
if (isset($_SESSION['name'])&&isset($_SESSION['pass'])){
	$passw = md5($_SESSION['pass']);
	$TQ = new TmhQuery ($ukamConfig_wUser,$ukamConfig_wPassword,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `id`,`name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_SESSION['name']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) {
	$updateFld["name"]=$_POST['mhName'];
	$updateFld["url"]=$_POST['mhUrl'];
	$updateFld["discount"]=$_POST['mhDiscount'];
	$updateFld["description"]=$_POST['mhDescr'];
	if ($_FILES['imgFile']['size']>0){
		$imgFile = "../img/new_stories/".translitSA($_POST['mhName'],CONF_st_translit)."-".$_POST['itemId'].".jpg";
		if (file_exists($imgFile)) unlink($imgFile);
		img_resize($_FILES['imgFile']['tmp_name'], $imgFile, CONF_st_xDimension, CONF_st_yDimension, CONF_st_defaultBackColor);
		$updateFld["image"] = "img/new_stories/".translitSA($_POST['mhName'],CONF_st_translit)."-".$_POST['itemId'].".jpg";
	};//if ($_FILES['imgFile']['size']>0){
	$condFld["id"]=$_POST['itemId'];
	$TQ->update($ukamConfig_dbprefix."stories",$updateFld,$condFld,1);
	$TQ->q = "SELECT `id` FROM `".$ukamConfig_dbprefix."categories` WHERE `name`='".$_POST['cats']."' LIMIT 1";
	if ($query=$TQ->exec()) $result = mysql_fetch_assoc($query);
	$catUpdFld["cat_id"]=$result["id"];
	$catCondFld["stori_id"]=$_POST['itemId'];
	$TQ->update($ukamConfig_dbprefix."xref",$catUpdFld,$catCondFld,1);
	writeItemBlank ($_POST['itemId'],$ukamConfig_live_site,$TQ,$ukamConfig_dbprefix,true);
	//if ($_FILES['imgFile']['size']>0) echo ($_FILES['imgFile']['type']);
	}//if ($query = $TQ->exec()) {		
}//if (isset($_GET['mhName'])&&isset($_GET['mhPass'])){
	
if ($_POST['action']=="insert")	
if (isset($_SESSION['name'])&&isset($_SESSION['pass'])){
	$passw = md5($_SESSION['pass']);
	$TQ = new TmhQuery ($ukamConfig_wUser,$ukamConfig_wPassword,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `id`,`name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_SESSION['name']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) {	
	$insertFld["name"]=$_POST['mhName'];
	$insertFld["url"]=$_POST['mhUrl'];
	$insertFld["description"]=$_POST['mhDescr'];
	$insertFld["discount"]=$_POST['mhDiscount'];
	$id = $TQ->insert($ukamConfig_dbprefix."stories",$insertFld);
	unset($insertFld);
	if ($_FILES['imgFile']['size']>0){
		$imgFile = "../img/new_stories/".translitSA($_POST['mhName'],CONF_st_translit)."-".$_POST['itemId'].".jpg";
		if (file_exists($imgFile)) unlink($imgFile);
		img_resize($_FILES['imgFile']['tmp_name'], $imgFile, CONF_st_xDimension, CONF_st_yDimension, CONF_st_defaultBackColor);
		$insertFld["image"] = "img/new_stories/".translitSA($_POST['mhName'],CONF_st_translit)."-".$_POST['itemId'].".jpg";
		$condFld["id"]=$id;
		$TQ->update($ukamConfig_dbprefix."stories",$insertFld,$condFld,1);
		unset($insertFld);unset($condFld);
	};//if ($_FILES['imgFile']['size']>0){	
		$TQ->q = "SELECT `id` FROM `".$ukamConfig_dbprefix."categories` WHERE `name`='".$_POST['cats']."' LIMIT 1";
		if ($query=$TQ->exec()) $result = mysql_fetch_assoc($query);
			$insertFld["cat_id"]=$result["id"];
			$insertFld["stori_id"]=$id;
			$TQ->insert($ukamConfig_dbprefix."xref",$insertFld);
			unset($insertFld);
			$insertFld["story_id"]=$id;
			$insertFld["clics"]=0;
			$TQ->insert($ukamConfig_dbprefix."counter",$insertFld);
		writeItemBlank ($id,$ukamConfig_live_site,$TQ,$ukamConfig_dbprefix,true);
	};//if ($query = $TQ->exec()) {	
}//if (isset($_SESSION['name'])&&isset($_SESSION['pass'])){
	
if ($_POST['action']=="delete")	
if (isset($_SESSION['name'])&&isset($_SESSION['pass'])&&isset($_POST['itemId'])){
	$passw = md5($_SESSION['pass']);
	$TQ = new TmhQuery ($ukamConfig_wUser,$ukamConfig_wPassword,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `id`,`name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_SESSION['name']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) {
		$TQ->q = "DELETE FROM `".$ukamConfig_dbprefix."stories` WHERE `id`='".$_POST['itemId']."' LIMIT 1";
		$TQ->delete();
		$TQ->q = "DELETE FROM `".$ukamConfig_dbprefix."xref` WHERE `stori_id`='".$_POST['itemId']."'";
		$TQ->delete();
		$TQ->q = "DELETE FROM `".$ukamConfig_dbprefix."counter` WHERE `story_id`='".$_POST['itemId']."' LIMIT 1";
		$TQ->delete();
		writeItemBlank ("1",$ukamConfig_live_site,$TQ,$ukamConfig_dbprefix,true);
	}//if ($query = $TQ->exec()) {
}//	if (isset($_SESSION['name'])&&isset($_SESSION['pass'])){
	
if ($_POST['action']=="setActive")	
if (isset($_SESSION['name'])&&isset($_SESSION['pass'])&&isset($_POST['itemId'])){
	$passw = md5($_SESSION['pass']);
	$TQ = new TmhQuery ($ukamConfig_wUser,$ukamConfig_wPassword,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `id`,`name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_SESSION['name']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) {
		categoriesOut($TQ,$ukamConfig_dbprefix,$ukamConfig_live_site,$_POST['itemId']);
	}//if ($query = $TQ->exec()) {
}//	if (isset($_SESSION['name'])&&isset($_SESSION['pass'])){	
	
}//if (isset($_POST['action']))
?>
