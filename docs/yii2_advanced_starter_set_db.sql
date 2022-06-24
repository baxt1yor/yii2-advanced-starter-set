-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 24 2022 г., 02:09
-- Версия сервера: 10.3.29-MariaDB
-- Версия PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_advanced_starter_set_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `thumbnail_base_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_path` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `slug`, `title`, `body`, `view`, `category_id`, `thumbnail_base_url`, `thumbnail_path`, `status`, `created_by`, `updated_by`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', '<p>test</p>', '', 1, 'http://yii2-advanced.loc/storage/web/source', '1\\-OqQKEmeMukiLh75OoKG5qOU90D4Tpnw.jpg', 1, 1, 1, 1656029207, 1656024563, 1656024563);

-- --------------------------------------------------------

--
-- Структура таблицы `article_attachment`
--

CREATE TABLE `article_attachment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_attachment`
--

INSERT INTO `article_attachment` (`id`, `article_id`, `path`, `base_url`, `type`, `size`, `name`, `created_at`, `order`) VALUES
(1, 1, '1\\-PXeBgSocbjLsejdcfOKgoVZ8EaCJSM9.jpg', 'http://yii2-advanced.loc/storage/web/source', 'image/jpeg', 123461, '7.jpg', 1656024563, NULL),
(2, 1, '1\\hesOCDpVam4GT2owNKoJsUlbpXL5U0Bj.jpg', 'http://yii2-advanced.loc/storage/web/source', 'image/jpeg', 166841, '8.jpg', 1656024563, NULL),
(3, 1, '1\\2ZJf2KIHU8t1FG9J_RAU5Oh9Y0rHYb04.jpg', 'http://yii2-advanced.loc/storage/web/source', 'image/jpeg', 129109, '9.jpg', 1656024563, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_category`
--

INSERT INTO `article_category` (`id`, `slug`, `title`, `body`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'news', 'News', NULL, NULL, 1, 1656022750, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `file_storage_item`
--

CREATE TABLE `file_storage_item` (
  `id` int(11) NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `file_storage_item`
--

INSERT INTO `file_storage_item` (`id`, `component`, `base_url`, `path`, `type`, `size`, `name`, `upload_ip`, `created_at`) VALUES
(1, 'fileStorage', 'http://yii2-advanced.loc/storage/web/source', '1\\-OqQKEmeMukiLh75OoKG5qOU90D4Tpnw.jpg', 'image/jpeg', 123232, '-OqQKEmeMukiLh75OoKG5qOU90D4Tpnw', '127.0.0.1', 1656024546),
(2, 'fileStorage', 'http://yii2-advanced.loc/storage/web/source', '1\\-PXeBgSocbjLsejdcfOKgoVZ8EaCJSM9.jpg', 'image/jpeg', 123461, '-PXeBgSocbjLsejdcfOKgoVZ8EaCJSM9', '127.0.0.1', 1656024552),
(3, 'fileStorage', 'http://yii2-advanced.loc/storage/web/source', '1\\hesOCDpVam4GT2owNKoJsUlbpXL5U0Bj.jpg', 'image/jpeg', 166841, 'hesOCDpVam4GT2owNKoJsUlbpXL5U0Bj', '127.0.0.1', 1656024552),
(4, 'fileStorage', 'http://yii2-advanced.loc/storage/web/source', '1\\2ZJf2KIHU8t1FG9J_RAU5Oh9Y0rHYb04.jpg', 'image/jpeg', 129109, '2ZJf2KIHU8t1FG9J_RAU5Oh9Y0rHYb04', '127.0.0.1', 1656024552);

-- --------------------------------------------------------

--
-- Структура таблицы `i18n_message`
--

CREATE TABLE `i18n_message` (
  `id` int(11) NOT NULL,
  `language` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i18n_source_message`
--

CREATE TABLE `i18n_source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `key_storage_item`
--

CREATE TABLE `key_storage_item` (
  `key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `key_storage_item`
--

INSERT INTO `key_storage_item` (`key`, `value`, `comment`, `updated_at`, `created_at`) VALUES
('backend.layout-boxed', '0', NULL, NULL, NULL),
('backend.layout-collapsed-sidebar', '0', NULL, NULL, NULL),
('backend.layout-fixed', '0', NULL, NULL, NULL),
('backend.theme-skin', 'skin-blue', 'skin-blue, skin-black, skin-purple, skin-green, skin-red, skin-yellow', NULL, NULL),
('frontend.maintenance', 'disabled', 'Set it to \"enabled\" to turn on maintenance mode', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `slug`, `title`, `body`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 1, 1656022750, 1656022750),
(2, 'test', 'test', '<p>test</p>', '', 1, 1656024518, 1656024518);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_assignment`
--

CREATE TABLE `rbac_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_assignment`
--

INSERT INTO `rbac_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', '1', 1656022757),
('manager', '2', 1656022757),
('user', '3', 1656022757);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_item`
--

CREATE TABLE `rbac_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_item`
--

INSERT INTO `rbac_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('administrator', 1, NULL, NULL, NULL, 1656022757, 1656022757),
('editOwnModel', 2, NULL, 'ownModelRule', NULL, 1656022758, 1656022758),
('loginToBackend', 2, NULL, NULL, NULL, 1656022757, 1656022757),
('manager', 1, NULL, NULL, NULL, 1656022757, 1656022757),
('user', 1, NULL, NULL, NULL, 1656022756, 1656022756);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_item_child`
--

CREATE TABLE `rbac_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_item_child`
--

INSERT INTO `rbac_auth_item_child` (`parent`, `child`) VALUES
('administrator', 'loginToBackend'),
('administrator', 'manager'),
('administrator', 'user'),
('manager', 'loginToBackend'),
('manager', 'user'),
('user', 'editOwnModel');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_rule`
--

CREATE TABLE `rbac_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_rule`
--

INSERT INTO `rbac_auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('ownModelRule', 0x4f3a32393a22636f6d6d6f6e5c726261635c72756c655c4f776e4d6f64656c52756c65223a333a7b733a343a226e616d65223b733a31323a226f776e4d6f64656c52756c65223b733a393a22637265617465644174223b693a313635363032323735383b733a393a22757064617465644174223b693a313635363032323735383b7d, 1656022758, 1656022758);

-- --------------------------------------------------------

--
-- Структура таблицы `system_db_migration`
--

CREATE TABLE `system_db_migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_db_migration`
--

INSERT INTO `system_db_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1656022729),
('m140703_123000_user', 1656022733),
('m140703_123055_log', 1656022734),
('m140703_123104_page', 1656022734),
('m140703_123803_article', 1656022740),
('m140703_123813_rbac', 1656022741),
('m140709_173306_widget_menu', 1656022741),
('m140709_173333_widget_text', 1656022742),
('m140712_123329_widget_carousel', 1656022743),
('m140805_084745_key_storage_item', 1656022744),
('m141012_101932_i18n_tables', 1656022747),
('m150318_213934_file_storage_item', 1656022747),
('m150414_195800_timeline_event', 1656022748),
('m150725_192740_seed_data', 1656022751),
('m150929_074021_article_attachment_order', 1656022751),
('m160203_095604_user_token', 1656022751),
('m190130_155645_add_article_slug_index', 1656022753);

-- --------------------------------------------------------

--
-- Структура таблицы `system_log`
--

CREATE TABLE `system_log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_rbac_migration`
--

CREATE TABLE `system_rbac_migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_rbac_migration`
--

INSERT INTO `system_rbac_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1656022754),
('m150625_214101_roles', 1656022757),
('m150625_215624_init_permissions', 1656022758),
('m151223_074604_edit_own_model', 1656022758);

-- --------------------------------------------------------

--
-- Структура таблицы `timeline_event`
--

CREATE TABLE `timeline_event` (
  `id` int(11) NOT NULL,
  `application` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `timeline_event`
--

INSERT INTO `timeline_event` (`id`, `application`, `category`, `event`, `data`, `created_at`) VALUES
(1, 'frontend', 'user', 'signup', '{\"public_identity\":\"webmaster\",\"user_id\":1,\"created_at\":1656022748}', 1656022748),
(2, 'frontend', 'user', 'signup', '{\"public_identity\":\"manager\",\"user_id\":2,\"created_at\":1656022748}', 1656022748),
(3, 'frontend', 'user', 'signup', '{\"public_identity\":\"user\",\"user_id\":3,\"created_at\":1656022748}', 1656022748);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_client_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 2,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `logged_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `access_token`, `password_hash`, `oauth_client`, `oauth_client_user_id`, `email`, `status`, `created_at`, `updated_at`, `logged_at`) VALUES
(1, 'webmaster', 'H1gHecVFDo5P7JaPLEGM2SkThhlDgQlk', 'CpCbsHXWTv9bhn-oLGzhri4jiwXZLIP6SlHDeEec', '$2y$13$CAc.StVhbC6VvwYcBpWOd.E5d.o71v5hfc14f.WWfMhnPBHhGogRm', NULL, NULL, 'webmaster@example.com', 2, 1656022749, 1656022749, 1656025683),
(2, 'manager', 'z6qtr7Pp0ZbJfObTGuHqHVQsKReRuA0z', '73lmXaX78-WLrRbNmOr9pY_HeLnX8gg339KslZni', '$2y$13$WPiV8O4.Xcxo2zNtsiK8zuiNwOCJKpCYVVP.07HXmGLgce.ESkEHS', NULL, NULL, 'manager@example.com', 2, 1656022749, 1656022749, NULL),
(3, 'user', 'xka_BAUZb71Qfnb4k5SwxBiofIBVcO7r', 'eY3x4WmpAJSpUKOI_258ULURgdcUoBlpKP9ymBlq', '$2y$13$pmsWH86Y1AR93qAVY0su..YZgTHC.NvNUX4hrUoodp7L.0Yv/Ukt.', NULL, NULL, 'user@example.com', 2, 1656022750, 1656022750, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_base_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `firstname`, `middlename`, `lastname`, `avatar_path`, `avatar_base_url`, `locale`, `gender`) VALUES
(1, 'John', NULL, 'Doe', NULL, NULL, 'en-US', NULL),
(2, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL),
(3, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_token`
--

INSERT INTO `user_token` (`id`, `user_id`, `type`, `token`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'login_pass', 'WH2i-2uBjEyMtVNT6DDKhXPTNg1HMFN7_r3N_BRb', 1656025759, 1656025699, 1656025699);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_carousel`
--

CREATE TABLE `widget_carousel` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `widget_carousel`
--

INSERT INTO `widget_carousel` (`id`, `key`, `status`) VALUES
(1, 'index', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_carousel_item`
--

CREATE TABLE `widget_carousel_item` (
  `id` int(11) NOT NULL,
  `carousel_id` int(11) NOT NULL,
  `base_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `widget_carousel_item`
--

INSERT INTO `widget_carousel_item` (`id`, `carousel_id`, `base_url`, `path`, `asset_url`, `type`, `url`, `caption`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://yii2-advanced.loc', 'img/yii2-starter-kit.gif', 'http://yii2-advanced.loc/img/yii2-starter-kit.gif', 'image/gif', '/', NULL, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_menu`
--

CREATE TABLE `widget_menu` (
  `id` int(11) NOT NULL,
  `key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `widget_menu`
--

INSERT INTO `widget_menu` (`id`, `key`, `title`, `items`, `status`) VALUES
(1, 'frontend-index', 'Frontend index menu', '[\n    {\n        \"label\": \"Get started with Yii2\",\n        \"url\": \"http://www.yiiframework.com\",\n        \"options\": {\n            \"tag\": \"span\"\n        },\n        \"template\": \"<a href=\\\"{url}\\\" class=\\\"btn btn-lg btn-success\\\">{label}</a>\"\n    },\n    {\n        \"label\": \"Yii2 Starter Kit on GitHub\",\n        \"url\": \"https://github.com/yii2-starter-kit/yii2-starter-kit\",\n        \"options\": {\n            \"tag\": \"span\"\n        },\n        \"template\": \"<a href=\\\"{url}\\\" class=\\\"btn btn-lg btn-primary\\\">{label}</a>\"\n    },\n    {\n        \"label\": \"Find a bug?\",\n        \"url\": \"https://github.com/yii2-starter-kit/yii2-starter-kit/issues\",\n        \"options\": {\n            \"tag\": \"span\"\n        },\n        \"template\": \"<a href=\\\"{url}\\\" class=\\\"btn btn-lg btn-danger\\\">{label}</a>\"\n    }\n]', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_text`
--

CREATE TABLE `widget_text` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `widget_text`
--

INSERT INTO `widget_text` (`id`, `key`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'backend_welcome', 'Welcome to backend', '<p>Welcome to Yii2 Starter Kit Dashboard</p>', 1, 1656022751, 1656022751),
(2, 'ads-example', 'Google Ads Example Block', '<div class=\"lead\">\r\n                <script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n                <ins class=\"adsbygoogle\"\r\n                     style=\"display:block\"\r\n                     data-ad-client=\"ca-pub-9505937224921657\"\r\n                     data-ad-slot=\"2264361777\"\r\n                     data-ad-format=\"auto\"></ins>\r\n                <script>\r\n                (adsbygoogle = window.adsbygoogle || []).push({});\r\n                </script>\r\n            </div>', 0, 1656022751, 1656022751);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_article_slug` (`slug`),
  ADD KEY `fk_article_author` (`created_by`),
  ADD KEY `fk_article_updater` (`updated_by`),
  ADD KEY `fk_article_category` (`category_id`);

--
-- Индексы таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_attachment_article` (`article_id`);

--
-- Индексы таблицы `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_article_category_slug` (`slug`),
  ADD KEY `fk_article_category_section` (`parent_id`);

--
-- Индексы таблицы `file_storage_item`
--
ALTER TABLE `file_storage_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i18n_message`
--
ALTER TABLE `i18n_message`
  ADD PRIMARY KEY (`id`,`language`);

--
-- Индексы таблицы `i18n_source_message`
--
ALTER TABLE `i18n_source_message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `key_storage_item`
--
ALTER TABLE `key_storage_item`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `idx_key_storage_item_key` (`key`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rbac_auth_assignment`
--
ALTER TABLE `rbac_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `rbac_auth_item`
--
ALTER TABLE `rbac_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `rbac_auth_item_child`
--
ALTER TABLE `rbac_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `rbac_auth_rule`
--
ALTER TABLE `rbac_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `system_db_migration`
--
ALTER TABLE `system_db_migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_level` (`level`),
  ADD KEY `idx_log_category` (`category`);

--
-- Индексы таблицы `system_rbac_migration`
--
ALTER TABLE `system_rbac_migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `timeline_event`
--
ALTER TABLE `timeline_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widget_carousel`
--
ALTER TABLE `widget_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_carousel` (`carousel_id`);

--
-- Индексы таблицы `widget_menu`
--
ALTER TABLE `widget_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widget_text`
--
ALTER TABLE `widget_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_widget_text_key` (`key`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `file_storage_item`
--
ALTER TABLE `file_storage_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `i18n_source_message`
--
ALTER TABLE `i18n_source_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `timeline_event`
--
ALTER TABLE `timeline_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_carousel`
--
ALTER TABLE `widget_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_menu`
--
ALTER TABLE `widget_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_text`
--
ALTER TABLE `widget_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_author` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_article_category` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_article_updater` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  ADD CONSTRAINT `fk_article_attachment_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `fk_article_category_section` FOREIGN KEY (`parent_id`) REFERENCES `article_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `i18n_message`
--
ALTER TABLE `i18n_message`
  ADD CONSTRAINT `fk_i18n_message_source_message` FOREIGN KEY (`id`) REFERENCES `i18n_source_message` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_assignment`
--
ALTER TABLE `rbac_auth_assignment`
  ADD CONSTRAINT `rbac_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_item`
--
ALTER TABLE `rbac_auth_item`
  ADD CONSTRAINT `rbac_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `rbac_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_item_child`
--
ALTER TABLE `rbac_auth_item_child`
  ADD CONSTRAINT `rbac_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rbac_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  ADD CONSTRAINT `fk_item_carousel` FOREIGN KEY (`carousel_id`) REFERENCES `widget_carousel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
