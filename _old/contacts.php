<?php
/*
 *      безіменний.php
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


require_once ("scripts/config.php");
include_once ("scripts/php/common.php");

$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<head>
<title>Контакты - UkrAmerica</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<meta name="keywords" content="контакты, адрес, купить, условия, доставка, оплата, доставка на Украину" />
	<meta name="description" content="Контактная информация" />
	<link rel = "icon" href = "favicon.ico" type = "image/x-icon" />
	<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/sizes.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/colors.css" />
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="/css/ie.css" />
	<![endif]-->
</head>
<body>

<div id="wrapper">
<div id="catalogContainer">

	<div id="content">
	<h3>КОНТАКТЫ</h3>
	<span class = "contacts" >Наш телефон : <span style="color:green;">096 452 01 83</span> ( Татьяна )</span><br/><br/>
	<span class = "contacts" >Наша почта : <a href="mailto:ukramerica@gmail.com"><span style="color:green;">ukramerica@gmail.com</span></a></span><br/><br/>
	<div class ="spacerF">&nbsp;</div>
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
