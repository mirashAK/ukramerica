<?php
/*
 *      order.php
 *      
 *      Copyright 2010 Aleksandr <mirash@mirash-dell>
 *      
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *      
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *      
 *      You should have received a copy of the GNU General Public License
 *      along with this program; if not, write to the Free Software
 *      Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 *      MA 02110-1301, USA.
 */

error_reporting(E_ALL);
require_once ("scripts/config.php");
include_once ("scripts/php/common.php");
$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);
$cryptinstall="scripts/captcha/cryptographp.fct.php";
include $cryptinstall;
$status = 0;
	if (isset($_POST['code']))
	 if (chk_crypt($_POST['code'])) $status = 1; else $status = 2;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<head>
<title>Сделать заказ - UkrAmerica</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<link rel = "icon" href = "favicon.ico" type = "image/x-icon" />
	<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/sizes.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/colors.css" />
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="/css/ie.css" />
	<![endif]-->
	<script type="text/JavaScript">
    function check()
	{
	var errors = 0;
	var errorstext="Заполнены не все обязательные поля!";

	if (document.getElementById('info_2').value.length == 0) errors=1;
	if (document.getElementById('info_4').value.length == 0) errors=1;
	if (document.getElementById('info_6').value.length == 0) errors=1;
	if (document.getElementById('info_7').value.length == 0) errors=1;
	if (document.getElementById('info_9').value.length == 0) errors=1;
	if (document.getElementById('code_input').value.length == 0) errors=1;
	if (errors==0)
		{
		document.getElementById('mh_sendform').submit();
		}
	else
		alert(errorstext);
	}
</script>

</head>
<body>

<div id="wrapper">
<div id="catalogContainer">

	<div id="content">
	<div class="mainTextLeft">
	<?php
	if (($status===0)||($status===2)){
	echo("<form action=\"order.php?".SID."\" method=\"post\" id=\"mh_sendform\">");
	echo("<table>\n");
	echo "<tr><td>Имя<b style=\"font-size:15px; color:Red;\">*</b>:</td><td><input id=\"info_2\" type=\"text\" name=\"mailform_info_2\" value=\"".(isset($_POST['mailform_info_2'])?($_POST['mailform_info_2']):"")."\" /></td></tr><tr><td>Фамилия<b style=\"font-size:15px; color:Red;\">*</b>:</td><td><input id=\"info_4\" type=\"text\" name=\"mailform_info_4\" value=\"".(isset($_POST['mailform_info_4'])?($_POST['mailform_info_4']):"")."\" /></td></tr><tr><td>Отчество:</td><td><input id=\"info_5\" type=\"text\" name=\"mailform_info_5\" value=\"".(isset($_POST['mailform_info_5'])?($_POST['mailform_info_5']):"")."\" /></td></tr><tr><td>Контактный телефон:<b style=\"font-size:15px; color:Red;\">*</b>:</td><td><input id=\"info_6\" type=\"text\" name=\"mailform_info_6\" value=\"".(isset($_POST['mailform_info_6'])?($_POST['mailform_info_6']):"")."\" /></td></tr><tr><td>E-mail:<b style=\"font-size:15px; color:Red;\">*</b>:</td><td><input id=\"info_7\" type=\"text\" name=\"mailform_info_7\" value=\"".(isset($_POST['mailform_info_7'])?($_POST['mailform_info_7']):"")."\" /></td></tr><tr><td colspan=\"2\">Ниже введите наименования товаров которые Вы хотите заказать, и название магазина</td></tr><tr><td>Заказ<b style=\"font-size:15px; color:Red;\">*</b>:</td><td><textarea id=\"info_9\" name=\"mailform_info_9\" cols=\"60\" rows=\"10\">".(isset($_POST['mailform_info_9'])?($_POST['mailform_info_9']):"")."</textarea></td></tr>";
	
		echo("<tr><td colspan=\"2\">");
		dsp_crypt(0,1);
		echo("</td></tr>");
		echo("<tr><td colspan=\"2\">Введите код с картинки <b style=\"font-size:15px; color:Red;\">*</b><br/><input type=\"text\" name=\"code\" id=\"code_input\"></td></tr>");
		echo("<tr><td colspan=\"2\"><input type=\"button\" onclick=\"check();\" value=\"Отправить\"></td></tr>");
	echo("</table></form><br/>");
	}
	if ($status===1){
     echo "<h2>Спасибо!<br />Ваш заказ отправлен менеджеру</h2>" ;
     //if (isset($_POST['code']))
     echo "<div class=\"spacer\" style=\height:500px;\"></div>";
     
    $to      = $ukamConfig_orderEmail;
	$subject = 'the order';
	/*$headers = 'MIME-Version: 1.0' . "\n" . 'Content-type: text/plain; charset=UTF-8'.
	'From: admin@kulykov.litehosting.org.ua' . "\r\n" .
    'Reply-To: admin@kulykov.litehosting.org.ua' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();*/
    $message = "Имя ".($_POST['mailform_info_2'])."\n"
			."Фамилия ".($_POST['mailform_info_4'])."\n"
			."Отчество ".($_POST['mailform_info_5'])."\n"
			."Контактный телефон ".($_POST['mailform_info_6'])."\n"
			."E-mail ".($_POST['mailform_info_7'])."\n"
			."Hаименования товаров \n"
			.($_POST['mailform_info_9'])."\n";
			//echo ($message."<br/>");
			////echo ($headers."<br/>");
			//echo ($to."<br/>");
	$from = "admin@ukramerica.com";
	mail_utf8($to, $subject, $message, $from);
     
     }
     if ($status===2) echo "<a><font color='#FF0000'>=> Ошибка, неправильно введён код</font></a>" ;
     ?>
    </div>
	<!--<div class="mainTextLeft">-->
	</div>
	<!--<div id="content">-->
	<div id="empty"></div>
</div>
<!--<div id="container">-->

<div id="header">

<a href="<?php echo($ukamConfig_live_site) ?>"><img src="img/ukramerica.png" alt="Ukramerica" class="logoImage" /></a>
<img src="img/america_watsmus_2.jpg" alt="Main Image" class="mainImage" />
<?php loadHTMLSnippet('mainMenu'); ?>
</div><!--<div id="header">-->

<div id="left">

<?php

loadCategories ($TQ,$ukamConfig_dbprefix);

?>
</div>
<!--<div id="left">-->

</div>
<!--<div id="wrapper">-->

<div id="footer">
<?php loadHTMLSnippet('bottomMenu');  ?>
<?php loadHTMLSnippet('banners');  ?>
</div><!--<div id="footer">-->

</body>

</html>
