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
<title>Условия покупки, оплаты и доставки товаров - UkrAmerica</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.16" />
	<meta name="keywords" content="купить, условия, доставка, оплата, доставка на Украину" />
	<meta name="description" content="Условия покупки, оплаты и доставки товаров" />
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
<div id="catalogContainer">

	<div id="content">
<div class="mainTextLeft">	
<h4>УСЛОВИЯ</h4>
<ul class="numList">
<li style="font-weight:bold;">Выбрав интересующий Вас товар на одном из предложенных нами сайтов американских магазинов, Вы переходите в раздел <a href="order.php">Сделать заказ</a>, заполняете форму заказа и отправляете ее нам.</li><br/>
<p>Пожалуйста, обратите внимание, что все поля формы обязательны для заполнения.  Укажите ссылку на нужную Вам вещь, при возможности вставьте фотографию, а также укажите необходимый размер, артикул (web ID # – если таковой имеется), цвет и количество.</p><br/>
<p>Если у Вас есть сомнения относительно размера, смотрите нашу <a href="sizes.php">размерную  таблицу.</a></p><br/>
<li style="font-weight:bold;">После получения Вашего заказа  наши сотрудники его проверяют, подтверждают, выставляют Вам счет.</li><br/>

<p style="font-weight:bold;">Стоимость заказа включает в себя:</p>
<ul class="letterList">
<li>указанную на американском сайте цену на выбранный Вами товар,</li>
<li>налог на продажу, действующий на территории США (tax – для штата Нью-Йорк 8,625%)</li>
<li>стоимость доставки товара из магазина на наш склад в Нью-Йорке (shipping, на разных сайтах разный). </li>
<li>наши комиссионные в размере <strong>20%</strong> от цены товара с учетом налога на продажу и стоимости его доставки по территории США.</li>
<li>доставка из США в Украину - $10-15 за кг без учета упаковки (доставка оплачивается после отправки товара из США в Украину).</li>
</ul><br/>
<p>В среднем доставка товара в Украину с момента оплаты занимает 14-20 дней.</p><br/>
<p style="font-weight:bold; font-style: italic;">Примечание: <span style="color: blue;">некоторые магазины предлагают бесплатную доставку по территории США, а также не начисляют налог на продажу.</span></p><br/>
<li style="font-weight:bold;">Далее при встрече с представителем нашей компании Вы осуществляете 100% предоплату заказа.</li>При осуществлении предоплаты мы предоставим Вам <span style="color: red;">квитанцию и (по желанию) договор о посреднических услугах.</span><br/>
<p>В тот же день мы заказываем доставку товара в наш офис в Нью-Йорке и присылаем Вам подтверждение о сделанном заказе.</p><br/>
<p style="font-weight:bold;">Мы учитываем ВСЕ акции, скидки и распродажи, предлагаемые американскими магазинами, позволяя клиентам экономить.</p><br/>
<p>Вы имеете возможность делать заказы на разных сайтах, а получать их одной посылкой. Это удобно, а кроме того, выгодно, так как доставка одной большой посылки обходится дешевле, чем  доставка нескольких маленьких.</p><br/>
<p>Все посылки мы отправляем частной курьерской компанией «Мeest», которая присылает посылки максимально быстро в течении 10-14 дней, беспроблемно проходит таможню и является очень надежной. Если Вы хотите заказать особо ценные вещи, Вы можете оплатить дополнительно страховку. Пользуясь нашими услугами, Вы забываете о существовании таможни и не платите ничего, кроме итоговой суммы заказа и доставки в Украину. Все посылки доставляются в наш офис в Днепропетровске, затем мы рассылаем их на ваши адреса.</p><br/>
<li style="font-weight:bold;">Когда посылка приходит в Украину, Вы оплачиваете доставку из США и получаете свой заказ.</li><br/>
<p style="font-weight:bold;color:darkred;text-align:center;font-size:10pt;">Желаем Вам приятных покупок!</p>
</div>
<!--<div class="mainText">	-->
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
