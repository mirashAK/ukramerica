-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 13 2013 г., 20:49
-- Версия сервера: 5.5.32-MariaDB
-- Версия PHP: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ukramerica_dev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `public_menus`
--

CREATE TABLE IF NOT EXISTS `public_menus` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_item_name` varchar(100) NOT NULL,
  `menu_item_link` varchar(255) NOT NULL,
  `menu_item_parent` int(11) NOT NULL DEFAULT '0',
  `menu_item_order` int(11) NOT NULL DEFAULT '0',
  `read_level` int(11) NOT NULL DEFAULT '0',
  `write_level` int(11) NOT NULL DEFAULT '80',
  `owner` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `public_menus`
--

INSERT INTO `public_menus` (`menu_id`, `menu_item_name`, `menu_item_link`, `menu_item_parent`, `menu_item_order`, `read_level`, `write_level`, `owner`) VALUES
(1, 'main_menu', '', 0, 0, 0, 80, 1),
(2, 'bottom_menu', '', 0, 0, 0, 80, 1),
(27, 'contacts', 'statics/contacts', 3, 0, 8, 80, 1),
(26, 'sizes', 'statics/sizes', 3, 0, 7, 80, 1),
(11, 'system_registration', 'auth/reg', 8, 0, 0, 80, 1),
(25, 'search', 'search', 3, 0, 6, 80, 1),
(24, 'conditions', 'statics/conditions', 3, 0, 5, 80, 1),
(12, 'system_logout', 'auth/logout', 8, 0, 0, 80, 1),
(23, 'popular', 'populars', 3, 0, 4, 80, 1),
(14, 'system_restore_pass', 'auth/restoration', 8, 0, 0, 80, 1),
(15, 'system_change_pass', 'auth/change_pass', 8, 0, 0, 80, 1),
(22, 'discounts', 'discounts', 3, 0, 3, 80, 1),
(21, 'front_page', '', 3, 0, 2, 80, 1),
(20, 'make_order', 'orders/make', 3, 0, 1, 80, 1),
(3, 'left_menu', '', 0, 0, 0, 80, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
