<?php
/*
 *      sizes.php
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
<title>Таблицы соответствия Американских размеров Украинским - UkrAmerica</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<meta name="keywords" content="одежда, обувь, нижнее бельё, купить, таблица соответствия" />
	<meta name="description" content="Таблицы соответствия размеров одежды в Америке, Европе и Украине" />
	<link rel = "icon" href = "favicon.ico" type = "image/x-icon" />
	<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/sizes.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/colors.css" />
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/ie.css" />
	<![endif]-->
</head>
<body>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-16421909-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<div id="wrapper">
<div id="container">

	<div id="content">
	<div class="mainText">
	<h4 style="text-transform: uppercase;">Для просмотра таблиц воспользуйтесь меню справа</h4>
		<img src="img/sizes_2.jpg" alt="Center Image" class="sizesImage" />
	</div>
	<!--<div class="mainText">-->
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


<div id="right">
<ul id="menuList">
<li><a href="womans_underwear.php">Женское нижнее бельё</a></li>
<li><a href="mens_underwear.php">Мужское нижнее бельё</a></li>
<li><a href="womans_wear.php">Женская одежда</a></li></li>
<li><a href="mens_wear.php">Мужская одежда</a></li></li>
<li><a href="sizes_footwear.php">Размеры обуви</a></li></li>
</ul>
</div>
<!--<div id="right">-->
<!--<div id="right">-->

</div>
<!--<div id="wrapper">-->

<div id="footer">
<?php loadHTMLSnippet('bottomMenu');  ?>
<?php loadHTMLSnippet('banners');  ?>
</div><!--<div id="footer">-->
</body>

</html>
