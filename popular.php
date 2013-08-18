<?php
/*
 *      бpopular.php
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


require_once ('scripts/config.php');
include_once ('scripts/php/common.php');

$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<head>
<title>Популярные магазины - UkrAmerica</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<meta name="keywords" content="каталог, купить, условия, доставка, оплата, доставка на Украину" />
	<meta name="description" content="Каталог популярных магазинов" />
	<link rel = "icon" href = "favicon.ico" type = "image/x-icon">
	<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon"> 
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/sizes.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>/css/colors.css" />
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="/css/ie.css" />
	<![endif]-->
	<script type="text/javascript" src="scripts/js/statistic.js"></script>
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
<div id="catalogContainer">

	<div id="content">
	<div class="mainTextLeft">
	 <?php loadPopulars($TQ,$ukamConfig_dbprefix); ?>
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
