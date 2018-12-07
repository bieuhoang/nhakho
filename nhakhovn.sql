-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 03:05 PM
-- Server version: 8.0.13
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhakhovn`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2018-12-07 06:39:52', '2018-12-07 06:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `is_superuser`) VALUES
(1, 'Admin', 'Person', 'admin', 'admin@domain.tld', '$2y$10$YzEcbTFs.NORJtYQ.dOOOePNq4cW8wig7OZk4VIfJ15q2hWDtWyDi', NULL, '$2y$10$oZLblryhetj9UNzFv2FqI.U1CQ9Ur3nZTYvYEXuUg9iL.IuhYI3ra', NULL, '', 1, 2, NULL, '2018-12-07 06:39:52', '2018-12-07 06:39:36', '2018-12-07 06:39:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2018-12-07 06:39:36', '2018-12-07 06:39:36', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2018-12-07 06:39:36', '2018-12-07 06:39:36'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2018-12-07 06:39:36', '2018-12-07 06:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(37, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(38, '2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_categories`
--

CREATE TABLE `offline_snipcartshop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_snipcartshop_categories`
--

INSERT INTO `offline_snipcartshop_categories` (`id`, `name`, `slug`, `code`, `meta_title`, `meta_description`, `sort_order`, `created_at`, `updated_at`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`) VALUES
(1, 'Đồng hồ treo tường', 'djong-ho-treo-tong', '', '', '', 0, '2018-12-07 06:44:12', '2018-12-07 06:44:12', NULL, 1, 2, 0),
(2, 'Đồng hồ để bàn', 'djong-ho-dje-ban', '', '', '', 0, '2018-12-07 06:44:26', '2018-12-07 06:44:26', NULL, 3, 4, 0),
(3, 'Đồng hồ tủ đứng', 'djong-ho-tu-djung', '', '', '', 0, '2018-12-07 06:44:39', '2018-12-07 06:44:39', NULL, 5, 6, 0),
(4, 'Sản phẩm khác', 'san-pham-khac', '', '', '', 0, '2018-12-07 06:44:49', '2018-12-07 06:44:49', NULL, 7, 8, 0),
(5, 'Đồng hồ vai bò', 'djong-ho-vai-bo', '', '', '', 0, '2018-12-07 06:45:00', '2018-12-07 06:45:00', NULL, 9, 10, 0),
(6, 'Đồng hồ quả tạ', 'djong-ho-qua-ta', '', '', '', 0, '2018-12-07 06:45:08', '2018-12-07 06:45:08', NULL, 11, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_category_product`
--

CREATE TABLE `offline_snipcartshop_category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_snipcartshop_category_product`
--

INSERT INTO `offline_snipcartshop_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 3, 2),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_discounts`
--

CREATE TABLE `offline_snipcartshop_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `guid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `total_to_reach` decimal(10,0) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Rate',
  `trigger` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Code',
  `rate` int(10) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `alternate_price` decimal(10,0) DEFAULT NULL,
  `max_number_of_usages` int(10) UNSIGNED DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `number_of_usages` int(10) UNSIGNED DEFAULT NULL,
  `number_of_usages_uncompleted` int(10) UNSIGNED DEFAULT NULL,
  `shipping_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(10,0) DEFAULT NULL,
  `shipping_guaranteed_days_to_delivery` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_orders`
--

CREATE TABLE `offline_snipcartshop_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT NULL,
  `modification_date` timestamp NULL DEFAULT NULL,
  `completion_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `will_be_paid_later` tinyint(1) DEFAULT NULL,
  `shipping_address_same_as_billing` tinyint(1) DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `credit_card_last4_digits` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fees` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_used` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refunds_amount` double(8,2) DEFAULT NULL,
  `adjusted_amount` double(8,2) DEFAULT NULL,
  `rebate_amount` double(8,2) DEFAULT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci,
  `items_total` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `taxable_total` decimal(8,2) DEFAULT NULL,
  `grand_total` decimal(8,2) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `total_rebate_rate` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `shipping_enabled` tinyint(1) DEFAULT NULL,
  `payment_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discounts` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_order_items`
--

CREATE TABLE `offline_snipcartshop_order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `max_quantity` int(11) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `total_weight` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stackable` tinyint(1) DEFAULT NULL,
  `duplicatable` tinyint(1) DEFAULT NULL,
  `shippable` tinyint(1) DEFAULT NULL,
  `taxable` tinyint(1) DEFAULT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `taxes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `added_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_products`
--

CREATE TABLE `offline_snipcartshop_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_defined_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `weight` int(10) UNSIGNED DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `length` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `quantity_default` int(10) UNSIGNED DEFAULT NULL,
  `quantity_max` int(10) UNSIGNED DEFAULT NULL,
  `quantity_min` int(10) UNSIGNED DEFAULT NULL,
  `stock` int(11) DEFAULT '0',
  `properties` text COLLATE utf8mb4_unicode_ci,
  `links` text COLLATE utf8mb4_unicode_ci,
  `inventory_management_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'single',
  `allow_out_of_stock_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `stackable` tinyint(1) NOT NULL DEFAULT '1',
  `shippable` tinyint(1) NOT NULL DEFAULT '1',
  `taxable` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thuonghieu` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xuatxu` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gong` int(11) DEFAULT NULL,
  `bua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_snipcartshop_products`
--

INSERT INTO `offline_snipcartshop_products` (`id`, `user_defined_id`, `name`, `slug`, `price`, `description_short`, `description`, `meta_title`, `meta_description`, `weight`, `width`, `length`, `height`, `quantity_default`, `quantity_max`, `quantity_min`, `stock`, `properties`, `links`, `inventory_management_method`, `allow_out_of_stock_purchases`, `stackable`, `shippable`, `taxable`, `published`, `created_at`, `updated_at`, `thuonghieu`, `video`, `xuatxu`, `gong`, `bua`) VALUES
(1, 'Đồng hồ cổ Vedette xuất xứ Pháp', 'Đồng hồ cổ Vedette xuất xứ Pháp', 'djong-ho-co-vedette-xuat-xu-phap', '[{\"currency\":null,\"price\":\"158000000\"}]', 'ákdhasdsjkd kjashd kjasd', '<p>ámdh jahdkjsadkjhaskjdf &nbsp; ákdjnas dklas ldk &nbsp;áldkj sald&nbsp;</p>', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '[]', '[]', 'singe', 0, 0, 1, 1, 1, '2018-12-07 06:46:01', '2018-12-07 06:46:01', NULL, NULL, NULL, NULL, NULL),
(2, 'M101', 'Đồng hồ cổ ODO 30 xuất xứ Pháp.', 'djong-ho-co-odo-30-xuat-xu-phap', '[{\"currency\":\"VN\\u0110\",\"price\":\"158900000\"}]', 'Dungf conga tams duroc', '<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '[]', '[]', 'singe', 0, 0, 1, 1, 1, '2018-12-07 07:41:45', '2018-12-07 07:42:08', 'odo', 'https://youtu.be/qiyKEaJoUdw', 'phap', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_product_accessory`
--

CREATE TABLE `offline_snipcartshop_product_accessory` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `accessory_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_product_custom_fields`
--

CREATE TABLE `offline_snipcartshop_product_custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `options` text COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_product_custom_field_options`
--

CREATE TABLE `offline_snipcartshop_product_custom_field_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_product_variants`
--

CREATE TABLE `offline_snipcartshop_product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `allow_out_of_stock_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_snipcartshop_product_variant_custom_field_option`
--

CREATE TABLE `offline_snipcartshop_product_variant_custom_field_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `variant_id` int(10) UNSIGNED NOT NULL,
  `custom_field_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2018-12-07 06:41:48', '2018-12-07 06:41:48'),
(2, 'Chia sẻ kinh nghiệm', 'chia-se-kinh-nghiem', NULL, '', NULL, 3, 4, 0, '2018-12-07 07:43:14', '2018-12-07 07:43:14'),
(3, 'Cẩm nang đồng hồ cổ', 'cam-nang-djong-ho-co', NULL, '', NULL, 5, 6, 0, '2018-12-07 07:43:31', '2018-12-07 07:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robot_index` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robot_follow` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `seo_title`, `seo_description`, `seo_keywords`, `canonical_url`, `redirect_url`, `robot_index`, `robot_follow`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2018-12-07 06:41:48', 1, '2018-12-07 06:41:48', '2018-12-07 06:41:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Đồng hồ cổ Vedette xuất xứ Pháp', 'djong-ho-co-vedette-xuat-xu-phap', '', 'NộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinh', '<p>NộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinhNộiNội dungNội dung lomnhNội dung lomnh taNội dung lomnh ta linh tinh</p>', '2018-12-05 17:55:00', 1, '2018-12-07 07:44:31', '2018-12-07 07:44:31', '', '', '', '', '', 'index', 'follow'),
(3, 1, 'Đồng hồ cổ Mauther xuất xứ Đức.', 'djong-ho-co-mauther-xuat-xu-djuc', '', 'Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức.', '<p>Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức. Đồng hồ cổ Mauther xuất xứ Đức.</p>', '2018-12-06 07:45:11', 1, '2018-12-07 07:45:13', '2018-12-07 07:45:13', '', '', '', '', '', 'index', 'follow');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_sitemap_definitions`
--

CREATE TABLE `rainlab_sitemap_definitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`, `sort_order`) VALUES
(1, 'en', 'English', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'October\\Rain\\Exception\\SystemException: Class name is not registered for the component \"products\". Check the component plugin. in /Users/nhakho/www/nhakho.vn/modules/cms/Classes/ComponentManager.php:200\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(1263): Cms\\Classes\\ComponentManager->makeComponent(\'products\', Object(Cms5c0a7872ba940532185858_3595d2fb7faa2bc04e70507410a0b95dClass), Array)\n#1 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(552): Cms\\Classes\\Controller->addComponent(\'products\', \'products\', Array)\n#2 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(297): Cms\\Classes\\Controller->initComponents()\n#3 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(206): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 {main}', NULL, '2018-12-07 06:41:06', '2018-12-07 06:41:06'),
(2, 'error', 'October\\Rain\\Exception\\SystemException: Class name is not registered for the component \"products\". Check the component plugin. in /Users/nhakho/www/nhakho.vn/modules/cms/Classes/ComponentManager.php:200\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(1263): Cms\\Classes\\ComponentManager->makeComponent(\'products\', Object(Cms5c0a78b962b37492242126_90ddd6ee001454ce880a6faaf7842858Class), Array)\n#1 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(552): Cms\\Classes\\Controller->addComponent(\'products\', \'products\', Array)\n#2 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(297): Cms\\Classes\\Controller->initComponents()\n#3 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(206): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 {main}', NULL, '2018-12-07 06:42:17', '2018-12-07 06:42:17'),
(3, 'error', 'RuntimeException: [snipcartshop] Please configure at least one currency via the backend settings. in /Users/nhakho/www/nhakho.vn/plugins/offline/snipcartshop/models/CurrencySettings.php:45\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/plugins/offline/snipcartshop/models/Product.php(214): OFFLINE\\SnipcartShop\\Models\\CurrencySettings::activeCurrency()\n#1 /Users/nhakho/www/nhakho.vn/plugins/offline/snipcartshop/models/Product.php(233): OFFLINE\\SnipcartShop\\Models\\Product->getPriceInCurrency()\n#2 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasAttributes.php(438): OFFLINE\\SnipcartShop\\Models\\Product->getPriceFormattedAttribute(NULL)\n#3 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasAttributes.php(340): Illuminate\\Database\\Eloquent\\Model->mutateAttribute(\'priceFormatted\', NULL)\n#4 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(993): Illuminate\\Database\\Eloquent\\Model->getAttributeValue(\'priceFormatted\')\n#5 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(957): October\\Rain\\Database\\Model->getAttributeValue(\'priceFormatted\')\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1382): October\\Rain\\Database\\Model->getAttribute(\'priceFormatted\')\n#7 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/ExtendableTrait.php(348): Illuminate\\Database\\Eloquent\\Model->__get(\'priceFormatted\')\n#8 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(617): October\\Rain\\Database\\Model->extendableGet(\'priceFormatted\')\n#9 /Users/nhakho/www/nhakho.vn/plugins/offline/snipcartshop/models/product/_price.htm(1): October\\Rain\\Database\\Model->__get(\'priceFormatted\')\n#10 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#11 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(97): Backend\\Classes\\Controller->makeFileContents(\'/Users/nhakho/w...\', Array)\n#12 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/Lists.php(1158): Backend\\Classes\\Controller->makePartial(\'$/offline/snipc...\', Array)\n#13 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/Lists.php(1019): Backend\\Widgets\\Lists->evalPartialTypeValue(Object(OFFLINE\\SnipcartShop\\Models\\Product), Object(Backend\\Classes\\ListColumn), Array)\n#14 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/lists/partials/_list_body_row.htm(27): Backend\\Widgets\\Lists->getColumnValue(Object(OFFLINE\\SnipcartShop\\Models\\Product), Object(Backend\\Classes\\ListColumn))\n#15 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#16 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents(\'/Users/nhakho/w...\', Array)\n#17 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/lists/partials/_list_body_rows.htm(2): Backend\\Classes\\WidgetBase->makePartial(\'_list_body_row....\', Array)\n#18 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#19 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents(\'/Users/nhakho/w...\', Array)\n#20 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/lists/partials/_list.htm(8): Backend\\Classes\\WidgetBase->makePartial(\'_list_body_rows...\')\n#21 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#22 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents(\'/Users/nhakho/w...\', Array)\n#23 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/lists/partials/_list-container.htm(2): Backend\\Classes\\WidgetBase->makePartial(\'_list.htm\')\n#24 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#25 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(97): Backend\\Classes\\WidgetBase->makeFileContents(\'/Users/nhakho/w...\', Array)\n#26 /Users/nhakho/www/nhakho.vn/modules/backend/Widgets/Lists.php(238): Backend\\Classes\\WidgetBase->makePartial(\'_list-container...\')\n#27 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/listcontroller/partials/_container.htm(9): Backend\\Widgets\\Lists->render()\n#28 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#29 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/ControllerBehavior.php(143): Backend\\Classes\\Controller->makeFileContents(\'/Users/nhakho/w...\', Array)\n#30 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(97): Backend\\Classes\\ControllerBehavior->makeFileContents(\'/Users/nhakho/w...\', Array)\n#31 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/ListController.php(393): Backend\\Classes\\ControllerBehavior->makePartial(\'_container.htm\', Array)\n#32 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/ListController.php(380): Backend\\Behaviors\\ListController->listMakePartial(\'container\', Array)\n#33 [internal function]: Backend\\Behaviors\\ListController->listRender()\n#34 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/ExtendableTrait.php(397): call_user_func_array(Array, Array)\n#35 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall(\'listRender\', Array)\n#36 /Users/nhakho/www/nhakho.vn/plugins/offline/snipcartshop/controllers/products/index.htm(1): October\\Rain\\Extension\\Extendable->__call(\'listRender\', Array)\n#37 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(247): include(\'/Users/nhakho/w...\')\n#38 /Users/nhakho/www/nhakho.vn/modules/system/Traits/ViewMaker.php(109): Backend\\Classes\\Controller->makeFileContents(\'/Users/nhakho/w...\')\n#39 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(364): Backend\\Classes\\Controller->makeView(\'index\')\n#40 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(246): Backend\\Classes\\Controller->execPageAction(\'index\', Array)\n#41 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/BackendController.php(112): Backend\\Classes\\Controller->run(\'index\', Array)\n#42 [internal function]: Backend\\Classes\\BackendController->run(\'offline/snipcar...\')\n#43 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#44 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#45 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#46 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#47 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#48 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#62 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#63 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#64 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#65 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#66 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#67 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#68 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#69 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#70 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#71 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#72 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#74 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#75 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#76 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#77 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#78 {main}', NULL, '2018-12-07 07:27:26', '2018-12-07 07:27:26');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'thuonghieu\' in \'field list\' in /Users/nhakho/www/nhakho.vn/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:77\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(77): PDO->prepare(\'insert into `of...\', Array)\n#1 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(452): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'insert into `of...\')\n#2 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(657): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'insert into `of...\', Array)\n#3 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(624): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `of...\', Array, Object(Closure))\n#4 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(459): Illuminate\\Database\\Connection->run(\'insert into `of...\', Array, Object(Closure))\n#5 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(411): Illuminate\\Database\\Connection->statement(\'insert into `of...\', Array)\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Query/Processors/Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `of...\', Array)\n#7 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2159): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(October\\Rain\\Database\\QueryBuilder), \'insert into `of...\', Array, \'id\')\n#8 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/QueryBuilder.php(276): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(1283): October\\Rain\\Database\\QueryBuilder->insertGetId(Array, \'id\')\n#10 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Builder.php(178): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(722): October\\Rain\\Database\\Builder->__call(\'insertGetId\', Array)\n#12 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(687): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(October\\Rain\\Database\\Builder), Array)\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(550): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(October\\Rain\\Database\\Builder))\n#14 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(747): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#15 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(780): October\\Rain\\Database\\Model->saveInternal(Array)\n#16 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/FormController.php(241): October\\Rain\\Database\\Model->save(NULL, \'l78hD78jrE1DmSN...\')\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Concerns/ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}(Object(October\\Rain\\Database\\Connections\\MySqlConnection))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/DatabaseManager.php(327): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#20 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/FormController.php(243): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#21 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#22 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/ExtendableTrait.php(397): call_user_func_array(Array, Array)\n#23 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall(\'create_onSave\', Array)\n#24 [internal function]: October\\Rain\\Extension\\Extendable->__call(\'create_onSave\', Array)\n#25 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(532): call_user_func_array(Array, Array)\n#26 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(423): Backend\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#27 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(228): Backend\\Classes\\Controller->execAjaxHandlers()\n#28 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/BackendController.php(112): Backend\\Classes\\Controller->run(\'create\', Array)\n#29 [internal function]: Backend\\Classes\\BackendController->run(\'offline/snipcar...\')\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#54 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#55 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#56 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#57 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#62 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#63 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#64 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#65 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'thuonghieu\' in \'field list\' in /Users/nhakho/www/nhakho.vn/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:79\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(452): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'insert into `of...\')\n#1 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(657): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'insert into `of...\', Array)\n#2 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(624): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `of...\', Array, Object(Closure))\n#3 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(459): Illuminate\\Database\\Connection->run(\'insert into `of...\', Array, Object(Closure))\n#4 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(411): Illuminate\\Database\\Connection->statement(\'insert into `of...\', Array)\n#5 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Query/Processors/Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `of...\', Array)\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2159): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(October\\Rain\\Database\\QueryBuilder), \'insert into `of...\', Array, \'id\')\n#7 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/QueryBuilder.php(276): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(1283): October\\Rain\\Database\\QueryBuilder->insertGetId(Array, \'id\')\n#9 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Builder.php(178): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(722): October\\Rain\\Database\\Builder->__call(\'insertGetId\', Array)\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(687): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(October\\Rain\\Database\\Builder), Array)\n#12 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(550): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(October\\Rain\\Database\\Builder))\n#13 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(747): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#14 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(780): October\\Rain\\Database\\Model->saveInternal(Array)\n#15 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/FormController.php(241): October\\Rain\\Database\\Model->save(NULL, \'l78hD78jrE1DmSN...\')\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Concerns/ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}(Object(October\\Rain\\Database\\Connections\\MySqlConnection))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/DatabaseManager.php(327): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#19 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/FormController.php(243): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#20 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#21 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/ExtendableTrait.php(397): call_user_func_array(Array, Array)\n#22 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall(\'create_onSave\', Array)\n#23 [internal function]: October\\Rain\\Extension\\Extendable->__call(\'create_onSave\', Array)\n#24 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(532): call_user_func_array(Array, Array)\n#25 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(423): Backend\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#26 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(228): Backend\\Classes\\Controller->execAjaxHandlers()\n#27 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/BackendController.php(112): Backend\\Classes\\Controller->run(\'create\', Array)\n#28 [internal function]: Backend\\Classes\\BackendController->run(\'offline/snipcar...\')\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#53 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#54 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#55 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#56 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#61 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#63 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#64 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'thuonghieu\' in \'field list\' (SQL: insert into `offline_snipcartshop_products` (`name`, `slug`, `thuonghieu`, `xuatxu`, `published`, `video`, `user_defined_id`, `description_short`, `price`, `description`, `taxable`, `shippable`, `weight`, `width`, `length`, `height`, `stackable`, `quantity_default`, `quantity_min`, `quantity_max`, `allow_out_of_stock_purchases`, `inventory_management_method`, `meta_title`, `meta_description`, `properties`, `links`, `updated_at`, `created_at`) values (Đồng hồ cổ ODO 30 xuất xứ Pháp., djong-ho-co-odo-30-xuat-xu-phap, odo, phap, 0, https://youtu.be/qiyKEaJoUdw, M101, Dungf conga tams duroc, [{\"currency\":\"VN\\u0110\",\"price\":\"158900000\"}], <p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>\r\n\r\n<p>Demo noi dung 123&nbsp;</p>, 1, 1, , , , , 0, , , , 0, singe, , , [], [], 2018-12-07 14:39:46, 2018-12-07 14:39:46)) in /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php:664\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(624): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `of...\', Array, Object(Closure))\n#1 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(459): Illuminate\\Database\\Connection->run(\'insert into `of...\', Array, Object(Closure))\n#2 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Connection.php(411): Illuminate\\Database\\Connection->statement(\'insert into `of...\', Array)\n#3 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Query/Processors/Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `of...\', Array)\n#4 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2159): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(October\\Rain\\Database\\QueryBuilder), \'insert into `of...\', Array, \'id\')\n#5 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/QueryBuilder.php(276): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(1283): October\\Rain\\Database\\QueryBuilder->insertGetId(Array, \'id\')\n#7 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Builder.php(178): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(722): October\\Rain\\Database\\Builder->__call(\'insertGetId\', Array)\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(687): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(October\\Rain\\Database\\Builder), Array)\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(550): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(October\\Rain\\Database\\Builder))\n#11 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(747): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#12 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Database/Model.php(780): October\\Rain\\Database\\Model->saveInternal(Array)\n#13 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/FormController.php(241): October\\Rain\\Database\\Model->save(NULL, \'l78hD78jrE1DmSN...\')\n#14 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/Concerns/ManagesTransactions.php(29): Backend\\Behaviors\\FormController->Backend\\Behaviors\\{closure}(Object(October\\Rain\\Database\\Connections\\MySqlConnection))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Database/DatabaseManager.php(327): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Database\\DatabaseManager->__call(\'transaction\', Array)\n#17 /Users/nhakho/www/nhakho.vn/modules/backend/Behaviors/FormController.php(243): Illuminate\\Support\\Facades\\Facade::__callStatic(\'transaction\', Array)\n#18 [internal function]: Backend\\Behaviors\\FormController->create_onSave()\n#19 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/ExtendableTrait.php(397): call_user_func_array(Array, Array)\n#20 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Extension/Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall(\'create_onSave\', Array)\n#21 [internal function]: October\\Rain\\Extension\\Extendable->__call(\'create_onSave\', Array)\n#22 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(532): call_user_func_array(Array, Array)\n#23 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(423): Backend\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#24 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/Controller.php(228): Backend\\Classes\\Controller->execAjaxHandlers()\n#25 /Users/nhakho/www/nhakho.vn/modules/backend/Classes/BackendController.php(112): Backend\\Classes\\Controller->run(\'create\', Array)\n#26 [internal function]: Backend\\Classes\\BackendController->run(\'offline/snipcar...\')\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#51 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#52 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#53 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#54 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#55 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#56 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2018-12-07 07:39:46', '2018-12-07 07:39:46');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(5, 'error', 'ErrorException: Array to string conversion in /Users/nhakho/www/nhakho.vn/storage/cms/twig/d3/d34b0120ed5461da50b76557cd559829b935bdb999f851f57ea7ee851282f363.php:93\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/storage/cms/twig/d3/d34b0120ed5461da50b76557cd559829b935bdb999f851f57ea7ee851282f363.php(93): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Array to string...\', \'/Users/nhakho/w...\', 93, Array)\n#1 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(390): __TwigTemplate_fadbf62194cf8be613bd1b27f44635f0a93f025739a29b9de68b312befc8f4da->doDisplay(Array, Array)\n#2 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(367): Twig_Template->displayWithErrorHandling(Array, Array)\n#3 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(375): Twig_Template->display(Array)\n#4 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(360): Twig_Template->render(Array)\n#5 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(206): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'san-pham/djong-...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'san-pham/djong-...\')\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/nhakho/www/nhakho.vn/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}\n\nNext Twig_Error_Runtime: An exception has been thrown during the rendering of a template (\"Array to string conversion\") in \"/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm\" at line 22. in /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php:405\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(367): Twig_Template->displayWithErrorHandling(Array, Array)\n#1 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(375): Twig_Template->display(Array)\n#2 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(360): Twig_Template->render(Array)\n#3 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(206): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'san-pham/djong-...\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'san-pham/djong-...\')\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/nhakho/www/nhakho.vn/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2018-12-07 08:00:57', '2018-12-07 08:00:57'),
(6, 'error', 'ErrorException: Array to string conversion in /Users/nhakho/www/nhakho.vn/storage/cms/twig/d3/d34b0120ed5461da50b76557cd559829b935bdb999f851f57ea7ee851282f363.php:93\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/storage/cms/twig/d3/d34b0120ed5461da50b76557cd559829b935bdb999f851f57ea7ee851282f363.php(93): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Array to string...\', \'/Users/nhakho/w...\', 93, Array)\n#1 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(390): __TwigTemplate_fadbf62194cf8be613bd1b27f44635f0a93f025739a29b9de68b312befc8f4da->doDisplay(Array, Array)\n#2 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(367): Twig_Template->displayWithErrorHandling(Array, Array)\n#3 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(375): Twig_Template->display(Array)\n#4 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(360): Twig_Template->render(Array)\n#5 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(206): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'san-pham/djong-...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'san-pham/djong-...\')\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/nhakho/www/nhakho.vn/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}\n\nNext Twig_Error_Runtime: An exception has been thrown during the rendering of a template (\"Array to string conversion\") in \"/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm\" at line 22. in /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php:405\nStack trace:\n#0 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(367): Twig_Template->displayWithErrorHandling(Array, Array)\n#1 /Users/nhakho/www/nhakho.vn/vendor/twig/twig/lib/Twig/Template.php(375): Twig_Template->display(Array)\n#2 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(360): Twig_Template->render(Array)\n#3 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/Controller.php(206): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /Users/nhakho/www/nhakho.vn/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'san-pham/djong-...\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'san-pham/djong-...\')\n#6 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/nhakho/www/nhakho.vn/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 /Users/nhakho/www/nhakho.vn/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /Users/nhakho/www/nhakho.vn/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 /Users/nhakho/www/nhakho.vn/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2018-12-07 08:00:59', '2018-12-07 08:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '5c0a798edb59a098111069.png', 'tho-sua-dong-ho-hung.png', 84181, 'image/png', NULL, NULL, 'main_image', '1', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 1, '2018-12-07 06:45:50', '2018-12-07 06:46:01'),
(2, '5c0a7994d5bd3476716435.png', 'iconlogo.png', 199007, 'image/png', NULL, NULL, 'images', '1', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 2, '2018-12-07 06:45:56', '2018-12-07 06:46:01'),
(3, '5c0a79952af56569584013.png', 'logo1.png', 32343, 'image/png', NULL, NULL, 'images', '1', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 3, '2018-12-07 06:45:57', '2018-12-07 06:46:01'),
(4, '5c0a79952ba44251766540.png', 'tho-sua-dong-ho-hai.png', 266888, 'image/png', NULL, NULL, 'images', '1', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 4, '2018-12-07 06:45:57', '2018-12-07 06:46:01'),
(5, '5c0a7995735ce205268095.png', 'tho-sua-dong-ho-bieu.png', 962249, 'image/png', NULL, NULL, 'images', '1', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 5, '2018-12-07 06:45:57', '2018-12-07 06:46:01'),
(6, '5c0a85d573d76991086388.png', 'tho-sua-dong-ho-hai.png', 266888, 'image/png', NULL, NULL, 'main_image', '2', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 6, '2018-12-07 07:38:13', '2018-12-07 07:41:45'),
(7, '5c0a85db313c8001437870.png', 'tho-sua-dong-ho-hung.png', 84181, 'image/png', NULL, NULL, 'images', '2', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 7, '2018-12-07 07:38:19', '2018-12-07 07:41:45'),
(8, '5c0a85db33116589169600.png', 'tho-sua-dong-ho-sung.png', 213524, 'image/png', NULL, NULL, 'images', '2', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 8, '2018-12-07 07:38:19', '2018-12-07 07:41:45'),
(9, '5c0a85db7e647303975178.png', 'tho-sua-dong-ho-thang.png', 1196511, 'image/png', NULL, NULL, 'images', '2', 'OFFLINE\\SnipcartShop\\Models\\Product', 1, 9, '2018-12-07 07:38:19', '2018-12-07 07:41:45'),
(10, '5c0a8735596ab858734838.png', 'tho-sua-dong-ho-hung.png', 84181, 'image/png', NULL, NULL, 'featured_images', '2', 'RainLab\\Blog\\Models\\Post', 1, 10, '2018-12-07 07:44:05', '2018-12-07 07:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2018-12-07 06:39:36', '2018-12-07 06:39:36'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2018-12-07 06:39:36', '2018-12-07 06:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"8dccb2043759b385e46cc3cf6a36c4b4\"'),
(3, 'system', 'core', 'build', '\"443\"'),
(4, 'cms', 'theme', 'active', '\"responsiv-flat\"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2018-12-07 06:39:36'),
(2, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2018-12-07 06:41:35'),
(3, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2018-12-07 06:41:35'),
(4, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2018-12-07 06:41:35'),
(5, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2018-12-07 06:41:35'),
(6, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2018-12-07 06:41:35'),
(7, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2018-12-07 06:41:35'),
(8, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2018-12-07 06:41:35'),
(9, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2018-12-07 06:41:35'),
(10, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2018-12-07 06:41:35'),
(11, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2018-12-07 06:41:35'),
(12, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2018-12-07 06:41:35'),
(13, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2018-12-07 06:41:35'),
(14, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2018-12-07 06:41:35'),
(15, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2018-12-07 06:41:35'),
(16, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2018-12-07 06:41:35'),
(17, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2018-12-07 06:41:35'),
(18, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2018-12-07 06:41:35'),
(19, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2018-12-07 06:41:35'),
(20, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2018-12-07 06:41:35'),
(21, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2018-12-07 06:41:35'),
(22, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2018-12-07 06:41:35'),
(23, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2018-12-07 06:41:35'),
(24, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2018-12-07 06:41:35'),
(25, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2018-12-07 06:41:36'),
(26, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2018-12-07 06:41:36'),
(27, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2018-12-07 06:41:36'),
(28, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2018-12-07 06:41:36'),
(29, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2018-12-07 06:41:36'),
(30, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2018-12-07 06:41:36'),
(31, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2018-12-07 06:41:36'),
(32, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2018-12-07 06:41:36'),
(33, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2018-12-07 06:41:36'),
(34, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2018-12-07 06:41:36'),
(35, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2018-12-07 06:41:36'),
(36, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2018-12-07 06:41:36'),
(37, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2018-12-07 06:41:36'),
(38, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2018-12-07 06:41:36'),
(39, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-12-07 06:41:36'),
(40, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2018-12-07 06:41:36'),
(41, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2018-12-07 06:41:36'),
(42, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2018-12-07 06:41:36'),
(43, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2018-12-07 06:41:36'),
(44, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2018-12-07 06:41:36'),
(45, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2018-12-07 06:41:36'),
(46, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2018-12-07 06:41:36'),
(47, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2018-12-07 06:41:36'),
(48, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2018-12-07 06:41:36'),
(49, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2018-12-07 06:41:36'),
(50, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2018-12-07 06:41:36'),
(51, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2018-12-07 06:41:36'),
(52, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2018-12-07 06:41:36'),
(53, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2018-12-07 06:41:36'),
(54, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2018-12-07 06:41:36'),
(55, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2018-12-07 06:41:36'),
(56, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2018-12-07 06:41:36'),
(57, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2018-12-07 06:41:36'),
(58, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2018-12-07 06:41:36'),
(59, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2018-12-07 06:41:48'),
(60, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2018-12-07 06:41:48'),
(61, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2018-12-07 06:41:48'),
(62, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2018-12-07 06:41:48'),
(63, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2018-12-07 06:41:48'),
(64, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2018-12-07 06:41:48'),
(65, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2018-12-07 06:41:48'),
(66, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2018-12-07 06:41:48'),
(67, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2018-12-07 06:41:48'),
(68, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2018-12-07 06:41:48'),
(69, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2018-12-07 06:41:48'),
(70, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2018-12-07 06:41:48'),
(71, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2018-12-07 06:41:48'),
(72, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2018-12-07 06:41:48'),
(73, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2018-12-07 06:41:48'),
(74, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2018-12-07 06:41:48'),
(75, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2018-12-07 06:41:48'),
(76, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2018-12-07 06:41:48'),
(77, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2018-12-07 06:41:48'),
(78, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2018-12-07 06:41:48'),
(79, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2018-12-07 06:41:48'),
(80, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2018-12-07 06:41:48'),
(81, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2018-12-07 06:41:48'),
(82, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2018-12-07 06:41:48'),
(83, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2018-12-07 06:41:48'),
(84, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2018-12-07 06:41:48'),
(85, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2018-12-07 06:41:48'),
(86, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-12-07 06:41:48'),
(87, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2018-12-07 06:41:48'),
(88, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2018-12-07 06:41:48'),
(89, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2018-12-07 06:41:48'),
(90, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2018-12-07 06:41:48'),
(91, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2018-12-07 06:41:48'),
(92, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2018-12-07 06:41:48'),
(93, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2018-12-07 06:41:48'),
(94, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2018-12-07 06:41:48'),
(95, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2018-12-07 06:41:48'),
(96, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2018-12-07 06:41:48'),
(97, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2018-12-07 06:41:48'),
(98, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2018-12-07 06:41:48'),
(99, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2018-12-07 06:41:48'),
(100, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2018-12-07 06:41:48'),
(101, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2018-12-07 06:41:48'),
(102, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2018-12-07 06:42:19'),
(103, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2018-12-07 06:42:19'),
(104, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2018-12-07 06:42:19'),
(105, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2018-12-07 06:42:19'),
(106, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2018-12-07 06:42:19'),
(107, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2018-12-07 06:42:19'),
(108, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2018-12-07 06:42:19'),
(109, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2018-12-07 06:42:19'),
(110, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2018-12-07 06:42:19'),
(111, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2018-12-07 06:42:19'),
(112, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2018-12-07 06:42:19'),
(113, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2018-12-07 06:42:19'),
(114, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2018-12-07 06:42:19'),
(115, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2018-12-07 06:42:19'),
(116, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2018-12-07 06:42:19'),
(117, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2018-12-07 06:42:19'),
(118, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2018-12-07 06:42:19'),
(119, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2018-12-07 06:42:19'),
(120, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2018-12-07 06:42:19'),
(121, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2018-12-07 06:42:19'),
(122, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2018-12-07 06:42:19'),
(123, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2018-12-07 06:42:19'),
(124, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2018-12-07 06:42:19'),
(125, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2018-12-07 06:42:19'),
(126, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2018-12-07 06:42:19'),
(127, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2018-12-07 06:42:19'),
(128, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2018-12-07 06:42:19'),
(129, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2018-12-07 06:42:19'),
(130, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2018-12-07 06:42:19'),
(131, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2018-12-07 06:42:19'),
(132, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2018-12-07 06:42:19'),
(133, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2018-12-07 06:42:19'),
(134, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2018-12-07 06:42:19'),
(135, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2018-12-07 06:42:19'),
(136, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2018-12-07 06:42:19'),
(137, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2018-12-07 06:42:19'),
(138, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2018-12-07 06:42:19'),
(139, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2018-12-07 06:42:19'),
(140, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2018-12-07 06:42:19'),
(141, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2018-12-07 06:42:19'),
(142, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2018-12-07 06:42:19'),
(143, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2018-12-07 06:42:19'),
(144, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2018-12-07 06:42:19'),
(145, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2018-12-07 06:42:19'),
(146, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2018-12-07 06:42:19'),
(147, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2018-12-07 06:42:19'),
(148, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2018-12-07 06:42:19'),
(149, 'RainLab.Translate', 'comment', '1.4.0', 'Add importer and exporter for messages', '2018-12-07 06:42:19'),
(150, 'RainLab.Translate', 'comment', '1.4.1', 'Updated Hungarian translation. Added Arabic translation. Fixed issue where default texts are overwritten by import. Fixed issue where the language switcher for repeater fields would overlap with the first repeater row.', '2018-12-07 06:42:19'),
(151, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_products.php', '2018-12-07 06:42:19'),
(152, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_product_variants.php', '2018-12-07 06:42:19'),
(153, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_product_custom_fields.php', '2018-12-07 06:42:19'),
(154, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_product_custom_field_options.php', '2018-12-07 06:42:19'),
(155, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_product_variant_custom_field_option.php', '2018-12-07 06:42:19'),
(156, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_categories.php', '2018-12-07 06:42:19'),
(157, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_category_product.php', '2018-12-07 06:42:19'),
(158, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_orders.php', '2018-12-07 06:42:19'),
(159, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_order_items.php', '2018-12-07 06:42:19'),
(160, 'OFFLINE.SnipcartShop', 'script', '1.0.1', 'builder_table_create_offline_snipcartshop_discounts.php', '2018-12-07 06:42:19'),
(161, 'OFFLINE.SnipcartShop', 'comment', '1.0.1', 'Initial release.', '2018-12-07 06:42:19'),
(162, 'OFFLINE.SnipcartShop', 'script', '1.0.2', 'builder_table_update_offline_snipcartshop_products.php', '2018-12-07 06:42:19'),
(163, 'OFFLINE.SnipcartShop', 'comment', '1.0.2', 'Added support for product attributes, downloads and links // Optimized price validation', '2018-12-07 06:42:19'),
(164, 'OFFLINE.SnipcartShop', 'script', '1.0.3', 'builder_table_create_offline_snipcartshop_product_accessory.php', '2018-12-07 06:42:19'),
(165, 'OFFLINE.SnipcartShop', 'comment', '1.0.3', 'Added support for product accessories', '2018-12-07 06:42:19'),
(166, 'OFFLINE.SnipcartShop', 'comment', '1.0.4', 'Fixed incorrect database schema generation (thanks to abhi1693)', '2018-12-07 06:42:19'),
(167, 'OFFLINE.SnipcartShop', 'comment', '1.0.5', 'Enable support on Windows systems and make Rainlab.Translate dependency optional', '2018-12-07 06:42:19'),
(168, 'OFFLINE.SnipcartShop', 'script', '1.0.6', 'set_sort_order_defaults.php', '2018-12-07 06:42:20'),
(169, 'OFFLINE.SnipcartShop', 'comment', '1.0.6', 'Fixed issues with MySQL instances that run in strict mode', '2018-12-07 06:42:20'),
(170, 'OFFLINE.SnipcartShop', 'comment', '1.0.7', 'Prevent generation of empty sub-category lists', '2018-12-07 06:42:20'),
(171, 'OFFLINE.SnipcartShop', 'comment', '1.0.8', 'Fixed price handling with product variants and generation of category slugs', '2018-12-07 06:42:20'),
(172, 'OFFLINE.SnipcartShop', 'comment', '1.0.9', 'Use category slug in sub categories directly', '2018-12-07 06:42:20'),
(173, 'OFFLINE.SnipcartShop', 'comment', '1.0.10', 'Added missing categoryPage param', '2018-12-07 06:42:20'),
(174, 'OFFLINE.SnipcartShop', 'comment', '1.0.11', 'Added is_accessory_of relationship to articles', '2018-12-07 06:42:20'),
(175, 'OFFLINE.SnipcartShop', 'comment', '1.0.12', 'Added new Snipcart Webhook fields', '2018-12-07 06:42:20'),
(176, 'OFFLINE.SnipcartShop', 'comment', '1.0.13', 'Fixed generation of quantitiy attributes in product markup', '2018-12-07 06:42:20'),
(177, 'OFFLINE.SnipcartShop', 'comment', '1.0.14', 'Added workaround to make translation of product attributes work as expected', '2018-12-07 06:42:20'),
(178, 'OFFLINE.SnipcartShop', 'comment', '1.0.15', 'Added maximum number of usages field to discouts', '2018-12-07 06:42:20'),
(179, 'OFFLINE.SnipcartShop', 'comment', '1.0.16', 'Fixed invalid relationship column in products list', '2018-12-07 06:42:20'),
(180, 'OFFLINE.SnipcartShop', 'comment', '1.0.17', 'Prevent a bug with discounts where the trigger type gets ignored by Snipcart', '2018-12-07 06:42:20'),
(181, 'OFFLINE.SnipcartShop', 'comment', '1.0.18', 'Added option to display custom fields directly on the product page', '2018-12-07 06:42:20'),
(182, 'OFFLINE.SnipcartShop', 'comment', '1.0.19', 'Implemented category images', '2018-12-07 06:42:20'),
(183, 'OFFLINE.SnipcartShop', 'script', '1.0.20', 'builder_table_update_offline_snipcartshop_categories.php', '2018-12-07 06:42:20'),
(184, 'OFFLINE.SnipcartShop', 'comment', '1.0.20', 'Added unique code field to better identify categories in frontend partials', '2018-12-07 06:42:20'),
(185, 'OFFLINE.SnipcartShop', 'comment', '1.0.21', 'Added options for continue shopping button and split first and last name fields', '2018-12-07 06:42:20'),
(186, 'OFFLINE.SnipcartShop', 'comment', '1.0.22', 'Fixed backend search and made components work without categories', '2018-12-07 06:42:20'),
(187, 'OFFLINE.SnipcartShop', 'comment', '1.0.23', 'Calculating new price immediately after changing custom fields on the product page', '2018-12-07 06:42:20'),
(188, 'OFFLINE.SnipcartShop', 'script', '1.0.24', 'make_order_fields_nullable.php', '2018-12-07 06:42:20'),
(189, 'OFFLINE.SnipcartShop', 'comment', '1.0.24', 'Made order fields nullable', '2018-12-07 06:42:20'),
(190, 'OFFLINE.SnipcartShop', 'comment', '1.0.25', 'Fixed \"show all products\" option on products component', '2018-12-07 06:42:20'),
(191, 'OFFLINE.SnipcartShop', 'script', '1.0.26', 'make_order_items_fields_nullable.php', '2018-12-07 06:42:20'),
(192, 'OFFLINE.SnipcartShop', 'comment', '1.0.26', 'Made order items fields nullable', '2018-12-07 06:42:20'),
(193, 'OFFLINE.SnipcartShop', 'comment', '1.0.27', 'Fixed custom attribute dropdowns when using SQLite', '2018-12-07 06:42:20'),
(194, 'OFFLINE.SnipcartShop', 'comment', '1.0.28', 'Added category filter to products list', '2018-12-07 06:42:20'),
(195, 'OFFLINE.SnipcartShop', 'comment', '1.0.29', 'Moved frontend price calculation into a separate partial', '2018-12-07 06:42:20'),
(196, 'OFFLINE.SnipcartShop', 'script', '1.0.30', 'builder_table_update_offline_snipcartshop_orders.php', '2018-12-07 06:42:20'),
(197, 'OFFLINE.SnipcartShop', 'comment', '1.0.30', 'Tracking used discount codes for orders', '2018-12-07 06:42:20'),
(198, 'OFFLINE.SnipcartShop', 'comment', '1.0.31', 'Implemented new Snipcart Webhook fields', '2018-12-07 06:42:20'),
(199, 'OFFLINE.SnipcartShop', 'comment', '1.0.32', 'Added orders export functionality', '2018-12-07 06:42:20'),
(200, 'OFFLINE.SnipcartShop', 'comment', '1.0.33', 'Implemented custom currency formats', '2018-12-07 06:42:20'),
(201, 'OFFLINE.SnipcartShop', 'comment', '1.0.34', 'Added dependency on Rainlab.Translate', '2018-12-07 06:42:20'),
(202, 'OFFLINE.SnipcartShop', 'comment', '1.0.35', 'Added support for new October Build 420 on Laravel 5.5', '2018-12-07 06:42:20'),
(203, 'OFFLINE.SnipcartShop', 'comment', '1.0.36', 'Fixed compatibility with new Snipcart Webhook fields', '2018-12-07 06:42:20'),
(204, 'OFFLINE.SnipcartShop', 'comment', '1.0.37', 'Fixed bugs when receiving Snipcart webhooks', '2018-12-07 06:42:20'),
(205, 'OFFLINE.SnipcartShop', 'comment', '1.0.38', 'Fixed dependency definition on RainLab.Translate', '2018-12-07 06:42:20'),
(206, 'OFFLINE.SnipcartShop', 'comment', '1.0.39', 'Changed json column types to text for new installations since it is causing problems with old MySQL versions', '2018-12-07 06:42:20'),
(207, 'OFFLINE.SnipcartShop', 'comment', '1.0.40', 'Added single product menu type (thanks to alxy)', '2018-12-07 06:42:20'),
(208, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2018-12-07 06:50:06'),
(209, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2018-12-07 06:50:06'),
(210, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2018-12-07 06:50:06'),
(211, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2018-12-07 06:50:06'),
(212, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2018-12-07 06:50:06'),
(213, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2018-12-07 06:50:06'),
(214, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2018-12-07 06:50:06'),
(215, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2018-12-07 06:50:06'),
(216, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2018-12-07 06:50:06'),
(217, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2018-12-07 06:50:06'),
(218, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2018-12-07 06:50:06'),
(219, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2018-12-07 06:50:06'),
(220, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2018-12-07 06:50:06'),
(221, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2018-12-07 06:50:06'),
(222, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2018-12-07 06:50:06'),
(223, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2018-12-07 06:50:06'),
(224, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2018-12-07 06:50:06'),
(225, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2018-12-07 06:50:06'),
(226, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2018-12-07 06:50:06'),
(227, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2018-12-07 06:50:06'),
(228, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2018-12-07 06:50:06'),
(229, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2018-12-07 06:50:06'),
(230, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2018-12-07 06:50:06'),
(231, 'RainLab.Sitemap', 'comment', '1.0.1', 'First version of Sitemap', '2018-12-07 07:32:19'),
(232, 'RainLab.Sitemap', 'script', '1.0.2', 'create_definitions_table.php', '2018-12-07 07:32:20'),
(233, 'RainLab.Sitemap', 'comment', '1.0.2', 'Create definitions table', '2018-12-07 07:32:20'),
(234, 'RainLab.Sitemap', 'comment', '1.0.3', 'Minor improvements to the code.', '2018-12-07 07:32:20'),
(235, 'RainLab.Sitemap', 'comment', '1.0.4', 'Fixes issue where correct headers not being sent.', '2018-12-07 07:32:20'),
(236, 'RainLab.Sitemap', 'comment', '1.0.5', 'Minor back-end styling fix.', '2018-12-07 07:32:20'),
(237, 'RainLab.Sitemap', 'comment', '1.0.6', 'Minor fix to internal API.', '2018-12-07 07:32:20'),
(238, 'RainLab.Sitemap', 'comment', '1.0.7', 'Added access premissions.', '2018-12-07 07:32:20'),
(239, 'RainLab.Sitemap', 'comment', '1.0.8', 'Minor styling updates.', '2018-12-07 07:32:20'),
(240, 'AnandPatel.SeoExtension', 'script', '1.0.1', 'create_blog_posts_table.php', '2018-12-07 07:32:45'),
(241, 'AnandPatel.SeoExtension', 'comment', '1.0.1', 'First version of Seo Extension', '2018-12-07 07:32:45'),
(242, 'AnandPatel.SeoExtension', 'comment', '1.0.2', 'Bug fixes', '2018-12-07 07:32:45'),
(243, 'AnandPatel.SeoExtension', 'comment', '1.0.3', 'Backend Settings added to configure meta tags & Open Graph tags added', '2018-12-07 07:32:45'),
(244, 'AnandPatel.SeoExtension', 'comment', '1.0.4', 'Code clean up and change path naming in settings model', '2018-12-07 07:32:45'),
(245, 'AnandPatel.SeoExtension', 'comment', '1.0.5', 'Add Turkish, Russian, cs_CZ locale', '2018-12-07 07:32:45'),
(246, 'AnandPatel.SeoExtension', 'comment', '1.0.6', 'Fix issue of SEO Settings Errors', '2018-12-07 07:32:45'),
(247, 'OFFLINE.SnipcartShop', 'script', '1.0.41', 'builder_table_update_offline_snipcartshop_products_2.php', '2018-12-07 07:41:03'),
(248, 'OFFLINE.SnipcartShop', 'comment', '1.0.41', 'Updated table offline_snipcartshop_products', '2018-12-07 07:41:03'),
(249, 'OFFLINE.SnipcartShop', 'script', '1.0.42', 'builder_table_update_offline_snipcartshop_products_3.php', '2018-12-07 07:41:39'),
(250, 'OFFLINE.SnipcartShop', 'comment', '1.0.42', 'Updated table offline_snipcartshop_products', '2018-12-07 07:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2018-12-07 06:39:36', 0, 0),
(2, 'RainLab.User', '1.4.6', '2018-12-07 06:41:36', 0, 0),
(3, 'RainLab.Blog', '1.2.19', '2018-12-07 06:41:48', 0, 0),
(4, 'RainLab.Translate', '1.4.1', '2018-12-07 06:42:19', 0, 0),
(5, 'OFFLINE.SnipcartShop', '1.0.42', '2018-12-07 07:41:39', 0, 0),
(6, 'RainLab.Builder', '1.0.23', '2018-12-07 06:50:06', 0, 0),
(7, 'RainLab.Sitemap', '1.0.8', '2018-12-07 07:32:20', 0, 0),
(8, 'AnandPatel.SeoExtension', '1.0.6', '2018-12-07 07:32:45', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'offline_snipcartshop_settings', '{\"webhookUrl\":\"Ke4Nd8eARaoJQeyYHVhr22vFAYGq7U\",\"currencies\":[{\"code\":\"VN\\u0110\",\"format\":\"\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2018-12-07 06:41:36', '2018-12-07 06:41:36'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2018-12-07 06:41:36', '2018-12-07 06:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_categories`
--
ALTER TABLE `offline_snipcartshop_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offline_snipcartshop_categories_slug_unique` (`slug`);

--
-- Indexes for table `offline_snipcartshop_category_product`
--
ALTER TABLE `offline_snipcartshop_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_discounts`
--
ALTER TABLE `offline_snipcartshop_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_orders`
--
ALTER TABLE `offline_snipcartshop_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offline_snipcartshop_orders_token_unique` (`token`);

--
-- Indexes for table `offline_snipcartshop_order_items`
--
ALTER TABLE `offline_snipcartshop_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_products`
--
ALTER TABLE `offline_snipcartshop_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offline_snipcartshop_products_slug_unique` (`slug`);

--
-- Indexes for table `offline_snipcartshop_product_accessory`
--
ALTER TABLE `offline_snipcartshop_product_accessory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_product_custom_fields`
--
ALTER TABLE `offline_snipcartshop_product_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_product_custom_field_options`
--
ALTER TABLE `offline_snipcartshop_product_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_product_variants`
--
ALTER TABLE `offline_snipcartshop_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_snipcartshop_product_variant_custom_field_option`
--
ALTER TABLE `offline_snipcartshop_product_variant_custom_field_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_sitemap_definitions_theme_index` (`theme`);

--
-- Indexes for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Indexes for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Indexes for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Indexes for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`);

--
-- Indexes for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Indexes for table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_categories`
--
ALTER TABLE `offline_snipcartshop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_category_product`
--
ALTER TABLE `offline_snipcartshop_category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_discounts`
--
ALTER TABLE `offline_snipcartshop_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_orders`
--
ALTER TABLE `offline_snipcartshop_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_order_items`
--
ALTER TABLE `offline_snipcartshop_order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_products`
--
ALTER TABLE `offline_snipcartshop_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_product_accessory`
--
ALTER TABLE `offline_snipcartshop_product_accessory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_product_custom_fields`
--
ALTER TABLE `offline_snipcartshop_product_custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_product_custom_field_options`
--
ALTER TABLE `offline_snipcartshop_product_custom_field_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_product_variants`
--
ALTER TABLE `offline_snipcartshop_product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_snipcartshop_product_variant_custom_field_option`
--
ALTER TABLE `offline_snipcartshop_product_variant_custom_field_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
