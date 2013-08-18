-- phpMyAdmin SQL Dump
-- version 2.11.10.1
-- http://www.phpmyadmin.net
--
-- Хост: db11.hqhost.net
-- Время создания: Дек 18 2010 г., 13:58
-- Версия сервера: 5.0.91
-- Версия PHP: 4.4.4-9+lenny1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tolik4_db0`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_categories`
--

CREATE TABLE `ukam_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text,
  `publish_on_main` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Названия и описания категорий' AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `ukam_categories`
--

INSERT INTO `ukam_categories` VALUES(1, 'Женская одежда', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(2, 'Мужская одежда', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(3, 'Детская одежда', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(4, 'Молодежная мода', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(5, 'Мама и Дитя', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(6, 'Демократичная классика', NULL, 'N');
INSERT INTO `ukam_categories` VALUES(7, 'Товары класса люкс', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(8, 'Популярные универмаги', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(9, 'Красивое нижнее белье', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(10, 'Доступно и стильно', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(11, 'Обувь, сумки, аксессуары', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(12, 'Бижутерия', NULL, 'N');
INSERT INTO `ukam_categories` VALUES(13, 'Косметика и парфюмерия', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(14, 'Товары для спорта и отдыха', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(15, 'Свадебные наряды', NULL, 'N');
INSERT INTO `ukam_categories` VALUES(16, 'Большие размеры', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(17, 'Товары для дома', NULL, 'N');
INSERT INTO `ukam_categories` VALUES(18, 'Джинсы', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(19, 'Детские игрушки', NULL, 'Y');
INSERT INTO `ukam_categories` VALUES(20, 'Книги (на исп., англ. языках)', NULL, 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_counter`
--

CREATE TABLE `ukam_counter` (
  `story_id` int(11) NOT NULL,
  `clics` int(11) NOT NULL,
  UNIQUE KEY `story_id` (`story_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ukam_counter`
--

INSERT INTO `ukam_counter` VALUES(1, 128);
INSERT INTO `ukam_counter` VALUES(2, 98);
INSERT INTO `ukam_counter` VALUES(3, 316);
INSERT INTO `ukam_counter` VALUES(4, 72);
INSERT INTO `ukam_counter` VALUES(5, 321);
INSERT INTO `ukam_counter` VALUES(6, 69);
INSERT INTO `ukam_counter` VALUES(7, 490);
INSERT INTO `ukam_counter` VALUES(8, 59);
INSERT INTO `ukam_counter` VALUES(9, 161);
INSERT INTO `ukam_counter` VALUES(10, 68);
INSERT INTO `ukam_counter` VALUES(11, 135);
INSERT INTO `ukam_counter` VALUES(12, 287);
INSERT INTO `ukam_counter` VALUES(13, 263);
INSERT INTO `ukam_counter` VALUES(14, 156);
INSERT INTO `ukam_counter` VALUES(15, 177);
INSERT INTO `ukam_counter` VALUES(16, 202);
INSERT INTO `ukam_counter` VALUES(17, 106);
INSERT INTO `ukam_counter` VALUES(18, 118);
INSERT INTO `ukam_counter` VALUES(19, 108);
INSERT INTO `ukam_counter` VALUES(20, 320);
INSERT INTO `ukam_counter` VALUES(21, 95);
INSERT INTO `ukam_counter` VALUES(22, 35);
INSERT INTO `ukam_counter` VALUES(23, 149);
INSERT INTO `ukam_counter` VALUES(24, 80);
INSERT INTO `ukam_counter` VALUES(25, 101);
INSERT INTO `ukam_counter` VALUES(26, 38);
INSERT INTO `ukam_counter` VALUES(27, 64);
INSERT INTO `ukam_counter` VALUES(28, 87);
INSERT INTO `ukam_counter` VALUES(29, 41);
INSERT INTO `ukam_counter` VALUES(30, 90);
INSERT INTO `ukam_counter` VALUES(31, 50);
INSERT INTO `ukam_counter` VALUES(32, 32);
INSERT INTO `ukam_counter` VALUES(33, 6);
INSERT INTO `ukam_counter` VALUES(34, 3);
INSERT INTO `ukam_counter` VALUES(35, 11);
INSERT INTO `ukam_counter` VALUES(36, 11);
INSERT INTO `ukam_counter` VALUES(37, 47);
INSERT INTO `ukam_counter` VALUES(38, 40);
INSERT INTO `ukam_counter` VALUES(39, 18);
INSERT INTO `ukam_counter` VALUES(40, 45);
INSERT INTO `ukam_counter` VALUES(41, 63);
INSERT INTO `ukam_counter` VALUES(42, 15);
INSERT INTO `ukam_counter` VALUES(43, 50);
INSERT INTO `ukam_counter` VALUES(44, 50);
INSERT INTO `ukam_counter` VALUES(45, 49);
INSERT INTO `ukam_counter` VALUES(46, 9);
INSERT INTO `ukam_counter` VALUES(47, 37);
INSERT INTO `ukam_counter` VALUES(48, 25);
INSERT INTO `ukam_counter` VALUES(49, 13);
INSERT INTO `ukam_counter` VALUES(50, 31);
INSERT INTO `ukam_counter` VALUES(51, 33);
INSERT INTO `ukam_counter` VALUES(52, 19);
INSERT INTO `ukam_counter` VALUES(53, 23);
INSERT INTO `ukam_counter` VALUES(54, 18);
INSERT INTO `ukam_counter` VALUES(55, 27);
INSERT INTO `ukam_counter` VALUES(56, 60);
INSERT INTO `ukam_counter` VALUES(57, 98);
INSERT INTO `ukam_counter` VALUES(58, 35);
INSERT INTO `ukam_counter` VALUES(59, 19);
INSERT INTO `ukam_counter` VALUES(60, 37);
INSERT INTO `ukam_counter` VALUES(61, 57);
INSERT INTO `ukam_counter` VALUES(62, 23);
INSERT INTO `ukam_counter` VALUES(63, 49);
INSERT INTO `ukam_counter` VALUES(64, 28);
INSERT INTO `ukam_counter` VALUES(65, 14);
INSERT INTO `ukam_counter` VALUES(66, 28);
INSERT INTO `ukam_counter` VALUES(67, 13);
INSERT INTO `ukam_counter` VALUES(68, 39);
INSERT INTO `ukam_counter` VALUES(69, 20);
INSERT INTO `ukam_counter` VALUES(70, 61);
INSERT INTO `ukam_counter` VALUES(71, 43);
INSERT INTO `ukam_counter` VALUES(72, 30);
INSERT INTO `ukam_counter` VALUES(73, 16);
INSERT INTO `ukam_counter` VALUES(74, 90);
INSERT INTO `ukam_counter` VALUES(75, 30);
INSERT INTO `ukam_counter` VALUES(76, 25);
INSERT INTO `ukam_counter` VALUES(77, 15);
INSERT INTO `ukam_counter` VALUES(78, 27);
INSERT INTO `ukam_counter` VALUES(79, 14);
INSERT INTO `ukam_counter` VALUES(0, 0);
INSERT INTO `ukam_counter` VALUES(80, 9);
INSERT INTO `ukam_counter` VALUES(81, 7);
INSERT INTO `ukam_counter` VALUES(82, 15);
INSERT INTO `ukam_counter` VALUES(83, 70);
INSERT INTO `ukam_counter` VALUES(84, 22);
INSERT INTO `ukam_counter` VALUES(85, 21);
INSERT INTO `ukam_counter` VALUES(86, 52);
INSERT INTO `ukam_counter` VALUES(87, 55);
INSERT INTO `ukam_counter` VALUES(88, 24);
INSERT INTO `ukam_counter` VALUES(89, 9);
INSERT INTO `ukam_counter` VALUES(90, 49);
INSERT INTO `ukam_counter` VALUES(91, 34);
INSERT INTO `ukam_counter` VALUES(92, 25);
INSERT INTO `ukam_counter` VALUES(93, 10);
INSERT INTO `ukam_counter` VALUES(94, 49);
INSERT INTO `ukam_counter` VALUES(95, 23);
INSERT INTO `ukam_counter` VALUES(96, 61);
INSERT INTO `ukam_counter` VALUES(97, 77);
INSERT INTO `ukam_counter` VALUES(98, 36);
INSERT INTO `ukam_counter` VALUES(99, 84);
INSERT INTO `ukam_counter` VALUES(100, 22);
INSERT INTO `ukam_counter` VALUES(101, 60);
INSERT INTO `ukam_counter` VALUES(102, 40);
INSERT INTO `ukam_counter` VALUES(103, 182);
INSERT INTO `ukam_counter` VALUES(104, 29);
INSERT INTO `ukam_counter` VALUES(105, 52);
INSERT INTO `ukam_counter` VALUES(106, 69);
INSERT INTO `ukam_counter` VALUES(107, 45);
INSERT INTO `ukam_counter` VALUES(108, 42);
INSERT INTO `ukam_counter` VALUES(109, 37);
INSERT INTO `ukam_counter` VALUES(110, 17);
INSERT INTO `ukam_counter` VALUES(111, 61);
INSERT INTO `ukam_counter` VALUES(112, 72);
INSERT INTO `ukam_counter` VALUES(113, 145);
INSERT INTO `ukam_counter` VALUES(114, 19);
INSERT INTO `ukam_counter` VALUES(115, 68);
INSERT INTO `ukam_counter` VALUES(116, 59);
INSERT INTO `ukam_counter` VALUES(117, 32);
INSERT INTO `ukam_counter` VALUES(118, 27);
INSERT INTO `ukam_counter` VALUES(119, 24);
INSERT INTO `ukam_counter` VALUES(120, 63);
INSERT INTO `ukam_counter` VALUES(121, 26);
INSERT INTO `ukam_counter` VALUES(122, 23);
INSERT INTO `ukam_counter` VALUES(123, 43);
INSERT INTO `ukam_counter` VALUES(124, 51);
INSERT INTO `ukam_counter` VALUES(125, 62);
INSERT INTO `ukam_counter` VALUES(126, 37);
INSERT INTO `ukam_counter` VALUES(127, 101);
INSERT INTO `ukam_counter` VALUES(128, 18);
INSERT INTO `ukam_counter` VALUES(129, 22);
INSERT INTO `ukam_counter` VALUES(130, 93);
INSERT INTO `ukam_counter` VALUES(131, 191);
INSERT INTO `ukam_counter` VALUES(132, 123);
INSERT INTO `ukam_counter` VALUES(133, 78);
INSERT INTO `ukam_counter` VALUES(134, 111);
INSERT INTO `ukam_counter` VALUES(135, 33);
INSERT INTO `ukam_counter` VALUES(136, 19);
INSERT INTO `ukam_counter` VALUES(137, 22);
INSERT INTO `ukam_counter` VALUES(138, 33);
INSERT INTO `ukam_counter` VALUES(139, 20);
INSERT INTO `ukam_counter` VALUES(140, 19);
INSERT INTO `ukam_counter` VALUES(141, 36);
INSERT INTO `ukam_counter` VALUES(142, 20);
INSERT INTO `ukam_counter` VALUES(143, 50);
INSERT INTO `ukam_counter` VALUES(144, 102);
INSERT INTO `ukam_counter` VALUES(145, 133);
INSERT INTO `ukam_counter` VALUES(146, 61);
INSERT INTO `ukam_counter` VALUES(147, 104);
INSERT INTO `ukam_counter` VALUES(148, 69);
INSERT INTO `ukam_counter` VALUES(149, 66);
INSERT INTO `ukam_counter` VALUES(150, 53);
INSERT INTO `ukam_counter` VALUES(151, 24);
INSERT INTO `ukam_counter` VALUES(152, 40);
INSERT INTO `ukam_counter` VALUES(153, 102);
INSERT INTO `ukam_counter` VALUES(154, 153);
INSERT INTO `ukam_counter` VALUES(155, 32);
INSERT INTO `ukam_counter` VALUES(156, 83);
INSERT INTO `ukam_counter` VALUES(157, 49);
INSERT INTO `ukam_counter` VALUES(158, 36);
INSERT INTO `ukam_counter` VALUES(159, 41);
INSERT INTO `ukam_counter` VALUES(160, 93);
INSERT INTO `ukam_counter` VALUES(161, 77);
INSERT INTO `ukam_counter` VALUES(162, 130);
INSERT INTO `ukam_counter` VALUES(163, 61);
INSERT INTO `ukam_counter` VALUES(164, 54);
INSERT INTO `ukam_counter` VALUES(165, 61);
INSERT INTO `ukam_counter` VALUES(166, 67);
INSERT INTO `ukam_counter` VALUES(167, 46);
INSERT INTO `ukam_counter` VALUES(168, 93);
INSERT INTO `ukam_counter` VALUES(169, 60);
INSERT INTO `ukam_counter` VALUES(170, 44);
INSERT INTO `ukam_counter` VALUES(171, 38);
INSERT INTO `ukam_counter` VALUES(172, 39);
INSERT INTO `ukam_counter` VALUES(173, 51);
INSERT INTO `ukam_counter` VALUES(174, 66);
INSERT INTO `ukam_counter` VALUES(175, 44);
INSERT INTO `ukam_counter` VALUES(176, 52);
INSERT INTO `ukam_counter` VALUES(177, 13);
INSERT INTO `ukam_counter` VALUES(178, 18);
INSERT INTO `ukam_counter` VALUES(179, 8);
INSERT INTO `ukam_counter` VALUES(180, 5);
INSERT INTO `ukam_counter` VALUES(181, 46);
INSERT INTO `ukam_counter` VALUES(182, 29);
INSERT INTO `ukam_counter` VALUES(183, 76);
INSERT INTO `ukam_counter` VALUES(184, 27);
INSERT INTO `ukam_counter` VALUES(185, 114);
INSERT INTO `ukam_counter` VALUES(186, 34);
INSERT INTO `ukam_counter` VALUES(187, 38);
INSERT INTO `ukam_counter` VALUES(188, 49);
INSERT INTO `ukam_counter` VALUES(189, 32);
INSERT INTO `ukam_counter` VALUES(190, 35);
INSERT INTO `ukam_counter` VALUES(191, 134);
INSERT INTO `ukam_counter` VALUES(192, 112);
INSERT INTO `ukam_counter` VALUES(193, 166);
INSERT INTO `ukam_counter` VALUES(194, 422);
INSERT INTO `ukam_counter` VALUES(195, 68);
INSERT INTO `ukam_counter` VALUES(196, 94);
INSERT INTO `ukam_counter` VALUES(197, 42);
INSERT INTO `ukam_counter` VALUES(198, 44);
INSERT INTO `ukam_counter` VALUES(199, 57);
INSERT INTO `ukam_counter` VALUES(249, 66);
INSERT INTO `ukam_counter` VALUES(201, 74);
INSERT INTO `ukam_counter` VALUES(248, 8);
INSERT INTO `ukam_counter` VALUES(203, 105);
INSERT INTO `ukam_counter` VALUES(204, 66);
INSERT INTO `ukam_counter` VALUES(205, 154);
INSERT INTO `ukam_counter` VALUES(247, 18);
INSERT INTO `ukam_counter` VALUES(207, 114);
INSERT INTO `ukam_counter` VALUES(246, 29);
INSERT INTO `ukam_counter` VALUES(209, 61);
INSERT INTO `ukam_counter` VALUES(210, 52);
INSERT INTO `ukam_counter` VALUES(211, 72);
INSERT INTO `ukam_counter` VALUES(245, 39);
INSERT INTO `ukam_counter` VALUES(213, 40);
INSERT INTO `ukam_counter` VALUES(214, 58);
INSERT INTO `ukam_counter` VALUES(215, 103);
INSERT INTO `ukam_counter` VALUES(216, 44);
INSERT INTO `ukam_counter` VALUES(217, 56);
INSERT INTO `ukam_counter` VALUES(218, 31);
INSERT INTO `ukam_counter` VALUES(219, 45);
INSERT INTO `ukam_counter` VALUES(220, 50);
INSERT INTO `ukam_counter` VALUES(221, 45);
INSERT INTO `ukam_counter` VALUES(222, 69);
INSERT INTO `ukam_counter` VALUES(223, 70);
INSERT INTO `ukam_counter` VALUES(224, 99);
INSERT INTO `ukam_counter` VALUES(225, 72);
INSERT INTO `ukam_counter` VALUES(226, 46);
INSERT INTO `ukam_counter` VALUES(227, 64);
INSERT INTO `ukam_counter` VALUES(228, 33);
INSERT INTO `ukam_counter` VALUES(229, 26);
INSERT INTO `ukam_counter` VALUES(230, 60);
INSERT INTO `ukam_counter` VALUES(231, 27);
INSERT INTO `ukam_counter` VALUES(232, 51);
INSERT INTO `ukam_counter` VALUES(233, 63);
INSERT INTO `ukam_counter` VALUES(234, 39);
INSERT INTO `ukam_counter` VALUES(235, 61);
INSERT INTO `ukam_counter` VALUES(236, 33);
INSERT INTO `ukam_counter` VALUES(237, 27);
INSERT INTO `ukam_counter` VALUES(238, 34);
INSERT INTO `ukam_counter` VALUES(239, 33);
INSERT INTO `ukam_counter` VALUES(240, 9);
INSERT INTO `ukam_counter` VALUES(241, 33);
INSERT INTO `ukam_counter` VALUES(242, 37);
INSERT INTO `ukam_counter` VALUES(243, 32);
INSERT INTO `ukam_counter` VALUES(244, 16);
INSERT INTO `ukam_counter` VALUES(250, 71);
INSERT INTO `ukam_counter` VALUES(251, 33);
INSERT INTO `ukam_counter` VALUES(252, 17);
INSERT INTO `ukam_counter` VALUES(253, 89);
INSERT INTO `ukam_counter` VALUES(254, 54);
INSERT INTO `ukam_counter` VALUES(255, 77);
INSERT INTO `ukam_counter` VALUES(256, 38);
INSERT INTO `ukam_counter` VALUES(257, 40);
INSERT INTO `ukam_counter` VALUES(258, 38);

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_stories`
--

CREATE TABLE `ukam_stories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) default NULL,
  `discount` int(5) NOT NULL default '0',
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Магазины' AUTO_INCREMENT=259 ;

--
-- Дамп данных таблицы `ukam_stories`
--

INSERT INTO `ukam_stories` VALUES(1, 'Macy`s', 'http://www.macys.com/', 'img/stories/1.gif', 0, 'Самый крупный в мире универмаг, за 150 лет полюбившийся многим поколениям американских покупателей и туристов из всего мира. В сети Macy`s работает 167 тысяч человек. Здесь Вы найдете абсолютно все, что Вам нужно – от одежды для любого поколения и любого случая, до декора для дома, косметики, украшений, часов самых известных марок. ДЕЙСТВУЮТ ПОСТОЯННЫЕ СКИДКИ. ПРИВЛЕКАТЕЛЬНЫЕ ЦЕНЫ.');
INSERT INTO `ukam_stories` VALUES(2, 'GAP', 'http://www.gap.com/', 'img/stories/00002.gif', 0, 'Легендарный американский бренд. Стильная и доступная одежда для любого случая на любой возраст. Отличный трикотаж, повседневная и спортивная одежда, джинсы. Демократичность цен, широкий ассортимент и неповторимость. ');
INSERT INTO `ukam_stories` VALUES(3, 'Banana Republic', 'http://bananarepublic.gap.com/', 'img/stories/3.gif', 0, 'Современная изысканная одежда для женщин, плюс удобная обувь, модные сумки, аксессуары, элегантная бижутерия. Любимый магазин американских модниц.');
INSERT INTO `ukam_stories` VALUES(4, 'Express', 'http://www.express.com/', 'img/stories/00004.gif', 0, 'Express – это самые свежие тенденции моды, утонченный стиль, самые ключевые вещи гардероба. Спектр предлагаемых товаров -  от ярких фривольных шелковых блузок до деловых костюмов. Цены очень доступны.');
INSERT INTO `ukam_stories` VALUES(5, 'Victoria’s Secret', 'http://www2.victoriassecret.com/', 'img/stories/5.gif', 0, 'Огромный выбор красивого и удобного женского белья. Помимо этого, широко представлена линия одежды, купальников, обуви и аксессуаров от известных дизайнеров. Акции и распродажи  круглый год! ');
INSERT INTO `ukam_stories` VALUES(6, 'Venus', 'http://www.venus.com/', 'img/stories/00006.gif', 0, 'Все виды качественных купальников любых расзмеров,пляжных платьев, парео, модной одежды, аксессуаров. 90% купальников, предлагаемых Venus, производятся в США.');
INSERT INTO `ukam_stories` VALUES(7, 'Ann Taylor', 'http://www.anntaylor.com/', 'img/stories/00007.gif', 0, 'Лидер по производству и продажи удобной, модной одежды в классическом стиле. Спокойные, натуральные тона, платья, деловые костюмы, трикотаж, аксессуары, обувь для девушек, не понаслышке знающих, что такое дресс-код.');
INSERT INTO `ukam_stories` VALUES(8, 'J.Crew', 'http://www.jcrew.com/', 'img/stories/00008.gif', 0, 'Полный ассортимент женской, мужской и детской одежды и аксессуаров, включая изысканные свадебные и праздничные наряды, повседневную одежду, купальники, верхнюю одежду, итальянский кашемир, сумки, пояса, аксессуары и бижутерию. Любимый магазин Первой леди США Мишель Обамы. ');
INSERT INTO `ukam_stories` VALUES(9, 'DKNY', 'http://www.dkny.com/', 'img/stories/00009.gif', 0, 'Энергия и дух Нью-Йорка! Эклектичная, прикольная, настоящая одежда от Донны Каран для всех, для работы и отдыха, от джинсов до вечерних платьев. Модно и доступно. Регулярно обновляющиеся специальные предложения.');
INSERT INTO `ukam_stories` VALUES(10, 'Michael Kors', 'http://www.michaelkors.com/', 'img/stories/10.gif', 0, 'Ведущий американский дизайнер роскошных аксессуаров и спортивной одежды. Эмблема высочайшего стандарта качества, новаторства и элегантности. ');
INSERT INTO `ukam_stories` VALUES(11, 'Lacoste', 'http://shopapparel.lacoste.com/', 'img/stories/00011.gif', 0, 'Эмблема французской марки Лакосте - маленький зеленый крокодильчик - давно стал престижным и узнаваемым символом этой марки. В одежду Лакосте одеваются миллионеры на собственных яхтах, чемпионы мира на соревнованиях по теннису и гольфу и просто ценители комфортной одежды и простых линий. Качество, комфорт и солидность. Если Вы среди избранных - заходите!');
INSERT INTO `ukam_stories` VALUES(12, 'Calvin Klein', 'http://www.calvinklein.com/', 'img/stories/00012.gif', 0, 'Знаменитый дизайнер одежды и нижнего белья для женщин и мужчин, обуви, аксессуаров, сумок, постельного белья, посуды, и прочего, прочего, прочего.');
INSERT INTO `ukam_stories` VALUES(13, 'Tommy Hilfiger', 'http://www.shoptommy.com/tommy/', 'img/stories/00013.gif', 0, 'Одна из ведущих мировых торговых марок, Tommy Hilfiger предлагает безупречный стиль и качество в сочетании с приемлемой ценой. Это мужская, женская и детская одежда, джинсы, спортивная одежда, аксессуары, духи и товары для дома. ');
INSERT INTO `ukam_stories` VALUES(14, 'Emporio Armani', 'http://www.emporioarmani.com/', 'img/stories/00014.gif', 0, 'Итальянский дизайнер, эталон элегантности во всем мире. Emporio Armani – это сочетание классики с современностью, сексуальности с утонченностью. Одежда, нижнее белье, аксессуары и парфюмерия от Emporio Armani отличаются своим неповторимым стилем. ');
INSERT INTO `ukam_stories` VALUES(15, 'Levi’s', 'http://levi.com', 'img/stories/00015.gif', 0, 'Американская икона с 1853 года, прославившаяся на весь мир.  Классические джинсы любого размера, стиля, фасона, цвета. Цены Вас порадуют!');
INSERT INTO `ukam_stories` VALUES(16, 'BCBG MAXAZRIA', 'http://www.bcbg.com/home/', 'img/stories/00016.gif', 0, 'Одно из самых известных имен в современной индустрии моды. Комбинация европейской утонченности с американским духом. Шелковые платья, деловые костюмы, джинсовые изделия, обувь, купальники, солнечные очки и дамские сумочки. ');
INSERT INTO `ukam_stories` VALUES(17, 'Wilsons Leather', 'http://www.wilsonsleather.com/', 'img/stories/00017.gif', 0, 'Прекрасная высококачественная кожаная верхняя одежда, сумки, портфели и дорожные сумки и чемоданы. Круглогодичные акции и скидки магазина позволяют приобрести прекрасные вещи по очень приемлемым ценам. ');
INSERT INTO `ukam_stories` VALUES(18, 'Diane von Furstenberg', 'http://www.dvf.com/dvf/', 'img/stories/00018.gif', 0, 'Диана фон Фюрстенберг – королева ярких и элегантных платьев. Легкие, струящиеся ткани, обволакивающие, мягкие силуэты,которые подчеркивают достоинства и скрывают недостатки, - хотя бы одно платье от Дианы должно быть в гардеробе каждой настоящей леди.');
INSERT INTO `ukam_stories` VALUES(19, 'Betsey Johnson', 'http://www.betseyjohnson.com/', 'img/stories/00019.gif', 0, 'В гламурных, ярких и экстравагантных нарядах от американского дизайнера Бетси Джонсон Вы никогда не останетесь незамеченной! Необычные и неповторимые платья, обувь и сумочки. Ее модели хороши в деталях, качественны и долговечны. ');
INSERT INTO `ukam_stories` VALUES(20, 'Top Shop', 'http://us.topshop.com/', 'img/stories/00020.gif', 0, 'Всемирно известная британская торговая сеть Топшоп является обязательным пунктом назначения для всех модниц. Топшоп совмещает в своих товарах передовой стиль с дружелюбными для Вашего кошелька ценами. Повседневная и нарядная одежда, удобнейшая обувь, белье и аксессуары.');
INSERT INTO `ukam_stories` VALUES(21, 'Karen Millen', 'http://www.karenmillen.com/', 'img/stories/00021.gif', 0, 'Всемирно известный дизайнер, предлагающий гламурную, оригинальную одежду и аксессуары для уверенных в себе, бескомпромиссных современных женщин. Шелк, стразы, кружева, набивные рисунки, бисер, атлас, пух и мех – все с "изюминкой". ');
INSERT INTO `ukam_stories` VALUES(22, 'Lord and Taylor', 'http://www.lordandtaylor.com/', 'img/stories/22.gif', 0, 'С 1826 года крупный универмаг Lord and Taylor предлагает товары, уникально сочетающие последние тенденции мира моды и всегда актуальную классику.');
INSERT INTO `ukam_stories` VALUES(23, 'Bloomingdale’s', 'http://www.bloomingdales.com/', 'img/stories/23.gif', 0, 'Это один из самых старейших и престижнейших универмагов Америки – его посещала даже королева Елизавета II. В универмаге Вloomingdales представлены бренды Burberry, BCBGMAXAZRIA, Calvin Klein, Diane von Furstenberg, Betsey Johnson, DKNY, Ed Hardy, Lacoste, Juicy Couture, MICHAEL Michael Kors,  Ralph Lauren, UGG® Australia, Miss Sixty, Marc By Marc Jacobs и многие другие.');
INSERT INTO `ukam_stories` VALUES(24, 'Dillard’s', 'http://www.dillards.com/', 'img/stories/00024.gif', 0, 'Сеть универмагов Диллардс предлагает модную одежду от таких известных марок как MICHAEL Michael Kors, BCBGMAXAZRIA, Betsey Johnson, Calvin Klein, DKNY, Ed Hardy, Gottex, Hale Bob, Jessica Simpson, Lauren by Ralph Lauren, Levi`s.');
INSERT INTO `ukam_stories` VALUES(25, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/00025.gif', 0, 'Престижный универмаг модной дизайнерской одежды. Один из лидеров американской розничной торговли в сфере моды. Самые приятные скидочные предложения в течении всего года! Одежда, обувь и аксессуары от мировых брендов, представленных в магазине NordStrom, сделают вашу жизнь ярче. 7 For All Mankind®, BCBGMAXAZRIA, Betsey Johnson, Blumarine, Burberry, Calvin Klein, Chantelle Intimates, Chloe, Citizens of Humanity, D&G, Diane von Furstenberg, DIESEL, DKNY, Elle Macpherson Intimates, Fayreform, Huit, J Brand, Jessica Simpson, Juicy Couture, L.A.M.B., Lacoste, Lauren by Ralph Lauren, M Missoni, MARC BY MARC JACOBS, Michael Kors, Oscar de la Renta, Roberto Cavalli, Rock & Republic, UGG® Australia, Wacoal, Zac Posen.');
INSERT INTO `ukam_stories` VALUES(26, 'Lands’ End', 'http://www.landsend.com/', 'img/stories/00026.gif', 0, 'Гарантия высокого качества и низкой цены на одежду традиционного стиля для всей семьи и товаров для дома');
INSERT INTO `ukam_stories` VALUES(27, 'JCPenny', 'http://www4.jcpenney.com/', 'img/stories/00027.gif', 0, 'Известный демократичный универмаг очень недорогой, но качественной одежды для мужчин и женщин всех возрастов,  молодежи, детей и младенцев. ');
INSERT INTO `ukam_stories` VALUES(28, 'Toys R Us', 'http://www.toysrus.com/', 'img/stories/18.gif', 0, 'Крупнейший магазин детских игрушек США.  Всевозможные игрушки и игры для детей разных возрастов и интересов. Куклы и мягкие игрушки, настольные игры и паззлы, все для юных художников, наборы для лепки, конструкторы и многое другое.');
INSERT INTO `ukam_stories` VALUES(29, 'FAO Schwartz', 'http://www.fao.com/', 'img/stories/28.gif', 0, 'Любимый магазин нью-йоркской детворы. Тысячи разных игрушек, настольных игр, все для занятий рисованием, обучающие игры для дошкольников, конструкторы, карнавальные костюмы.');
INSERT INTO `ukam_stories` VALUES(30, 'Disney Store', 'http://www.disneystore.com/', 'img/stories/29.gif', 0, 'Это сказочный мир Диснея! Микки Маус, Золушка, Белоснежка, Русалочка, Тинкербелл ждут Вас в этом замечательном магазине. Эксклюзивная диснеевская одежда для детей и взрослых, аксессуары, карнавальные костюмы и украшения для детских комнат.');
INSERT INTO `ukam_stories` VALUES(31, 'American Girl', 'http://americangirl.com/', 'img/stories/30.gif', 0, 'Мечта каждой маленькой принцессы! Выбор кукол в этом магазине настолько богат, что каждая девочка может выбрать куклу, похожую на себя – цветов глаз, формой лица и цветом кожи, прической! Для каждой куклы можно подобрать самую модную одежду, (и точную копию такой одежды для ее маленькой хозяйки ), обувь, аксессуары, мебель и даже транспортное средство.');
INSERT INTO `ukam_stories` VALUES(32, 'Build-A-Bear Workshop', 'http://www.buildabear.com/', 'img/stories/32.gif', 0, 'В этом волшебном месте каждый маленький покупатель найдет себе лучшего плюшевого друга из целого набора мишек, собачек, котят, зайчиков. После этого он без труда подберет для нового друга всю необходимую одежду, обувь и аксессуары. В этом магазине всегда очередь! ');
INSERT INTO `ukam_stories` VALUES(33, 'Barnes and Noble', 'http://www.barnesandnoble.com', 'img/stories/28.gif', 0, 'Крупнейшая сеть книжных магазинов США. Здесь можно купить абсолютно любую книгу, которая издавалась в Америке. Художественная литература, классические произведения, книжные новинки, бестселлеры, документалистика, детские книги, литература для подростков, учебная литература, справочники, словари, кулинарные книги, путеводители, географические карты, журналы. Миллионы книг на английском и испанском языках. ');
INSERT INTO `ukam_stories` VALUES(34, 'Borders', 'http://www.borders.com', 'img/stories/33.gif', 0, 'Вторая по величине сеть книжных магазинов в США. Широчайший выбор книг для самого притязательного читателя. ');
INSERT INTO `ukam_stories` VALUES(35, 'Amazon', 'http://www.amazon.com/', 'img/stories/34.gif', 0, 'Крупнейший онлайновый книжный магазин. Миллионы книг самой разнообразной тематики по низким ценам. Букинистические разделы. ');
INSERT INTO `ukam_stories` VALUES(36, 'Penguin Books', 'http://www.us.penguingroup.com/', 'img/stories/35.gif', 0, 'Интернет-магазин издательства Penguin Books, художественная литература, справочники, биографическая литература, книги для юных читателей, академические и классические книги.');
INSERT INTO `ukam_stories` VALUES(37, 'Sephora', 'http://www.sephora.com', 'img/stories/36.gif', 0, 'Крупнейший косметический магазин Америки. Все известные мировые бренды. Бесплатная доставка по Америке от $50, три пробника в подарок с каждым заказом, непрекращающиеся акции и выгодные наборы косметики. Отзывы покупателей.');
INSERT INTO `ukam_stories` VALUES(38, 'Bath and Body Works', 'http://www.bathandbodyworks.com/', 'img/stories/38.gif', 0, 'Ароматические средства для ванны и душа, средства по уходу за телом и волосами, подарочные наборы,  аксессуары для дома. Этот магазин любим многими американцами за качество и широкий выбор продукции: можно купить с одним ароматом всю линию, начиная от ароматизатора для комнаты и заканчивая антибактериальным жидким мылом из кухонной коллекции, убивающем посторонние благоухания. Низкие цены приятно вас удивят.');
INSERT INTO `ukam_stories` VALUES(39, 'The Body Shop', 'http://www.thebodyshop-usa.com/', 'img/stories/39.gif', 0, 'Вся продукция магазина The Body Shop изготовлена из натуральных ингредиентов, и эффективно подчеркнет Вашу природную красоту. Товары по уходу за телом, средства для ванны, средства для кожи лица, декоративная косметика, средства для волос, парфюмерия. Скидки.');
INSERT INTO `ukam_stories` VALUES(40, 'Ulta', 'http://www.ulta.com/', 'img/stories/39.gif', 0, 'Крупный косметический универмаг Америки. Многообразие брендов. Продукты по уходу за кожей лица, телом, волосами, декоративная косметика, парфюмерия. Три бесплатных пробника с каждой покупкой.');
INSERT INTO `ukam_stories` VALUES(41, 'Beauty.com', 'http://www.drugstore.com/', 'img/stories/40.gif', 0, 'Известный онлайновый магазин косметики и парфюмерии. Огромный ассортимент средств по уходу за кожей лица и тела, за волосами, средства для ванны и ароматерапии, декоративная косметика. Акции и скидки. ');
INSERT INTO `ukam_stories` VALUES(42, 'GNC', 'http://www.gnc.com/', 'img/stories/41.gif', 0, 'Крупнейшая сеть магазинов Америки, предлагающая широкий ассортимент товаров для здоровья. Огромный выбор витаминов и пищевых добавок, протеиновые коктейли для спортсменов, средства для похудения и натуральной очистки организма. ');
INSERT INTO `ukam_stories` VALUES(43, 'Perfume.com', 'http://www.perfume.com/', 'img/stories/42.gif', 0, 'Самая крупная в мире онлайн-империя ароматов. 100% гарантия подлинности всех духов известных брендов со скидкой от 20 до 60%. В наличие имеется свыше 12000 ароматов – как самых новых, так и уже ставших раритетом. Каждый найдет для себя здесь свой аромат. Шоппинг никогда не пах так хорошо!');
INSERT INTO `ukam_stories` VALUES(44, 'Beauty Encounter', 'http://www.beautyencounter.com/', 'img/stories/44.gif', 0, 'Если вы долго ищете по всем парфюмерным магазинам мира, духи, которые уже перестали выпускать - посетите Beauty Encounter! Здесь вы найдете ваши первые "французские духи", ностальгические парфюмы 80-х и 90-х годов и редкие лимитированые серии, давно раскупленные в других местах. Что немаловажно - приобрести косметику и парфюмерию вы можете по очень приятным ценам.');
INSERT INTO `ukam_stories` VALUES(45, 'CosmeticMall.com', 'http://cosmeticmall.com', 'img/stories/45.gif', 0, 'Универмаг косметики на любой вкус и кошелек.');
INSERT INTO `ukam_stories` VALUES(46, 'Perricone MD', 'http://www.perriconemd.com/', 'img/stories/45.gif', 0, 'Всемирно известный доктор Николас Перриконе доказывает, что со старением можно бороться не прибегая к пластической хирургии. Проведя многолетние клинические исследования, он создал целые космецевтические комплексы по уходу за кожей на основе запатентованных формул. Все средства от доктора Перриконе мягкие, натуральные и самое главное – они работают.');
INSERT INTO `ukam_stories` VALUES(47, 'Lancome', 'http://www.lancome-usa.com/', 'img/stories/46.gif', 0, 'Официальный сайт Lancome в Америке. Последние коллекции, наборы, раздел школы макияжа, скидок и товаров, которые снимаются с производства, а также специальные предложения и пробники в подарок.');
INSERT INTO `ukam_stories` VALUES(48, 'Clinique', 'http://www.clinique.com/', 'img/stories/48.gif', 0, 'Ведущая косметическая фирма Америки - Clinique - совершила революцию в косметологии, создав знаменитую трехступечатую систему по уходу за лицом. Средста этой фирмы очень просты, гипоаллергенны и чрезвычайно эффективны.');
INSERT INTO `ukam_stories` VALUES(49, 'L’Occitane', 'http://usa.loccitane.com/', 'img/stories/48.gif', 0, 'Французская косметика Loccitane на основе растительных компонентов. Самый полный ассортимент, наборы и подарки с каждым заказом.');
INSERT INTO `ukam_stories` VALUES(50, 'Estee Lauder', 'http://www.esteelauder.com/', 'img/stories/49.gif', 0, 'Всемирно известная косметическая фирма Есте Лаудер очень внимательна к своим клиентам,в особенности тем, кто делает покупки онлайн. Каждую неделю на официальном сайте меняются выгодные специальные предложения, действует постоянная бесплатная доставка от $50 и с каждым заказом дарится два пробника на выбор.');
INSERT INTO `ukam_stories` VALUES(51, 'Mac', 'http://www.maccosmetics.com/', 'img/stories/50.gif', 0, 'Официальный онлайн магазин поофессиональной косметки МАС. Самый полный ассортимент, самые свежие коллекции. Бесплатная доставка по Америке от $60.');
INSERT INTO `ukam_stories` VALUES(52, 'Laura Mercier', 'http://www.lauramercier.com/', 'img/stories/51.gif', 0, 'Средства для изысканного макияжа, ухода за кожей лица, тела, за волосами, продукты для ванны и ароматерапии от ведущего визажиста Laura Mercier.');
INSERT INTO `ukam_stories` VALUES(53, 'Clarins', 'http://us.clarins.com/', 'img/stories/52.gif', 0, 'Французская Компания Clarins имеет непревзойденный опыт в области создания продуктов для поддержания и сохранения природной красоты, предлагая самые безопасные и эффективные продукты, гарантирующие реальный результат.');
INSERT INTO `ukam_stories` VALUES(77, 'Destination Maternity', 'http://www.destinationmaternity.com/', 'img/stories/1.gif', 0, 'Все, что нужно будущей маме. Любая одежда всех размеров, включая вечерние платья; нижнее белье, средства для ухода за кожей, белье для кормящих мам. Доступные цены.');
INSERT INTO `ukam_stories` VALUES(54, 'Shu Uemura', 'http://www.shuuemura.com/', 'img/stories/53.gif', 0, 'Японское искусство красоты.');
INSERT INTO `ukam_stories` VALUES(55, 'Georgio Armani Beauty', 'http://www.giorgioarmanibeauty-usa.com/', 'img/stories/54.gif', 0, 'Декоративная косметика класса люкс от маэстро Джорджио Армани. ');
INSERT INTO `ukam_stories` VALUES(56, 'Victoria’s Secret', 'http://www.victoriassecret.com/', 'img/stories/55.gif', 0, 'Самое изысканное и соблазнительное белье для прекрасных дам. Многообразие расцветок, стилей, удобство и комфорт. А также уютные пижамы, сексуальные купальники, одежда на все случаи жизни и на любой сезон, обувь.');
INSERT INTO `ukam_stories` VALUES(57, 'Bare Necessities', 'http://www.barenecessities.com/', 'img/stories/56.gif', 0, 'Мультибрендовый бутик прекрасного нижнего белья на любой вкус и размер. В наличие имеется изысканное свадебное белье и удобное белье для беременных женщин и кормящих мам. Колготки и чулки, пижамы, и многое другое. ');
INSERT INTO `ukam_stories` VALUES(58, 'Lingerie.com', 'http://www.lingerie.com/', 'img/stories/57.gif', 0, 'В этом магазине есть и нежные кружева для брачной ночи и агрессивные кожаные корсеты, хлысты и пятнадцатисантиметровые шпильки для тех, кто любит погорячее. Для женщин в теле раздел Plus Size.');
INSERT INTO `ukam_stories` VALUES(59, 'Hanes', 'http://www.hanes.com/Hanes/', 'img/stories/58.gif', 0, 'Натуральное и экологичное белье из хлопка для женщин, мужчин и детей. Цены от $1,99. ');
INSERT INTO `ukam_stories` VALUES(60, 'Fresh Pair', 'http://www.freshpair.com/', 'img/stories/59.gif', 0, 'Если Вы ищите сексуальные трусики, чтобы удивить дорогого Вам человека, или удобное повседневное белье – этот сайт для Вас. Бюстгальтеры всех стилей, фасонов и размеров. Мужское белье. Низкие цены.');
INSERT INTO `ukam_stories` VALUES(61, 'Calvin Klein Underwear', 'http://www.cku.com/', 'img/stories/60.gif', 0, 'Комфортное, красивое и практичное белье на каждый день от всемирно известного модельера.');
INSERT INTO `ukam_stories` VALUES(62, 'Maidenform', 'https://www.maidenform.com/', 'img/stories/61.gif', 0, 'Бюстгальтеры, трусики и корректирующее белье Мaidenform любую проблемную фигуру превратят в идеальную. Низкие цены.');
INSERT INTO `ukam_stories` VALUES(63, 'Nancy Meyer', 'http://www.nancymeyer.com/lingerie/', 'img/stories/62.gif', 0, 'Магазин шикарного нижнего белья и купальников. La Perla, WOLFORD, AUBADE, LISE CHARMEL, ARGENTOVIVO, CHANTELLE, DAMARIS, DOLCE & GABBANA, HUIT LINGERIE, MILLESIA, MIMI HOLLIDAY,  MYLA, NINA RICCI, OCCHI VERDI BY LA PERLA, PARAH, ROBERTO CAVALLI, SIMONE PERELE, SONIA RYKIEL.');
INSERT INTO `ukam_stories` VALUES(64, 'Winter Silks', 'http://www.wintersilks.com/', 'img/stories/63.gif', 0, 'Широкий выбор нежного и женственного нижнего белья из шелка любого размера, а также спортивной и повседневной одежды. Прекрасное мужское и детское белье из натурального шелка. Особенно хороша зимняя коллекция тончайшего термосберегающего белья на любой вкус и размер');
INSERT INTO `ukam_stories` VALUES(65, 'MaryGreen.com', 'http://marygreen.com/', 'img/stories/64.gif', 0, 'Шикарная домашняя одежда и белье из натурального шелка и кружев по доступным ценам. Пижамы, халаты, ночнушки ярких цветов и необычных сочетаний. Выбор, достойный тонких натур! ');
INSERT INTO `ukam_stories` VALUES(66, 'Spanx', 'http://www.spanx.com', 'img/stories/65.gif', 0, 'Если вам предстоит торжественный выход, но необходимо скрыть недостатки фигуры или создать видимость отсутствия белья под облегающим шелковым платьем, бренд Spanx предлагает лучшее утягивающее и невидимое белье и колготки.');
INSERT INTO `ukam_stories` VALUES(67, 'Sleepy heads', 'http://www.sleepyheads.com/', 'img/stories/66.gif', 0, 'Огромнейший ассортимент пижам для женщин, мужчин и детей на любой вкус, возраст и размер. Смешные хлопковые маечки с шортиками "Хелло,Китти!", соблазнительные пеньюары леопардовой расцветки "Бетси Джонсон", нежные пастельные кружевные ночнушки "Эбержей". Все для вашей спокойной ночи и доброго утра!');
INSERT INTO `ukam_stories` VALUES(68, 'Fig Leaves', 'http://www.figleaves.com/', 'img/stories/67.gif', 0, 'Крупнейший бельевой магазин Англии, представляющий известные бренды. Нижнее белье, колготки и одежда для женщин, мужчин и детей, большой раздел купальников, а также постоянно действующий скидочный аутлет.');
INSERT INTO `ukam_stories` VALUES(69, 'Natori', 'http://www.natori.com/', 'img/stories/68.gif', 0, 'Шикарное женское и мужское белье Natori, купальники, одежда, аксессуары.');
INSERT INTO `ukam_stories` VALUES(70, 'Damaris', 'http://damaris.co.uk/', 'img/stories/69.gif', 0, 'Английский магазин изысканного белья класса "люкс". Исключительная особенность брендов Дамарис и Мими Холидей это белье только из натурального шелка и бантиком на трусиках сзади. Бантики бывают разные. Шикарные атласные в полметра, как шлейф, для особых случаев в Дамарис или скромные, кокетливые в Мими Холидей. Но изюминка, прославившая фирму, всегда неизменна');
INSERT INTO `ukam_stories` VALUES(71, 'Her Room', 'http://www.herroom.com/', 'img/stories/70.gif', 0, 'Her Room – это не только удобные и красивые трусики и бюстгальтеры, но и купальники, ночные рубашки, пижамы и халаты, утягивающее белье, чулки и колготки.  Более 200 дизайнерских брендов. Привлекательные цены.');
INSERT INTO `ukam_stories` VALUES(72, 'Marc Wayne Intimates', 'http://www.marcwayneintimates.com/', 'img/stories/71.gif', 0, 'Мультибрендовый бутик фирм Bali, Barely There, Calvin Klein, Chantelle, Cosabella, Dolce & Gabbana, Ed Hardy, Elle Macpherson, Fantasie, Goddess, Hanky Panky, Huit, La Perla, Le Mystere, Natori, WaCoal.');
INSERT INTO `ukam_stories` VALUES(73, 'Shapings', 'http://shapings.com/', 'img/stories/72.gif', 0, 'Бутик колготок и чулок известных фирм: Fogal, Cette, Charnos, Gabriella, Gerbe, Glamour, Oroblu, Philippe Matignon, Pierre Mantoux. Изюминка - мужские колготки!');
INSERT INTO `ukam_stories` VALUES(74, 'Bits of Lace', 'http://bitsoflace.com/', 'img/stories/73.gif', 0, 'Шикарное нижнее белье лучших бельевых брендов мира! Есть раздел больших размеров.');
INSERT INTO `ukam_stories` VALUES(75, 'Kiki de Montparnasse', 'http://www.kikidm.com/', 'img/stories/74.gif', 0, 'Элитный бренд нижнего белья и комфортной одежды для дома. Также представлены разделы эротических костюмов, карнавальных масок, плеток из кожи крокодила и вибраторов класса "люкс".');
INSERT INTO `ukam_stories` VALUES(76, 'Wendy Glez', 'http://wendyglez.com/', 'img/stories/75.gif', 0, 'Романтичное белье и изысканная одежда для дома из натурального шелка.');
INSERT INTO `ukam_stories` VALUES(78, 'A Pea in the Pod', 'http://www.apeainthepod.com/', 'img/stories/77.gif', 0, 'Мультибрендовый магазин одежды для беременных. Натуральные ткани и модные фасоны. Самые модные дизайнерские джинсы с эластичными вставками, трикотаж Diane Von Furstenberg, футболки Ed Hardy, платья Ella Moss.  Средства для ухода за кожей и аксессуары для ухода за младенцем.');
INSERT INTO `ukam_stories` VALUES(79, 'Old Navy', 'http://oldnavy.gap.com/', 'img/stories/78.gif', 0, 'В период ожидания ребенка комфорт и хорошее настроение для женщины превыше всего. В яркой и позитивной одежде Old Navy у вас никогда не будет плохого настроения, а удобный крой, модные фасоны и низкие цены добавят повода для радости.');
INSERT INTO `ukam_stories` VALUES(80, 'Kiki`s Fashion Maternity', 'http://kikisfashion.com/', 'img/stories/79.gif', 0, 'Стильная и уникальная одежда для будущих мамочек по очень низким ценам.');
INSERT INTO `ukam_stories` VALUES(81, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/80.gif', 0, 'Ожидание ребенка – один из самых особых периодов в Вашей жизни. Подчеркните свою красоту модными новинками и наиболее необходимыми товарами для беременных женщин от престижного американского универмага Nordstrom.');
INSERT INTO `ukam_stories` VALUES(82, 'Glamourmom.com', 'http://glamourmom.com/', 'img/stories/81.gif', 0, 'Самые удобные и практичные для каждой мамы маечки и топы для грудного вскармливания Вашего малыша.');
INSERT INTO `ukam_stories` VALUES(83, 'Babies R Us', 'http://www.babiesrus.com/', 'img/stories/82.gif', 0, 'Самый огромный универмаг для новорожденных. Здесь есть абсолютно все. Все, необходимое для будущих и кормящих мам. Все, что нужно малышу. Одежда на любой сезон, коляски, постельное белье, средства по уходу за кожей младенца, все для кормления ребенка, обувь, игрушки – огромнейший ассортимент всего. Высочайшее качество. Привлекательные цены.');
INSERT INTO `ukam_stories` VALUES(84, 'The Children`s Place', 'http://www.childrensplace.com/', 'img/stories/83.gif', 0, 'Яркие, высококачественные одежда и аксессуары для новорожденных по СКАЗОЧНО НИЗКИМ ЦЕНАМ! Постоянные распродажи! Прекрасные натуральные материалы, яркие краски, стильные фасоны. ');
INSERT INTO `ukam_stories` VALUES(85, 'GAP', 'http://www.babygap.com/', 'img/stories/84.gif', 0, 'Высокая мода для самых маленьких. Безукоризненный стиль, восхитительные цвета, натуральные ткани – Вы и Ваши маленькие модники будете очень довольны! Хлопковые рубашки, футболки, блузки, свитера, джинсовая одежда, купальники, нижнее белье, колготки, платьица, юбочки, шорты, шарфики и шапочки, теплые куртки, элегантные плащики,  роскошные пальто, мягкая обувь, милые украшения, аксессуары, коляски, постельное белье – все товары самого высокого качества от известнейшей сети американских магазинов Gap, в широком ассортименте и по демократичным ценам. ПОСТОЯННЫЕ РАСПРОДАЖИ!');
INSERT INTO `ukam_stories` VALUES(86, 'Baby Mall Online', 'https://www.babymallonline.com/', 'img/stories/85.gif', 0, 'Все, что нужно новорожденному и малышу до года. Очень дешево!');
INSERT INTO `ukam_stories` VALUES(87, 'Carter`s', 'http://www.carters.com/', 'img/stories/86.gif', 0, 'Основанная в 1865 году, компания Carter`s одела несколько поколений американских детей. Прекрасные товары для детей – от новорожденных до детей 7 лет. Высокое качество. Низкие цены.');
INSERT INTO `ukam_stories` VALUES(88, 'Baby Once', 'http://babyonce.com/', 'img/stories/87.gif', 0, 'Все для самых маленьких модников. Одежда, аксессуары, шляпки и солнечные очки, товары для ухода за малышом, постельное белье, все для детских комнат. ');
INSERT INTO `ukam_stories` VALUES(89, 'Milk Shop', 'http://www.milkshop.com/', 'img/stories/88.gif', 0, 'Крупный мультибрендовый бутик для детей от рождения до 10 лет. Adidas, Converse, Diesel Kids, Disney Vintage, J Brand, Juicy Couture Baby, Juicy Couture Kids, Kiehl`s, L.A.M.B, Lacoste, Seven For All Mankind, True Religion, UGG, Y-3.');
INSERT INTO `ukam_stories` VALUES(90, 'H&M', 'http://www.hm.com/us/', 'img/stories/90.gif', 0, 'Всемирно любимая сеть магазинов предлагает модные и качественные товары по самым низким ценам. Широкий и разнообразный выбор одежды, белья, обуви и аксессуаров для женщин, мужчин, подростков и детей.');
INSERT INTO `ukam_stories` VALUES(91, 'Forever 21', 'http://www.forever21.com/', 'img/stories/91.gif', 0, 'Феномен в мире моды, Forever21 предлагает покупателям беспрецедентный выбор современных фасонов одежды по очень низким ценам.  Платья, блузки, свитера, джинсы, нижнее белье, обувь, пальто, сумки, аксессуары – выбор огромен.');
INSERT INTO `ukam_stories` VALUES(92, 'GAP', 'http://www.gap.com/', 'img/stories/92.gif', 0, 'Прекрасные джинсы, хлопковые рубашки, футболки, блузки, свитера, купальники, нижнее белье, платья, юбки, шарфики и шапки, пояса, куртки и пальто, украшения и сумки – все товары высокого качества от известнейшей сети американских магазинов Gap, в широком ассортименте и по демократичным ценам. Постоянные распродажи!');
INSERT INTO `ukam_stories` VALUES(93, 'Old Navy ', 'http://oldnavy.gap.com/', 'img/stories/93.gif', 0, 'Old Navy – младший брат знаменитых магазинов Gap и Banana Republic. Многообразие товаров высокого качества для повседневной жизни. Джинсы, шорты, капри. Юбки и платья, топы, свитера, рубашки, спортивная одежда. Помимо потрясающе низких цен – постоянные распродажи.');
INSERT INTO `ukam_stories` VALUES(94, 'Cache', 'http://www.cache.com/', 'img/stories/94.png', 0, 'Cache – американская сеть товаров для динамичных молодых женщин, от удобной спортивной одежды до обворожительных вечерних платьев и современных аксессуаров.  Сексуальность, смелость фасонов для любого случая.');
INSERT INTO `ukam_stories` VALUES(95, 'Delia`s', 'http://store.delias.com/', 'img/stories/94.gif', 0, 'Delia`s предлагает самые последние новинки для девочек-подростков, включая платья, джинсы, трикотаж, огромный ассортимент ярких футболок с разнообразными принтами, очки, обувь, верхнюю одежду – по самым привлекательным ценам.');
INSERT INTO `ukam_stories` VALUES(96, 'Charlotte Russe', 'http://www.charlotterusse.com/', 'img/stories/95.gif', 0, 'Сеть магазинов Charlotte Russe предлагает восхитительный ассортимент стильной одежды и аксессуаров для интересующихся модой девушек по низким ценам.');
INSERT INTO `ukam_stories` VALUES(97, 'Aeropostale', 'http://www.aeropostale.com/', 'img/stories/96.gif', 0, 'Aeropostale – это высококачественная модная одежда для активной молодежи по очень соблазнительным ценам. Топы, джинсы, платья, сумки, обувь, аксессуары, спортивная и верхняя одежда в широком ассортименте и с постоянными скидками.');
INSERT INTO `ukam_stories` VALUES(98, 'American Eagle Outfitters', 'http://www.ae.com/', 'img/stories/97.gif', 0, 'Удобные модные рубашки, стильные шорты, уютные свитера, разнообразные юбки, яркие платья, мягкая удобная обувь, сумки, пояса –  для энергичной молодежи по демократичным ценам! Скидки круглый год.');
INSERT INTO `ukam_stories` VALUES(99, 'Armani Exchange', 'http://www.armaniexchange.com/', 'img/stories/98.gif', 0, 'Молодежная линия от итальянского кутюрье Джорджио Армани. Чувственный и уникальный стиль для молодых и сексуальных. Одежда, аксессуары, солнцезащитные очки, бижутерия.');
INSERT INTO `ukam_stories` VALUES(100, 'Express', 'http://www.express.com/', 'img/stories/99.gif', 0, 'Express – это самые свежие тенденции моды, утонченный стиль, самые ключевые вещи гардероба. Спектр предлагаемых товаров -  от ярких фривольных шелковых блузок до деловых костюмов. Высококачественные мужские рубашки, брюки и трикотаж. Пояса, сумки, украшения. Цены очень доступны. ');
INSERT INTO `ukam_stories` VALUES(101, 'Victoria`s Secret', 'http://www2.victoriassecret.com/', 'img/stories/100.gif', 0, 'Огромный выбор красивого и удобного женского белья. Помимо этого, широко представлена линия одежды, купальников, обуви и аксессуаров от известных дизайнеров. Акции и распродажи  круглый год! ');
INSERT INTO `ukam_stories` VALUES(102, 'Banana Republic', 'http://bananarepublic.gap.com/', 'img/stories/101.gif', 0, 'Современная элегантная одежда для девушек и юношей -плюс удобная обувь, модные сумки высочайшего качества, изысканные аксессуары, стильная бижутерия. Любимый магазин офисных работников, ценящих изящество, комфорт и стиль.');
INSERT INTO `ukam_stories` VALUES(103, 'Juicy Couture', 'http://www.juicycouture.com/', 'img/stories/102.png', 0, 'Гламурные велюровые махровые костюмчики, комфортная и стильная одежда для романтичных девушек. Платья, нижнее белье, балетки и шлепки, аксессуары для любимых собачек и отдыха. И, конечно же, стильные и яркие сумки Джуси Кутюр!');
INSERT INTO `ukam_stories` VALUES(104, 'French connection', 'http://www.frenchconnection.com/', 'img/stories/103.gif', 0, 'Изысканная дизайнерская модная одежда для широкого круга молодых покупателей – мужская, женская плюс соответствующие аксессуары в виде сумочек, рюкзаков, головных уборов, косметики.');
INSERT INTO `ukam_stories` VALUES(105, 'DKNY', 'http://www.dkny.com/', 'img/stories/104.gif', 0, 'Энергия и дух Нью-Йорка! Эклектичная, прикольная, настоящая одежда от Донны Каран для всех, для работы и отдыха, от джинсов до вечерних платьев. Модно и доступно. Регулярно обновляющиеся специальные предложения.');
INSERT INTO `ukam_stories` VALUES(106, 'Calvin Klein', 'http://www.calvinklein.com/', 'img/stories/105.gif', 0, 'Знаменитый дизайнер одежды и нижнего белья для женщин и мужчин, обуви, аксессуаров, сумок, постельного белья, посуды, и прочего, прочего, прочего.');
INSERT INTO `ukam_stories` VALUES(107, 'Tommy Hilfiger', 'http://www.shoptommy.com/tommy/', 'img/stories/106.gif', 0, 'Одна из ведущих мировых торговых марок, Tommy Hilfiger предлагает безупречный стиль и качество в сочетании с приемлемой ценой. Это мужская, женская и детская одежда, джинсы, спортивная одежда, аксессуары, духи и товары для дома. ');
INSERT INTO `ukam_stories` VALUES(108, 'Levi`s', 'http://levi.com/', 'img/stories/107.gif', 0, 'Американская икона с 1853 года, прославившаяся на весь мир.  Классические джинсы любого размера, стиля, фасона, цвета. Цены Вас порадуют!');
INSERT INTO `ukam_stories` VALUES(109, 'BCBG MAXAZRIA', 'http://www.bcbg.com/', 'img/stories/108.gif', 0, 'Одно из самых известных имен в современной индустрии моды. Комбинация европейской утонченности с американским духом. Шелковые платья, деловые костюмы, джинсовые изделия, обувь, купальники, солнечные очки и дамские сумочки. ');
INSERT INTO `ukam_stories` VALUES(110, 'Wilsons Leather', 'http://www.wilsonsleather.com/', 'img/stories/109.gif', 0, 'Прекрасная высококачественная кожаная верхняя одежда, сумки, портфели и дорожные сумки и чемоданы. Круглогодичные акции и скидки магазина позволяют приобрести прекрасные вещи по очень приемлемым ценам. ');
INSERT INTO `ukam_stories` VALUES(111, 'Top Shop', 'http://us.topshop.com/', 'img/stories/110.gif', 0, 'Всемирно известная британская торговая сеть Топшоп является обязательным пунктом назначения для всех модниц. Топшоп совмещает в своих товарах передовой стиль с дружелюбными для Вашего кошелька ценами. Повседневная и нарядная одежда, удобнейшая обувь, белье и аксессуары. ');
INSERT INTO `ukam_stories` VALUES(112, 'Bebe', 'http://www.bebe.com/', 'img/stories/111.gif', 0, 'Самым модным, современным и ярким девушкам нужна соответствующая одежда. Краски, сексуальность и море фантазии - все это Bebe.');
INSERT INTO `ukam_stories` VALUES(113, 'Abercrombie and Fitch', 'http://www.abercrombie.com/', 'img/stories/112.gif', 0, 'Культовый магазин американской молодежи, Abercrombie and Fitch  - это повседневная и вместе с тем роскошная одежда, которая идеально смотрится в любой обстановке не сковывает движений. Яркие цвета одежды создают настроение, привлекают внимание. Магазин Abercrombie&Fitch предлагает огромный спектр одежды: верхняя, женская и мужская одежда, нижнее белье и аксессуары. Женская одежда – это туники, футболки, майки, женственные яркие платья и юбки, шорты и джинсы классического покроя. Мужская одежда – это прекрасные рубашки самого высокого качества и всевозможных расцветок, футболки, шорты, джинсы (огромный ассортимент моделей). Вся одежда отличается высочайшим качеством. Для ее изготовления подобраны мягкие, приятные на ощупь ткани, качественный трикотаж. Большое разнообразие аксессуаров – как для парней, так и для девушек.');
INSERT INTO `ukam_stories` VALUES(114, 'Hollister', 'http://www.hollisterco.com/', 'img/stories/113.gif', 0, 'Одежда для молодежи в стиле Южной Калифорнии – буйство красок, легкие нежные ткани, шорты, струящиеся юбки, приятный трикотаж, изысканные аксессуары, сандалии и шлепки. Все товары – премиум класса');
INSERT INTO `ukam_stories` VALUES(115, 'Miss Sixty', 'http://www.misssixty.com/', 'img/stories/114.gif', 0, 'Miss Sixty - это модная одежда для представительниц слабого пола, для тех, кто всегда хочет выглядеть привлекательно, модно и стильно.');
INSERT INTO `ukam_stories` VALUES(116, 'Ann Taylor LOFT', 'http://www.anntaylorloft.com/', 'img/stories/115.gif', 0, 'Молодежная линия от компании Ann Taylor, лидера по производству и продаже удобной, модной одежды в классическом стиле. Спокойные, натуральные тона, платья, юбки, блузки, деловые костюмы, трикотаж, аксессуары, классическая и удобная обувь для девушек.');
INSERT INTO `ukam_stories` VALUES(117, 'Dereon', 'http://www.dereon.com/', 'img/stories/116.gif', 0, 'Всемирно известная певица Бейонсе вдохновляет девушек со всего мира. А в 2006 году она создала свой бренд одежды - Dereon. Одежда этой марки выгодно выделяется необычностью материалов, непревзойденным качеством, оригинальными дизайнерскими решениями. Обувь Dereon - это ваш вариант, если свобода движения, комфорт и практичность для вас важны. Когда вы наденете что-либо из коллекции Dereon, окружающие по достоинству оценят вашу индивидуальность и вкус. Торговая марка Dereon подразумевает под собой такие понятия, как красота и удобство.');
INSERT INTO `ukam_stories` VALUES(118, 'J.Crew', 'http://www.jcrew.com/', 'img/stories/117.gif', 0, 'Полный ассортимент одежды и аксессуаров для юношей и девушек,  включая изысканные свадебные и праздничные наряды, повседневную одежду, купальники, верхнюю одежду, итальянский кашемир, сумки, пояса, аксессуары и бижутерию. Любимый магазин Первой леди США Мишель Обамы. ');
INSERT INTO `ukam_stories` VALUES(119, 'Venus', 'http://www.venus.com/', 'img/stories/118.gif', 0, 'Все виды качественных купальников любых размеров,пляжных платьев, парео, модной одежды, аксессуаров. 90% купальников, предлагаемых Venus, производятся в США.');
INSERT INTO `ukam_stories` VALUES(120, 'G by Guess', 'http://www.gbyguess.com/', 'img/stories/119.gif', 0, 'Известная своим новаторским стилем, Guess – одна из самых узнаваемых  в мире марок для молодых мужчин и женщин, предлагающая самую модную и стильную одежду, обувь, часы, сумки.');
INSERT INTO `ukam_stories` VALUES(121, 'Urban outfitters', 'http://www.urbanoutfitters.com/', 'img/stories/120.gif', 0, 'Сегодня наприлавках магазинов «Urban Outfitters» можно встретить огромный ассортимент винтажной, богемной иретро одежды. Такжетам можно найти забавные детали длядомашнего интерьера. Вмагазинах «Urban Outfitters» представлены марки таких дизайнеров какLacoste, Diesel, True Religion, Cheap Monday, Betsey Johnson, Obey, имногие другие.');
INSERT INTO `ukam_stories` VALUES(122, 'Macy`s', 'http://www.macys.com/', 'img/stories/121.gif', 0, 'Самый крупный в мире универмаг, за 150 лет полюбившийся многим поколениям американских покупателей и туристов из всего мира. Здесь Вы найдете абсолютно все, что Вам нужно – от одежды для любого поколения и любого случая, до косметики, украшений, часов самых известных марок. ДЕЙСТВУЮТ ПОСТОЯННЫЕ СКИДКИ. ПРИВЛЕКАТЕЛЬНЫЕ ЦЕНЫ.');
INSERT INTO `ukam_stories` VALUES(123, 'Macy`s', 'http://www.macys.com/', 'img/stories/43.gif', 0, 'Самый крупный в мире универмаг, за 150 лет полюбившийся многим поколениям американских покупателей и туристов из всего мира. Здесь Вы найдете абсолютно все, что нужно современному мужчине – от одежды для любого возраста, на любой сезон и для любого случая, до аксессуаров и часов самых известных марок. ДЕЙСТВУЮТ ПОСТОЯННЫЕ СКИДКИ. ПРИВЛЕКАТЕЛЬНЫЕ ЦЕНЫ.');
INSERT INTO `ukam_stories` VALUES(124, 'GAP', 'http://www.gap.com/', 'img/stories/123.gif', 0, 'Легендарный американский бренд. Стильная и доступная одежда. Отличный трикотаж, повседневная и спортивная одежда, джинсы, пояса, рюкзаки и сумки. Демократичность цен, широкий ассортимент и неповторимость. ');
INSERT INTO `ukam_stories` VALUES(125, 'Banana Republic', 'http://bananarepublic.gap.com/', 'img/stories/124.gif', 0, 'Современная изысканная одежда и обувь для элегантных мужчин. Современный покрой и классика.');
INSERT INTO `ukam_stories` VALUES(126, 'Old Navy', 'http://oldnavy.gap.com/', 'img/stories/125.gif', 0, 'Old Navy – младший брат знаменитых магазинов Gap и Banana Republic. Многообразие товаров высокого качества для повседневной жизни. Джинсы, шорты, рубашки, футболки, свитера, куртки, спортивная одежда. Помимо потрясающе низких цен – постоянные распродажи.');
INSERT INTO `ukam_stories` VALUES(127, 'Abercrombie and Fitch', 'http://www.abercrombie.com/', 'img/stories/126.gif', 0, 'Культовый магазин американской молодежи, Abercrombie and Fitch  - это повседневная и вместе с тем роскошная одежда, которая идеально смотрится в любой обстановке не сковывает движений. Магазин Abercrombie&Fitch предлагает огромный спектр мужской одежды:  прекрасные рубашки самого высокого качества и всевозможных расцветок, футболки, шорты, джинсы (огромный ассортимент моделей). Вся одежда отличается высочайшим качеством. Для ее изготовления подобраны мягкие, приятные на ощупь ткани, качественный трикотаж. Большое разнообразие аксессуаров.');
INSERT INTO `ukam_stories` VALUES(128, 'Hollister', 'http://www.hollisterco.com/', 'img/stories/127.gif', 0, 'Одежда для молодежи в стиле Южной Калифорнии – буйство красок, легкие мягкие ткани, шорты, джинсы, приятный трикотаж, изысканные аксессуары. Все товары – премиум класса.');
INSERT INTO `ukam_stories` VALUES(129, 'Express', 'http://www.express.com/', 'img/stories/128.gif', 0, 'Express – это самые свежие тенденции моды, утонченный стиль, самые ключевые вещи гардероба. Спектр предлагаемых товаров -  от модных футболок и элегантных рубашек  до деловых костюмов. ');
INSERT INTO `ukam_stories` VALUES(130, 'Lacoste', 'http://shopapparel.lacoste.com/', 'img/stories/129.gif', 0, 'Эмблема французской марки Лакосте - маленький зеленый крокодильчик - давно стал престижным и узнаваемым символом этой марки. В одежду Лакосте одеваются миллионеры на собственных яхтах, чемпионы мира на соревнованиях по теннису и гольфу и просто ценители комфортной одежды и простых линий. Качество, комфорт и солидность. Если Вы среди избранных - заходите!');
INSERT INTO `ukam_stories` VALUES(131, 'Calvin Klein', 'http://www.calvinklein.com/', 'img/stories/130.gif', 0, 'Знаменитый дизайнер мужской одежды и нижнего белья, обуви, аксессуаров, сумок, и прочего, прочего, прочего.');
INSERT INTO `ukam_stories` VALUES(132, 'Tommy Hilfiger', 'http://www.shoptommy.com/tommy/', 'img/stories/131.gif', 0, 'Одна из ведущих мировых торговых марок, Tommy Hilfiger предлагает безупречный стиль и качество в сочетании с приемлемой ценой. Это удобная и стильная мужская одежда, джинсы, спортивная одежда, аксессуары, духи. ');
INSERT INTO `ukam_stories` VALUES(133, 'Emporio Armani', 'http://www.emporioarmani.com/', 'img/stories/132.gif', 0, 'Итальянский дизайнер, эталон элегантности во всем мире. Emporio Armani – это сочетание классики с современностью, сексуальности с утонченностью. Одежда, нижнее белье, аксессуары и парфюмерия от Emporio Armani отличаются своим неповторимым стилем.');
INSERT INTO `ukam_stories` VALUES(134, 'Levi`s', 'http://levi.com', 'img/stories/133.gif', 0, 'Американская икона с 1853 года, прославившаяся на весь мир.  Классические джинсы любого размера, стиля, фасона, цвета. Цены Вас порадуют!');
INSERT INTO `ukam_stories` VALUES(135, 'DKNY', 'http://www.dkny.com/', 'img/stories/134.gif', 0, 'Энергия и дух Нью-Йорка! Эклектичная, прикольная, настоящая одежда от Донны Каран для всех, для работы и отдыха. Модно и доступно. Регулярно обновляющиеся специальные предложения.');
INSERT INTO `ukam_stories` VALUES(136, 'Michael Kors', 'http://www.michaelkors.com/', 'img/stories/135.gif', 0, 'Ведущий американский дизайнер роскошных аксессуаров и спортивной одежды. Эмблема высочайшего стандарта качества, новаторства и элегантности. ');
INSERT INTO `ukam_stories` VALUES(137, 'J.Crew', 'http://www.jcrew.com/', 'img/stories/136.gif', 0, 'Полный ассортимент мужской одежды и аксессуаров, включая изысканные деловые костюмы, повседневную одежду, верхнюю одежду, итальянский кашемир, сумки, пояса и аксессуары.');
INSERT INTO `ukam_stories` VALUES(138, 'Bloomingdale`s', 'http://www.bloomingdales.com/', 'img/stories/137.gif', 0, 'Это один из самых старейших и престижнейших универмагов Америки – его посещала даже королева Елизавета II. В универмаге Вloomingdales представлены бренды Burberry, BCBGMAXAZRIA, Calvin Klein, Diane von Furstenberg, Betsey Johnson, DKNY, Ed Hardy, Lacoste, Juicy Couture, MICHAEL Michael Kors,  Ralph Lauren, UGG® Australia, Miss Sixty, Marc By Marc Jacobs и многие другие.');
INSERT INTO `ukam_stories` VALUES(139, 'Dillard`s', 'http://www.dillards.com/', 'img/stories/138.gif', 0, 'Сеть универмагов Диллардс предлагает модную одежду от таких известных марок как MICHAEL Michael Kors, BCBGMAXAZRIA, Betsey Johnson, Calvin Klein, DKNY, Ed Hardy, Gottex, Hale Bob, Jessica Simpson, Lauren by Ralph Lauren, Levi`s.');
INSERT INTO `ukam_stories` VALUES(140, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/139.gif', 0, 'Престижный универмаг модной дизайнерской одежды. Один из лидеров американской розничной торговли в сфере моды. Самые приятные скидочные предложения в течении всего года! Одежда, обувь и аксессуары от мировых брендов, представленных в магазине NordStrom, сделают вашу жизнь ярче. 7 For All Mankind®, BCBGMAXAZRIA, Betsey Johnson, Blumarine, Burberry, Calvin Klein, Chantelle Intimates, Chloe, Citizens of Humanity, D&G, Diane von Furstenberg, DIESEL, DKNY, Elle Macpherson Intimates, Fayreform, Huit, J Brand, Jessica Simpson, Juicy Couture, L.A.M.B., Lacoste, Lauren by Ralph Lauren, M Missoni, MARC BY MARC JACOBS, Michael Kors, Oscar de la Renta, Roberto Cavalli, Rock & Republic, UGG® Australia, Wacoal, Zac Posen.');
INSERT INTO `ukam_stories` VALUES(141, 'Lands`End', 'http://www.landsend.com/', 'img/stories/140.gif', 0, 'Гарантия высокого качества и низкой цены на одежду традиционного стиля для всей семьи и товаров для дома.');
INSERT INTO `ukam_stories` VALUES(142, 'JCPenny', 'http://www4.jcpenney.com/', 'img/stories/141.gif', 0, 'Известный демократичный универмаг очень недорогой, но качественной одежды для мужчин всех возрастов и на любой случай.');
INSERT INTO `ukam_stories` VALUES(143, 'H&M', 'http://www.hm.com/us/', 'img/stories/142.gif', 0, 'Всемирно любимая сеть магазинов предлагает модные и качественные товары по самым низким ценам. Широкий и разнообразный выбор одежды, белья и аксессуаров для мужчин.');
INSERT INTO `ukam_stories` VALUES(144, 'The Children`s Place', 'http://www.childrensplace.com/', 'img/stories/143.gif', 0, 'Яркие, высококачественные одежда и аксессуары для детей от новорожденных до 14 лет по СКАЗОЧНО НИЗКИМ ЦЕНАМ! Постоянные распродажи! Прекрасные натуральные материалы, яркие краски, стильные современные фасоны. Магазин детской мечты!');
INSERT INTO `ukam_stories` VALUES(145, 'GAP', 'http://www.gapkids.com/', 'img/stories/144.gif', 0, 'Высокая мода для самых маленьких. Безукоризненный стиль, восхитительные цвета, натуральные ткани – Вы и Ваши маленькие модники будете очень довольны! Прекрасные джинсы, хлопковые рубашки, футболки, блузки, свитера, джинсовая одежда, купальники, нижнее белье, колготки, платьица, юбочки, шорты, шарфики и шапочки, теплые куртки, элегантные плащики,  роскошные пальто, мягкая удобная обувь, милые украшения – все товары самого высокого качества от известнейшей сети американских магазинов Gap, в широком ассортименте и по демократичным ценам. ПОСТОЯННЫЕ РАСПРОДАЖИ!');
INSERT INTO `ukam_stories` VALUES(146, 'Old Navy ', 'http://oldnavy.gap.com/', 'img/stories/145.gif', 0, 'Old Navy – младший брат знаменитого магазина Gap. Эту марку обожают мамочки и детки во всем мире! Удобная стильная одежда из исключительно натуральных тканей с соблюдением самых последних тенденций детской моды. Самое приятное - все стоит очень дешево!\r\n');
INSERT INTO `ukam_stories` VALUES(147, 'H&M', 'http://www.hm.com/us/', 'img/stories/146.gif', 0, 'Всемирно любимая сеть магазинов предлагает модные и качественные детские товары по самым низким ценам. Широкий и разнообразный выбор прекрасной и недорогой яркой одежды и аксессуаров для Ваших детей!');
INSERT INTO `ukam_stories` VALUES(148, 'Gymboree', 'http://www.gymboree.com/', 'img/stories/147.gif', 0, 'Прекрасное качество детских вещей, яркие, но благородные расцветки, модные и комфортные модели - все детки носят Gymboree c удовольствием! А их родителям нравятся низкие цены.');
INSERT INTO `ukam_stories` VALUES(149, 'Macy`s', 'http://www.macys.com/', 'img/stories/148.gif', 0, 'Универмаг Macy`s – крупнейший магазин в мире. За 150 лет своего существования он заслужил самую отменную репутацию и рекомендуется всеми американскими родителями. Детские товары самого высокого качества, всевозможных стилей, расцветок, от ведущих торговых марок. ПОСТОЯННЫЕ СКИДКИ!');
INSERT INTO `ukam_stories` VALUES(150, 'JC Penny', 'http://www4.jcpenney.com/', 'img/stories/149.gif', 0, 'Известный демократичный универмаг очень недорогой, но качественной одежды для мужчин и женщин всех возрастов,  молодежи, детей и младенцев. Широкий выбор высококачественной детской одежды по очень низким ценам.');
INSERT INTO `ukam_stories` VALUES(151, 'Hanna Andersson', 'http://www.hannaandersson.com/', 'img/stories/150.gif', 0, 'Одежда и аксессуары для детей и взрослых из натуральных материалов высокого качества. ');
INSERT INTO `ukam_stories` VALUES(152, 'Hatley Nature', 'http://www.hatleystore.com/', 'img/stories/151.gif', 0, 'Одежда из натуральных тканей экологичных оттенков для детей от рождения до 7 лет с принтами животных: мишек и лошадок. Аксессуары: рюкзаки, сумки для завтраков, резиновые сапоги, зонтики.');
INSERT INTO `ukam_stories` VALUES(153, 'Crazy8', 'http://www.crazy8.com/', 'img/stories/152.gif', 0, 'Все, что нужно детям от рождения до подросткового возраста, можно купить в магазине Crazy8. Яркая, модная детская одежда по невысоким ценам. ');
INSERT INTO `ukam_stories` VALUES(154, '77kids', 'http://ae.com/77kids/', 'img/stories/153.gif', 0, 'Детская линия одежды от известного молодежного бренда American Eagle. Одежда для детей от 2 лет до подросткового возраста.');
INSERT INTO `ukam_stories` VALUES(155, 'Milk shop', 'http://www.milkshop.com/', 'img/stories/154.gif', 0, '"Молочный магазин" для родителей, которые не могут отказать себе в удовольствии одеть наследников в бренды. Adidas, Converse, Diesel Kids, Disney Vintage, J Brand, Juicy Couture Baby, Juicy Couture Kids, Kiehl`s, L.A.M.B, Lacoste, Seven For All Mankind, True Religion, UGG, Y-3.');
INSERT INTO `ukam_stories` VALUES(156, 'Children Salon', 'http://www.childrensalon.com/', 'img/stories/155.gif', 0, 'Брендовый магазин для тех, кто может себе позволить соску от Dior и шиншиловый полушубок Blumarine. Dior, Escada, I PINCO PALLINO, JUICY COUTURE, Kenzo, Levi`s, RALPH LAUREN, ROMEO GIGLI, SIMONETTA.');
INSERT INTO `ukam_stories` VALUES(157, 'Kitsel', 'http://kitsel.com/', 'img/stories/156.gif', 0, 'У вас будет самый стильный малыш! Ed Hardy Kids, Trunk, Kingsley, Junk Food Baby & Toddler, Mitetees Personalized T-Shirts, Urban Bratz, House of Mongrel Organics, Kicky Pants, Decaf Plush, Ambajam');
INSERT INTO `ukam_stories` VALUES(158, 'Tea Collection', 'http://www.teacollection.com/', 'img/stories/158.gif', 0, 'Tea Collection – фирма, основанная в 2002 году, быстро стала одним из самых любимых брэндов детской одежды в Голливуде. Многие знаменитости предпочитают одевать своих деток в одежду от этой компании.');
INSERT INTO `ukam_stories` VALUES(159, 'My Fancy Princess', 'http://www.myfancyprincess.com/', 'img/stories/159.gif', 0, 'Если вас растет маленькая принцесса, ассортимент магазина My Fancy Princess ей наверняка придется по душе. Пышные платья, кружевные колготочки, золотые туфельки - все для ее подрастающего королевского величества!');
INSERT INTO `ukam_stories` VALUES(160, 'Barefootbella', 'http://www.barefootbella.net/', 'img/stories/160.gif', 0, 'Детский магазин с изюминкой: пышные юбочки, эксклюзивные карнавальные костюмы, изысканные аксессуары и повседневная одежда в романтическом стиле. Здесь вы красиво и нарядно оденете не только своих принцесс, но и маленьких принцев.');
INSERT INTO `ukam_stories` VALUES(161, 'Trendy Togs', 'http://trendytogs.com/', 'img/stories/161.gif', 0, 'Магазин одежды и обуви для детей от 3 месяцев до 10 лет.');
INSERT INTO `ukam_stories` VALUES(162, 'A Child`s Closet', 'http://www.achildscloset.com/', 'img/stories/162.gif', 0, 'Детский мультибрендовый бутик. Более 50 брендов.');
INSERT INTO `ukam_stories` VALUES(163, 'Tutti Bella', 'http://tuttibella.com/', 'img/stories/163.gif', 0, 'Повседневная одежда, школьная форма');
INSERT INTO `ukam_stories` VALUES(164, 'Bluefly', 'http://www.bluefly.com/', 'img/stories/164.gif', 0, 'Bluefly – это ведущий американский онлайн-магазин, предлагающий товары от известных дизайнеров по самым приемлемым ценам. ');
INSERT INTO `ukam_stories` VALUES(165, 'Overstock', 'http://www.overstock.com/', 'img/stories/165.gif', 0, 'Overstock.com – крупнейший онлайновый ритейлер. Здесь каждый может найти абсолютно все, что ему нужно, по самой демократичной цене. Широкий выбор одежды, обуви, элегантных украшений, часов, спортивных товаров, постельного белья, товаров для дома и стильных аксессуаров от мировых дизайнеров по доступным ценам. ');
INSERT INTO `ukam_stories` VALUES(166, 'Amazon', 'http://www.amazon.com/', 'img/stories/166.gif', 0, 'Крупнейший интернет-магазин в США. Здесь вы сможете купить одежду и обувь премиум и эконом класса, технику, товары для дома, сада и животных, книги, CD и DVD диски, игрушки, инструменты, видеоигры, косметику, парфюмерию и многое другое.');
INSERT INTO `ukam_stories` VALUES(167, 'Zappos', 'http://www.zappos.com/', 'img/stories/167.gif', 0, 'Zappos -  один из самых известных в США интернет-продавцов обуви. Также в этом магазине представлены одежда, сумки, аксессуары. Огромное количество известных брендов, доступные цены.');
INSERT INTO `ukam_stories` VALUES(168, 'Macy`s', 'http://www.macys.com/', 'img/stories/168.gif', 0, 'Самый крупный в мире универмаг, за 150 лет полюбившийся многим поколениям американских покупателей и туристов из всего мира. Здесь Вы найдете абсолютно все, что Вам нужно – от одежды для любого поколения и любого случая, до косметики, украшений, часов самых известных марок. ДЕЙСТВУЮТ ПОСТОЯННЫЕ СКИДКИ. ПРИВЛЕКАТЕЛЬНЫЕ ЦЕНЫ');
INSERT INTO `ukam_stories` VALUES(169, 'Target', 'http://www.target.com/', 'img/stories/169.gif', 0, 'Второй по величине в Америке магазин, торгующий высококачественными товарами по сниженным ценам. Повседневная одежда для всех – от самых маленьких до взрослых.Представлены эксклюзивные вещи, созданные известными дизайнерами специально для продажи в сети магазинов Target.');
INSERT INTO `ukam_stories` VALUES(170, 'JCPenney', 'http://www.jcp.com/', 'img/stories/170.gif', 0, 'Известный демократичный универмаг очень недорогой, но качественной одежды для мужчин и женщин всех возрастов,  молодежи, детей и младенцев');
INSERT INTO `ukam_stories` VALUES(171, 'Kohl`s', 'http://www.kohls.com/', 'img/stories/171.gif', 0, 'В универмаге Кohl`s можно приобрести всевозможные недорогие товары для всех членов семьи, любого возраста и комплекции.');
INSERT INTO `ukam_stories` VALUES(172, 'Sears', 'http://www.sears.com/', 'img/stories/172.gif', 0, 'Универмаги Sears – это доступные и качественные товары для всей семьи.');
INSERT INTO `ukam_stories` VALUES(173, 'Walmart', 'http://www.walmart.com/', 'img/stories/173.gif', 0, 'Универмаг эконом-класса. Одежда, обувь и аксессуары для всей семьи по самым низким ценам. Большой выбор товаров для будущих мам и новорожденных. Все для спорта и фитнеса, бытовая электроника и товары для дома.');
INSERT INTO `ukam_stories` VALUES(174, 'Bloomingdale`s', 'http://www.bloomingdales.com/', 'img/stories/174.gif', 0, 'Это один из самых старейших и престижнейших универмагов Америки – его посещала даже королева Елизавета II. В универмаге Вloomingdales представлены бренды Burberry, BCBGMAXAZRIA, Calvin Klein, Diane von Furstenberg, Betsey Johnson, DKNY, Ed Hardy, Lacoste, Juicy Couture, MICHAEL Michael Kors,  Ralph Lauren, UGG® Australia, Miss Sixty, Marc By Marc Jacobs и многие другие.');
INSERT INTO `ukam_stories` VALUES(175, 'Dillard`s', 'http://www.dillards.com/', 'img/stories/175.gif', 0, 'Сеть универмагов Диллардс предлагает модную одежду от таких известных марок как MICHAEL Michael Kors, BCBGMAXAZRIA, Betsey Johnson, Calvin Klein, DKNY, Ed Hardy, Gottex, Hale Bob, Jessica Simpson, Lauren by Ralph Lauren, Levi`s.');
INSERT INTO `ukam_stories` VALUES(176, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/176.gif', 0, 'Престижный универмаг модной дизайнерской одежды. Один из лидеров американской розничной торговли в сфере моды. Самые приятные скидочные предложения в течении всего года! Одежда, обувь и аксессуары от мировых брендов, представленных в магазине  NordStrom, сделают вашу жизнь ярче. 7 For All Mankind®, BCBGMAXAZRIA, Betsey Johnson, Blumarine, Burberry, Calvin Klein, Chantelle Intimates, Chloe, Citizens of Humanity, D&G, Diane von Furstenberg, DIESEL, DKNY, Elle Macpherson Intimates, Fayreform, Huit, J Brand, Jessica Simpson, Juicy Couture, L.A.M.B., Lacoste, Lauren by Ralph Lauren, M Missoni, MARC BY MARC JACOBS, Michael Kors, Oscar de la Renta, Roberto Cavalli, Rock & Republic, UGG® Australia, Wacoal, Zac Posen.');
INSERT INTO `ukam_stories` VALUES(177, 'Macy`s', 'http://www.macys.com/', 'img/stories/177.gif', 0, '<a href="http://www1.macys.com/catalog/index.ognc?CategoryID=3111&PageID=13364150727513&kw=Jeans" onclick="window.open(this.href); return false;">Женские</a><br/>\r\n<a href="http://www1.macys.com/catalog/index.ognc?CategoryID=11221&PageID=48196382365753&kw=Jeans" onclick="window.open(this.href); return false;">Мужские</a><br/>\r\nСамый крупный в мире универмаг, за 150 лет полюбившийся многим поколениям американских покупателей и туристов из всего мира. Джинсы на любой вкус и на любую фигуру. ДЕЙСТВУЮТ ПОСТОЯННЫЕ СКИДКИ. ПРИВЛЕКАТЕЛЬНЫЕ ЦЕНЫ.');
INSERT INTO `ukam_stories` VALUES(178, 'Bloomingdale`s', 'http://www.bloomingdales.com/', 'img/stories/178.gif', 0, '<a href="http://www1.bloomingdales.com/catalog/index.ognc?CategoryID=5545&PageID=23818547145936&kw=Denim&loc=leftnav" onclick="window.open(this.href); return false;">Женские</a><br/>\r\n<a href="http://www1.bloomingdales.com/catalog/index.ognc?CategoryID=10172&PageID=43689337135291&kw=Denim&loc=leftnav" onclick="window.open(this.href); return false;">Мужские</a><br/>\r\nЭто один из самых старейших и престижнейших универмагов Америки. Деним самых известных марок. ');
INSERT INTO `ukam_stories` VALUES(179, 'Lord and Taylor', 'http://www.lordandtaylor.com/', 'img/stories/179.gif', 0, '<a href="http://www.lordandtaylor.com/eng/womensapparel-Denim-lordandtaylor" onclick="window.open(this.href); return false;">Женские</a><br/>\r\n<a href="http://www.lordandtaylor.com/eng/Men-Denim-lordandtaylor" onclick="window.open(this.href); return false;">Мужские</a><br/>\r\nПрестижный универмаг. Джинсовая одежда от самых известных дизайнеров.');
INSERT INTO `ukam_stories` VALUES(180, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/180.gif', 0, '<a href="http://shop.nordstrom.com/C/2376057/0~2376776~2374327~2376057?mediumthumbnail=Y&origin=leftnav&pbo=2374327" onclick="window.open(this.href); return false;">Женские</a><br/>\r\n<a href=" http://shop.nordstrom.com/C/789693/0~2376777~2374609~789693?mediumthumbnail=Y&origin=leftnav&pbo=2374609" onclick="window.open(this.href); return false;">Мужские</a><br/>\r\nПрестижный универмаг. Джинсовая одежда от самых известных дизайнеров.');
INSERT INTO `ukam_stories` VALUES(181, '7forallmankind', 'http://www.7forallmankind.com/', 'img/stories/181.gif', 0, '7 for All Mankind является законодателем моды джинсов, предлагающим современный классический покрой, цветовую гамму и дизайн. ');
INSERT INTO `ukam_stories` VALUES(182, 'Rock and Republic', 'http://shop.rockandrepublic.com/', 'img/stories/182.gif', 0, 'На сайте представлены не только всемирно известные джинсы Rock and Republic, но и обувь, косметика, аксессуары и т.д.');
INSERT INTO `ukam_stories` VALUES(183, 'Calvin Klein Jeans', 'http://www.calvinkleinjeans.com/', 'img/stories/183.gif', 0, 'Джинсы, известные своим высоким качеством и удобной посадкой,  и одежда в стиле "кежуал" от Келвина Кляйна! Есть разделы для женщин,  мужчин и большие размеры.');
INSERT INTO `ukam_stories` VALUES(184, 'Daily Denim', 'http://dailydenim.net/', 'img/stories/184.gif', 0, 'Магазин самых лучших джинсовых брендов  предлагает подобрать модели на любой вкус и размер. Женские начинаются с редкого 23-го, мужские оканчиваются не менее редким 42-м размерами.');
INSERT INTO `ukam_stories` VALUES(185, 'Levi`s', 'http://levi.com/', 'img/stories/185.gif', 0, 'Американская икона с 1853 года, прославившаяся на весь мир.  Классические джинсы любого размера, стиля, фасона, цвета. Цены Вас порадуют!');
INSERT INTO `ukam_stories` VALUES(186, 'GAP', 'http://www.gap.com/', 'img/stories/186.gif', 0, 'Прекрасные джинсы, хлопковые рубашки, футболки, блузки, свитера, купальники, нижнее белье, платья, юбки, шарфики и шапки, пояса, куртки и пальто, украшения и сумки – все товары высокого качества от известнейшей сети американских магазинов Gap, в широком ассортименте и по демократичным ценам. Постоянные распродажи!');
INSERT INTO `ukam_stories` VALUES(187, 'Abercrombie and Fitch', 'http://www.abercrombie.com/', 'img/stories/187.gif', 0, 'Культовый магазин американской молодежи, Abercrombie and Fitch  - это повседневная и вместе с тем роскошная одежда, которая идеально смотрится в любой обстановке не сковывает движений. Яркие цвета одежды создают настроение, привлекают внимание. Магазин Abercrombie&Fitch предлагает огромный спектр одежды: верхняя, женская и мужская одежда, нижнее белье и аксессуары. Женская одежда – это туники, футболки, майки, женственные яркие платья и юбки, шорты и джинсы классического покроя. Мужская одежда – это прекрасные рубашки самого высокого качества и всевозможных расцветок, футболки, шорты, джинсы (огромный ассортимент моделей). Вся одежда отличается высочайшим качеством. Для ее изготовления подобраны мягкие, приятные на ощупь ткани, качественный трикотаж. Большое разнообразие аксессуаров – как для парней, так и для девушек.');
INSERT INTO `ukam_stories` VALUES(188, 'Tommy Hilfiger', 'http://www.shoptommy.com/tommy/', 'img/stories/188.gif', 0, 'Одна из ведущих мировых торговых марок, Tommy Hilfiger предлагает безупречный стиль и качество в сочетании с приемлемой ценой. Это мужская, женская и детская одежда, джинсы, спортивная одежда, аксессуары, духи и товары для дома. ');
INSERT INTO `ukam_stories` VALUES(189, 'DKNY', 'http://www.dkny.com/', 'img/stories/189.gif', 0, 'Энергия и дух Нью-Йорка! Эклектичная, прикольная, настоящая одежда от Донны Каран для всех, для работы и отдыха, от джинсов до вечерних платьев. Модно и доступно. Регулярно обновляющиеся специальные предложения.');
INSERT INTO `ukam_stories` VALUES(190, 'Piperlime', 'http://piperlime.gap.com/', 'img/stories/190.gif', 0, 'Piperlime – известный американский обувной бренд, принадлежащий Gap Inc. Мужская, женская, и детская обувь и аксессуары.');
INSERT INTO `ukam_stories` VALUES(191, 'DSW', 'http://www.dsw.com/', 'img/stories/191.gif', 0, 'DSW – это тысячи пар обуви для тех покупателей, которые предпочитают совмещать высокое качество с низкой ценой. Люксовые и демократичные бренды для мужчин и женщин: AK Anne Klein, Baby Phat, Betsey Johnson, Bronx, Celine, Chooka, Christian Audigier, Cole Haan, Columbia, Converse, Corso Como, Derйon Footwear, Dockers, Dr. Martens, Ed Hardy, Emilio Pucci, Emporio Armani, Givenchy, Gucci, Guiseppe Zanotti, Isaac Mizrahi, Kenzo, Marc by Marc Jacobs, Moschino, Naughty Monkey, Nine West, Paul Smith, Penny Loves Kenny, Prada, Reebok, Stuart Weitzman, Tommy Hilfiger, Two Lips, Via Spiga.');
INSERT INTO `ukam_stories` VALUES(192, 'Zappos', 'http://www.zappos.com/', 'img/stories/192.gif', 0, 'Один из самых любимых в Америке интернет-магазинов. Здесь вас удивит огромный ассортимент лучшей дизайнерской и повседневной обуви для женщин, мужчин, подростков, детей – на все случаи жизни. Одежда, обувь и аксессуары магазина представлены известными во всем мире марками, и, вместе с тем, цены на товары остаются приемлемыми. Постоянные скидки.');
INSERT INTO `ukam_stories` VALUES(193, 'Aldo', 'http://www.aldoshoes.com/us', 'img/stories/193.gif', 0, 'Лучшие мировые тенденции обувной моды в канадской сети магазинов Aldo. Высококачественная женская и мужская обувь, сумки, аксессуары.');
INSERT INTO `ukam_stories` VALUES(194, '6pm.com', 'http://www.6pm.com/', 'img/stories/194.gif', 0, 'Дисконтный магазин дизайнерской и повседневной обуви всех возможных стилей по самым низким ценам в онлайне. Сумки, аксессуары, одежда в большом ассортименте для всей семьи на любой случай. Постоянные скидки от 50 до 70%!');
INSERT INTO `ukam_stories` VALUES(195, 'Endless Shoes and Handbags', 'http://www.endless.com/', 'img/stories/195.gif', 0, 'Уникальный магазин женской, мужской, детской, спортивной обуви, а также сумок, аксессуаров в самом широком ассортименте по самым низким ценам. Выбор нужной пары обуви возможна по категории, цвету, размеру, бренду, цене. Подробнейшие описания продукта – фотографии с разных сторон, высота каблука, материал, отзывы покупателей – облегчат Ваш выбор.');
INSERT INTO `ukam_stories` VALUES(196, 'UGG Australia', 'http://www.uggaustralia.com/', 'img/stories/196.gif', 0, 'Хотите купить настоящие австралийские Uggs, но боитесь подделок?Делайте покупки на официальном сайте! Uggs всевозможных цветов и моделей для женщин, детей и мужчин, а также одежда, аксессуары и продукты по уходу. ');
INSERT INTO `ukam_stories` VALUES(197, 'EMU', 'http://www.natureshop.co.nz/', 'img/stories/197.gif', 0, 'Замшевые Uggs с шерстью мериноса на любой вкус и для всей семьи. Бесплатная доставка по Америке, доступные цены.');
INSERT INTO `ukam_stories` VALUES(198, 'Koolaburra', 'http://www.koolaburra.com/', 'img/stories/198.gif', 0, 'Гламурные меховые "агги" из Австралии! Не только тепло и удобно, но и очень красиво. Вышивка, стразы, стильные аппликации - для настоящих ценителей! Дорогое удовольствие.');
INSERT INTO `ukam_stories` VALUES(199, 'Nine West', 'http://ninewest.com/', 'img/stories/199.gif', 0, 'Обувь, сумки и одежда для женщин от известного дизайнера. Удобная колодка, широкий ассортимент, размеры от самых маленьких до самых больших. Привлекательные цены.');
INSERT INTO `ukam_stories` VALUES(249, 'H&M', 'http://www.hm.com/us/', 'img/stories/249.gif', 0, 'Всемирно любимая сеть магазинов предлагает модные и качественные товары по самым низким ценам. Широкий и разнообразный выбор одежды, белья, обуви и аксессуаров для женщин, мужчин, подростков и детей.');
INSERT INTO `ukam_stories` VALUES(201, 'Onlineshoes.com', 'http://www.onlineshoes.com/', 'img/stories/201.gif', 0, 'Большой ассортимент обуви известных марок. 100% аутентичность. Бесплатная доставка по США. Отсутствие налога. 90 дней гарантии возврата.');
INSERT INTO `ukam_stories` VALUES(248, 'Sears', 'http://www.sears.com/', 'img/stories/248.gif', 0, 'Универмаги Sears – это доступные и качественные товары для всей семьи.');
INSERT INTO `ukam_stories` VALUES(203, 'Designers Imports', 'http://designersimports.com/', 'img/stories/203.gif', 0, 'Онлайн-бутик дизайнерской обуви, сумок, аксессуаров и одежды по самым низким ценам.');
INSERT INTO `ukam_stories` VALUES(204, 'Jildor', 'http://www.jildorshoes.com/', 'img/stories/204.gif', 0, 'Лидер по продаже обуви для женщин любого возраста и на любой вкус, на все сезоны и случаи жизни. Stuart Weitzman, Donald J. Pliner Shoes, Marc by Marc Jacobs, Tory Burch, KORS by Michael Kors, Kate Spade Shoes, Loeffler Randall, Frye Boots, Jack Rogers, Bernardo Shoes, Juicy Couture Boots, Golden Goose Boots, Fiorentini, Baker boots, French Sole, Pedro Garcia Shoes, daniblack shoes, Chloé, Thierry Rabotin, Vera Wang Lavender, Muks, Cole Haan, Steve Madden Boots, Ed Hardy Boots, Sam Edelman Shoes, Converse Shoes, Havaianas Shoes and Ugg Australia.');
INSERT INTO `ukam_stories` VALUES(205, 'Aerosoles', 'http://www.aerosoles.com/', 'img/stories/205.gif', 0, 'Высококачественная, удобная, модная обувь по доступной цене. ');
INSERT INTO `ukam_stories` VALUES(247, 'Kohl`s', 'http://www.kohls.com/', 'img/stories/247.gif', 0, 'В универмаге Кohl`s можно приобрести всевозможные недорогие товары для всех членов семьи, любого возраста и комплекции.');
INSERT INTO `ukam_stories` VALUES(207, 'Coach', 'http://www.coach.com/', 'img/stories/207.gif', 0, 'Легендарные сумки Coach. Один из самых успешных американских брендов. В ассортименте магазина широкий выбор качественных сумок, кошельков, ремней, обуви.');
INSERT INTO `ukam_stories` VALUES(246, 'JCPenney', 'http://www.jcp.com/', 'img/stories/246.gif', 0, 'Известный демократичный универмаг очень недорогой, но качественной одежды для мужчин и женщин всех возрастов,  молодежи, детей и младенцев.');
INSERT INTO `ukam_stories` VALUES(209, 'Steve Madden', 'http://www.stevemadden.com/', 'img/stories/209.gif', 0, 'Огромный выбор женской, мужской и детской обуви: сапоги, ботинки, туфли, балетки, кеды, босоножки и др. Скидки до 50%. Большой выбор кожаных сумок и аксессуаров.');
INSERT INTO `ukam_stories` VALUES(210, 'Elliott Lucca', 'http://www.elliottlucca.com/', 'img/stories/210.gif', 0, 'Широкий ассортимент классических сумок  из мягкой натуральной кожи. Доступные цены.');
INSERT INTO `ukam_stories` VALUES(211, 'Cole Haan', 'http://www.colehaan.com/', 'img/stories/211.gif', 0, 'Безукоризненный стиль, восхитительное качество, удобство и совершенство мужской и женской обуви на все случаи жизни. Прекрасные свадебные модели. изысканные сумки и аксессуары.');
INSERT INTO `ukam_stories` VALUES(245, 'Target', 'http://www.target.com/', 'img/stories/245.gif', 0, 'Второй по величине в Америке магазин, торгующий высококачественными товарами по сниженным ценам. Повседневная одежда для всех – от самых маленьких до взрослых.Представлены эксклюзивные вещи, созданные известными дизайнерами специально для продажи в сети магазинов Target.');
INSERT INTO `ukam_stories` VALUES(213, 'Dick`s Sporting Goods', 'http://www.dickssportinggoods.com/', 'img/stories/213.gif', 0, 'Крупнейший универмаг спортивных товаров и товаров для отдыха, охоты, рыбалки, туризма. Грандиозный набор товаров от таких известных компаний как Nike, Adidas, Reebok, Puma, Columbia, The North Face, Speedo, Asics, Bowflex, Converse, Under Armor, Umbro, Wilson и многих других.');
INSERT INTO `ukam_stories` VALUES(214, 'Sports Authority', 'http://www.sportsauthority.com/', 'img/stories/214.gif', 0, 'Универмаг Sports Authority – это широкий выбор спортивных товаров для любого вида спорта – от шахмат до гребли на байдарках. Спортивная одежда, обувь, экипировка и спортивный инвентарь от ведущих мировых производителей: Nike, Adidas, Reebok, Puma, Columbia, The North Face, Speedo, Asics, Bowflex, Converse, Under Armor, Umbro, Wilson. Также большой ассортимент товаров для отдыха, рыбалки, охоты, туризма.');
INSERT INTO `ukam_stories` VALUES(215, 'Adidas', 'http://www.adidas.com/us/', 'img/stories/215.gif', 0, 'Всемирно известный производитель спортивных товаров для мужчин, женщин, детей.');
INSERT INTO `ukam_stories` VALUES(216, 'Nike', 'http://store.nike.com/', 'img/stories/216.gif', 0, 'Nike – все для Ваших спортивных побед. И просто хорошего самочувствия.');
INSERT INTO `ukam_stories` VALUES(217, 'Columbia', 'http://www.columbia.com/', 'img/stories/217.gif', 0, 'Всемирно известный американский производитель спортивной одежды. Мужская, женская, детская спортивная одежда, обувь и аксессуары для занятий лыжным спортом, гольфом, велоспортом, для туристических походов, рыбалки и др.');
INSERT INTO `ukam_stories` VALUES(218, 'Neiman Marcus', 'http://www.neimanmarcus.com/', 'img/stories/218.gif', 0, 'Изысканная одежда, роскошная обувь, утонченные аксессуары от известных мировых дизайнеров и косметика знаменитых марок. Постоянно действующий раздел распродаж.');
INSERT INTO `ukam_stories` VALUES(219, 'Saks Fifth Avenue', 'http://www.saksfifthavenue.com/', 'img/stories/219.gif', 0, 'Один из самых знаменитых ритейлеров класса люкс в мире, этот элегантный универмаг с 1902 года продолжает одевать многие поколения богатых американцев. Изысканная мужская и женская одежда, аксессуары, ювелирные украшения, косметика.');
INSERT INTO `ukam_stories` VALUES(220, 'Lord and Taylor', 'http://www.lordandtaylor.com/', 'img/stories/220.gif', 0, 'С 1826 года крупный универмаг Lord and Taylor предлагает товары, уникально сочетающие последние тенденции мира моды и всегда актуальную классику. ');
INSERT INTO `ukam_stories` VALUES(221, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/221.gif', 0, 'Престижный универмаг модной дизайнерской одежды. Один из лидеров американской розничной торговли в сфере моды. Самые приятные скидочные предложения в течении всего года! Одежда, обувь и аксессуары от мировых брендов, представленных в магазине  NordStrom, сделают вашу жизнь ярче. 7 For All Mankind®, BCBGMAXAZRIA, Betsey Johnson, Blumarine, Burberry, Calvin Klein, Chantelle Intimates, Chloe, Citizens of Humanity, D&G, Diane von Furstenberg, DIESEL, DKNY, Elle Macpherson Intimates, Fayreform, Huit, J Brand, Jessica Simpson, Juicy Couture, L.A.M.B., Lacoste, Lauren by Ralph Lauren, M Missoni, MARC BY MARC JACOBS, Michael Kors, Oscar de la Renta, Roberto Cavalli, Rock & Republic, UGG® Australia, Wacoal, Zac Posen.');
INSERT INTO `ukam_stories` VALUES(222, 'Bloomingdale`s', 'http://www.bloomingdales.com/', 'img/stories/222.gif', 0, 'Это один из самых старейших и престижнейших универмагов Америки – его посещала даже королева Елизавета II. В универмаге Вloomingdales представлены бренды Burberry, BCBGMAXAZRIA, Calvin Klein, Diane von Furstenberg, Betsey Johnson, DKNY, Ed Hardy, Lacoste, Juicy Couture, MICHAEL Michael Kors,  Ralph Lauren, UGG® Australia, Miss Sixty, Marc By Marc Jacobs и многие другие.');
INSERT INTO `ukam_stories` VALUES(223, 'Bergdorf Goodman', 'http://www.bergdorfgoodman.com/', 'img/stories/223.gif', 0, 'Старейший и престижнейший универмаг Bergdorf Goodman удовлетворит как самых искушенных и консервативных покупателей, так и модников, придерживающихся самых современных тенденций. Беспрецедентная коллекция сумок, обуви и аксессуаров, изысканная одежда от ведущих мировых дизайнеров. Alexander McQueen, Armani Collezioni, Burberry, Calvin Klein Collection, Carolina Herrera, Chloe, Derek Lam, Dior, Dolce & Gabbana, Donna Karan Collection, Emilio Pucci, Etro, Fendi, Giambattista Valli, Giorgio Armani, J. Mendel, Lanvin, Loro Piana, Marchesa, Michael Kors, Missoni, Nina Ricci, Oscar de la Renta, Prada, Ralph Lauren, Roberto Cavalli, Stella McCartney, Valentino, Vera Wang, Versace, Yves Saint Laurent, Zac Posen.');
INSERT INTO `ukam_stories` VALUES(224, 'Barneys New York', 'http://www.barneys.com/', 'img/stories/224.gif', 0, 'Универмаг Barneys удовлетворяет вкусы самых богатых и знаменитых клиентов – соответствующими товарами и ценами. Предлагаемые бренды включают Giorgio Armani, Manolo Blahnik, Fendi, Givenchy, Marc Jacobs, Prada, Jil Sander, Dries van Noten, Diane von Furstenberg, и Ermenegildo Zegna.');
INSERT INTO `ukam_stories` VALUES(225, 'The Outnet.com', 'http://www.theoutnet.com/', 'img/stories/225.gif', 0, 'Одежда и аксессуары от ведущих мировых дизайнеров со скидкой 40-80%. Ассортимент пополняется каждую неделю. Очень ШИКономичный магазин! Еще дешевле дизайнерская одежда станет, если на главной странице сайта в строке "местоположение" вы выберете страну под названием USA.');
INSERT INTO `ukam_stories` VALUES(226, 'Bluefly', 'http://www.bluefly.com/', 'img/stories/226.gif', 0, 'Bluefly – это ведущий американский онлайн-магазин, предлагающий товары от известных дизайнеров по самым приемлемым ценам. ');
INSERT INTO `ukam_stories` VALUES(227, 'Net-a-Porter.com', 'http://www.net-a-porter.com/', 'img/stories/227.gif', 0, 'Самый популярный онлайн магазин для модниц всего мира, который посещают 1 млн. 800 тыс. покупателей в неделю.Перечень представленных дизайнеров может занять несколько страниц. Лучшие бренды. Дорогая одежда для особых случаев, впрочем, весьма доступная в периоды щедрых распродаж. DOLCE & GABBANA, ROBERTO CAVALLI, GIUSEPPE ZANOTTI, GIVENCHY,CHRISTIAN LOUBOUTIN,YVES SAINT LAURENT, VIVIENNE WESTWOOD, MARC BY MARC JACOBS,NINA RICCI, BOTTEGA VENETA и многие другие.');
INSERT INTO `ukam_stories` VALUES(228, 'Michael Kors', 'http://www.michaelkors.com/', 'img/stories/228.gif', 0, 'Американский дизайнер Майкл Корс шьет одежду для истинных леди. Если вы чувствуете себя королевой, но у вас пока нет денег на первую линию именитого дизайнера - загляните на этот сайт. Вторая линия MICHAEL  Michael Kors мало чем отличается от одежды  прет-а-порте для избранных, а великолепные сумки Майкла Корса приобрели миллионы модниц во всем мире.');
INSERT INTO `ukam_stories` VALUES(229, 'Ralph Lauren', 'http://www.ralphlauren.com/', 'img/stories/229.gif', 0, 'Американская легенда стиля. Элегантность, роскошь, изящество, хороший вкус. Простые линии, натуральные ткани, благородные цвета и безупречный крой. Именно Ральфу Лорену выпала высокая честь одевать олимпийскую сборную США!');
INSERT INTO `ukam_stories` VALUES(230, 'Burberry', 'http://us.burberry.com/', 'img/stories/230.gif', 0, 'С 1856 года британский дом высокой моды Burberry является символом элегантности и вкуса.');
INSERT INTO `ukam_stories` VALUES(231, 'Bottega Veneta', 'http://www.bottegaveneta.com/', 'img/stories/231.gif', 0, 'Итальянский бренд Bottega Veneta знаменит в первую очередь сумками, ремнями и обувью ручной работы.');
INSERT INTO `ukam_stories` VALUES(232, 'Yves Saint Laurent', 'http://ysl.com/', 'img/stories/232.gif', 0, 'Безупречное чувство стиля,простота и элегантность - визитка маэстро Ив Сен Лорана.');
INSERT INTO `ukam_stories` VALUES(233, 'Louis Vuitton', 'http://louisvuitton.com/', 'img/stories/233.gif', 0, 'Бренд №1! Louis Vuitton открыл двери собственного интернет магазина, в качестве и аутентичности вещей которого можно быть уверенным на 100%.');
INSERT INTO `ukam_stories` VALUES(234, 'Valentino', 'http://store.valentino.com/', 'img/stories/234.gif', 0, 'Знаменитая буква "V", ставшая не просто декоративным элементом, а символом победы, сегодня украшает великое множество товаров - трикотаж, сорочки, джинсы, спортивные костюмы, нижнее белье, аксессуары. Но все же, если вам нужно королевское, по-настоящему шикарное Платье, купите его у Валентино!');
INSERT INTO `ukam_stories` VALUES(235, 'Avenue', 'http://www.avenue.com/', 'img/stories/235.gif', 0, 'Стильная и очень доступная женская одежда – блузки, футболки, туники, платья, юбки, джинсы, капри, брюки, деловые костюмы, купальники, пальто и нижнее белье больших размеров, а также большой ассортимент женской обуви на широкую стопу и голень. Низкие цены.');
INSERT INTO `ukam_stories` VALUES(236, 'One Stop Plus', 'http://www.onestopplus.com/', 'img/stories/236.gif', 0, 'Свыше 10000 высококачественных и стильных  товаров для полных и/или высоких женщин и мужчин. Женская и мужская одежда на все сезоны, деловая одежда, джинсы, топы, платья, юбки, верхняя одежда и нижнее белье больших размеров на любой вкус. Модно, красиво, стильно, доступно.  Большой ассортимент удобной обуви на широкую стопу.');
INSERT INTO `ukam_stories` VALUES(237, 'Roamans', 'http://www.roamans.com/', 'img/stories/237.gif', 0, 'В магазине Roamans можно подобрать полный гардероб модной и красивой женской одежды больших размеров. Изюминкой этого сайта является раздел нарядной, вечерней и свадебной одежды для женщин больших размеров. Большой ассортимент платьев, пеньюаров, белья и чулок для особых случаев. Прекрасная доступная верхняя одежда и обувь на широкую ногу.');
INSERT INTO `ukam_stories` VALUES(238, 'Sydney`s Closet', 'http://sydneyscloset.com/', 'img/stories/238.gif', 0, 'Кто сказал, что модной и гламурной может быть только худосочная барышня размера XS? Магазин  Sydneys Closet предлагает широчайший ассортимент нарядных, вечерних, коктейльных и свадебных платьев для сексуальных пышечек. Все модели демонстрируются девушками "в теле", так что Вы легко составите представление, как открытый и яркий наряд сядет именно на Вас.');
INSERT INTO `ukam_stories` VALUES(239, 'Newport-News', 'http://www.newport-news.com/', 'img/stories/239.gif', 0, 'К счастью, двух одинаковых фигур не существует. Выбрать красивую, удобную, модную и недорогую одежду именно своего размера Вы сможете на сайте магазина Newport-News. Топы и брюки, платья и юбки, свитера и нижнее белье, пальто и строгие жакеты любого размера.');
INSERT INTO `ukam_stories` VALUES(240, 'JCPenney', 'http://www2.jcpenney.com/j', 'img/stories/240.gif', 0, '<a href="http://www2.jcpenney.com/jcp/X3.aspx?DeptID=50434&CatID=50449&cmCatLevel=3&shopperType=X&CmCatId=50434" onclick="window.open(this.href); return false;">Для женщин</a><br/>\r\n<a href="http://www2.jcpenney.com/jcp/X3.aspx?DeptID=53006&CatID=62949&cmCatLevel=3&shopperType=X&CmCatId=50434|50449&cmAMS_T=G1&cmAMS_C=D3" onclick="window.open(this.href); return false;">Для мужчин</a><br/>\r\n<a href="http://www2.jcpenney.com/jcp/X3.aspx?DeptID=42249&CatID=49873&cmCatLevel=3&shopperType=X&CmCatId=42249" onclick="window.open(this.href); return false;">Для детей</a><br/>\r\nДоступная и качественная одежда для мужчин, женщин и детей.');
INSERT INTO `ukam_stories` VALUES(241, 'Jessica London', 'http://www.avenue.com/', 'img/stories/241.gif', 0, 'Нарядная и повседневная одежда, нижнее белье больших размеров, обувь повышенной комфортности и аксессуары.');
INSERT INTO `ukam_stories` VALUES(242, 'Torrid', 'http://www.torrid.com/', 'img/stories/242.gif', 0, 'Платья, джинсы, брюки, юбки, блузки, куртки, пальто, купальники, женственное нижнее белье, спортивная одежда, обувь от известных дизайнеров для барышень «в теле». Широкий ассортимент. Последние новинки и современные тенденции.');
INSERT INTO `ukam_stories` VALUES(243, 'Hips and Curves', 'http://www.hipsandcurves.com/plus-size-lingerie/', 'img/stories/243.gif', 0, 'Сексуальное белье, чулки и колготки, халатики и пижамы для аппетитных дам.');
INSERT INTO `ukam_stories` VALUES(244, 'Rochester Big and Tall', 'http://www.rochesterclothing.com/', 'img/stories/244.gif', 0, 'Красивая модная современная мужская одежда в большом ассортименте для высоких крупных мужчин. ');
INSERT INTO `ukam_stories` VALUES(250, 'Forever 21', 'http://www.forever21.com/', 'img/stories/250.gif', 0, 'Феномен в мире моды, Forever21 предлагает покупателям беспрецедентный выбор современных фасонов одежды по очень низким ценам.  Платья, блузки, свитера, джинсы, нижнее белье, обувь, пальто, сумки, аксессуары – выбор огромен.');
INSERT INTO `ukam_stories` VALUES(251, 'GAP', 'http://www.gap.com/', 'img/stories/251.gif', 0, 'Прекрасные джинсы, хлопковые рубашки, футболки, блузки, свитера, купальники, нижнее белье, платья, юбки, шарфики и шапки, пояса, куртки и пальто, украшения и сумки – все товары высокого качества от известнейшей сети американских магазинов Gap, в широком ассортименте и по демократичным ценам. Постоянные распродажи!');
INSERT INTO `ukam_stories` VALUES(252, 'Old Navy', 'http://oldnavy.gap.com/', 'img/stories/252.gif', 0, 'Old Navy – младший брат знаменитых магазинов Gap и Banana Republic. Многообразие товаров высокого качества для повседневной жизни. Джинсы, шорты, капри. Юбки и платья, топы, свитера, рубашки, спортивная одежда. Помимо потрясающе низких цен – постоянные распродажи.');
INSERT INTO `ukam_stories` VALUES(253, 'Aeropostale', 'http://www.aeropostale.com/', 'img/stories/253.gif', 0, 'Aeropostale – это высококачественная модная одежда для активной молодежи по очень соблазнительным ценам. Топы, джинсы, платья, сумки, обувь, аксессуары, спортивная и верхняя одежда в широком ассортименте и с постоянными скидками.');
INSERT INTO `ukam_stories` VALUES(254, 'American Eagle Outfitters', 'http://www.ae.com/', 'img/stories/254.gif', 0, 'Удобные модные рубашки, стильные шорты, уютные свитера, разнообразные юбки, яркие платья, мягкая удобная обувь, сумки, пояса –  для энергичной молодежи по демократичным ценам! Скидки круглый год.');
INSERT INTO `ukam_stories` VALUES(255, 'Armani Exchange', 'http://www.armaniexchange.com/', 'img/stories/255.gif', 0, 'Молодежная линия от итальянского кутюрье Джорджио Армани. Чувственный и уникальный стиль для молодых и сексуальных. Одежда, аксессуары, солнцезащитные очки, бижутерия.');
INSERT INTO `ukam_stories` VALUES(256, 'Express', 'http://www.express.com/', 'img/stories/256.gif', 0, 'Express – это самые свежие тенденции моды, утонченный стиль, самые ключевые вещи гардероба. Спектр предлагаемых товаров -  от ярких фривольных шелковых блузок до деловых костюмов. Высококачественные мужские рубашки, брюки и трикотаж. Пояса, сумки, украшения. Цены очень доступны.');
INSERT INTO `ukam_stories` VALUES(257, 'Levi`s', 'http://levi.com/', 'img/stories/257.gif', 0, 'Американская икона с 1853 года, прославившаяся на весь мир.  Классические джинсы любого размера, стиля, фасона, цвета. Цены Вас порадуют!');
INSERT INTO `ukam_stories` VALUES(258, 'Urban outfitters', 'http://www.urbanoutfitters.com/', 'img/stories/258.gif', 0, 'Сегодня на прилавках магазинов «Urban Outfitters» можно встретить огромный ассортимент винтажной, богемной и ретро одежды. Так же там можно найти забавные детали для домашнего интерьера. В магазинах «Urban Outfitters» представлены марки таких дизайнеров как Lacoste, Diesel, True Religion, Cheap Monday, Betsey Johnson, Obey, и многие другие.');

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_users`
--

CREATE TABLE `ukam_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `group` varchar(233) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Пользователи и пароли' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `ukam_users`
--

INSERT INTO `ukam_users` VALUES(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'administrators');
INSERT INTO `ukam_users` VALUES(2, 'tanya', '95cb830ea2246d690d22e9adca11d14f', 'administrators');

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_xref`
--

CREATE TABLE `ukam_xref` (
  `id` int(11) NOT NULL auto_increment,
  `stori_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Принадлежность магазинов к категориям' AUTO_INCREMENT=261 ;

--
-- Дамп данных таблицы `ukam_xref`
--

INSERT INTO `ukam_xref` VALUES(1, 1, 1);
INSERT INTO `ukam_xref` VALUES(2, 2, 1);
INSERT INTO `ukam_xref` VALUES(3, 3, 1);
INSERT INTO `ukam_xref` VALUES(4, 4, 1);
INSERT INTO `ukam_xref` VALUES(5, 5, 1);
INSERT INTO `ukam_xref` VALUES(6, 6, 1);
INSERT INTO `ukam_xref` VALUES(7, 7, 1);
INSERT INTO `ukam_xref` VALUES(8, 8, 1);
INSERT INTO `ukam_xref` VALUES(9, 9, 1);
INSERT INTO `ukam_xref` VALUES(10, 10, 1);
INSERT INTO `ukam_xref` VALUES(11, 11, 1);
INSERT INTO `ukam_xref` VALUES(12, 12, 1);
INSERT INTO `ukam_xref` VALUES(13, 13, 1);
INSERT INTO `ukam_xref` VALUES(14, 14, 1);
INSERT INTO `ukam_xref` VALUES(15, 15, 1);
INSERT INTO `ukam_xref` VALUES(16, 16, 1);
INSERT INTO `ukam_xref` VALUES(17, 17, 1);
INSERT INTO `ukam_xref` VALUES(18, 18, 1);
INSERT INTO `ukam_xref` VALUES(19, 19, 1);
INSERT INTO `ukam_xref` VALUES(20, 20, 1);
INSERT INTO `ukam_xref` VALUES(21, 21, 1);
INSERT INTO `ukam_xref` VALUES(22, 22, 1);
INSERT INTO `ukam_xref` VALUES(23, 23, 1);
INSERT INTO `ukam_xref` VALUES(24, 24, 1);
INSERT INTO `ukam_xref` VALUES(25, 25, 1);
INSERT INTO `ukam_xref` VALUES(26, 26, 1);
INSERT INTO `ukam_xref` VALUES(27, 27, 1);
INSERT INTO `ukam_xref` VALUES(28, 28, 19);
INSERT INTO `ukam_xref` VALUES(29, 29, 19);
INSERT INTO `ukam_xref` VALUES(30, 30, 19);
INSERT INTO `ukam_xref` VALUES(31, 31, 19);
INSERT INTO `ukam_xref` VALUES(32, 32, 19);
INSERT INTO `ukam_xref` VALUES(33, 33, 20);
INSERT INTO `ukam_xref` VALUES(34, 34, 20);
INSERT INTO `ukam_xref` VALUES(35, 35, 20);
INSERT INTO `ukam_xref` VALUES(36, 36, 20);
INSERT INTO `ukam_xref` VALUES(37, 37, 13);
INSERT INTO `ukam_xref` VALUES(38, 38, 13);
INSERT INTO `ukam_xref` VALUES(39, 39, 13);
INSERT INTO `ukam_xref` VALUES(40, 40, 13);
INSERT INTO `ukam_xref` VALUES(41, 41, 13);
INSERT INTO `ukam_xref` VALUES(42, 42, 13);
INSERT INTO `ukam_xref` VALUES(43, 43, 13);
INSERT INTO `ukam_xref` VALUES(44, 44, 13);
INSERT INTO `ukam_xref` VALUES(45, 45, 13);
INSERT INTO `ukam_xref` VALUES(46, 46, 13);
INSERT INTO `ukam_xref` VALUES(47, 47, 13);
INSERT INTO `ukam_xref` VALUES(48, 48, 13);
INSERT INTO `ukam_xref` VALUES(49, 49, 13);
INSERT INTO `ukam_xref` VALUES(50, 50, 13);
INSERT INTO `ukam_xref` VALUES(51, 51, 13);
INSERT INTO `ukam_xref` VALUES(52, 52, 13);
INSERT INTO `ukam_xref` VALUES(53, 53, 13);
INSERT INTO `ukam_xref` VALUES(54, 54, 13);
INSERT INTO `ukam_xref` VALUES(55, 55, 13);
INSERT INTO `ukam_xref` VALUES(56, 56, 9);
INSERT INTO `ukam_xref` VALUES(57, 57, 9);
INSERT INTO `ukam_xref` VALUES(58, 58, 9);
INSERT INTO `ukam_xref` VALUES(59, 59, 9);
INSERT INTO `ukam_xref` VALUES(60, 60, 9);
INSERT INTO `ukam_xref` VALUES(61, 61, 9);
INSERT INTO `ukam_xref` VALUES(62, 62, 9);
INSERT INTO `ukam_xref` VALUES(63, 63, 9);
INSERT INTO `ukam_xref` VALUES(64, 64, 9);
INSERT INTO `ukam_xref` VALUES(65, 65, 9);
INSERT INTO `ukam_xref` VALUES(66, 66, 9);
INSERT INTO `ukam_xref` VALUES(67, 67, 9);
INSERT INTO `ukam_xref` VALUES(68, 68, 9);
INSERT INTO `ukam_xref` VALUES(69, 69, 9);
INSERT INTO `ukam_xref` VALUES(70, 70, 9);
INSERT INTO `ukam_xref` VALUES(71, 71, 9);
INSERT INTO `ukam_xref` VALUES(72, 72, 9);
INSERT INTO `ukam_xref` VALUES(73, 73, 9);
INSERT INTO `ukam_xref` VALUES(74, 74, 9);
INSERT INTO `ukam_xref` VALUES(75, 75, 9);
INSERT INTO `ukam_xref` VALUES(76, 76, 9);
INSERT INTO `ukam_xref` VALUES(77, 77, 5);
INSERT INTO `ukam_xref` VALUES(78, 78, 5);
INSERT INTO `ukam_xref` VALUES(79, 79, 5);
INSERT INTO `ukam_xref` VALUES(80, 0, 5);
INSERT INTO `ukam_xref` VALUES(81, 80, 5);
INSERT INTO `ukam_xref` VALUES(82, 81, 5);
INSERT INTO `ukam_xref` VALUES(83, 82, 5);
INSERT INTO `ukam_xref` VALUES(84, 83, 5);
INSERT INTO `ukam_xref` VALUES(85, 84, 5);
INSERT INTO `ukam_xref` VALUES(86, 85, 5);
INSERT INTO `ukam_xref` VALUES(87, 86, 5);
INSERT INTO `ukam_xref` VALUES(88, 87, 5);
INSERT INTO `ukam_xref` VALUES(89, 88, 5);
INSERT INTO `ukam_xref` VALUES(90, 89, 5);
INSERT INTO `ukam_xref` VALUES(91, 90, 4);
INSERT INTO `ukam_xref` VALUES(92, 91, 4);
INSERT INTO `ukam_xref` VALUES(93, 92, 4);
INSERT INTO `ukam_xref` VALUES(94, 93, 4);
INSERT INTO `ukam_xref` VALUES(95, 94, 4);
INSERT INTO `ukam_xref` VALUES(96, 95, 4);
INSERT INTO `ukam_xref` VALUES(97, 96, 4);
INSERT INTO `ukam_xref` VALUES(98, 97, 4);
INSERT INTO `ukam_xref` VALUES(99, 98, 4);
INSERT INTO `ukam_xref` VALUES(100, 99, 4);
INSERT INTO `ukam_xref` VALUES(101, 100, 4);
INSERT INTO `ukam_xref` VALUES(102, 101, 4);
INSERT INTO `ukam_xref` VALUES(103, 102, 4);
INSERT INTO `ukam_xref` VALUES(104, 103, 4);
INSERT INTO `ukam_xref` VALUES(105, 104, 4);
INSERT INTO `ukam_xref` VALUES(106, 105, 4);
INSERT INTO `ukam_xref` VALUES(107, 106, 4);
INSERT INTO `ukam_xref` VALUES(108, 107, 4);
INSERT INTO `ukam_xref` VALUES(109, 108, 4);
INSERT INTO `ukam_xref` VALUES(110, 109, 4);
INSERT INTO `ukam_xref` VALUES(111, 110, 4);
INSERT INTO `ukam_xref` VALUES(112, 111, 4);
INSERT INTO `ukam_xref` VALUES(113, 112, 4);
INSERT INTO `ukam_xref` VALUES(114, 113, 4);
INSERT INTO `ukam_xref` VALUES(115, 114, 4);
INSERT INTO `ukam_xref` VALUES(116, 115, 4);
INSERT INTO `ukam_xref` VALUES(117, 116, 4);
INSERT INTO `ukam_xref` VALUES(118, 117, 4);
INSERT INTO `ukam_xref` VALUES(119, 118, 4);
INSERT INTO `ukam_xref` VALUES(120, 119, 4);
INSERT INTO `ukam_xref` VALUES(121, 120, 4);
INSERT INTO `ukam_xref` VALUES(122, 121, 4);
INSERT INTO `ukam_xref` VALUES(123, 122, 4);
INSERT INTO `ukam_xref` VALUES(124, 123, 2);
INSERT INTO `ukam_xref` VALUES(125, 124, 2);
INSERT INTO `ukam_xref` VALUES(126, 125, 2);
INSERT INTO `ukam_xref` VALUES(127, 126, 2);
INSERT INTO `ukam_xref` VALUES(128, 127, 2);
INSERT INTO `ukam_xref` VALUES(129, 128, 2);
INSERT INTO `ukam_xref` VALUES(130, 129, 2);
INSERT INTO `ukam_xref` VALUES(131, 130, 2);
INSERT INTO `ukam_xref` VALUES(132, 131, 2);
INSERT INTO `ukam_xref` VALUES(133, 132, 2);
INSERT INTO `ukam_xref` VALUES(134, 133, 2);
INSERT INTO `ukam_xref` VALUES(135, 134, 2);
INSERT INTO `ukam_xref` VALUES(136, 135, 2);
INSERT INTO `ukam_xref` VALUES(137, 136, 2);
INSERT INTO `ukam_xref` VALUES(138, 137, 2);
INSERT INTO `ukam_xref` VALUES(139, 138, 2);
INSERT INTO `ukam_xref` VALUES(140, 139, 2);
INSERT INTO `ukam_xref` VALUES(141, 140, 2);
INSERT INTO `ukam_xref` VALUES(142, 141, 2);
INSERT INTO `ukam_xref` VALUES(143, 142, 2);
INSERT INTO `ukam_xref` VALUES(144, 143, 2);
INSERT INTO `ukam_xref` VALUES(145, 144, 3);
INSERT INTO `ukam_xref` VALUES(146, 145, 3);
INSERT INTO `ukam_xref` VALUES(147, 146, 3);
INSERT INTO `ukam_xref` VALUES(148, 147, 3);
INSERT INTO `ukam_xref` VALUES(149, 148, 3);
INSERT INTO `ukam_xref` VALUES(150, 0, 3);
INSERT INTO `ukam_xref` VALUES(151, 149, 3);
INSERT INTO `ukam_xref` VALUES(152, 150, 3);
INSERT INTO `ukam_xref` VALUES(153, 151, 3);
INSERT INTO `ukam_xref` VALUES(154, 152, 3);
INSERT INTO `ukam_xref` VALUES(155, 153, 3);
INSERT INTO `ukam_xref` VALUES(156, 154, 3);
INSERT INTO `ukam_xref` VALUES(157, 155, 3);
INSERT INTO `ukam_xref` VALUES(158, 156, 3);
INSERT INTO `ukam_xref` VALUES(159, 157, 3);
INSERT INTO `ukam_xref` VALUES(160, 158, 3);
INSERT INTO `ukam_xref` VALUES(161, 159, 3);
INSERT INTO `ukam_xref` VALUES(162, 160, 3);
INSERT INTO `ukam_xref` VALUES(163, 161, 3);
INSERT INTO `ukam_xref` VALUES(164, 162, 3);
INSERT INTO `ukam_xref` VALUES(165, 163, 3);
INSERT INTO `ukam_xref` VALUES(166, 164, 8);
INSERT INTO `ukam_xref` VALUES(167, 165, 8);
INSERT INTO `ukam_xref` VALUES(168, 166, 8);
INSERT INTO `ukam_xref` VALUES(169, 167, 8);
INSERT INTO `ukam_xref` VALUES(170, 168, 8);
INSERT INTO `ukam_xref` VALUES(171, 169, 8);
INSERT INTO `ukam_xref` VALUES(172, 170, 8);
INSERT INTO `ukam_xref` VALUES(173, 171, 8);
INSERT INTO `ukam_xref` VALUES(174, 172, 8);
INSERT INTO `ukam_xref` VALUES(175, 173, 8);
INSERT INTO `ukam_xref` VALUES(176, 174, 8);
INSERT INTO `ukam_xref` VALUES(177, 175, 8);
INSERT INTO `ukam_xref` VALUES(178, 176, 8);
INSERT INTO `ukam_xref` VALUES(179, 177, 18);
INSERT INTO `ukam_xref` VALUES(180, 178, 18);
INSERT INTO `ukam_xref` VALUES(181, 179, 18);
INSERT INTO `ukam_xref` VALUES(182, 180, 18);
INSERT INTO `ukam_xref` VALUES(183, 181, 18);
INSERT INTO `ukam_xref` VALUES(184, 182, 18);
INSERT INTO `ukam_xref` VALUES(185, 183, 18);
INSERT INTO `ukam_xref` VALUES(186, 184, 18);
INSERT INTO `ukam_xref` VALUES(187, 185, 18);
INSERT INTO `ukam_xref` VALUES(188, 186, 18);
INSERT INTO `ukam_xref` VALUES(189, 187, 18);
INSERT INTO `ukam_xref` VALUES(190, 188, 18);
INSERT INTO `ukam_xref` VALUES(191, 189, 18);
INSERT INTO `ukam_xref` VALUES(192, 190, 11);
INSERT INTO `ukam_xref` VALUES(193, 191, 11);
INSERT INTO `ukam_xref` VALUES(194, 192, 11);
INSERT INTO `ukam_xref` VALUES(195, 193, 11);
INSERT INTO `ukam_xref` VALUES(196, 194, 11);
INSERT INTO `ukam_xref` VALUES(197, 195, 11);
INSERT INTO `ukam_xref` VALUES(198, 196, 11);
INSERT INTO `ukam_xref` VALUES(199, 197, 11);
INSERT INTO `ukam_xref` VALUES(200, 198, 11);
INSERT INTO `ukam_xref` VALUES(201, 199, 11);
INSERT INTO `ukam_xref` VALUES(251, 249, 10);
INSERT INTO `ukam_xref` VALUES(203, 201, 11);
INSERT INTO `ukam_xref` VALUES(250, 248, 10);
INSERT INTO `ukam_xref` VALUES(205, 203, 11);
INSERT INTO `ukam_xref` VALUES(206, 204, 11);
INSERT INTO `ukam_xref` VALUES(207, 205, 11);
INSERT INTO `ukam_xref` VALUES(249, 247, 10);
INSERT INTO `ukam_xref` VALUES(209, 207, 11);
INSERT INTO `ukam_xref` VALUES(248, 246, 10);
INSERT INTO `ukam_xref` VALUES(211, 209, 11);
INSERT INTO `ukam_xref` VALUES(212, 210, 11);
INSERT INTO `ukam_xref` VALUES(213, 211, 11);
INSERT INTO `ukam_xref` VALUES(247, 245, 10);
INSERT INTO `ukam_xref` VALUES(215, 213, 14);
INSERT INTO `ukam_xref` VALUES(216, 214, 14);
INSERT INTO `ukam_xref` VALUES(217, 215, 14);
INSERT INTO `ukam_xref` VALUES(218, 216, 14);
INSERT INTO `ukam_xref` VALUES(219, 217, 14);
INSERT INTO `ukam_xref` VALUES(220, 218, 7);
INSERT INTO `ukam_xref` VALUES(221, 219, 7);
INSERT INTO `ukam_xref` VALUES(222, 220, 7);
INSERT INTO `ukam_xref` VALUES(223, 221, 7);
INSERT INTO `ukam_xref` VALUES(224, 222, 7);
INSERT INTO `ukam_xref` VALUES(225, 223, 7);
INSERT INTO `ukam_xref` VALUES(226, 224, 7);
INSERT INTO `ukam_xref` VALUES(227, 225, 7);
INSERT INTO `ukam_xref` VALUES(228, 226, 7);
INSERT INTO `ukam_xref` VALUES(229, 227, 7);
INSERT INTO `ukam_xref` VALUES(230, 228, 7);
INSERT INTO `ukam_xref` VALUES(231, 229, 7);
INSERT INTO `ukam_xref` VALUES(232, 230, 7);
INSERT INTO `ukam_xref` VALUES(233, 231, 7);
INSERT INTO `ukam_xref` VALUES(234, 232, 7);
INSERT INTO `ukam_xref` VALUES(235, 233, 7);
INSERT INTO `ukam_xref` VALUES(236, 234, 7);
INSERT INTO `ukam_xref` VALUES(237, 235, 16);
INSERT INTO `ukam_xref` VALUES(238, 236, 16);
INSERT INTO `ukam_xref` VALUES(239, 237, 16);
INSERT INTO `ukam_xref` VALUES(240, 238, 16);
INSERT INTO `ukam_xref` VALUES(241, 239, 16);
INSERT INTO `ukam_xref` VALUES(242, 240, 16);
INSERT INTO `ukam_xref` VALUES(243, 241, 16);
INSERT INTO `ukam_xref` VALUES(244, 242, 16);
INSERT INTO `ukam_xref` VALUES(245, 243, 16);
INSERT INTO `ukam_xref` VALUES(246, 244, 16);
INSERT INTO `ukam_xref` VALUES(252, 250, 10);
INSERT INTO `ukam_xref` VALUES(253, 251, 10);
INSERT INTO `ukam_xref` VALUES(254, 252, 10);
INSERT INTO `ukam_xref` VALUES(255, 253, 10);
INSERT INTO `ukam_xref` VALUES(256, 254, 10);
INSERT INTO `ukam_xref` VALUES(257, 255, 10);
INSERT INTO `ukam_xref` VALUES(258, 256, 10);
INSERT INTO `ukam_xref` VALUES(259, 257, 10);
INSERT INTO `ukam_xref` VALUES(260, 258, 10);
