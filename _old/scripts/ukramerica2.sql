-- phpMyAdmin SQL Dump
-- version 3.2.5deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 27 2010 г., 21:04
-- Версия сервера: 5.1.41
-- Версия PHP: 5.3.2-1ubuntu2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ukramerica`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_categories`
--

CREATE TABLE IF NOT EXISTS `ukam_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `publish_on_main` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Названия и описания категорий' AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `ukam_categories`
--

INSERT INTO `ukam_categories` (`id`, `name`, `description`, `publish_on_main`) VALUES
(1, 'Женская одежда', NULL, 'Y'),
(2, 'Мужская одежда', NULL, 'Y'),
(3, 'Детская одежда', NULL, 'Y'),
(4, 'Молодежная мода', NULL, 'Y'),
(5, 'Мама и Дитя', NULL, 'Y'),
(6, 'Демократичная классика', NULL, 'Y'),
(7, 'Товары класса люкс', NULL, 'Y'),
(8, 'Популярные универмаги', NULL, 'Y'),
(9, 'Красивое нижнее белье', NULL, 'Y'),
(10, 'Сумки', NULL, 'Y'),
(11, 'Обувь', NULL, 'Y'),
(12, 'Бижутерия', NULL, 'Y'),
(13, 'Косметика и парфюмерия', NULL, 'Y'),
(14, 'Товары для спорта и отдыха', NULL, 'Y'),
(15, 'Свадебные наряды', NULL, 'Y'),
(16, 'Большие размеры', NULL, 'Y'),
(17, 'Товары для дома', NULL, 'Y'),
(18, 'Джинсы', NULL, 'Y'),
(19, 'Детские игрушки', NULL, 'Y'),
(20, 'Книги (на исп., англ. языках)', NULL, 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_counter`
--

CREATE TABLE IF NOT EXISTS `ukam_counter` (
  `story_id` int(11) NOT NULL,
  `clics` int(11) NOT NULL,
  UNIQUE KEY `story_id` (`story_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ukam_counter`
--

INSERT INTO `ukam_counter` (`story_id`, `clics`) VALUES
(1, 0),
(2, 0),
(3, 6),
(4, 0),
(5, 0),
(6, 0),
(7, 6),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 8),
(24, 0),
(25, 0),
(26, 0),
(27, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_stories`
--

CREATE TABLE IF NOT EXISTS `ukam_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Магазины' AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `ukam_stories`
--

INSERT INTO `ukam_stories` (`id`, `name`, `url`, `image`, `description`) VALUES
(1, 'Macy’s', 'http://www.macys.com/', 'img/stories/00001.gif', 'Самый крупный в мире универмаг, за 150 лет полюбившийся многим поколениям американских покупателей и туристов из всего мира. В сети Macy''s работает 167 тысяч человек. Здесь Вы найдете абсолютно все, что Вам нужно – от одежды для любого поколения и любого случая, до декора для дома, косметики, украшений, часов самых известных марок. ДЕЙСТВУЮТ ПОСТОЯННЫЕ СКИДКИ. ПРИВЛЕКАТЕЛЬНЫЕ ЦЕНЫ.'),
(2, 'GAP', 'http://www.gap.com/', 'img/stories/00002.gif', 'Легендарный американский бренд. Стильная и доступная одежда для любого случая на любой возраст. Отличный трикотаж, повседневная и спортивная одежда, джинсы. Демократичность цен, широкий ассортимент и неповторимость. '),
(3, 'Banana Republic', 'http://bananarepublic.gap.com/', 'img/stories/00003.gif', 'Современная изысканная одежда для женщин, плюс удобная обувь, модные сумки, аксессуары, элегантная бижутерия. Любимый магазин американских модниц.'),
(4, 'Express', 'http://www.express.com/', 'img/stories/00004.gif', 'Express – это самые свежие тенденции моды, утонченный стиль, самые ключевые вещи гардероба. Спектр предлагаемых товаров -  от ярких фривольных шелковых блузок до деловых костюмов. Цены очень доступны.'),
(5, 'Victoria’s Secret', 'http://www2.victoriassecret.com/', 'img/stories/00005.gif', 'Огромный выбор красивого и удобного женского белья. Помимо этого, широко представлена линия одежды, купальников, обуви и аксессуаров от известных дизайнеров. Акции и распродажи  круглый год! '),
(6, 'Venus', 'http://www.venus.com/default.aspx', 'img/stories/00006.gif', 'Все виды качественных купальников любых расзмеров,пляжных платьев, парео, модной одежды, аксессуаров. 90% купальников, предлагаемых Venus, производятся в США.'),
(7, 'Ann Taylor', 'http://www.anntaylor.com/home.jsp', 'img/stories/00007.gif', 'Лидер по производству и продажи удобной, модной одежды в классическом стиле. Спокойные, натуральные тона, платья, деловые костюмы, трикотаж, аксессуары, обувь для девушек, не понаслышке знающих, что такое дресс-код.'),
(8, 'J.Crew', 'http://www.jcrew.com/index.jsp', 'img/stories/00008.gif', 'Полный ассортимент женской, мужской и детской одежды и аксессуаров, включая изысканные свадебные и праздничные наряды, повседневную одежду, купальники, верхнюю одежду, итальянский кашемир, сумки, пояса, аксессуары и бижутерию. Любимый магазин Первой леди США Мишель Обамы. '),
(9, 'DKNY', 'http://www.dkny.com/', 'img/stories/00009.gif', 'Энергия и дух Нью-Йорка! Эклектичная, прикольная, настоящая одежда от Донны Каран для всех, для работы и отдыха, от джинсов до вечерних платьев. Модно и доступно. Регулярно обновляющиеся специальные предложения.'),
(10, 'Michael Kors', 'http://www.michaelkors.com/', 'img/stories/00010.gif', 'Ведущий американский дизайнер роскошных аксессуаров и спортивной одежды. Эмблема высочайшего стандарта качества, новаторства и элегантности. '),
(11, 'Lacoste', 'http://shopapparel.lacoste.com/index.html', 'img/stories/00011.gif', 'Эмблема французской марки Лакосте - маленький зеленый крокодильчик - давно стал престижным и узнаваемым символом этой марки. В одежду Лакосте одеваются миллионеры на собственных яхтах, чемпионы мира на соревнованиях по теннису и гольфу и просто ценители комфортной одежды и простых линий. Качество, комфорт и солидность. Если Вы среди избранных - заходите!'),
(12, 'Calvin Klein', 'http://www.calvinklein.com/home/index.jsp', 'img/stories/00012.gif', 'Знаменитый дизайнер одежды и нижнего белья для женщин и мужчин, обуви, аксессуаров, сумок, постельного белья, посуды, и прочего, прочего, прочего.'),
(13, 'Tommy Hilfiger', 'http://www.shoptommy.com/tommy/', 'img/stories/00013.gif', 'Одна из ведущих мировых торговых марок, Tommy Hilfiger предлагает безупречный стиль и качество в сочетании с приемлемой ценой. Это мужская, женская и детская одежда, джинсы, спортивная одежда, аксессуары, духи и товары для дома. '),
(14, 'Emporio Armani', 'http://www.emporioarmani.com/index.asp?tskay=3FD17CD7&cyc=1', 'img/stories/00014.gif', 'Итальянский дизайнер, эталон элегантности во всем мире. Emporio Armani – это сочетание классики с современностью, сексуальности с утонченностью. Одежда, нижнее белье, аксессуары и парфюмерия от Emporio Armani отличаются своим неповторимым стилем. '),
(15, 'Levi’s', 'http://levi.com', 'img/stories/00015.gif', 'Американская икона с 1853 года, прославившаяся на весь мир.  Классические джинсы любого размера, стиля, фасона, цвета. Цены Вас порадуют!'),
(16, 'BCBG MAXAZRIA', 'http://www.bcbg.com/home/index.jsp', 'img/stories/00016.gif', 'Одно из самых известных имен в современной индустрии моды. Комбинация европейской утонченности с американским духом. Шелковые платья, деловые костюмы, джинсовые изделия, обувь, купальники, солнечные очки и дамские сумочки. '),
(17, 'Wilsons Leather', 'http://www.wilsonsleather.com/home/index.jsp', 'img/stories/00017.gif', 'Прекрасная высококачественная кожаная верхняя одежда, сумки, портфели и дорожные сумки и чемоданы. Круглогодичные акции и скидки магазина позволяют приобрести прекрасные вещи по очень приемлемым ценам. '),
(18, 'Diane von Furstenberg', 'http://www.dvf.com/dvf/index.jsp', 'img/stories/00018.gif', 'Диана фон Фюрстенберг – королева ярких и элегантных платьев. Легкие, струящиеся ткани, обволакивающие, мягкие силуэты,которые подчеркивают достоинства и скрывают недостатки, - хотя бы одно платье от Дианы должно быть в гардеробе каждой настоящей леди.'),
(19, 'Betsey Johnson', 'http://www.betseyjohnson.com/', 'img/stories/00019.gif', 'В гламурных, ярких и экстравагантных нарядах от американского дизайнера Бетси Джонсон Вы никогда не останетесь незамеченной!  Необычныеи неповторимые платья, обувь и сумочки. Ее модели хороши в деталях, качественны и долговечны. '),
(20, 'Top Shop', 'http://www.topshop.com/webapp/wcs/stores/servlet/TopCategoriesDisplay?storeId=13052&catalogId=32051', 'img/stories/00020.gif', 'Всемирно известная британская торговая сеть Топшоп является обязательным пунктом назначения для всех модниц. Топшоп совмещает в своих товарах передовой стиль с дружелюбными для Вашего кошелька ценами. Повседневная и нарядная одежда, удобнейшая обувь, белье и аксессуары.'),
(21, 'Karen Millen', 'http://www.karenmillen.com/', 'img/stories/00021.gif', 'Всемирно известный дизайнер, предлагающий гламурную, оригинальную одежду и аксессуары для уверенных в себе, бескомпромиссных современных женщин. Шелк, стразы, кружева, набивные рисунки, бисер, атлас, пух и мех – все с "изюминкой". '),
(22, 'Lord and Taylor', 'http://www.lordandtaylor.com/', 'img/stories/00022.gif', 'С 1826 года крупный универмаг Lord and Taylor предлагает товары, уникально сочетающие последние тенденции мира моды и всегда актуальную классику.'),
(23, 'Bloomingdale’s', 'http://www.bloomingdales.com/', 'img/stories/00023.gif', 'Это один из самых старейших и престижнейших универмагов Америки – его посещала даже королева Елизавета II. В универмаге Вloomingdales представлены бренды Burberry, BCBGMAXAZRIA, Calvin Klein, Diane von Furstenberg, Betsey Johnson, DKNY, Ed Hardy, Lacoste, Juicy Couture, MICHAEL Michael Kors,  Ralph Lauren, UGG® Australia, Miss Sixty, Marc By Marc Jacobs и многие другие.'),
(24, 'Dillard’s', 'http://www.dillards.com/index.html', 'img/stories/00024.gif', 'Сеть универмагов Диллардс предлагает модную одежду от таких известных марок как MICHAEL Michael Kors, BCBGMAXAZRIA, Betsey Johnson, Calvin Klein, DKNY, Ed Hardy, Gottex, Hale Bob, Jessica Simpson, Lauren by Ralph Lauren, Levi''s.'),
(25, 'Nordstrom', 'http://shop.nordstrom.com/', 'img/stories/00025.gif', 'Престижный универмаг модной дизайнерской одежды. Один из лидеров американской розничной торговли в сфере моды. Самые приятные скидочные предложения в течении всего года! Одежда, обувь и аксессуары от мировых брендов, представленных в магазине NordStrom, сделают вашу жизнь ярче. 7 For All Mankind®, BCBGMAXAZRIA, Betsey Johnson, Blumarine, Burberry, Calvin Klein, Chantelle Intimates, Chloe, Citizens of Humanity, D&G, Diane von Furstenberg, DIESEL, DKNY, Elle Macpherson Intimates, Fayreform, Huit, J Brand, Jessica Simpson, Juicy Couture, L.A.M.B., Lacoste, Lauren by Ralph Lauren, M Missoni, MARC BY MARC JACOBS, Michael Kors, Oscar de la Renta, Roberto Cavalli, Rock & Republic, UGG® Australia, Wacoal, Zac Posen.'),
(26, 'Lands’ End', 'http://www.landsend.com/', 'img/stories/00026.gif', 'Гарантия высокого качества и низкой цены на одежду традиционного стиля для всей семьи и товаров для дома'),
(27, 'JCPenny', 'http://www4.jcpenney.com/', 'img/stories/00027.gif', 'Известный демократичный универмаг очень недорогой, но качественной одежды для мужчин и женщин всех возрастов,  молодежи, детей и младенцев. ');

-- --------------------------------------------------------

--
-- Структура таблицы `ukam_xref`
--

CREATE TABLE IF NOT EXISTS `ukam_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stori_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Принадлежность магазинов к категориям' AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `ukam_xref`
--

INSERT INTO `ukam_xref` (`id`, `stori_id`, `cat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1);
