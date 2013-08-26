<?php
require_once("../scripts/config.php");
require_once("../scripts/php/CommClasses.php");
require_once("../scripts/php/html_headers.php");
require_once("../scripts/php/common.php");
session_start();

if (isset($_POST['name'])&&isset($_POST['pass'])){
	$passw = md5($_POST['pass']);
	$TQ = new TmhQuery ($ukamConfig_wUser,$ukamConfig_wPassword,$ukamConfig_dbName,"utf8",$ukamConfig_host);
	$TQ->q = "SELECT `name`, `pass`, `group` FROM `".$ukamConfig_dbprefix."users`"
	." WHERE `name`='".$_POST['name']."' AND `pass` = '".$passw."' LIMIT 1";
	if ($query = $TQ->exec()) { 
		$autoriz = true;
		$mhUser = mysql_fetch_assoc($query);
		$_SESSION['name'] = $_POST['name'];
		$_SESSION['pass'] = $_POST['pass'];
	}//if ($query = $TQ->exec())
}//if (isset($_POST['name'])&&isset($_POST['pass'])){
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<head>
<title>UkrAmerica - Админка</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<link rel = "icon" href = "<?php echo($ukamConfig_live_site);?>/favicon.ico" type = "image/x-icon" />
	<link rel = "shortcut icon" href = "<?php echo($ukamConfig_live_site);?>/favicon.ico" type = "image/x-icon" />
	<script type="text/javascript" src="<?php echo($ukamConfig_live_site);?>/scripts/js/common.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/sizes.css" />
</head>
<body>
<?php
if ($autoriz) {
	echo "Вы зашли как <strong>".$mhUser['name']."</strong><br/>";
	echo "<form name=\"mhPassword\">";
table(0);
tr();td_span(2,"center"); echo "Изменить пароль";
tr();td("right"); label("ops1","Старый пароль");
td();input("password","mhOldPass","ops1");
tr();td("right"); label("nps1","Новый пароль");
td();input("password","mhNewPass","nps1");
tr();td("right"); label("nps2","Подтверждение пароля");
td();input("password","mhConfPass","nps2");
tr();td_span("2","center");
echo "<input type=\"button\" name=\"mhConfButton\" value=\"Изменить\" onclick=\"sendNewPass('".$mhUser['name']."','".$ukamConfig_live_site."');\">";
etable();
	echo "</form>";
	br(1);
table(1);	
	tr();td_span(2,"center"); echo "Редактор Магазинов";
	//окошко выбора позиций
	tr();td("right");
	echo "<form name=\"mhItems\">";
	echo "<div id=\"catsHolderId\">";
	categoriesOut($TQ,$ukamConfig_dbprefix,$ukamConfig_live_site);
	echo "</div>";
	echo "</form>";
	//окошко редактирования позиций
	td("right");
	echo "<iframe id=\"mhItemIframe\" src=\"".$ukamConfig_live_site."/admin/dbDesigner.php?itemId=1\"></iframe>";
etable();	
	br(2);
	echo ("<a href=\"".$ukamConfig_live_site."\">Возврат на сайт</a>");
}//if ($autoriz) {
else echo "Вы не авторизованы";
?>
</body>
</html>
