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
<title>UkrAmerica - форум</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<link rel = "icon" href = "favicon.ico" type = "image/x-icon">
	<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"> 
	<link rel="stylesheet" type="text/css" href="/css/sizes.css" />
	<link rel="stylesheet" type="text/css" href="/css/colors.css" />
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="/css/ie.css" />
	<![endif]-->
</head>
<body>

<div id="wrapper">
<div id="catalogContainer">

	<div id="content">
	<img src="img/under-construction_2.gif" alt="Раздел в разработке" class="underConstrImage" />
	</div>
	<!--<div id="content">-->
	<div id="empty"></div>
</div>
<!--<div id="container">-->

<div id="header">

<a href="<?php echo($ukamConfig_live_site) ?>"><img src="img/ukramerica.png" alt="Ukramerica" class="logoImage" /></a>
<img src="img/america_watsmus_2.jpg" alt="Main Image" class="mainImage" />
<div class="menuItem" style="width:150px;"><a href="order.php">Сделать заказ</a></div>
<div class="menuItem" style="width:110px;"><a href="<?php echo($ukamConfig_live_site) ?>">Главная</a></div>
<div class="menuItem" style="width:200px;"><a href="popular.php">Популярные магазины</a></div>
<div class="menuItem" style="width:110px;"><a href="conditions.php">Условия</a></div>
<div class="menuItem" style="width:200px;"><a href="sizes.php">Таблицы размеров</a></div>
<div class="menuItem" style="width:100px;"><a href="contacts.php">Контакты</a></div>
<div class="menuItem" style="width:125px;"><a href="forum.php">Форум</a></div> 
    
</div>
<!--<div id="header">-->

<div id="left">

<?php

loadCategories ($TQ,$ukamConfig_dbprefix);

?>
</div>
<!--<div id="left">-->

</div>
<!--<div id="wrapper">-->


<div id="footer">
<a href="order.php">Сделать заказ</a>&nbsp;|&nbsp;<a href="<?php echo($ukamConfig_live_site) ?>">Главная</a>&nbsp;|&nbsp;<a href="popular.php">Популярные магазины</a>&nbsp;|&nbsp;<a href="sizes.php">Таблицы размеров</a>&nbsp;|&nbsp;<a href="contacts.php">Контакты</a>&nbsp;|&nbsp;<a href="forum.php">Форум</a><br/><br/>
<div class="sign">&copy; 2010 UkrAmerica Разработано <span class="artg">Art</span>G</div>
</div>
<!--<div id="footer">-->

</body>

</html>
