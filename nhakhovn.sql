-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 08:26 PM
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
(1, 'Admin', 'Person', 'bieuhoang', 'bieuhv@gmail.com', '$2y$10$Y.ywX0J5CuHxOww0zmWCRekWt3N6e8Eu5kuMYF/zJOnZtjNfrJehK', NULL, NULL, NULL, '', 1, 2, NULL, NULL, '2018-11-28 13:18:16', '2018-11-28 13:18:16', 1);

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
(1, 'Owners', '2018-11-28 13:18:16', '2018-11-28 13:18:16', 'owners', 'Default group for website owners.', 0);

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
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2018-11-28 13:18:16', '2018-11-28 13:18:16'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2018-11-28 13:18:16', '2018-11-28 13:18:16');

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
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2018-11-28 13:18:12', '2018-11-28 13:18:12');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2018-11-28 13:18:12', 1, '2018-11-28 13:18:12', '2018-11-28 13:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Discussion about the season of falling leaves.', 2, 9, 1, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Discussion about the wind at the ocean.', 10, 11, 1, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Discussion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Discussion about the blooming gardens.', 16, 17, 1, 0, 0, '2018-11-28 13:18:13', '2018-11-28 13:18:13', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
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
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2018-11-28 13:18:16', '2018-11-28 13:18:16'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2018-11-28 13:18:16', '2018-11-28 13:18:16');

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
(3, 'system', 'core', 'build', '\"443\"');

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
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2018-11-28 13:18:11'),
(2, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2018-11-28 13:18:11'),
(3, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2018-11-28 13:18:11'),
(4, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2018-11-28 13:18:11'),
(5, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2018-11-28 13:18:11'),
(6, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2018-11-28 13:18:11'),
(7, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2018-11-28 13:18:11'),
(8, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2018-11-28 13:18:11'),
(9, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2018-11-28 13:18:11'),
(10, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2018-11-28 13:18:11'),
(11, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2018-11-28 13:18:11'),
(12, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2018-11-28 13:18:11'),
(13, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2018-11-28 13:18:11'),
(14, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2018-11-28 13:18:11'),
(15, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2018-11-28 13:18:11'),
(16, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2018-11-28 13:18:11'),
(17, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2018-11-28 13:18:11'),
(18, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2018-11-28 13:18:11'),
(19, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2018-11-28 13:18:11'),
(20, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2018-11-28 13:18:11'),
(21, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2018-11-28 13:18:11'),
(22, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2018-11-28 13:18:11'),
(23, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2018-11-28 13:18:11'),
(24, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2018-11-28 13:18:11'),
(25, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2018-11-28 13:18:11'),
(26, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2018-11-28 13:18:11'),
(27, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2018-11-28 13:18:11'),
(28, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2018-11-28 13:18:11'),
(29, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2018-11-28 13:18:11'),
(30, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2018-11-28 13:18:11'),
(31, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2018-11-28 13:18:11'),
(32, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2018-11-28 13:18:11'),
(33, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2018-11-28 13:18:11'),
(34, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2018-11-28 13:18:11'),
(35, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2018-11-28 13:18:11'),
(36, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2018-11-28 13:18:11'),
(37, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2018-11-28 13:18:11'),
(38, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2018-11-28 13:18:11'),
(39, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2018-11-28 13:18:11'),
(40, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2018-11-28 13:18:11'),
(41, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2018-11-28 13:18:11'),
(42, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2018-11-28 13:18:11'),
(43, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2018-11-28 13:18:11'),
(44, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2018-11-28 13:18:11'),
(45, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2018-11-28 13:18:11'),
(46, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2018-11-28 13:18:11'),
(47, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2018-11-28 13:18:11'),
(48, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2018-11-28 13:18:11'),
(49, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2018-11-28 13:18:11'),
(50, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2018-11-28 13:18:11'),
(51, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2018-11-28 13:18:11'),
(52, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2018-11-28 13:18:11'),
(53, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2018-11-28 13:18:11'),
(54, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2018-11-28 13:18:11'),
(55, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2018-11-28 13:18:11'),
(56, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2018-11-28 13:18:11'),
(57, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2018-11-28 13:18:11'),
(58, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2018-11-28 13:18:11'),
(59, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2018-11-28 13:18:11'),
(60, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2018-11-28 13:18:11'),
(61, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2018-11-28 13:18:11'),
(62, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2018-11-28 13:18:11'),
(63, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2018-11-28 13:18:11'),
(64, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2018-11-28 13:18:12'),
(65, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2018-11-28 13:18:12'),
(66, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2018-11-28 13:18:12'),
(67, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2018-11-28 13:18:12'),
(68, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2018-11-28 13:18:12'),
(69, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2018-11-28 13:18:12'),
(70, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2018-11-28 13:18:12'),
(71, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2018-11-28 13:18:12'),
(72, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2018-11-28 13:18:12'),
(73, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2018-11-28 13:18:12'),
(74, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2018-11-28 13:18:12'),
(75, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2018-11-28 13:18:12'),
(76, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2018-11-28 13:18:12'),
(77, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2018-11-28 13:18:12'),
(78, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2018-11-28 13:18:12'),
(79, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2018-11-28 13:18:12'),
(80, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2018-11-28 13:18:12'),
(81, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2018-11-28 13:18:12'),
(82, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2018-11-28 13:18:12'),
(83, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2018-11-28 13:18:12'),
(84, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2018-11-28 13:18:12'),
(85, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2018-11-28 13:18:12'),
(86, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-11-28 13:18:12'),
(87, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2018-11-28 13:18:12'),
(88, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2018-11-28 13:18:12'),
(89, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2018-11-28 13:18:12'),
(90, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2018-11-28 13:18:12'),
(91, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2018-11-28 13:18:12'),
(92, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2018-11-28 13:18:12'),
(93, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2018-11-28 13:18:12'),
(94, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2018-11-28 13:18:12'),
(95, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2018-11-28 13:18:12'),
(96, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2018-11-28 13:18:12'),
(97, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2018-11-28 13:18:12'),
(98, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2018-11-28 13:18:12'),
(99, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2018-11-28 13:18:12'),
(100, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2018-11-28 13:18:12'),
(101, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2018-11-28 13:18:12'),
(102, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2018-11-28 13:18:12'),
(103, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2018-11-28 13:18:12'),
(104, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2018-11-28 13:18:12'),
(105, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2018-11-28 13:18:12'),
(106, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2018-11-28 13:18:12'),
(107, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2018-11-28 13:18:12'),
(108, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2018-11-28 13:18:12'),
(109, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2018-11-28 13:18:12'),
(110, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2018-11-28 13:18:12'),
(111, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2018-11-28 13:18:12'),
(112, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2018-11-28 13:18:12'),
(113, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2018-11-28 13:18:12'),
(114, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2018-11-28 13:18:12'),
(115, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2018-11-28 13:18:12'),
(116, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2018-11-28 13:18:12'),
(117, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2018-11-28 13:18:12'),
(118, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2018-11-28 13:18:12'),
(119, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2018-11-28 13:18:12'),
(120, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2018-11-28 13:18:12'),
(121, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2018-11-28 13:18:12'),
(122, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2018-11-28 13:18:12'),
(123, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2018-11-28 13:18:12'),
(124, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2018-11-28 13:18:12'),
(125, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2018-11-28 13:18:12'),
(126, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2018-11-28 13:18:12'),
(127, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2018-11-28 13:18:12'),
(128, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2018-11-28 13:18:12'),
(129, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2018-11-28 13:18:12'),
(130, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2018-11-28 13:18:12'),
(131, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2018-11-28 13:18:12'),
(132, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2018-11-28 13:18:13'),
(133, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-11-28 13:18:13'),
(134, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2018-11-28 13:18:13'),
(135, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2018-11-28 13:18:13'),
(136, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2018-11-28 13:18:13'),
(137, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2018-11-28 13:18:13'),
(138, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2018-11-28 13:18:13'),
(139, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2018-11-28 13:18:13'),
(140, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2018-11-28 13:18:13'),
(141, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2018-11-28 13:18:13'),
(142, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2018-11-28 13:18:13'),
(143, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2018-11-28 13:18:13'),
(144, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2018-11-28 13:18:13'),
(145, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2018-11-28 13:18:13'),
(146, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2018-11-28 13:18:13'),
(147, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2018-11-28 13:18:13'),
(148, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2018-11-28 13:18:13'),
(149, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2018-11-28 13:18:13'),
(150, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2018-11-28 13:18:13'),
(151, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2018-11-28 13:18:13'),
(152, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2018-11-28 13:18:13'),
(153, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2018-11-28 13:18:13'),
(154, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2018-11-28 13:18:13'),
(155, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2018-11-28 13:18:13'),
(156, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2018-11-28 13:18:13'),
(157, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2018-11-28 13:18:13'),
(158, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2018-11-28 13:18:13'),
(159, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2018-11-28 13:18:13'),
(160, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2018-11-28 13:18:13'),
(161, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2018-11-28 13:18:13'),
(162, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2018-11-28 13:18:13'),
(163, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2018-11-28 13:18:13'),
(164, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2018-11-28 13:18:13'),
(165, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2018-11-28 13:18:14'),
(166, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2018-11-28 13:18:14'),
(167, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2018-11-28 13:18:14'),
(168, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2018-11-28 13:18:14'),
(169, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2018-11-28 13:18:14'),
(170, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2018-11-28 13:18:14'),
(171, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2018-11-28 13:18:14'),
(172, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2018-11-28 13:18:14'),
(173, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2018-11-28 13:18:14'),
(174, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2018-11-28 13:18:14'),
(175, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2018-11-28 13:18:14'),
(176, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2018-11-28 13:18:14'),
(177, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2018-11-28 13:18:14'),
(178, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2018-11-28 13:18:14'),
(179, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-11-28 13:18:14'),
(180, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2018-11-28 13:18:14'),
(181, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2018-11-28 13:18:14'),
(182, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2018-11-28 13:18:14'),
(183, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2018-11-28 13:18:14'),
(184, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2018-11-28 13:18:14'),
(185, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2018-11-28 13:18:14'),
(186, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2018-11-28 13:18:14'),
(187, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2018-11-28 13:18:14'),
(188, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2018-11-28 13:18:14'),
(189, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2018-11-28 13:18:14'),
(190, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2018-11-28 13:18:14'),
(191, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2018-11-28 13:18:14'),
(192, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2018-11-28 13:18:14'),
(193, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2018-11-28 13:18:14'),
(194, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2018-11-28 13:18:14'),
(195, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2018-11-28 13:18:14'),
(196, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2018-11-28 13:18:14'),
(197, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2018-11-28 13:18:14'),
(198, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2018-11-28 13:18:14'),
(199, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2018-11-28 13:18:14'),
(200, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2018-11-28 13:18:14'),
(201, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2018-11-28 13:18:14'),
(202, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2018-11-28 13:18:14'),
(203, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2018-11-28 13:18:14'),
(204, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2018-11-28 13:18:14'),
(205, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2018-11-28 13:18:14'),
(206, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2018-11-28 13:18:14'),
(207, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2018-11-28 13:18:14'),
(208, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2018-11-28 13:18:14'),
(209, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2018-11-28 13:18:14'),
(210, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2018-11-28 13:18:14'),
(211, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2018-11-28 13:18:14'),
(212, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2018-11-28 13:18:14'),
(213, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2018-11-28 13:18:14'),
(214, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2018-11-28 13:18:14'),
(215, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2018-11-28 13:18:14'),
(216, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2018-11-28 13:18:14'),
(217, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2018-11-28 13:18:14'),
(218, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2018-11-28 13:18:14'),
(219, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2018-11-28 13:18:14'),
(220, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2018-11-28 13:18:14'),
(221, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2018-11-28 13:18:14'),
(222, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2018-11-28 13:18:14'),
(223, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2018-11-28 13:18:14'),
(224, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2018-11-28 13:18:14'),
(225, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2018-11-28 13:18:14'),
(226, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2018-11-28 13:18:14'),
(227, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2018-11-28 13:18:14'),
(228, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2018-11-28 13:18:14'),
(229, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2018-11-28 13:18:14'),
(230, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2018-11-28 13:18:14'),
(231, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2018-11-28 13:18:14'),
(232, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2018-11-28 13:18:14'),
(233, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2018-11-28 13:18:14'),
(234, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2018-11-28 13:18:14'),
(235, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2018-11-28 13:18:14'),
(236, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2018-11-28 13:18:14'),
(237, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2018-11-28 13:18:14'),
(238, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2018-11-28 13:18:14'),
(239, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2018-11-28 13:18:14'),
(240, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2018-11-28 13:18:14'),
(241, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2018-11-28 13:18:14'),
(242, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2018-11-28 13:18:14'),
(243, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2018-11-28 13:18:14'),
(244, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2018-11-28 13:18:14'),
(245, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2018-11-28 13:18:14'),
(246, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2018-11-28 13:18:14'),
(247, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2018-11-28 13:18:14'),
(248, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2018-11-28 13:18:14'),
(249, 'Xeor.OctoCart', 'script', '1.0.0', 'create_orders_table.php', '2018-11-28 13:18:14'),
(250, 'Xeor.OctoCart', 'comment', '1.0.0', 'First release of OctoCart.', '2018-11-28 13:18:14'),
(251, 'Xeor.OctoCart', 'script', '2.0.1', 'create_categories_table.php', '2018-11-28 13:18:14'),
(252, 'Xeor.OctoCart', 'script', '2.0.1', 'create_products_table.php', '2018-11-28 13:18:14'),
(253, 'Xeor.OctoCart', 'comment', '2.0.1', 'Second version of OctoCart!!! Please look at the documentation before upgrading!!!', '2018-11-28 13:18:14'),
(254, 'Xeor.OctoCart', 'script', '2.0.2', 'create_product_attributes_table.php', '2018-11-28 13:18:14'),
(255, 'Xeor.OctoCart', 'comment', '2.0.2', 'Fixes + Add Russian translation.', '2018-11-28 13:18:14'),
(256, 'Xeor.OctoCart', 'comment', '2.0.3', 'Fixed typo.', '2018-11-28 13:18:14'),
(257, 'Xeor.OctoCart', 'comment', '2.0.4', 'Fixed issue with price filter.', '2018-11-28 13:18:14'),
(258, 'Xeor.OctoCart', 'comment', '2.0.5', 'Fixed issue with price filter.', '2018-11-28 13:18:14'),
(259, 'Xeor.OctoCart', 'script', '2.0.6', 'create_products_fields.php', '2018-11-28 13:18:14'),
(260, 'Xeor.OctoCart', 'script', '2.0.6', 'demo_seed.php', '2018-11-28 13:18:15'),
(261, 'Xeor.OctoCart', 'comment', '2.0.6', 'Minor update.', '2018-11-28 13:18:15'),
(262, 'Xeor.OctoCart', 'comment', '2.0.7', 'Added product availability date.', '2018-11-28 13:18:15'),
(263, 'Xeor.OctoCart', 'comment', '2.0.8', '!!! Renamed productDisplay and orderDisplay components.', '2018-11-28 13:18:15'),
(264, 'Xeor.OctoCart', 'comment', '2.0.9', 'Fixed issue with demo_seed.php.', '2018-11-28 13:18:15'),
(265, 'Xeor.OctoCart', 'comment', '2.0.10', 'Fixed some issues.', '2018-11-28 13:18:15'),
(266, 'Xeor.OctoCart', 'comment', '2.0.11', 'Fixed some issues.', '2018-11-28 13:18:15'),
(267, 'Xeor.OctoCart', 'comment', '2.0.12', '!!! Now you can edit orders. Updated billing_info & shipping_info fields. Updated the order component template.', '2018-11-28 13:18:15'),
(268, 'Xeor.OctoCart', 'script', '2.0.13', 'create_orders_status.php', '2018-11-28 13:18:15'),
(269, 'Xeor.OctoCart', 'comment', '2.0.13', 'Added the status column to the orders table.', '2018-11-28 13:18:15'),
(270, 'Xeor.OctoCart', 'script', '2.0.14', 'create_orders_note.php', '2018-11-28 13:18:15'),
(271, 'Xeor.OctoCart', 'comment', '2.0.14', 'Added the note column to the orders table.', '2018-11-28 13:18:15'),
(272, 'Xeor.OctoCart', 'script', '2.0.15', 'create_orders_phone.php', '2018-11-28 13:18:15'),
(273, 'Xeor.OctoCart', 'comment', '2.0.15', 'Added the phone column to the orders table.', '2018-11-28 13:18:15'),
(274, 'Xeor.OctoCart', 'comment', '2.0.16', 'Fixed some issues.', '2018-11-28 13:18:15'),
(275, 'Xeor.OctoCart', 'comment', '2.0.17', 'Added $order variable to mail template.', '2018-11-28 13:18:15'),
(276, 'Xeor.OctoCart', 'script', '2.0.18', 'create_products_variations.php', '2018-11-28 13:18:15'),
(277, 'Xeor.OctoCart', 'comment', '2.0.18', 'Added variations to product.', '2018-11-28 13:18:15'),
(278, 'Xeor.OctoCart', 'script', '2.0.19', 'create_categories_active.php', '2018-11-28 13:18:15'),
(279, 'Xeor.OctoCart', 'comment', '2.0.19', 'Added the active column to the categories table.', '2018-11-28 13:18:15'),
(280, 'Xeor.OctoCart', 'script', '2.0.20', 'create_categories_external_id.php', '2018-11-28 13:18:15'),
(281, 'Xeor.OctoCart', 'script', '2.0.20', 'create_categories_excerpt.php', '2018-11-28 13:18:16'),
(282, 'Xeor.OctoCart', 'comment', '2.0.20', 'Added the external id and excerpt columns to the categories table.', '2018-11-28 13:18:16'),
(283, 'Xeor.OctoCart', 'comment', '2.0.21', 'Added the images field to the category.', '2018-11-28 13:18:16'),
(284, 'Xeor.OctoCart', 'script', '2018.6.1', 'create_products_external_id.php', '2018-11-28 13:18:16'),
(285, 'Xeor.OctoCart', 'comment', '2018.6.1', 'Added the external id column to the products table.', '2018-11-28 13:18:16'),
(286, 'Xeor.OctoCart', 'script', '2018.7.1', 'create_product_attributes_code.php', '2018-11-28 13:18:16'),
(287, 'Xeor.OctoCart', 'comment', '2018.7.1', 'Added the code column to the product attributes table.', '2018-11-28 13:18:16'),
(288, 'Xeor.OctoCart', 'comment', '2018.8.1', 'Added feature for sorting products.', '2018-11-28 13:18:16'),
(289, 'Xeor.OctoCart', 'script', '2018.8.2', 'builder_table_update_xeor_octocart_products.php', '2018-11-28 13:18:16'),
(290, 'Xeor.OctoCart', 'comment', '2018.8.2', 'Updated table xeor_octocart_products', '2018-11-28 13:18:16'),
(291, 'Xeor.OctoCart', 'script', '2018.8.3', 'builder_table_update_xeor_octocart_products_2.php', '2018-11-28 13:18:16'),
(292, 'Xeor.OctoCart', 'comment', '2018.8.3', 'Updated table xeor_octocart_products', '2018-11-28 13:18:16'),
(293, 'Xeor.OctoCart', 'script', '2018.8.4', 'builder_table_update_xeor_octocart_products_3.php', '2018-11-28 13:18:16'),
(294, 'Xeor.OctoCart', 'comment', '2018.8.4', 'Updated table xeor_octocart_products', '2018-11-28 13:18:16'),
(295, 'OFFLINE.SiteSearch', 'comment', '1.0.1', 'First version of SiteSearch', '2018-11-28 13:18:16'),
(296, 'OFFLINE.SiteSearch', 'comment', '1.0.2', 'Added experimental CMS pages results provider', '2018-11-28 13:18:16'),
(297, 'OFFLINE.SiteSearch', 'comment', '1.0.3', 'Added missing component', '2018-11-28 13:18:16'),
(298, 'OFFLINE.SiteSearch', 'comment', '1.0.4', 'Added support for RadiantWeb.ProBlog', '2018-11-28 13:18:16'),
(299, 'OFFLINE.SiteSearch', 'comment', '1.0.5', 'Moved configuration to the backend', '2018-11-28 13:18:16'),
(300, 'OFFLINE.SiteSearch', 'comment', '1.0.6', 'Fixed hardcoded url in pagination', '2018-11-28 13:18:16'),
(301, 'OFFLINE.SiteSearch', 'comment', '1.0.7', 'Add function for getting last page number (Thanks to vojtasvoboda)', '2018-11-28 13:18:16'),
(302, 'OFFLINE.SiteSearch', 'comment', '1.0.8', 'Add cs_CZ locale (Thanks to vojtasvoboda)', '2018-11-28 13:18:16'),
(303, 'OFFLINE.SiteSearch', 'comment', '1.0.9', 'Added support for ArrizalAmin.Portfolio plugin', '2018-11-28 13:18:16'),
(304, 'OFFLINE.SiteSearch', 'comment', '1.0.10', 'Removed unused component', '2018-11-28 13:18:16'),
(305, 'OFFLINE.SiteSearch', 'script', '1.1.0', 'Fixed bug where RainLab.Pages results were displayed twice', '2018-11-28 13:18:16'),
(306, 'OFFLINE.SiteSearch', 'script', '1.1.0', 'Honor disabled plugins setting', '2018-11-28 13:18:16'),
(307, 'OFFLINE.SiteSearch', 'script', '1.1.0', 'Generate absolute URLs in search results by default', '2018-11-28 13:18:16'),
(308, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Added support for translated contents in RainLab.Pages, ArrizalAmin.Portfolio and RadiantWeb.ProBlog', '2018-11-28 13:18:16'),
(309, 'OFFLINE.SiteSearch', 'comment', '1.1.1', 'Added optimized siteSearchInclude component for cms pages search', '2018-11-28 13:18:16'),
(310, 'OFFLINE.SiteSearch', 'comment', '1.1.2', 'Fixed backend permissions', '2018-11-28 13:18:16'),
(311, 'OFFLINE.SiteSearch', 'comment', '1.1.3', 'Added ru_RU locale (Thanks to mokeev1995)', '2018-11-28 13:18:16'),
(312, 'OFFLINE.SiteSearch', 'script', '1.2.1', 'Refactored search providers and results page', '2018-11-28 13:18:16'),
(313, 'OFFLINE.SiteSearch', 'comment', '1.2.1', 'Added support for Feegleweb.Octoshop (Thanks to billyzduke)', '2018-11-28 13:18:16'),
(314, 'OFFLINE.SiteSearch', 'comment', '1.2.2', 'Minor bugfix in Feegleweb.Octoshop settings page translation', '2018-11-28 13:18:16'),
(315, 'OFFLINE.SiteSearch', 'comment', '1.2.3', 'Fixed bug where the search results sometimes broke the page layout', '2018-11-28 13:18:16'),
(316, 'OFFLINE.SiteSearch', 'comment', '1.2.4', 'Fixed bug where unavailable thumbnails lead to an error', '2018-11-28 13:18:16'),
(317, 'OFFLINE.SiteSearch', 'comment', '1.2.5', 'Fixed bug where the provider badge is not displayed for custom search providers', '2018-11-28 13:18:16'),
(318, 'OFFLINE.SiteSearch', 'comment', '1.2.6', 'Added support for Responsiv.Showcase (Thanks to MichiReich)', '2018-11-28 13:18:16'),
(319, 'OFFLINE.SiteSearch', 'comment', '1.2.7', 'Fixed bug where custom url settings were ignored in search results for some providers', '2018-11-28 13:18:16'),
(320, 'OFFLINE.SiteSearch', 'comment', '1.2.8', 'Added support for viewBag properties in RainLab.Pages', '2018-11-28 13:18:16'),
(321, 'OFFLINE.SiteSearch', 'comment', '1.2.9', 'Added support for static page component hosts', '2018-11-28 13:18:16'),
(322, 'OFFLINE.SiteSearch', 'comment', '1.2.10', 'Added support for multiple variables in Rainlab.Blog urls (Thanks to graker)', '2018-11-28 13:18:16'),
(323, 'OFFLINE.SiteSearch', 'comment', '1.2.11', 'Optimized handling of multibyte strings', '2018-11-28 13:18:16'),
(324, 'OFFLINE.SiteSearch', 'comment', '1.2.12', 'Added support for Jiri.Jkshop', '2018-11-28 13:18:16'),
(325, 'OFFLINE.SiteSearch', 'comment', '1.2.13', 'Minor bugfixes for marked queries in search results and Rainlab.Blog provider (Thanks to graker)', '2018-11-28 13:18:16'),
(326, 'OFFLINE.SiteSearch', 'comment', '1.2.14', 'Fixed bug in Jiri.JKShop provider', '2018-11-28 13:18:16'),
(327, 'OFFLINE.SiteSearch', 'comment', '1.2.15', 'Added a new meta property for search results (thanks to cracki)', '2018-11-28 13:18:16'),
(328, 'OFFLINE.SiteSearch', 'comment', '1.2.16', 'Added Persian (Farsi) translations (thanks to cracki)', '2018-11-28 13:18:16'),
(329, 'OFFLINE.SiteSearch', 'comment', '1.2.17', 'Added support for Indikator.News (thanks to gergo85)', '2018-11-28 13:18:16'),
(330, 'OFFLINE.SiteSearch', 'comment', '1.2.18', 'Fixed bug where titles of static pages where not searched (thanks to beenen445)', '2018-11-28 13:18:16'),
(331, 'OFFLINE.SiteSearch', 'comment', '1.2.19', 'Added support for OFFLINE.SnipcartShop', '2018-11-28 13:18:16'),
(332, 'OFFLINE.SiteSearch', 'comment', '1.2.20', 'Added support for VojtaSvoboda.Brands (thanks to vojtasvoboda)', '2018-11-28 13:18:16'),
(333, 'OFFLINE.SiteSearch', 'comment', '1.2.21', 'Added Portuguese translations (thanks to ribsousa)', '2018-11-28 13:18:16'),
(334, 'OFFLINE.SiteSearch', 'comment', '1.2.22', 'Fixed Portuguese translations', '2018-11-28 13:18:16'),
(335, 'OFFLINE.SiteSearch', 'comment', '1.2.23', 'Fixed support for translated Rainlab.Blog contents', '2018-11-28 13:18:16'),
(336, 'OFFLINE.SiteSearch', 'comment', '1.2.24', 'Added composer.json to allow loading plugin as dependency (thanks to adduc)', '2018-11-28 13:18:16'),
(337, 'OFFLINE.SiteSearch', 'comment', '1.2.25', 'Fixed bug that sometimes lead to broken html in search results (thanks to graker)', '2018-11-28 13:18:16'),
(338, 'OFFLINE.SiteSearch', 'comment', '1.2.26', 'Exclude hidden static pages from search results (thanks to plyusninva)', '2018-11-28 13:18:16'),
(339, 'OFFLINE.SiteSearch', 'comment', '1.2.27', 'Added support for Graker.PhotoAlbums (thanks to graker)', '2018-11-28 13:18:16'),
(340, 'OFFLINE.SiteSearch', 'comment', '1.2.28', 'Added new result.identifier property', '2018-11-28 13:18:16'),
(341, 'OFFLINE.SiteSearch', 'comment', '1.2.29', 'Optimized thumbnail generation for Graker.PhotoAlbums results (thanks to graker)', '2018-11-28 13:18:16'),
(342, 'OFFLINE.SiteSearch', 'comment', '1.2.30', 'The searchResults component\'s resultsCollection is now publically accessible', '2018-11-28 13:18:16'),
(343, 'OFFLINE.SiteSearch', 'comment', '1.2.31', 'Added model property for each search result to retreive the original model the result was generated from', '2018-11-28 13:18:16'),
(344, 'OFFLINE.SiteSearch', 'comment', '1.2.32', 'Added support for custom ResultsProvider classes', '2018-11-28 13:18:16'),
(345, 'OFFLINE.SiteSearch', 'comment', '1.2.33', 'Fix the use of multiple custom ResultsProvider for a plugin', '2018-11-28 13:18:16'),
(346, 'OFFLINE.SiteSearch', 'comment', '1.3.1', 'Added new searchInput component with search-as-you-type feature', '2018-11-28 13:18:16'),
(347, 'OFFLINE.SiteSearch', 'comment', '1.3.2', 'Fixed bug in AutoCompleteComponent', '2018-11-28 13:18:16'),
(348, 'OFFLINE.SiteSearch', 'comment', '1.3.3', '!!! All results are now returned with a relative URL to prevent problems with translated contents. Make sure to pass your result.url throught the \"app\" filter if you are using your own search result partials', '2018-11-28 13:18:16'),
(349, 'OFFLINE.SiteSearch', 'comment', '1.3.4', 'Fixed undefined index error when a static page doesn\'t have a title set', '2018-11-28 13:18:16'),
(350, 'OFFLINE.SiteSearch', 'comment', '1.3.5', 'Added ability to edit the user\'s query before searching', '2018-11-28 13:18:16'),
(351, 'OFFLINE.SiteSearch', 'comment', '1.3.6', '!!! Using RadiantWeb.ProBlog\'s internal settings to get the correct parent page for a blog post result. This enables support for multiple blogs on the same website. If your blog search results have wrong URLs after this update make sure to configure your default page for rendering blog posts via the ProBlog backend settings.', '2018-11-28 13:18:16'),
(352, 'OFFLINE.SiteSearch', 'comment', '1.3.7', 'Added the ability to add age penalties to search results. This can be used to show newer results higher up in your search results.', '2018-11-28 13:18:16'),
(353, 'OFFLINE.SiteSearch', 'comment', '1.3.8', 'Optimized support for multiple SearchInput components on a single page.', '2018-11-28 13:18:16');

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
(1, 'October.Demo', '1.0.1', '2018-11-28 13:18:11', 0, 0),
(2, 'RainLab.Translate', '1.3.8', '2018-11-28 13:18:11', 0, 0),
(3, 'RainLab.User', '1.4.6', '2018-11-28 13:18:12', 0, 0),
(4, 'RainLab.Blog', '1.2.19', '2018-11-28 13:18:13', 0, 0),
(5, 'RainLab.Forum', '1.1.1', '2018-11-28 13:18:14', 0, 0),
(6, 'RainLab.Builder', '1.0.22', '2018-11-28 13:18:14', 0, 0),
(7, 'RainLab.Pages', '1.2.18', '2018-11-28 13:18:14', 0, 0),
(8, 'Xeor.OctoCart', '2018.8.4', '2018-11-28 13:18:16', 0, 0),
(9, 'OFFLINE.SiteSearch', '1.3.8', '2018-11-28 13:18:16', 0, 0);

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
(1, 'Guest', 'guest', 'Default group for guest users.', '2018-11-28 13:18:12', '2018-11-28 13:18:12'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2018-11-28 13:18:12', '2018-11-28 13:18:12');

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

-- --------------------------------------------------------

--
-- Table structure for table `xeor_octocart_categories`
--

CREATE TABLE `xeor_octocart_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xeor_octocart_categories`
--

INSERT INTO `xeor_octocart_categories` (`id`, `title`, `slug`, `external_id`, `excerpt`, `description`, `active`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Clothes', 'clothes', NULL, NULL, 'Find your personal style!', 1, NULL, 1, 6, 0, '2018-11-28 13:18:14', '2018-11-28 13:18:14'),
(2, 'T-Shirts', 't-shirts', NULL, NULL, 'High quality T-Shirts & Hoodies by independent artists and designers from around the world.', 1, 1, 2, 3, 1, '2018-11-28 13:18:14', '2018-11-28 13:18:14'),
(3, 'Shoes', 'shoes', NULL, NULL, 'Step into the season in style, with a new pair of women\'s shoes from our latest online collections.', 1, 1, 4, 5, 1, '2018-11-28 13:18:14', '2018-11-28 13:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `xeor_octocart_orders`
--

CREATE TABLE `xeor_octocart_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'processing',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_info` text COLLATE utf8mb4_unicode_ci,
  `shipping_info` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `vat` decimal(7,2) NOT NULL,
  `total` decimal(7,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xeor_octocart_products`
--

CREATE TABLE `xeor_octocart_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(7,2) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NULL DEFAULT NULL,
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `manage_stock` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `backorders` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sold_individually` tinyint(1) NOT NULL DEFAULT '0',
  `weight` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `up_sells` longtext COLLATE utf8mb4_unicode_ci,
  `cross_sells` longtext COLLATE utf8mb4_unicode_ci,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `xuatxu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thuonghieu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namsx` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xeor_octocart_products`
--

INSERT INTO `xeor_octocart_products` (`id`, `user_id`, `title`, `slug`, `external_id`, `type`, `sku`, `excerpt`, `description`, `price`, `sale_price`, `published`, `published_at`, `promote`, `manage_stock`, `quantity`, `backorders`, `stock_status`, `sold_individually`, `weight`, `length`, `width`, `height`, `up_sells`, `cross_sells`, `variations`, `created_at`, `updated_at`, `xuatxu`, `thuonghieu`, `namsx`, `mota`, `video`) VALUES
(1, 1, 'Long Sleeve Henley', 'long-sleeve-henley', NULL, 'simple', NULL, NULL, '<p>Product Description for Long Sleeve Henley - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '37.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Polo', 'polo', NULL, 'simple', NULL, NULL, '<p>Product Description for Polo - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '25.00', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Ready for the Beach', 'ready-for-the-beach', NULL, 'simple', NULL, NULL, '<p>Product Description for Ready for the Beach - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '6.99', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Ready for the Court', 'ready-for-the-court', NULL, 'simple', NULL, NULL, '<p>Product Description for Ready for the Court - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '8.99', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Product 1', 'product-1', NULL, 'variable', NULL, NULL, '<p>Product Description for Product-1 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '10.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Product 2', 'product-2', NULL, 'product_variation', NULL, NULL, '<p>Product Description for Product-2 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '20.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Product 3', 'product-3', NULL, 'product_variation', NULL, NULL, '<p>Product Description for Product-3 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '30.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Product 4', 'product-4', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-4 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '40.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(9, 1, 'Product 5', 'product-5', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-5 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '50.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(10, 1, 'Product 6', 'product-6', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-6 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '60.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(11, 1, 'Product 7', 'product-7', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-7 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '70.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(12, 1, 'Product 8', 'product-8', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-8 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '80.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Product 9', 'product-9', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-9 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '90.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Product 10', 'product-10', NULL, 'simple', NULL, NULL, '<p>Product Description for Product-10 - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eu dui. Phasellus eget orci volutpat sem accumsan condimentum. Etiam lobortis facilisis sem. Aliquam...</p>', '100.98', NULL, 1, '2018-11-28 13:18:15', 0, 0, NULL, NULL, 'instock', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 13:18:15', '2018-11-28 13:18:15', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xeor_octocart_products_categories`
--

CREATE TABLE `xeor_octocart_products_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xeor_octocart_products_categories`
--

INSERT INTO `xeor_octocart_products_categories` (`product_id`, `category_id`) VALUES
(1, 2),
(2, 2),
(3, 3),
(4, 3),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `xeor_octocart_product_attributes`
--

CREATE TABLE `xeor_octocart_product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xeor_octocart_product_attributes`
--

INSERT INTO `xeor_octocart_product_attributes` (`id`, `product_id`, `code`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Size', 'S', '2018-11-28 13:18:14', '2018-11-28 13:18:14'),
(2, 1, NULL, 'Size', 'M', '2018-11-28 13:18:14', '2018-11-28 13:18:14'),
(3, 1, NULL, 'Color', 'Green', '2018-11-28 13:18:14', '2018-11-28 13:18:14');

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
-- Indexes for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`),
  ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`),
  ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_members_user_id_index` (`user_id`),
  ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`),
  ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`),
  ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`);

--
-- Indexes for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`),
  ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Indexes for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`),
  ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`),
  ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`),
  ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`),
  ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`),
  ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`),
  ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`),
  ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`),
  ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

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
-- Indexes for table `xeor_octocart_categories`
--
ALTER TABLE `xeor_octocart_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `xeor_octocart_categories_slug_unique` (`slug`),
  ADD KEY `xeor_octocart_categories_title_index` (`title`),
  ADD KEY `xeor_octocart_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `xeor_octocart_orders`
--
ALTER TABLE `xeor_octocart_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xeor_octocart_orders_user_id_index` (`user_id`);

--
-- Indexes for table `xeor_octocart_products`
--
ALTER TABLE `xeor_octocart_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `xeor_octocart_products_slug_unique` (`slug`),
  ADD KEY `xeor_octocart_products_user_id_index` (`user_id`),
  ADD KEY `xeor_octocart_products_title_index` (`title`);

--
-- Indexes for table `xeor_octocart_products_categories`
--
ALTER TABLE `xeor_octocart_products_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `xeor_octocart_product_attributes`
--
ALTER TABLE `xeor_octocart_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xeor_octocart_product_attributes_product_id_index` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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

--
-- AUTO_INCREMENT for table `xeor_octocart_categories`
--
ALTER TABLE `xeor_octocart_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xeor_octocart_orders`
--
ALTER TABLE `xeor_octocart_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xeor_octocart_products`
--
ALTER TABLE `xeor_octocart_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `xeor_octocart_product_attributes`
--
ALTER TABLE `xeor_octocart_product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
