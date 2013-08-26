<?php
/*
 *      index.php
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
require_once ("scripts/php/common.php");

$TQ = new TmhQuery ($ukamConfig_user,$ukamConfig_password,$ukamConfig_dbName,"utf8",$ukamConfig_host);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">

<head>
<title>UkrAmerica - Продажа товаров популярных магазинов Америки с доставкой по Украине</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<meta name="keywords" content="Купить товары из Америки, магазины Америки, каталог товаров из Америки, интернет магазин одежды, купить одежду из Америки, каталог одежды, доставка по Украине, купить, доставка, одежда, обувь, широкий выбор, заказать за рубежом, нижнее бельё, книги, джинсы, парфюмерия, купить, каталог, магазины в Америке, доставка" />
	<meta name="description" content="Титульная страница каталога американских магазинов. Продажа товаров популярных магазинов Америки с доставкой по Украине." />
	<link rel = "icon" href = "favicon.ico" type = "image/x-icon" />
	<link rel = "shortcut icon" href = "favicon.ico" type = "image/x-icon" /> 
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>css/sizes.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>css/colors.css" />
	<!--[if lte IE 6]>
	<link rel="stylesheet" type="text/css" href="<?php echo($ukamConfig_live_site) ?>css/ie.css" />
	<![endif]-->
	<script type="text/javascript" src="scripts/js/statistic.js"></script>
	<script type="text/javascript" src="scripts/js/jquery.min.js"></script>
	<script type="text/javascript" src="scripts/js/jcarousellite.js"></script>
	<script type="text/javascript" src="scripts/js/common.js"></script>
</head>
<body onload="createSpinner();createHorSpinner();">

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
<div id="mainContainer">

	<div id="content">
	<img src="img/center_3.jpg" alt="Center Image" class="centerImage" />
	
	<div class="aboutCont">
	<h4>О КОМПАНИИ</h4>
<p>Компания UkrAmerica предлагает широкий спектр услуг по покупке и доставке товаров из магазинов США. 
Мы работаем в интересах покупателя, а не продавца, что позволяет нам выбирать наиболее выгодные 
цены и условия доставки.</p><br/>
Нашими  клиентами являются  жители всей Украины, которые хотели бы иметь возможность 
приобретать недорогие, эксклюзивные, модные вещи высокого качества, изготовленные для 
американского потребителя в соответствии с требованиями и стандартами США. Как результат, 
даже с учетом доставки и стоимости посреднических услуг, такая покупка позволяет Вам экономить 
немалые суммы.
<p>Мы работаем с 2005 года, но за этот относительно короткий период времени сумели создать хорошую 
клиентскую базу, и прочную репутацию. Мы работаем индивидуально с каждым клиентом и стараемся 
соответствовать самым высоким стандартам в своей работе. Нам приятно заниматься таким полезным 
и нужным делом, и радость наших клиентов при получении своих посылок является подтверждением 
этому.</p>
	</div>
	<div class="aboutCont">
	<h4>ШИРОКИЙ ВЫБОР И ОТЛИЧНОЕ КАЧЕСТВО</h4>
<p>Компания UkrAmerica предлагает Вам уникальную возможность осуществлять покупки в лучших и всемирно известных американских магазинах. Для Вашего удобства предлагаем специально подготовленный перечень сайтов американских магазинов, где Вы можете приобрести красивую, недорогую и качественную одежду для женщин и мужчин, для детей и молодежи, нижнее белье, обувь, аксессуары, сумки, бижутерию, косметику и товары для здоровья, товары для дома, 
спортивные товары, детские игрушки, последние книжные новинки на английском языке, а также любые другие товары из Америки. Все американские товары – это высокое качество, гарантированное жесткой американской конкуренцией между производителями и строгими законами по защите прав потребителя. А благодаря конкуренции американские товары еще и 
значительно дешевле европейских аналогов. Сделав покупку, Вы в полной мере сможете ощутить преимущества настоящего американского шопинга, находясь за тысячи миль от Нью-Йорка, Сан-Франциско и Лос-Анджелеса. Чтобы совершить выгодную покупку, достаточно выбрать товар в одном из рекомендованных нами магазинов (смотрите соответствующий раздел нашего сайта).</p><br/>
<p>Самым сложным здесь может показаться подбор американских размеров – для этого на нашем сайте есть таблица размеров. тут мы гарантируем профессиональную консультацию. Но преимущества американских магазинов бесспорны – разнообразие брендов; широчайший ассортимент товаров, обновляющийся практически ежедневно – вы можете покупать товары из самых последних коллекций; скидки и распродажи действуют круглый год.</p><br/>
<p>Если при выборе товара в магазинах у Вас возникнут трудности с английским языком, 
без колебаний обращайтесь к нам: ukramerica[at]gmail.com и мы поможем Вам в течение 
нескольких часов. </p>
	</div>
	<div id="clearer"></div>
	</div>
	<!--<div id="content">-->
	<div id="empty"></div>
</div>
<!--<div id="container">-->

<div id="mainHeader">

<a href="<?php echo($ukamConfig_live_site)?>"><img src="img/ukramerica.png" alt="Ukramerica" class="logoImage" /></a>
<img src="img/america_watsmus_2.jpg" alt="Main Image" class="mainImage" />
<div class="menuItem" style="width:111px;"><a href="<?php echo($ukamConfig_live_site) ?>">Главная</a></div>
<div class="menuItem" style="width:146px;"><a href="order.php" rel="nofollow">Сделать заказ</a></div>
<div class="menuItem" style="width:211px;"><a href="popular.php">Популярные магазины</a></div>
<div class="menuItem" style="width:111px;"><a href="conditions.php">Условия</a></div>
<div class="menuItem" style="width:111px;"><a href="search.php">Поиск</a></div>
<div class="menuItem" style="width:181px;"><a href="sizes.php">Таблицы размеров</a></div>
<div class="menuItem" style="width:124px;"><a href="contacts.php">Контакты</a></div>

<!--<center><h3 class="popHorCaption">Скидки !!!</h3></center>-->
<div id="horSpinHolder">
<img src="img/left.gif" class="nextHorBtn" alt="next"/>
<div class="popHorContainer">
	<?php loadSmallDiscounts($TQ,$ukamConfig_dbprefix); ?>
</div><!--<div class="popHorContainer">-->
<img src="img/right.gif" class="prevHorBtn" alt="prev"/>
</div><!--<div id="horSpinHolder">-->
</div><!--<div id="header">-->

<div id="mainRight">
<h3 class="popCaption">Популярные магазины:</h3>
<div class="popContainer">
	<?php loadSmallPopulars($TQ,$ukamConfig_dbprefix); ?>
</div>
<div class="btnHolder">
<img src="img/next.gif" class="nextBtn" alt="next" />
<img src="img/prev.gif" class="prevBtn" alt="prev"/>
</div>
<!--<div class="popContainer">-->
<br/>
<div class="bkmz">
<center>
 <span class="bookmarks">Добавить в закладки:</span>
</center><br/>
 <ul>
  <li><a class="google" rel="nofollow" title="В закладки на Google" href="http://www.google.com/bookmarks/mark?op=edit&amp;bkmk=<?php the_permalink() ?>&amp;title=<?php the_title(); ?>"><span>google.com</span></a></li>
  <li><a class="yandex" rel="nofollow" title="В закладки на Яндексе" href="http://zakladki.yandex.ru/userarea/links/addfromfav.asp?bAddLink_x=1&amp;lurl=<?php the_permalink() ?>&amp;lname=<?php the_title(); ?>"><span>yandex.ru</span></a></li>
  <li><a class="bobr" rel="nofollow" title="Забобрить" href="http://bobrdobr.ru/addext.html?url=<?php the_permalink() ?>&amp;title=<?php the_title(); ?>"><span>bobrdobr.ru</span></a></li>
  <li><a class="memori" rel="nofollow" title="В Memori.ru" href="http://memori.ru/link/?sm=1&amp;u_data[url]=<?php the_permalink() ?>&amp;u_data[name]=<?php the_title(); ?>"><span>memori.ru</span></a></li>
  <li><a class="moemesto" rel="nofollow" title="Добавить в Мое Место" href="http://moemesto.ru/post.php?url=<?php the_permalink() ?>&amp;title=<?php the_title(); ?>"><span>moemesto.ru</span></a></li>
  <li><a class="linkstore" rel="nofollow" title="В закладки на Linkstore.ru" href="http://www.linkstore.ru/servlet/LinkStore?a=add&amp;url=<?php the_permalink() ?>&amp;title=<?php the_title(); ?>"><span>linkstore.ru</span></a></li>
<li><a class="rumarkz" rel="nofollow" title="В закладки на Rumarkz.ru" href="http://rumarkz.ru/bookmarks/?action=add&amp;popup=1&amp;address=<?php the_permalink() ?>&amp;title=<?php the_title(); ?>"><span>rumarkz.ru</span></a></li>
  <li><a class="stozakl" title="Добавить в 100закладок" href="http://www.100zakladok.ru/save/?bmurl=<?php the_permalink() ?>&amp;bmtitle=<?php the_title(); ?>"><span>100zakladok.ru</span></a></li>
  <li><a class="delicous" rel="nofollow" title="В закладки на Del.icio.us" href="http://del.icio.us/post?url=<?php the_permalink() ?>&amp;title=<?php the_title(); ?>"><span>del.icio.us</span></a></li>
  <li><a class="techno" rel="nofollow" title="В закладки на Technorati.com" href="http://www.technorati.com/faves?add=<?php the_permalink() ?>"><span>technorati.com</span></a></li>
 </ul>
</div>

</div>
<!--<div id="right">-->

<div id="mainLeft">

<?php

loadCategories ($TQ,$ukamConfig_dbprefix);

?>
</div>
<!--<div id="left">-->

</div>
<!--<div id="wrapper">-->


<div id="footer">
<a href="<?php echo($ukamConfig_live_site) ?>">Главная</a>&nbsp;|&nbsp;<a href="order.php" rel="nofollow">Сделать заказ</a>&nbsp;|&nbsp;<a href="popular.php">Популярные магазины</a>&nbsp;|&nbsp;<a href="sizes.php">Таблицы размеров</a>&nbsp;|&nbsp;<a href="search.php">Поиск</a>&nbsp;|&nbsp;<a href="contacts.php">Контакты</a>&nbsp;|&nbsp;<a href="admin/index.php" rel="nofollow">Администратору</a><br/>
<div class="spacer"></div>


<!--bigmir)net TOP 100-->
<script type="text/javascript" language="javascript"><!--
function BM_Draw(oBM_STAT){
document.write('<table cellpadding="0" cellspacing="0" border="0" style="display:inline;margin-right:4px;"><tr><td><div style="margin:0px;padding:0px;font-size:1px;width:88px;"><div style="background:url(\'img/banners/b60_top.gif\') no-repeat bottom;">&nbsp;</div><div style="font:10px Tahoma;background:url(\'img/banners/b60_center.gif\');"><div style="text-align:center;"><a href="http://www.bigmir.net/" rel="nofollow" target="_blank" style="color:#0000ab;text-decoration:none;font:10px Tahoma;">bigmir<span style="color:#ff0000;">)</span>net</a></div><div style="margin-top:3px;padding: 0px 6px 0px 6px;color:#426ed2;"><div style="float:left;font:10px Tahoma;">'+oBM_STAT.hosts+'</div><div style="float:right;font:10px Tahoma;">'+oBM_STAT.hits+'</div></div><br clear="all"/></div><div style="background:url(\'img/banners/b60_bottom.gif\') no-repeat top;">&nbsp;</div></div></td></tr></table>');
}
//-->
</script>
<script type="text/javascript" language="javascript"><!--
bmN=navigator,bmD=document,bmD.cookie='b=b',i=0,bs=[],bm={o:1,v:16859112,s:16859112,t:0,c:bmD.cookie?1:0,n:Math.round((Math.random()* 1000000)),w:0};
for(var f=self;f!=f.parent;f=f.parent)bm.w++;
try{if(bmN.plugins&&bmN.mimeTypes.length&&(x=bmN.plugins['Shockwave Flash']))bm.m=parseInt(x.description.replace(/([a-zA-Z]|\s)+/,''));
else for(var f=3;f<20;f++)if(eval('new ActiveXObject("ShockwaveFlash.ShockwaveFlash.'+f+'")'))bm.m=f}catch(e){;}
try{bm.y=bmN.javaEnabled()?1:0}catch(e){;}
try{bmS=screen;bm.v^=bm.d=bmS.colorDepth||bmS.pixelDepth;bm.v^=bm.r=bmS.width}catch(e){;}
r=bmD.referrer.slice(7);if(r&&r.split('/')[0]!=window.location.host){bm.f=escape(r);bm.v^=r.length}
bm.v^=window.location.href.length;for(var x in bm) if(/^[ovstcnwmydrf]$/.test(x)) bs[i++]=x+bm[x];
bmD.write('<sc'+'ript type="text/javascript" language="javascript" src="http://c.bigmir.net/?'+bs.join('&')+'"></sc'+'ript>');
//-->
</script>
<noscript>
<a href="http://www.bigmir.net/" rel="nofollow" target="_blank"><img src="http://c.bigmir.net/?v16859112&s16859112&t2" width="88" height="31" alt="bigmir)net TOP 100" title="bigmir)net TOP 100" border="0" /></a>
</noscript>
<!--bigmir)net TOP 100-->

<!--Rating@Mail.ru counter-->
<script language="javascript" type="text/javascript">//<![CDATA[
d=document;var a='';a+=';r='+escape(d.referrer);js=10;//]]></script>
<script language="javascript1.1" type="text/javascript">//<![CDATA[
a+=';j='+navigator.javaEnabled();js=11;//]]></script>
<script language="javascript1.2" type="text/javascript">//<![CDATA[
s=screen;a+=';s='+s.width+'*'+s.height;
a+=';d='+(s.colorDepth?s.colorDepth:s.pixelDepth);js=12;//]]></script>
<script language="javascript1.3" type="text/javascript">//<![CDATA[
js=13;//]]></script><script language="javascript" type="text/javascript">//<![CDATA[
d.write('<a href="http://top.mail.ru/jump?from=1857851" target="_top" rel="nofollow">'+
'<img src="http://d9.c5.bc.a1.top.mail.ru/counter?id=1857851;t=56;js='+js+
a+';rand='+Math.random()+'" alt="Рейтинг@Mail.ru" border="0" '+
'height="31" width="88" \/><\/a>');if(11<js)d.write('<'+'!-- ');//]]></script>
<noscript><a target="_top" href="http://top.mail.ru/jump?from=1857851" rel="nofollow">
<img src="http://d9.c5.bc.a1.top.mail.ru/counter?js=na;id=1857851;t=56" 
height="31" width="88" border="0" alt="Рейтинг@Mail.ru" /></a></noscript>
<script language="javascript" type="text/javascript">//<![CDATA[
if(11<js)d.write('--'+'&#062');//]]></script>
<!--// Rating@Mail.ru counter-->

<!-- begin of Top100 logo -->
<a href="http://top100.rambler.ru/home?id=2180892" rel="nofollow">
<img src="img/banners/banner-88x31-rambler-gray2.gif" alt="Rambler's Top100"
width="88" height="31" border="0" /></a>
<!-- end of Top100 logo -->
<a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><img
        src="img/xhtml10.jpg"
        alt="Valid XHTML 1.0 Strict"
		  style="border:0;width:80px;height:15px" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow">
    <img style="border:0;width:80px;height:15px"
        src="img/css2.jpg"
        alt="Правильный CSS!" />
</a>
<div class="sign">&copy; 2010 UkrAmerica Разработано <a href="http://artg.dp.ua/" style="text-decoration:none;"><span class="artg">Art</span>G</a></div>

</div>
<!--<div id="footer">-->

<!-- begin of Top100 code -->

<script id="top100Counter" type="text/javascript" src="http://counter.rambler.ru/top100.jcn?2180892"></script>
<noscript>
<img src="http://counter.rambler.ru/top100.cnt?2180892" alt="" width="1" height="1" border="0" />

</noscript>
<!-- end of Top100 code -->
</body>

</html>
