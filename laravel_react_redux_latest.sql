-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 02:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_react_redux`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_tools`
--

CREATE TABLE `ai_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_name` varchar(255) NOT NULL,
  `tool_description` longtext DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `insta_url` varchar(255) DEFAULT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `email_link` varchar(100) DEFAULT NULL,
  `total_views` int(11) DEFAULT NULL,
  `video_review` varchar(255) DEFAULT NULL,
  `starting_price` varchar(100) DEFAULT NULL,
  `associated_with_product` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_tools`
--

INSERT INTO `ai_tools` (`id`, `tool_name`, `tool_description`, `short_description`, `image`, `slug`, `website_url`, `insta_url`, `fb_url`, `twitter_url`, `youtube_url`, `email_link`, `total_views`, `video_review`, `starting_price`, `associated_with_product`, `verified`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Tool Name', '<p>test</p>', 'test', 'u6febYwfrSztGBOROEiQQnwaIaKB36nGBlUgzMJq.png', 'tool-name', 'https://www.meetcody.ai/?utm_source=futurepedia&utm_medium=marketplace&utm_campaign=futurepedia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'starts from $10/mo', 0, 1, 1, 1, 1, '2023-04-27 07:18:54', '2023-05-16 02:10:33'),
(4, 'testing', NULL, NULL, NULL, 'testing', 'https://www.meetcody.ai/?utm_source=futurepedia&utm_medium=marketplace&utm_campaign=futurepedia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, '2023-04-27 07:19:17', '2023-05-15 01:31:51'),
(5, 'testing slug', '<h1 class=\"\"><span style=\"font-weight: 700;\">Tool Description</span></h1><h1 class=\"\"><font color=\"#636363\"><span style=\"font-weight: 700;\">&nbsp;</span><span style=\"font-weight: 700; font-size: 1rem;\">Tool Description</span><span style=\"font-weight: 700; font-size: 1rem;\">Tool Description</span><span style=\"font-weight: 700; font-size: 1rem;\">Tool Description</span><span style=\"font-weight: 700; font-size: 1rem;\">Tool Description</span></font></h1>', 'Tool\'s short description', 'mHVSNnhhasXm9cFMiCEGDaMj0rOipFDDEP9YWjyj.jpg', 'testing-slug', 'https://www.meetcody.ai/?utm_source=futurepedia&utm_medium=marketplace&utm_campaign=futurepedia', 'https://www.w3schools.com/icons/icons_reference.asp', 'https://www.w3schools.com/icons/icons_reference.asp', 'https://www.w3schools.com/icons/icons_reference.asp', 'https://www.w3schools.com/icons/icons_reference.asp', 'test@gmail.com', NULL, 'https://www.youtube.com/watch?v=BwYFuhVhshI', NULL, 0, 0, 1, 1, 1, '2023-04-27 07:20:15', '2023-05-16 02:46:26'),
(6, 'aidaptive powered by jarvis ml', '<h2 class=\"MuiTypography-root MuiTypography-body2 DMSans css-1mkzdry\" style=\"margin: 32px 0px 16px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif; line-height: 1.43; letter-spacing: 0.01071em; font-weight: 1000; font-size: 16px; width: 838.109px;\"><font color=\"#424242\">Cody Features</font></h2><div class=\"MuiBox-root css-0\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif; letter-spacing: 0.15008px;\"><div style=\"margin: 0px; padding: 0px; box-sizing: inherit;\"><p class=\"MuiTypography-root MuiTypography-body1 css-10qcplv\" style=\"margin: 15px 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Cody</span> is an AI-powered virtual employee designed to assist with various business tasks. Key features and advantages include:</font></p><ul class=\"MuiList-root MuiList-padding css-196imzh\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px 8px 16px; box-sizing: inherit; list-style-position: initial; list-style-image: initial; position: relative;\"><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Tailored training</span>: Can be trained on specific business processes and support documentation</font></span></div></li><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Instant answers</span>: Analyzes company data to provide quick, relevant answers to business questions</font></span></div></li><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Task execution</span>: Capable of writing emails, translating documents, and creating marketing materials</font></span></div></li><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Customizable</span>: Adaptable for different uses, such as marketing, HR, or support</font></span></div></li></ul><p class=\"MuiTypography-root MuiTypography-body1 css-10qcplv\" style=\"margin: 15px 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Use cases</span> for Cody are ideal for various business needs:</font></p><ul class=\"MuiList-root MuiList-padding css-196imzh\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px 8px 16px; box-sizing: inherit; list-style-position: initial; list-style-image: initial; position: relative;\"><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Businesses</span> seeking to save time and money while boosting employee efficiency</font></span></div></li><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">Marketing teams</span> looking for AI assistance in content creation and idea generation</font></span></div></li><li class=\"MuiListItem-root MuiListItem-gutters MuiListItem-padding css-8k4qb7\" style=\"margin: 0px; padding: 0px; -webkit-box-pack: start; justify-content: flex-start; -webkit-box-align: center; align-items: center; position: relative; width: 822.109px; text-align: left;\"><div class=\"MuiListItemText-root css-1tsvksn\" style=\"margin: 4px 0px; padding: 0px; box-sizing: inherit; flex: 1 1 auto; min-width: 0px;\"><span class=\"MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig\" style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em; display: block;\"><font color=\"#424242\"><span style=\"margin: 0px; padding: 0px; box-sizing: inherit; font-family: \"DM Sans\", sans-serif !important; font-weight: 700;\">HR and support departments</span> aiming to improve response times and troubleshoot issues</font></span></div></li></ul><p class=\"MuiTypography-root MuiTypography-body1 css-10qcplv\" style=\"margin: 15px 0px; padding: 0px; box-sizing: inherit; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.5; letter-spacing: 0.00938em;\"><font color=\"#424242\">Overall, Cody offers a customizable and efficient solution for businesses to enhance their processes with AI-powered assistance</font></p></div></div>', 'The magic of ChatGPT but trained on your business.', 'tg4la3YZraNrvY3zpT0mrhX52haajm5mvstaWTJr.jpg', 'aidaptive-powered-by-jarvis-ml', 'https://www.meetcody.ai', 'https://www.w3schools.com/icons/icons_reference.asp', 'https://www.w3schools.com/icons/icons_reference.asp', 'https://www.w3schools.com/icons/icons_reference.asp', 'https://www.w3schools.com/icons/icons_reference.asp', 'test@gmail.com', NULL, 'https://www.youtube.com/watch?v=BwYFuhVhshI', '10/mo', 0, 1, 1, 1, 1, '2023-04-28 01:29:05', '2023-04-28 03:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `ai_tools_user_favourites`
--

CREATE TABLE `ai_tools_user_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ai_tool_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ai_tool_categories`
--

CREATE TABLE `ai_tool_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ai_tool_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_tool_categories`
--

INSERT INTO `ai_tool_categories` (`id`, `ai_tool_id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 3, 3, '2023-04-27 07:18:54', '2023-04-27 07:18:54'),
(6, 4, 3, '2023-04-27 07:19:17', '2023-04-27 07:19:17'),
(7, 5, 3, '2023-04-27 07:20:15', '2023-04-27 07:20:15'),
(8, 6, 1, '2023-04-28 01:29:05', '2023-04-28 01:29:05'),
(11, 4, 4, '2023-05-13 06:18:28', '2023-05-13 06:18:28'),
(12, 5, 5, '2023-05-13 06:20:21', '2023-05-13 06:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `ai_tool_features`
--

CREATE TABLE `ai_tool_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ai_tool_id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_tool_features`
--

INSERT INTO `ai_tool_features` (`id`, `ai_tool_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2023-04-28 02:59:53', '2023-04-28 02:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `ai_tool_pricing_plan`
--

CREATE TABLE `ai_tool_pricing_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ai_tool_id` bigint(20) UNSIGNED NOT NULL,
  `pricing_plan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_tool_pricing_plan`
--

INSERT INTO `ai_tool_pricing_plan` (`id`, `ai_tool_id`, `pricing_plan_id`, `created_at`, `updated_at`) VALUES
(2, 5, 3, '2023-04-27 07:20:15', '2023-04-27 07:20:15'),
(4, 6, 4, '2023-04-28 03:13:49', '2023-04-28 03:13:49'),
(5, 4, 3, '2023-05-13 06:18:28', '2023-05-13 06:18:28'),
(6, 3, 3, '2023-05-13 06:19:29', '2023-05-13 06:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `ai_tool_reviews`
--

CREATE TABLE `ai_tool_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ai_tool_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `star` tinyint(4) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_tool_reviews`
--

INSERT INTO `ai_tool_reviews` (`id`, `ai_tool_id`, `user_id`, `star`, `review`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 2, 'Testing', '2023-05-10 10:36:59', NULL),
(2, 5, 1, 4, 'Review', '2023-05-10 10:36:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_tool_review_like_dislike`
--

CREATE TABLE `ai_tool_review_like_dislike` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `like` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_tool_review_like_dislike`
--

INSERT INTO `ai_tool_review_like_dislike` (`id`, `review_id`, `user_id`, `like`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-05-01 10:37:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Video', 'video', 'fa fa-video', 1, '2023-04-24 06:45:38', '2023-05-15 01:29:42'),
(3, 1, 'Learn', 'learn', 'fa fa-video', 1, '2023-04-25 00:39:01', '2023-05-08 01:52:38'),
(4, 2, 'Research', 'research', 'fa fa-save', 1, '2023-04-25 00:39:14', '2023-05-15 01:29:34'),
(5, 1, 'Updates', 'updates', 'far fa-address-book', 1, '2023-04-25 00:39:52', '2023-05-15 01:29:28'),
(7, 4, 'Developer tools', 'developer-tools', 'far fa-address-book', 1, '2023-04-28 04:35:45', '2023-05-15 01:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', 'Testing', '2023-04-01 06:12:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `feature`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Browser Extension', 'extension', 1, '2023-04-24 05:48:31', '2023-04-25 00:36:23'),
(2, 'API', 'far fa-money-bill-alt', 1, '2023-04-24 05:51:41', '2023-04-24 06:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2023_04_20_071555_create_ai_tool_feetures_table', 2),
(32, '2014_10_12_000000_create_users_table', 3),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(34, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(35, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(36, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(37, '2016_06_01_000004_create_oauth_clients_table', 3),
(38, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(39, '2019_08_19_000000_create_failed_jobs_table', 3),
(40, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(41, '2023_04_20_071424_create_ai_tools_table', 4),
(42, '2023_04_20_070935_create_ai_tools_suggestions_table', 5),
(45, '2023_04_20_071351_create_categories_table', 6),
(46, '2023_04_20_071447_create_ai_tool_categories_table', 7),
(47, '2023_04_20_071012_create_pricing_plan_table', 8),
(48, '2023_04_20_071517_create_ai_tool_pricing_plan_table', 9),
(49, '2023_04_20_071325_create_features_table', 10),
(50, '2023_04_20_071649_create_news_table', 11),
(51, '2023_04_20_083653_create_ai_tool_reviews_table', 12),
(52, '2023_04_20_071555_create_ai_tool_features_table', 13),
(53, '2023_04_20_071622_create_ai_tools_user_favourites_table', 13),
(54, '2023_04_20_071724_create_news_categories_table', 13),
(55, '2023_04_20_071745_create_contact_us_table', 13),
(56, '2023_04_20_071818_create_pages_table', 13),
(57, '2023_04_20_084241_create_ai_tool_review_like_dislike_table', 13),
(58, '2014_10_12_100000_create_password_resets_table', 14),
(59, '2023_04_28_085643_create_parent_categories_table', 15),
(60, '2023_05_04_123707_create_news_user_favourites_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content_link` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content_link`, `description`, `image`, `is_featured`, `total_views`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(5, 'AI generated song featuring Drake & The Weeknd going viral on various social media platforms', 'http://localhost:8000/admin/news', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'zrpx2UehDEUauJEJZLlMRsyGyDqtjHt1ow2DiSga.png', 0, 1, 1, 1, '2023-04-25 07:18:42', '2023-04-27 00:31:18'),
(6, 'test', 'https://www.builder.io/', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', NULL, 0, 2, 1, 1, '2023-04-27 00:37:38', '2023-04-27 00:37:38'),
(7, 'testing', 'https://twitter.com/rpnickson/status/1647548141384736770', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do', 'eRlBmG60HsjdHg2RSZJtZZwaAP2UMu4CUpNCGkAZ.jpg', 1, 3, 1, 1, '2023-05-05 01:43:51', '2023-05-05 04:05:19'),
(8, 'testttttttttttttttt', 'https://twitter.com/rpnickson/status/1647548141384736770?s=20&ref=futurepedia', 'fzdffsdf', 'hTaaNn7OVOMWCnLhL5SwZProDrobyNHIhSAKUyLJ.png', 1, 1, 1, 1, '2023-05-10 05:53:49', '2023-05-10 05:54:26'),
(9, 'test', 'https://twitter.com/rpnickson/status/1647548141384736770?s=20&ref=futurepedia', 'testtt test test', 'lIPJcL8buc9fIp637y0Xg54rlDx050J8LYfKGPzs.jpg', 1, 0, 1, 1, '2023-05-12 07:10:18', '2023-05-12 01:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `news_id`, `category_id`, `created_at`, `updated_at`) VALUES
(20, 5, 1, '2023-04-25 07:18:56', '2023-04-25 07:18:56'),
(21, 5, 3, '2023-04-25 07:18:56', '2023-04-25 07:18:56'),
(22, 6, 1, '2023-04-27 00:37:38', '2023-04-27 00:37:38'),
(23, 6, 3, '2023-04-27 00:37:38', '2023-04-27 00:37:38'),
(32, 7, 1, '2023-05-05 04:05:19', '2023-05-05 04:05:19'),
(33, 7, 5, '2023-05-05 04:05:19', '2023-05-05 04:05:19'),
(36, 8, 5, '2023-05-10 05:54:17', '2023-05-10 05:54:17'),
(37, 8, 7, '2023-05-10 05:54:17', '2023-05-10 05:54:17'),
(38, 9, 1, '2023-05-12 01:37:18', '2023-05-12 01:37:18'),
(39, 9, 3, '2023-05-12 01:37:18', '2023-05-12 01:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `news_user_favourites`
--

CREATE TABLE `news_user_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_user_favourites`
--

INSERT INTO `news_user_favourites` (`id`, `news_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2023-05-02 12:43:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Privacy', '<p style=\"text-align: left;\"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Privacy Policy</b></p><section class=\"container-fluid g-py-70\" style=\"width: 1905px; padding-right: 15px; padding-left: 15px; color: rgb(85, 85, 85); font-family: \" open=\"\" sans\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" padding-top:=\"\" 5rem=\"\" !important;=\"\" padding-bottom:=\"\" !important;\"=\"\"><div class=\"container\" style=\"width: 1140px; padding-right: 15px; padding-left: 15px; margin-left: 42px;\"><div class=\"row\" style=\"margin-right: -15px;\"><article><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Access to and use of&nbsp;<a href=\"http://www.dflybusiness.com/\" target=\"_blank\" class=\"g-font-weight-600 g-color-darkblue\" style=\"outline: none; color: rgb(0, 0, 153) !important; font-weight: 600 !important;\">www.dflybusiness.com</a>&nbsp;Website &amp; App (hereinafter the DFLY ENTERPRISE &amp; ENTERTAINMENT) and the information, materials, products and services available through the DFLY ENTERPRISE &amp; ENTERTAINMENT Website &amp; App are subject to these terms of use (the Website &amp; App Terms of Use).</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In addition, for DFLY ENTERPRISE &amp; ENTERTAINMENT Direct Sellers, the documents constituting the apply, for Preferred Customers (PCs), the Terms and Conditions of the Preferred Customer Contract apply, and, for any purchases of goods or services, the DFLY ENTERPRISE &amp; ENTERTAINMENT Refund Policy applies.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Website &amp; App Terms of Use may be updated from time to time. Updated versions will be posted on the DFLY ENTERPRISE Website &amp; App and are effective immediately. When using the DFLY ENTERPRISE Website &amp; App you should regularly verify whether the Website &amp; App Terms of Use have been updated or amended.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY ENTERPRISE Website &amp; App provides information on DFLY ENTERPRISE &amp; ENTERTAINMENT, the DFLY ENTERPRISE &amp; ENTERTAINMENT Business and DFLY ENTERPRISE &amp; ENTERTAINMENT products and services, is intended only for use from and in the Republic of India and is based on the laws of India. DFLY ENTERPRISE &amp; ENTERTAINMENT disclaims any liability and responsibility for use of the DFLY ENTERPRISE Website &amp; App from other countries.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">1. Password Protected Parts of the DFLY ENTERPRISE Website &amp; App</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Please note: Passwords should not be given to third parties and must be protected from unauthorized access. If you become aware of any unauthorized use of your password, you should notify DFLY ENTERPRISE &amp; ENTERTAINMENT immediately. DFLY ENTERPRISE &amp; ENTERTAINMENT disclaims any liability and responsibility for damage caused as a result of improper use of passwords.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The password-protected parts of the DFLY ENTERPRISE Website &amp; App are intended exclusively for PCs in India. If you do not already know wish to contact one, please use the Register Form available at&nbsp;<a href=\"http://www.dflybusiness.com/\" target=\"_blank\" class=\"g-font-weight-600 g-color-darkblue\" style=\"outline: none; color: rgb(0, 0, 153) !important; font-weight: 600 !important;\">www.dflybusiness.com</a></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">2. DFLY ENTERPRISE &amp; ENTERTAINMENT\'s Privacy Statement and Policies</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">All personal data provided to DFLY ENTERPRISE &amp; ENTERTAINMENT while using the DFLY ENTERPRISE Website &amp; App will be handled in accordance with the Website &amp; App Privacy Notice. If you register or log in as a Preferred Customer, the Privacy Policy for PCs applies in addition.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">All information provided to DFLY ENTERPRISE &amp; ENTERTAINMENT during the use of the DFLY ENTERPRISE Website &amp; App must be correct, complete, and up to date. If we have reason to believe that incorrect, incomplete or outdated information has been provided, access to the DFLY ENTERPRISE Website &amp; App may be limited or blocked.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">3. Copyright and Use of DFLY ENTERPRISE Website &amp; App Materials</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The DFLY ENTERPRISE Website &amp; App and materials made available on the DFLY ENTERPRISE Website &amp; App are protected by intellectual property rights, including copyrights, trade names and trademarks, including the name DFLY ENTERPRISE &amp; ENTERTAINMENT and the DFLY ENTERPRISE &amp; ENTERTAINMENT logo, and are owned by DFLY ENTERPRISE &amp; ENTERTAINMENT or used by DFLY ENTERPRISE &amp; ENTERTAINMENT under a license or with permission from the owner of such rights. Materials protected by such intellectual property rights include the design, layout, look, appearance, graphics, photos, images, articles, stories and other materials available on the DFLY ENTERPRISE Website &amp; App (collectively, Website &amp; App Materials).</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Website &amp; App Materials may only be reproduced, distributed, published or otherwise publicly presented based on a prior written consent by DFLY ENTERPRISE &amp; ENTERTAINMENT. As an exception to this rule, DFLY ENTERPRISE &amp; ENTERTAINMENT grants a limited, non-exclusive, revocable license to use Website &amp; App Materials solely for the purposes of operating their business by downloading, storing, printing, copying, sharing and displaying Website &amp; App Materials, provided that the Material is unaltered and the source of information is quoted in case any Website &amp; App Materials are disclosed to third parties. Should you have additional questions on the use of the Website &amp; App Materials, please contact us through the Contact Form.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The right to use the password-protected parts of the DFLY ENTERPRISE Website &amp; App as an a PC ends on termination of the of the PC Contract without the need for any further actions by DFLY ENTERPRISE &amp; ENTERTAINMENT. In the event of termination thereof, PC must delete or destroy all stored, printed or copied materials, unless they must be retained to comply with legal requirements.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">4. Links to Other Website &amp; Apps</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">We may link to other Website &amp; Apps which are not within our control. We are not responsible or liable for the information or materials made available by such third party Website &amp; Apps. We encourage you to read the terms of use and privacy statements of all third party Website &amp; Apps before using such Website &amp; Apps or submitting any personal data or any other information on or through such Website &amp; Apps.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">5. Links from Other Website &amp; Apps to the DFLY ENTERPRISE Website &amp; App</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Inserting links from a third-party Website &amp; App to&nbsp;<a href=\"http://www.dflybusiness.com/\" target=\"_blank\" class=\"g-font-weight-600 g-color-darkblue\" style=\"outline: none; color: rgb(0, 0, 153) !important; font-weight: 600 !important;\">www.dflybusiness.com</a>&nbsp;requires prior written consent from DFLY ENTERPRISE &amp; ENTERTAINMENT. If you would like to link from other Website &amp; Apps, please contact us through the Contact Form.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">6. Limitation of Liability, Disclaimer of Warranties and Indemnification</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">To the extent permitted by applicable law, neither DFLY ENTERPRISE &amp; ENTERTAINMENT nor its affiliates shall be liable for any direct, indirect, consequential or other damages whatsoever, including but not limited to property damage, loss of use, loss of business, economic loss, loss of data or loss of profits, arising out of or in connection with your use or access to, or inability to use or access the DFLY ENTERPRISE Website &amp; App or its content.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY ENTERPRISE &amp; ENTERTAINMENT will use reasonable efforts to ensure that the information and materials provided on this Website &amp; App are correct. However, DFLY ENTERPRISE &amp; ENTERTAINMENT cannot guarantee the accuracy of all information and materials and does not assume any responsibility or liability for the accuracy, completeness or authenticity of any information and materials contained on this Website &amp; App. We do not warrant that the operation of this Website &amp; App will be uninterrupted or error-free, or that this Website &amp; App is free from viruses or other components that may be harmful to equipment or software. DFLY ENTERPRISE &amp; ENTERTAINMENT does not guarantee that the DFLY ENTERPRISE Website &amp; App will be compatible with the equipment and software which you may use and does not guarantee that the DFLY ENTERPRISE Website &amp; App will be available all the time or at any specific time.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">You agree to indemnify, defend and hold DFLY ENTERPRISE &amp; ENTERTAINMENT and its affiliates harmless from any liability or loss, related to either your violation of these Website &amp; App Terms of Use or your use of the DFLY ENTERPRISE Website &amp; App.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">7. Restricting or Blocking Access to the DFLY ENTERPRISE Website &amp; App for Violations of the Website &amp; App Terms of Use</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In case of a violation of these Website &amp; App Terms of Use, particularly in case of use of the DFLY ENTERPRISE Website &amp; App or individual elements of the DFLY ENTERPRISE Website &amp; App for other than its intended use, access to the DFLY ENTERPRISE Website &amp; App may be restricted or blocked.</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY ENTERPRISE &amp; ENTERTAINMENT generally reserves the right to partially or entirely alter, block, or discontinue the DFLY ENTERPRISE Website &amp; App or its content at any time and for any reason.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">8. Severability Clause</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Should one of the provisions of these Website &amp; App Terms of Use be invalid or declared invalid by a court, this will not affect the validity of the remaining terms.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">9. Choice of law, Jurisdiction and Venue</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The use of the DFLY ENTERPRISE Website &amp; App and these Website &amp; App Terms of Use are governed by the laws of the Republic of India. The courts of Ahmedabad have exclusive jurisdiction and venue for any disputes arising from or in connection with the use of the DFLY ENTERPRISE Website &amp; App or these Website &amp; App Terms of Use.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">10. Notice</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">If you have any comments or inquiries about these Terms of use, if you would like to update information we have about you, or to exercise your rights, at&nbsp;inquiry@dflybusiness.com</p><p class=\"text-center g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\"><u>CIRCULAR</u></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">FREE MEMBER</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY is a Digital E-Commerce Android Mobile Application.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">This app can be downloaded TOTALLY FREE from Google Play Store by typing DFLY.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Registered Member will receive from DFLY Rs.500 CDV shopping coupon discount value (CDV).</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">You can download DFLY app and use all the services of this app easily.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">You can register in DFLY app by entering your name, mobile number, email id &amp; Sponsor ID.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">PREMIUM MEMBER</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Anyone Can Become A Lifetime Premium Member By Paying Only Rs 99.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">A Premium Member Will Be Eligible For A CDV(Coupon Discount Value) Of RS. 500 + 500 = 1000.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He Can Promote His Business On DFLY Platform Totally Free Of Charge For 1 Year.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Premium Members Can Become Business Partner, Business Associates &amp; All Types Of Dealers.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He Can Use All The Other Facilities On Becoming Premium Member.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Premium Member Will Be Eligible To Get Guaranteed Scratch Coupon Worth RS.100 To RS.100000 On Minimum Scan Pay Of Rs 20*.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Dfly Is A Digital Platform So In Case Of Any Technical Issues &amp; Errors, They Should Cooperate The Company, If They Don’t &amp; Do Any Activity Against The Company ,The Company Holds The Full Rights To Do Case In Cyber Crime Against Him.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Right To Change Anything In Circular Will Be With Company.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">C.D.V COUPON</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">CDV Coupon Can Be Used For Discount Offered By Service Provider, Business Associates, Online Shopping, Booking &amp; Others.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">All The Coupon Discount Value Will Be Added In CDV Wallet.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Those Who Receives Highest CDV In Their Wallet Will Receive Prize From The Company At The Financial Year Ending.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">BUSINESS ASSOCIATE</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Only Premium Member Can Become A Business Associate In DFLY.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">To Become A Business Associate He Has Top Up A Business Package Of Rs.2500 &amp; He Will Immediately Get The Dfly Value Of 5000 Against His Top-Up .</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He Can Encash His Dfly Value By Making Only Premium Members.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Only One Shopkeeper Can Be A Business Associate Per Business Category In A Village/City And If The Area Of The Village/City Is Large, The Company Will Have The Authority To Make More Than One Business Associate In That Area.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Associate Can Make Free Member, Premium Member In DFLY.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Associate Has To Collect The Price For The Product Or Service Taken By DFLY Member In The Wallet Through QR Code.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">A Business Associate Can Place A Discount Offer Of Shopping Discount Vouchers On Products Of Their Choice.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Associates Should Treat Each And Every Member Of DFLY, Business Dealer, Business Partner With Due Respect.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">If Business Associates Rating Is Less Than 3 Star, Than The Company Can Cancel Their Registration And Join Another Business Associate In That Field.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Associates Can Advertise Their Business On DFLY\'s Platform Free For 1 Year And Can Give Advertisement Video In Dfly App For 10 Seconds Or Banner.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Prohibition Of Business Of Business Associates On The Platform Of DFLY Cannot Sell Prohibited Product By Government, And If Anything Happens In Future Their Associateship Will Be Cancelled. Company Will Support The Government Against It’s Action.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Commission Ratio Between The Associate And The Company Shall Be Determined On The Basis Of Business Category And The Company Reserves The Right To Change The Same From Time To Time.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Business Associate Shall Comply With All Company Rules For Payment Gateway.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">A Business Associate Cannot File A Complaint Against The Company In A Court Of Law Or In A Police Station.</p><p style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Right To Change Anything In Circular Will Be With Company.</p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">BUSINESS PARTNER</p><p></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Only Premium Members Can Become Business Partners.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He Can Become Business Partner Just By Paying Rs 2500/- &amp; He Will Immediately Get Dfly Value Of Rs 5000.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">This Dfly Value Of Rs 5000 Can Be Encashed/Can Be Refunded By Making 50 Premium Members Of Rs 99 Each.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">On Making 50 Premium Member In One Month From The Date Of Registration Of The Business Partner, He Will Get One Year Data Pack Of 1 Gb Net And Unlimited Calling For 1 Year Only If All Premium Members Have Downloaded Dfly App On Their Mobile. No Dummy Premium Members Will Be Counted.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Thereafter Every Month He Has To Make 1 Business Partner Or 1 Business Associate Compulsory For Availing Recharge Facility.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Partner Can Make Members/Premium Members/Business Partners/Business Associates Online &amp; Offline Merchant All Types Of Dealer &amp; Can Earn Referral Income From It.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Partner Is Giving Any District Dealership, Than That District’s All The Taluka’s Dealership Should Be Given In 1year Compulsorily. In Case Of Giving Taluka Dealership He Should Give All The Cities &amp; Villages Dealership In That Taluka In 18 Months, In Case Of City Dealership, He Should Encash His Dfly Value Within 6 Months. In Case Of Village He Should Encash His Dfly Value In 3months. If Any Dealer Is Not Able To Fulfil, Or Not Complete His Work As Stated Above Period, Than His Dealership Will Be Cancelled &amp; No Excuses Will Be Heard Than.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">5% Admin Charge And 5% Tds Charges Will Be Deducted From Commission Received.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Company Will Pay The Business Partner Their Commission Amount In My Wallet. This Amount Can Be Used To Make A Business Partner, Premium Member, Business Associate And All Types Of Dealers And He Can Transfer The Amount Into Their Bank Account After Their KYC Is Completed.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Partner Profile Name, Kyc Name And Bank Account Name Should Be The Same.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Partner Cannot Change His Name After Doing KYC.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Has A Full Right To Do Changes In Circular If Any Business Partner Is Working In Other Networking Company &amp; He Spreads Negativity About Dfly &amp; Diverts By Misguiding Any Dfly Members His Id Will Be Cancelled &amp; He Will Not Get Any Benefits Of All The Referral Commission, If Found Guilty.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">His Commission Transfer Request Will Be Executed After 72 Hours.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Dfly Is A Digital Platform, So In Case Of Technical Issues &amp; Error Business Partners Should Co- Operate With The Company, &amp; Take The Advantage Of Error &amp; Do Wrong Against The Company, The Company Holds The Full Right To Cancel The Partnership.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In Case Of Death, The Benefits Of Business Partner Will Be Automatically Transferred To His Nominee And Considered As Legal Heir Eligible To Received 100% Of All Benefits If Willing To Continue As A Business Partnership, If Not Able To Run, He Will Get Only 50% Throughout His Life.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Holds The Full Right To Do Changes In The Circular.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">VILLAGE DEALER</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Only premium members can become Village Dealer,&amp; will be provided only to those persons who belongs/is a resident of that area/city.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">One has to pay Rs 10000/- as a Business Package for Village Dealership &amp; he will immediately get Rs 10000/- as Dfly Value.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He can encash/refund this Dfly Value by making Free Members/Premium Members and Business Associates in his village area.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It is the prime duty of the Village/Area Dealer to convey &amp; give proper training &amp; guidance to DFLY App Users in their Area about the Services available in Dfly App.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It is compulsory for the Village Dealers to give regular &amp; new updates done by the Company from time to time to their Business Associates.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Dealer in the Village Area will have to Monitor &amp; keep attention that Business Associates provides satisfactory services/products to the Dfly Users.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Village/Area Dealers should help the Company in its growth by increasing more and more DFLY Users in their Area by registering /joining members to use Services and Shopping through this Platform.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It is compulsory/Duty of the Area Dealer to Attend Meetings of his Taluka Dealer and Company Level, and if does not attend these Meetings, then 2000/- Rupees will be charged as penalty from his commission.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">If the Dealer does not Attend the Meeting For 3 Consecutive Months, His Dealership will be Cancelled and, village dealership package amount is not refundable in any case. Argument/excuse of the Dealer will not be heard and he will not be able to take any Legal Action Against the Company or cannot do police complaint against the company.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Dealer in the Rural Area has to Check/make sure that the Business associates are not violating the Rules &amp; regulations of the Company, he should immediately inform the Company if they do so.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Village-Area Dealer will Be Entitled to a Commission of 10% of the Commission Received by the Company on Local Purchases made by the Costumers in their Village and Area after deduction of payment gateway charge.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">All Decisions (Rights) to Amend/make changes in Circular every Financial Year will be with the Company &amp; the Dealer has to follow it.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">5% T.D.S &amp; 5% Admin charge will be deducted from the Dealers commission.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp; error dealers &amp; users should co- operate with the company &amp; if they fail to do so, the company holds the full right to cancel the dealership.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Village dealers has to compulsorily use his DFLY value by making premium members &amp; business associates in 3 months or else his dealership will be cancelled if he fails to do so. Strict instructions...</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">CITY DEALER</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">City Dealership is given Given to only One Person in each city.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Cities and areas that comes under that city will be considered.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">One has to pay Rs 100000/- as a Business Package for City dealership. He will immediately get 100000 as Dfly value/Business Value.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He can encash/refund his Business value of Rs.100000/- by joining Premium members, Business Associates.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">City dealer has to inform his business associate &amp; users about the services available on DFLY platform. And also keep them updated of any new update coming on this platform on regular basis.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It is the Duty of the City Dealer to give regular training/proper guidance to Business associates in their area &amp; also monitor that they do maximum business &amp; join more &amp; more Dfly users giving satisfactory services.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He has to make sure that Business Associates, under him are providing satisfactory services &amp; facilities to Dfly customers . If they violet any rules &amp; regulations he should immediately informed the company about this.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">A City dealer has to attend all the meetings of his district/taluka dealer and company level. If a City dealer does not attend the meeting the company may levy a fine of Rs 5000/- as a Penalty, from his commission &amp; if he does not attend continuously 3 meetings, in that case company has a full right to cancel his dealership. In this case he has no right to take any legal actions againt the company.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">3% commission from the commission earned by the Company on local purchases made by DFLY users in their area will be given after deducting payment gateway charge.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">When the monthly income of a City trader reaches 1 lakh rupees, DFLY customer service center has to be opened at his own expense.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The City dealer will have to organize meetings every month at his expenses for the business development of the dealers in his area.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">City dealer has to compulsorily develop his city fully &amp; encash his dfly value in 6 months or else his dealership will be cancelled if he fails to do so. Strict instructions...</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The city dealership amount is not refundable in any case.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp; error dealers &amp; users should co- operate with the company &amp; if they fail to do so, the company holds the full right to cancel the dealership.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">City Dealer has no right to challenge the Company in any case.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">TALUKA DEALER</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Taluka Dealership Given to only One Person in each Taluka.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The villages, Cities and areas that comes under that taluka will be considered.</li><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">.</span></div><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">One has to pay Rs 2,00,000/- as a Business Package for Taluka dealership. He will immediately get Rs.2,00,000 as Dfly value/Business Value.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">He can encash/refund his Business value of Rs.2,00,000/- by joining Premium members, Business Associates and City &amp; village Dealership.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Taluka dealer has to inform his business associate and city &amp; village dealers about services available on DFLY platform. And also keep them updated of any new update coming on this platform on regular basis.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It is the Duty of the Taluka Dealer to give regular training/proper guidance to Business associates and City/rural dealers in their area &amp; also monitor that they do maximum business &amp; join more &amp; more Dfly users giving satisfactory services.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">A Taluka dealer has to attend all the meetings of his district dealer and company level. If a Taluka dealer does not attend the meeting the company may levy a fine of Rs 5000/- as a Penalty, from his commission, &amp; if he does not attend continuously 3 meetings, in that case company has a full right to cancel his dealership. In this case he has no right to take any legal actions against the company.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">3% commission from the commission earned by the Company on local purchases made by DFLY users in their area &amp; deducting payment gateway charge will be given.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">When the monthly income of a taluka dealer reaches 1 lakh rupees, DFLY taluka customer service center has to be opened at his own expense.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The taluka dealer will have to organize meetings every month at his expense for the business development of the dealers in his village and area.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp; error dealers &amp; users should co- operate with the company, &amp; if they fail to do so, the company holds the full right to cancel the dealership.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Taluka dealer has to compulsorily develop his taluka fully in 18 months or else his dealership will be cancelled if he fails to do so. Strict instructions...</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The company has the full right to make changes in circular every year.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">DISTRICT/METRO DEALER</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">All the Talukas and Villages that comes under district will be considered within the following district, and in MUNICIPAL area it will be consider as metro dealership, one has to pay Rs 500000/- for both DEALERSHIPS.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The district/metro dealer will immediately get the DFLY VALUE of Rs 500000/- against his investment, by which he can encash by joining Premium Members, Business Associates, Village, City, Taluka dealers in that district.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It is the prime duty/responsibility of the District/Metro Dealer, to provide all the services &amp; information to the DEALERS &amp; BUSINESS ASSOCIATES under him.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">District / Metro Dealers in his Area :</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">A) Make sure that more &amp; more DFLY users increases, so that they can use services &amp; shopping through Dfly platform.</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">B) If any Dealers or Business Associates does not provide proper services &amp; facilities to the Dfly Users/Customers &amp; go against the rules &amp; regulations of the company, district/metro dealer should immediately inform the Company.</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">C) It is compulsory for the DISTRICT/METRO to attend all the Company &amp; Taluka level meetings held from time to time. If he does not attend the meeting, the company will charge the Penalty of Rs 10,000 from his commission, &amp; if he does not attend 3 meetings continuously, than company will cancel his Dealership.</span></div></li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">District/Metro Dealers are eligible to get 2% commission every month on profit Received by Dfly local shopping business in their District/metro area after deducting payment gateway charge.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company will deduct 5% T.D.S &amp; 5% Admin charge from the District/Metro Dealers Dealership Commission ever month.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The District/Metro Dealer should do meetings every month at his own expense for business development of the taluka dealers.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">If the District/Metro Dealer earns commission of more than Rs.3,00,000/- per month consecutively for 3 months, than it is compulsory for him to open an independent dfly customer service centre on his own expenses.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">All the policies and regulations should be followed by dealers whatever made by state or central government.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp; error dealers should co-operate with the company, &amp; if they fail to do so, the company holds the full right to cancel the dealership.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">District dealer has to compulsorily develop his district fully in 1year or else his dealership will be cancelled if he fails to do so. Strict instructions.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The right to change anything in circular will be with company.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">TEAM ROYALTY</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Royalty income is given as 2% from, Business partner joining package, 5% from online shopping, local shopping, recharge.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">After Making 10 Business Partners Direct &amp; 10 Level Crossed, 11th Business Partner In Either Level Atleast 1 Business Partner Should Be Active In That Month.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">To Qualify In Team Royalty That Month He Should Make New 20 Business Partners FROM 2ND To 10th level Compulsorily.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Team Royalty Income Will Be Given From The Total Incomes Collected, 5% From The Joined Company level Business Partners Package Income, 5% From Local Shopping Income, 5% From Recharge Income, 5% From Booking Income, 5% From Online Shopping Income. The Collected Total Income Will Be Distributed Equally Between All The Team Royalty Achievers.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Team Royalty Income Will Be Given Every Month From 1st To 10th Date.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Company Has The Full Rights To Make Changes In Circular.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">COMPANY ROYALTY</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Royalty Income Is Given As 2% From Business Partners Joining Package, 5% From Online Shopping, Local Shopping, Recharge &amp; Booking.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Royalty Will Be Distributed According To Different Slabs.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">Team Royalty Slab:</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">A. 10%* - 50 Premium Members = In 30 Days Direct. (10% Is In The Form Of 1gb Net &amp; Unlimited</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">Calling For 1 Year, To Only Active Business Partners).</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">B. 20% - 10 Business Partners = 2nd Level Self.</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">C. 30% - 100 Business Partners = 3rd Level At Team Level.</span></div><div style=\"text-align: left;\"><span style=\"font-size: 1rem;\">D. 40% - 1000 Business Partners = 2nd To 10th Level At Team Level.</span></div></li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">It Is Compulsory To Get Qualify In Slab (A) For Getting Company Royalty Benefits</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Royalty Income Will Be Given From Total Global Turnover Of The Company.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">In Each Slab Income Will Be Equally Distributed To All The Achievers Percentage Wise.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">5% TDS &amp; 5% Admin Charge Will Be Deducted From Company Royalty Income.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Royalty Income Will Be Given To Achievers Every Month From Date 1st To 1oth.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Company Holds The Full Rights To Make Changes In Circular.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">SILVER CLUB</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Partner Can Get Qualify In Silver Club Royalty Income By Making 10 Business Partners Direct In 30 Days From The Date Of Registration As A Business Partner. Only Those Who Achieve The Above Target Will Only Get Qualified.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">5% Income Is Given From The Global Business Partners Joining Package.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Business Partners Who Has Qualified Silver Club Royalty Income By Making 10 Direct Business Partners In 1 Month Has To Make 20 Business Partners 2nd To 10th Level By Team Compulsory Every Month. He Will Not Get The Benefit Of Silver Club Royalty In That Month In Which He Does Not Make 20 New Business Partners</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">The Silver Club Royalty Income Of 5% From Global Business Partners Package Joining Income Will Be Distributed Equally Between All Achievers.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">5% TDS &amp; 5% Admin Charge Will Be Deducted From The Income Earned From Silver Club Royalty.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Silver Club Royalty Income Will Be Given To The Achievers Every Month From Date 1st To 10th.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Has The Full Rights To Make Changes In The Circular.</li></ol><p></p><p class=\"g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20\" style=\"text-align: left; font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;\">DAIMOND CLUB</p><p class=\"g-color-black g-font-size-14 text-justify\" style=\"font-size: 1rem !important; color: rgb(0, 0, 0) !important;\"></p><ol><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Business Partners Can Get Qualify In Diamond Club Royalty By Making 10 Business Partners Direct 2nd level one time &amp; 100 Business Partners From 3rd Level one time. He Will Get The Benefit In That Month Only When He Makes 300 Business Partners monthly At Team Level From level 2nd To 10th.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Diamond Club Royalty Income Will Be Given 5% From The Global Business Partners Joining package Income.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Diamond Club Royalty Income Will Be Equally Distributed Between All The Achievers Equally.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">5% TDS &amp; 5% Admin Charge Will Be Deducted From Diamond Club Royalty Income.</li><li class=\"g-color-black g-font-size-14 text-justify\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">Company Holds The Full Rights To Do Changes In The Circular.</li></ol><p></p><p class=\"g-color-black g-font-size-14 text-justify text-bold\" style=\"text-align: left; font-size: 1rem !important; color: rgb(0, 0, 0) !important;\">I Accept And Agree All The Terms And Conditions. Any Legal Disputes Will Be Solved Under Ahmedabad Jurisdiction.</p></article></div></div></section>', 1, '2023-04-27 01:50:33', '2023-04-27 02:34:21');
INSERT INTO `pages` (`id`, `page_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Term', '&lt;section class=&quot;container-fluid g-py-70&quot; style=&quot;width: 1905px; padding-right: 15px; padding-left: 15px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; padding-top: 5rem !important; padding-bottom: 5rem !important;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 1140px; padding-right: 15px; padding-left: 15px;&quot;&gt;&lt;div class=&quot;row&quot; style=&quot;margin-right: -15px; margin-left: -15px;&quot;&gt;&lt;article&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;b&gt;TERMS OF USE&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Access to and use of&amp;nbsp;&lt;a href=&quot;http://www.dflybusiness.com/&quot; target=&quot;_blank&quot; class=&quot;g-font-weight-600 g-color-darkblue&quot; style=&quot;outline: none; color: rgb(0, 0, 153) !important; font-weight: 600 !important;&quot;&gt;www.dflybusiness.com&lt;/a&gt;&amp;nbsp;Website &amp;amp; App (hereinafter the DFLY ENTERPRISE &amp;amp; ENTERTAINMENT) and the information, materials, products and services available through the DFLY ENTERPRISE &amp;amp; ENTERTAINMENT Website &amp;amp; App are subject to these terms of use (the Website &amp;amp; App Terms of Use).&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In addition, for DFLY ENTERPRISE &amp;amp; ENTERTAINMENT Direct Sellers, the documents constituting the apply, for Preferred Customers (PCs), the Terms and Conditions of the Preferred Customer Contract apply, and, for any purchases of goods or services, the DFLY ENTERPRISE &amp;amp; ENTERTAINMENT Refund Policy applies.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Website &amp;amp; App Terms of Use may be updated from time to time. Updated versions will be posted on the DFLY ENTERPRISE Website &amp;amp; App and are effective immediately. When using the DFLY ENTERPRISE Website &amp;amp; App you should regularly verify whether the Website &amp;amp; App Terms of Use have been updated or amended.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY ENTERPRISE Website &amp;amp; App provides information on DFLY ENTERPRISE &amp;amp; ENTERTAINMENT, the DFLY ENTERPRISE &amp;amp; ENTERTAINMENT Business and DFLY ENTERPRISE &amp;amp; ENTERTAINMENT products and services, is intended only for use from and in the Republic of India and is based on the laws of India. DFLY ENTERPRISE &amp;amp; ENTERTAINMENT disclaims any liability and responsibility for use of the DFLY ENTERPRISE Website &amp;amp; App from other countries.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;1. Password Protected Parts of the DFLY ENTERPRISE Website &amp;amp; App&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Please note: Passwords should not be given to third parties and must be protected from unauthorized access. If you become aware of any unauthorized use of your password, you should notify DFLY ENTERPRISE &amp;amp; ENTERTAINMENT immediately. DFLY ENTERPRISE &amp;amp; ENTERTAINMENT disclaims any liability and responsibility for damage caused as a result of improper use of passwords.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The password-protected parts of the DFLY ENTERPRISE Website &amp;amp; App are intended exclusively for PCs in India. If you do not already know wish to contact one, please use the Register Form available at&amp;nbsp;&lt;a href=&quot;http://www.dflybusiness.com/&quot; target=&quot;_blank&quot; class=&quot;g-font-weight-600 g-color-darkblue&quot; style=&quot;outline: none; color: rgb(0, 0, 153) !important; font-weight: 600 !important;&quot;&gt;www.dflybusiness.com&lt;/a&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;2. DFLY ENTERPRISE &amp;amp; ENTERTAINMENT&#039;s Privacy Statement and Policies&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;All personal data provided to DFLY ENTERPRISE &amp;amp; ENTERTAINMENT while using the DFLY ENTERPRISE Website &amp;amp; App will be handled in accordance with the Website &amp;amp; App Privacy Notice. If you register or log in as a Preferred Customer, the Privacy Policy for PCs applies in addition.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;All information provided to DFLY ENTERPRISE &amp;amp; ENTERTAINMENT during the use of the DFLY ENTERPRISE Website &amp;amp; App must be correct, complete, and up to date. If we have reason to believe that incorrect, incomplete or outdated information has been provided, access to the DFLY ENTERPRISE Website &amp;amp; App may be limited or blocked.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;3. Copyright and Use of DFLY ENTERPRISE Website &amp;amp; App Materials&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The DFLY ENTERPRISE Website &amp;amp; App and materials made available on the DFLY ENTERPRISE Website &amp;amp; App are protected by intellectual property rights, including copyrights, trade names and trademarks, including the name DFLY ENTERPRISE &amp;amp; ENTERTAINMENT and the DFLY ENTERPRISE &amp;amp; ENTERTAINMENT logo, and are owned by DFLY ENTERPRISE &amp;amp; ENTERTAINMENT or used by DFLY ENTERPRISE &amp;amp; ENTERTAINMENT under a license or with permission from the owner of such rights. Materials protected by such intellectual property rights include the design, layout, look, appearance, graphics, photos, images, articles, stories and other materials available on the DFLY ENTERPRISE Website &amp;amp; App (collectively, Website &amp;amp; App Materials).&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Website &amp;amp; App Materials may only be reproduced, distributed, published or otherwise publicly presented based on a prior written consent by DFLY ENTERPRISE &amp;amp; ENTERTAINMENT. As an exception to this rule, DFLY ENTERPRISE &amp;amp; ENTERTAINMENT grants a limited, non-exclusive, revocable license to use Website &amp;amp; App Materials solely for the purposes of operating their business by downloading, storing, printing, copying, sharing and displaying Website &amp;amp; App Materials, provided that the Material is unaltered and the source of information is quoted in case any Website &amp;amp; App Materials are disclosed to third parties. Should you have additional questions on the use of the Website &amp;amp; App Materials, please contact us through the Contact Form.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The right to use the password-protected parts of the DFLY ENTERPRISE Website &amp;amp; App as an a PC ends on termination of the of the PC Contract without the need for any further actions by DFLY ENTERPRISE &amp;amp; ENTERTAINMENT. In the event of termination thereof, PC must delete or destroy all stored, printed or copied materials, unless they must be retained to comply with legal requirements.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;4. Links to Other Website &amp;amp; Apps&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;We may link to other Website &amp;amp; Apps which are not within our control. We are not responsible or liable for the information or materials made available by such third party Website &amp;amp; Apps. We encourage you to read the terms of use and privacy statements of all third party Website &amp;amp; Apps before using such Website &amp;amp; Apps or submitting any personal data or any other information on or through such Website &amp;amp; Apps.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;5. Links from Other Website &amp;amp; Apps to the DFLY ENTERPRISE Website &amp;amp; App&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Inserting links from a third-party Website &amp;amp; App to&amp;nbsp;&lt;a href=&quot;http://www.dflybusiness.com/&quot; target=&quot;_blank&quot; class=&quot;g-font-weight-600 g-color-darkblue&quot; style=&quot;outline: none; color: rgb(0, 0, 153) !important; font-weight: 600 !important;&quot;&gt;www.dflybusiness.com&lt;/a&gt;&amp;nbsp;requires prior written consent from DFLY ENTERPRISE &amp;amp; ENTERTAINMENT. If you would like to link from other Website &amp;amp; Apps, please contact us through the Contact Form.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;6. Limitation of Liability, Disclaimer of Warranties and Indemnification&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;To the extent permitted by applicable law, neither DFLY ENTERPRISE &amp;amp; ENTERTAINMENT nor its affiliates shall be liable for any direct, indirect, consequential or other damages whatsoever, including but not limited to property damage, loss of use, loss of business, economic loss, loss of data or loss of profits, arising out of or in connection with your use or access to, or inability to use or access the DFLY ENTERPRISE Website &amp;amp; App or its content.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY ENTERPRISE &amp;amp; ENTERTAINMENT will use reasonable efforts to ensure that the information and materials provided on this Website &amp;amp; App are correct. However, DFLY ENTERPRISE &amp;amp; ENTERTAINMENT cannot guarantee the accuracy of all information and materials and does not assume any responsibility or liability for the accuracy, completeness or authenticity of any information and materials contained on this Website &amp;amp; App. We do not warrant that the operation of this Website &amp;amp; App will be uninterrupted or error-free, or that this Website &amp;amp; App is free from viruses or other components that may be harmful to equipment or software. DFLY ENTERPRISE &amp;amp; ENTERTAINMENT does not guarantee that the DFLY ENTERPRISE Website &amp;amp; App will be compatible with the equipment and software which you may use and does not guarantee that the DFLY ENTERPRISE Website &amp;amp; App will be available all the time or at any specific time.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;You agree to indemnify, defend and hold DFLY ENTERPRISE &amp;amp; ENTERTAINMENT and its affiliates harmless from any liability or loss, related to either your violation of these Website &amp;amp; App Terms of Use or your use of the DFLY ENTERPRISE Website &amp;amp; App.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;7. Restricting or Blocking Access to the DFLY ENTERPRISE Website &amp;amp; App for Violations of the Website &amp;amp; App Terms of Use&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In case of a violation of these Website &amp;amp; App Terms of Use, particularly in case of use of the DFLY ENTERPRISE Website &amp;amp; App or individual elements of the DFLY ENTERPRISE Website &amp;amp; App for other than its intended use, access to the DFLY ENTERPRISE Website &amp;amp; App may be restricted or blocked.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY ENTERPRISE &amp;amp; ENTERTAINMENT generally reserves the right to partially or entirely alter, block, or discontinue the DFLY ENTERPRISE Website &amp;amp; App or its content at any time and for any reason.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;8. Severability Clause&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Should one of the provisions of these Website &amp;amp; App Terms of Use be invalid or declared invalid by a court, this will not affect the validity of the remaining terms.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;9. Choice of law, Jurisdiction and Venue&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The use of the DFLY ENTERPRISE Website &amp;amp; App and these Website &amp;amp; App Terms of Use are governed by the laws of the Republic of India. The courts of Ahmedabad have exclusive jurisdiction and venue for any disputes arising from or in connection with the use of the DFLY ENTERPRISE Website &amp;amp; App or these Website &amp;amp; App Terms of Use.&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;10. Notice&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;If you have any comments or inquiries about these Terms of use, if you would like to update information we have about you, or to exercise your rights, at&amp;nbsp;inquiry@dflybusiness.com&lt;/p&gt;&lt;p class=&quot;text-center g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;&lt;u&gt;CIRCULAR&lt;/u&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;FREE MEMBER&lt;/p&gt;&lt;ol class=&quot;&quot;&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY is a Digital E-Commerce Android Mobile Application.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;This app can be downloaded TOTALLY FREE from Google Play Store by typing DFLY.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Registered Member will receive from DFLY Rs.500 CDV shopping coupon discount value (CDV).&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;You can download DFLY app and use all the services of this app easily.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;You can register in DFLY app by entering your name, mobile number, email id &amp;amp; Sponsor ID.&lt;/li&gt;&lt;/ol&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;PREMIUM MEMBER&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Anyone Can Become A Lifetime Premium Member By Paying Only Rs 99.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;A Premium Member Will Be Eligible For A CDV(Coupon Discount Value) Of RS. 500 + 500 = 1000.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He Can Promote His Business On DFLY Platform Totally Free Of Charge For 1 Year.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Premium Members Can Become Business Partner, Business Associates &amp;amp; All Types Of Dealers.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He Can Use All The Other Facilities On Becoming Premium Member.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Premium Member Will Be Eligible To Get Guaranteed Scratch Coupon Worth RS.100 To RS.100000 On Minimum Scan Pay Of Rs 20*.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Dfly Is A Digital Platform So In Case Of Any Technical Issues &amp;amp; Errors, They Should Cooperate The Company, If They Don&rsquo;t &amp;amp; Do Any Activity Against The Company ,The Company Holds The Full Rights To Do Case In Cyber Crime Against Him.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Right To Change Anything In Circular Will Be With Company.&lt;/li&gt;&lt;/ol&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;C.D.V COUPON&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;CDV Coupon Can Be Used For Discount Offered By Service Provider, Business Associates, Online Shopping, Booking &amp;amp; Others.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;All The Coupon Discount Value Will Be Added In CDV Wallet.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Those Who Receives Highest CDV In Their Wallet Will Receive Prize From The Company At The Financial Year Ending.&lt;/li&gt;&lt;/ol&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;BUSINESS ASSOCIATE&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Only Premium Member Can Become A Business Associate In DFLY.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;To Become A Business Associate He Has Top Up A Business Package Of Rs.2500 &amp;amp; He Will Immediately Get The Dfly Value Of 5000 Against His Top-Up .&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He Can Encash His Dfly Value By Making Only Premium Members.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Only One Shopkeeper Can Be A Business Associate Per Business Category In A Village/City And If The Area Of The Village/City Is Large, The Company Will Have The Authority To Make More Than One Business Associate In That Area.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Associate Can Make Free Member, Premium Member In DFLY.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Associate Has To Collect The Price For The Product Or Service Taken By DFLY Member In The Wallet Through QR Code.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;A Business Associate Can Place A Discount Offer Of Shopping Discount Vouchers On Products Of Their Choice.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Associates Should Treat Each And Every Member Of DFLY, Business Dealer, Business Partner With Due Respect.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;If Business Associates Rating Is Less Than 3 Star, Than The Company Can Cancel Their Registration And Join Another Business Associate In That Field.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Associates Can Advertise Their Business On DFLY&#039;s Platform Free For 1 Year And Can Give Advertisement Video In Dfly App For 10 Seconds Or Banner.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Prohibition Of Business Of Business Associates On The Platform Of DFLY Cannot Sell Prohibited Product By Government, And If Anything Happens In Future Their Associateship Will Be Cancelled. Company Will Support The Government Against It&rsquo;s Action.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Commission Ratio Between The Associate And The Company Shall Be Determined On The Basis Of Business Category And The Company Reserves The Right To Change The Same From Time To Time.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Business Associate Shall Comply With All Company Rules For Payment Gateway.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;A Business Associate Cannot File A Complaint Against The Company In A Court Of Law Or In A Police Station.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Right To Change Anything In Circular Will Be With Company.&lt;/li&gt;&lt;/ol&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;BUSINESS PARTNER&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Only Premium Members Can Become Business Partners.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He Can Become Business Partner Just By Paying Rs 2500/- &amp;amp; He Will Immediately Get Dfly Value Of Rs 5000.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;This Dfly Value Of Rs 5000 Can Be Encashed/Can Be Refunded By Making 50 Premium Members Of Rs 99 Each.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;On Making 50 Premium Member In One Month From The Date Of Registration Of The Business Partner, He Will Get One Year Data Pack Of 1 Gb Net And Unlimited Calling For 1 Year Only If All Premium Members Have Downloaded Dfly App On Their Mobile. No Dummy Premium Members Will Be Counted.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Thereafter Every Month He Has To Make 1 Business Partner Or 1 Business Associate Compulsory For Availing Recharge Facility.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Partner Can Make Members/Premium Members/Business Partners/Business Associates Online &amp;amp; Offline Merchant All Types Of Dealer &amp;amp; Can Earn Referral Income From It.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Partner Is Giving Any District Dealership, Than That District&rsquo;s All The Taluka&rsquo;s Dealership Should Be Given In 1year Compulsorily. In Case Of Giving Taluka Dealership He Should Give All The Cities &amp;amp; Villages Dealership In That Taluka In 18 Months, In Case Of City Dealership, He Should Encash His Dfly Value Within 6 Months. In Case Of Village He Should Encash His Dfly Value In 3months. If Any Dealer Is Not Able To Fulfil, Or Not Complete His Work As Stated Above Period, Than His Dealership Will Be Cancelled &amp;amp; No Excuses Will Be Heard Than.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;5% Admin Charge And 5% Tds Charges Will Be Deducted From Commission Received.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Company Will Pay The Business Partner Their Commission Amount In My Wallet. This Amount Can Be Used To Make A Business Partner, Premium Member, Business Associate And All Types Of Dealers And He Can Transfer The Amount Into Their Bank Account After Their KYC Is Completed.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Partner Profile Name, Kyc Name And Bank Account Name Should Be The Same.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Partner Cannot Change His Name After Doing KYC.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Has A Full Right To Do Changes In Circular If Any Business Partner Is Working In Other Networking Company &amp;amp; He Spreads Negativity About Dfly &amp;amp; Diverts By Misguiding Any Dfly Members His Id Will Be Cancelled &amp;amp; He Will Not Get Any Benefits Of All The Referral Commission, If Found Guilty.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;His Commission Transfer Request Will Be Executed After 72 Hours.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Dfly Is A Digital Platform, So In Case Of Technical Issues &amp;amp; Error Business Partners Should Co- Operate With The Company, &amp;amp; Take The Advantage Of Error &amp;amp; Do Wrong Against The Company, The Company Holds The Full Right To Cancel The Partnership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In Case Of Death, The Benefits Of Business Partner Will Be Automatically Transferred To His Nominee And Considered As Legal Heir Eligible To Received 100% Of All Benefits If Willing To Continue As A Business Partnership, If Not Able To Run, He Will Get Only 50% Throughout His Life.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Holds The Full Right To Do Changes In The Circular.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;VILLAGE DEALER&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Only premium members can become Village Dealer,&amp;amp; will be provided only to those persons who belongs/is a resident of that area/city.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;One has to pay Rs 10000/- as a Business Package for Village Dealership &amp;amp; he will immediately get Rs 10000/- as Dfly Value.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He can encash/refund this Dfly Value by making Free Members/Premium Members and Business Associates in his village area.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It is the prime duty of the Village/Area Dealer to convey &amp;amp; give proper training &amp;amp; guidance to DFLY App Users in their Area about the Services available in Dfly App.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It is compulsory for the Village Dealers to give regular &amp;amp; new updates done by the Company from time to time to their Business Associates.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Dealer in the Village Area will have to Monitor &amp;amp; keep attention that Business Associates provides satisfactory services/products to the Dfly Users.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Village/Area Dealers should help the Company in its growth by increasing more and more DFLY Users in their Area by registering /joining members to use Services and Shopping through this Platform.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It is compulsory/Duty of the Area Dealer to Attend Meetings of his Taluka Dealer and Company Level, and if does not attend these Meetings, then 2000/- Rupees will be charged as penalty from his commission.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;If the Dealer does not Attend the Meeting For 3 Consecutive Months, His Dealership will be Cancelled and, village dealership package amount is not refundable in any case. Argument/excuse of the Dealer will not be heard and he will not be able to take any Legal Action Against the Company or cannot do police complaint against the company.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Dealer in the Rural Area has to Check/make sure that the Business associates are not violating the Rules &amp;amp; regulations of the Company, he should immediately inform the Company if they do so.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Village-Area Dealer will Be Entitled to a Commission of 10% of the Commission Received by the Company on Local Purchases made by the Costumers in their Village and Area after deduction of payment gateway charge.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;All Decisions (Rights) to Amend/make changes in Circular every Financial Year will be with the Company &amp;amp; the Dealer has to follow it.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;5% T.D.S &amp;amp; 5% Admin charge will be deducted from the Dealers commission.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp;amp; error dealers &amp;amp; users should co- operate with the company &amp;amp; if they fail to do so, the company holds the full right to cancel the dealership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Village dealers has to compulsorily use his DFLY value by making premium members &amp;amp; business associates in 3 months or else his dealership will be cancelled if he fails to do so. Strict instructions...&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;CITY DEALER&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;City Dealership is given Given to only One Person in each city.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Cities and areas that comes under that city will be considered.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;One has to pay Rs 100000/- as a Business Package for City dealership. He will immediately get 100000 as Dfly value/Business Value.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He can encash/refund his Business value of Rs.100000/- by joining Premium members, Business Associates.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;City dealer has to inform his business associate &amp;amp; users about the services available on DFLY platform. And also keep them updated of any new update coming on this platform on regular basis.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It is the Duty of the City Dealer to give regular training/proper guidance to Business associates in their area &amp;amp; also monitor that they do maximum business &amp;amp; join more &amp;amp; more Dfly users giving satisfactory services.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He has to make sure that Business Associates, under him are providing satisfactory services &amp;amp; facilities to Dfly customers . If they violet any rules &amp;amp; regulations he should immediately informed the company about this.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;A City dealer has to attend all the meetings of his district/taluka dealer and company level. If a City dealer does not attend the meeting the company may levy a fine of Rs 5000/- as a Penalty, from his commission &amp;amp; if he does not attend continuously 3 meetings, in that case company has a full right to cancel his dealership. In this case he has no right to take any legal actions againt the company.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;3% commission from the commission earned by the Company on local purchases made by DFLY users in their area will be given after deducting payment gateway charge.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;When the monthly income of a City trader reaches 1 lakh rupees, DFLY customer service center has to be opened at his own expense.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The City dealer will have to organize meetings every month at his expenses for the business development of the dealers in his area.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;City dealer has to compulsorily develop his city fully &amp;amp; encash his dfly value in 6 months or else his dealership will be cancelled if he fails to do so. Strict instructions...&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The city dealership amount is not refundable in any case.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp;amp; error dealers &amp;amp; users should co- operate with the company &amp;amp; if they fail to do so, the company holds the full right to cancel the dealership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;City Dealer has no right to challenge the Company in any case.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;TALUKA DEALER&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Taluka Dealership Given to only One Person in each Taluka.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The villages, Cities and areas that comes under that taluka will be considered.&lt;/li&gt;.&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;One has to pay Rs 2,00,000/- as a Business Package for Taluka dealership. He will immediately get Rs.2,00,000 as Dfly value/Business Value.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;He can encash/refund his Business value of Rs.2,00,000/- by joining Premium members, Business Associates and City &amp;amp; village Dealership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Taluka dealer has to inform his business associate and city &amp;amp; village dealers about services available on DFLY platform. And also keep them updated of any new update coming on this platform on regular basis.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It is the Duty of the Taluka Dealer to give regular training/proper guidance to Business associates and City/rural dealers in their area &amp;amp; also monitor that they do maximum business &amp;amp; join more &amp;amp; more Dfly users giving satisfactory services.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;A Taluka dealer has to attend all the meetings of his district dealer and company level. If a Taluka dealer does not attend the meeting the company may levy a fine of Rs 5000/- as a Penalty, from his commission, &amp;amp; if he does not attend continuously 3 meetings, in that case company has a full right to cancel his dealership. In this case he has no right to take any legal actions against the company.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;3% commission from the commission earned by the Company on local purchases made by DFLY users in their area &amp;amp; deducting payment gateway charge will be given.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;When the monthly income of a taluka dealer reaches 1 lakh rupees, DFLY taluka customer service center has to be opened at his own expense.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The taluka dealer will have to organize meetings every month at his expense for the business development of the dealers in his village and area.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp;amp; error dealers &amp;amp; users should co- operate with the company, &amp;amp; if they fail to do so, the company holds the full right to cancel the dealership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Taluka dealer has to compulsorily develop his taluka fully in 18 months or else his dealership will be cancelled if he fails to do so. Strict instructions...&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The company has the full right to make changes in circular every year.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;DISTRICT/METRO DEALER&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;All the Talukas and Villages that comes under district will be considered within the following district, and in MUNICIPAL area it will be consider as metro dealership, one has to pay Rs 500000/- for both DEALERSHIPS.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The district/metro dealer will immediately get the DFLY VALUE of Rs 500000/- against his investment, by which he can encash by joining Premium Members, Business Associates, Village, City, Taluka dealers in that district.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It is the prime duty/responsibility of the District/Metro Dealer, to provide all the services &amp;amp; information to the DEALERS &amp;amp; BUSINESS ASSOCIATES under him.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;District / Metro Dealers in his Area :&lt;br&gt;A) Make sure that more &amp;amp; more DFLY users increases, so that they can use services &amp;amp; shopping through Dfly platform.&lt;br&gt;B) If any Dealers or Business Associates does not provide proper services &amp;amp; facilities to the Dfly Users/Customers &amp;amp; go against the rules &amp;amp; regulations of the company, district/metro dealer should immediately inform the Company.&lt;br&gt;C) It is compulsory for the DISTRICT/METRO to attend all the Company &amp;amp; Taluka level meetings held from time to time. If he does not attend the meeting, the company will charge the Penalty of Rs 10,000 from his commission, &amp;amp; if he does not attend 3 meetings continuously, than company will cancel his Dealership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;District/Metro Dealers are eligible to get 2% commission every month on profit Received by Dfly local shopping business in their District/metro area after deducting payment gateway charge.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company will deduct 5% T.D.S &amp;amp; 5% Admin charge from the District/Metro Dealers Dealership Commission ever month.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The District/Metro Dealer should do meetings every month at his own expense for business development of the taluka dealers.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;If the District/Metro Dealer earns commission of more than Rs.3,00,000/- per month consecutively for 3 months, than it is compulsory for him to open an independent dfly customer service centre on his own expenses.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;All the policies and regulations should be followed by dealers whatever made by state or central government.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;DFLY is a DIGITAL PLATFORM, so in case of technical issues &amp;amp; error dealers should co-operate with the company, &amp;amp; if they fail to do so, the company holds the full right to cancel the dealership.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;District dealer has to compulsorily develop his district fully in 1year or else his dealership will be cancelled if he fails to do so. Strict instructions.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In case of death, the benefits of dealership will be automatically transferred to his nominee and considered as legal heir eligible to received 100% of all benefits if willing to continue as a dealer, if not able to run, he will get only 50% throughout his life.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The right to change anything in circular will be with company.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;TEAM ROYALTY&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Royalty income is given as 2% from, Business partner joining package, 5% from online shopping, local shopping, recharge.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;After Making 10 Business Partners Direct &amp;amp; 10 Level Crossed, 11th Business Partner In Either Level Atleast 1 Business Partner Should Be Active In That Month.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;To Qualify In Team Royalty That Month He Should Make New 20 Business Partners FROM 2ND To 10th level Compulsorily.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Team Royalty Income Will Be Given From The Total Incomes Collected, 5% From The Joined Company level Business Partners Package Income, 5% From Local Shopping Income, 5% From Recharge Income, 5% From Booking Income, 5% From Online Shopping Income. The Collected Total Income Will Be Distributed Equally Between All The Team Royalty Achievers.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Team Royalty Income Will Be Given Every Month From 1st To 10th Date.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Company Has The Full Rights To Make Changes In Circular.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;COMPANY ROYALTY&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Royalty Income Is Given As 2% From Business Partners Joining Package, 5% From Online Shopping, Local Shopping, Recharge &amp;amp; Booking.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Royalty Will Be Distributed According To Different Slabs.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Team Royalty Slab:&lt;br&gt;A. 10%* - 50 Premium Members = In 30 Days Direct. (10% Is In The Form Of 1gb Net &amp;amp; Unlimited&lt;br&gt;Calling For 1 Year, To Only Active Business Partners).&lt;br&gt;B. 20% - 10 Business Partners = 2nd Level Self.&lt;br&gt;C. 30% - 100 Business Partners = 3rd Level At Team Level.&lt;br&gt;D. 40% - 1000 Business Partners = 2nd To 10th Level At Team Level.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;It Is Compulsory To Get Qualify In Slab (A) For Getting Company Royalty Benefits&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Royalty Income Will Be Given From Total Global Turnover Of The Company.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;In Each Slab Income Will Be Equally Distributed To All The Achievers Percentage Wise.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;5% TDS &amp;amp; 5% Admin Charge Will Be Deducted From Company Royalty Income.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Royalty Income Will Be Given To Achievers Every Month From Date 1st To 1oth.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Company Holds The Full Rights To Make Changes In Circular.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;SILVER CLUB&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Partner Can Get Qualify In Silver Club Royalty Income By Making 10 Business Partners Direct In 30 Days From The Date Of Registration As A Business Partner. Only Those Who Achieve The Above Target Will Only Get Qualified.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;5% Income Is Given From The Global Business Partners Joining Package.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Business Partners Who Has Qualified Silver Club Royalty Income By Making 10 Direct Business Partners In 1 Month Has To Make 20 Business Partners 2nd To 10th Level By Team Compulsory Every Month. He Will Not Get The Benefit Of Silver Club Royalty In That Month In Which He Does Not Make 20 New Business Partners&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;The Silver Club Royalty Income Of 5% From Global Business Partners Package Joining Income Will Be Distributed Equally Between All Achievers.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;5% TDS &amp;amp; 5% Admin Charge Will Be Deducted From The Income Earned From Silver Club Royalty.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Silver Club Royalty Income Will Be Given To The Achievers Every Month From Date 1st To 10th.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Has The Full Rights To Make Changes In The Circular.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-18 g-font-weight-600 text-justify g-pt-20&quot; style=&quot;font-size: 1.28571rem !important; font-weight: 600 !important; color: rgb(0, 0, 0) !important; padding-top: 1.42857rem !important;&quot;&gt;DAIMOND CLUB&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;/p&gt;&lt;ol&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Business Partners Can Get Qualify In Diamond Club Royalty By Making 10 Business Partners Direct 2nd level one time &amp;amp; 100 Business Partners From 3rd Level one time. He Will Get The Benefit In That Month Only When He Makes 300 Business Partners monthly At Team Level From level 2nd To 10th.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Diamond Club Royalty Income Will Be Given 5% From The Global Business Partners Joining package Income.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Diamond Club Royalty Income Will Be Equally Distributed Between All The Achievers Equally.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;5% TDS &amp;amp; 5% Admin Charge Will Be Deducted From Diamond Club Royalty Income.&lt;/li&gt;&lt;li class=&quot;g-color-black g-font-size-14 text-justify&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;Company Holds The Full Rights To Do Changes In The Circular.&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;g-color-black g-font-size-14 text-justify text-bold&quot; style=&quot;font-size: 1rem !important; color: rgb(0, 0, 0) !important;&quot;&gt;I Accept And Agree All The Terms And Conditions. Any Legal Disputes Will Be Solved Under Ahmedabad Jurisdiction.&lt;/p&gt;&lt;/article&gt;&lt;/div&gt;&lt;/div&gt;&lt;/section&gt;', 1, '2023-04-27 01:53:05', '2023-04-27 02:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `parent_categories`
--

CREATE TABLE `parent_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_category` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_categories`
--

INSERT INTO `parent_categories` (`id`, `parent_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video', 1, '2023-04-19 09:03:44', '2023-04-28 04:21:22'),
(2, 'Image', 1, '2023-04-28 04:21:47', '2023-04-28 04:21:47'),
(4, 'Text', 1, '2023-04-28 04:35:13', '2023-05-01 00:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$rJi9jSTCQCkfxh.YYyQ/tO5C3R86SONvIxrxv3yW2AbS6VULMC94a', '2023-05-01 00:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyLaravelApp', 'fc59fd037af0626c0b7c69176d068efc7f2ad8bb11c78deef9569acdb3e97a39', '[\"*\"]', NULL, NULL, '2023-04-20 06:20:18', '2023-04-20 06:20:18'),
(2, 'App\\Models\\User', 2, 'MyLaravelApp', '694eb3e21b6aad68b6e1e389a0612ee4c564340ae2c227d9faf822836357e3a6', '[\"*\"]', NULL, NULL, '2023-05-18 05:15:09', '2023-05-18 05:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plan`
--

CREATE TABLE `pricing_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan` varchar(255) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_plan`
--

INSERT INTO `pricing_plan` (`id`, `plan`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Free', 'fa fa-check', 0, '2023-04-24 03:16:09', '2023-04-24 03:16:09'),
(3, 'Premium', 'fa fa-check', 1, '2023-04-24 03:16:29', '2023-04-24 04:59:56'),
(4, 'Freemium', 'fa fa-lock', 1, '2023-04-24 03:26:07', '2023-04-24 05:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `profile_pic` varchar(255) DEFAULT NULL,
  `otp` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile_no`, `email`, `email_verified_at`, `password`, `ip_address`, `role`, `profile_pic`, `otp`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '1234567890', 'admin@admin.com', NULL, '$2y$10$/4idrIlMsaSsiieyT2txcOeMnR3R7ih7km6abovx7/RKCH5dcsNOO', NULL, 'admin', 'LaB8wPk5cCET74RvfGpmyxqqxkoRm7XbNplL5h4R.jpg', NULL, 0, 'Q7Ur9k9pD6bwCNnCBVp2enFt60fzrzPKxnrvNk9wy7rJ8JbILhQZ2DKCtEJj', '2023-04-20 06:20:18', '2023-05-01 00:41:01'),
(2, 'testing', 'testing', '1234567899', 'test@gmail.com', NULL, '$2y$10$9opqG/hxFhV6BcD5WkNUJ.FkzkBh.5eEUzWE4qtWstmTjbv7KnJmm', NULL, 'admin', NULL, NULL, 0, NULL, '2023-05-18 05:15:09', '2023-05-18 05:15:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_tools`
--
ALTER TABLE `ai_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tools_created_by_foreign` (`created_by`),
  ADD KEY `ai_tools_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `ai_tools_user_favourites`
--
ALTER TABLE `ai_tools_user_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tools_user_favourites_ai_tool_id_foreign` (`ai_tool_id`),
  ADD KEY `ai_tools_user_favourites_user_id_foreign` (`user_id`);

--
-- Indexes for table `ai_tool_categories`
--
ALTER TABLE `ai_tool_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tool_categories_ai_tool_id_foreign` (`ai_tool_id`),
  ADD KEY `ai_tool_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `ai_tool_features`
--
ALTER TABLE `ai_tool_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tool_features_ai_tool_id_foreign` (`ai_tool_id`),
  ADD KEY `ai_tool_features_feature_id_foreign` (`feature_id`);

--
-- Indexes for table `ai_tool_pricing_plan`
--
ALTER TABLE `ai_tool_pricing_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tool_pricing_plan_ai_tool_id_foreign` (`ai_tool_id`),
  ADD KEY `ai_tool_pricing_plan_pricing_plan_id_foreign` (`pricing_plan_id`);

--
-- Indexes for table `ai_tool_reviews`
--
ALTER TABLE `ai_tool_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tool_reviews_ai_tool_id_foreign` (`ai_tool_id`),
  ADD KEY `ai_tool_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `ai_tool_review_like_dislike`
--
ALTER TABLE `ai_tool_review_like_dislike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tool_review_like_dislike_review_id_foreign` (`review_id`),
  ADD KEY `ai_tool_review_like_dislike_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_tool_parent_categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_categories_news_id_foreign` (`news_id`),
  ADD KEY `news_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `news_user_favourites`
--
ALTER TABLE `news_user_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_favourites_news_id_foreign` (`news_id`),
  ADD KEY `news_user_favourites_user_id_foreign` (`user_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pricing_plan`
--
ALTER TABLE `pricing_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_tools`
--
ALTER TABLE `ai_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ai_tools_user_favourites`
--
ALTER TABLE `ai_tools_user_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ai_tool_categories`
--
ALTER TABLE `ai_tool_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ai_tool_features`
--
ALTER TABLE `ai_tool_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ai_tool_pricing_plan`
--
ALTER TABLE `ai_tool_pricing_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ai_tool_reviews`
--
ALTER TABLE `ai_tool_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ai_tool_review_like_dislike`
--
ALTER TABLE `ai_tool_review_like_dislike`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `news_user_favourites`
--
ALTER TABLE `news_user_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parent_categories`
--
ALTER TABLE `parent_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pricing_plan`
--
ALTER TABLE `pricing_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_tools`
--
ALTER TABLE `ai_tools`
  ADD CONSTRAINT `ai_tools_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tools_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_tools_user_favourites`
--
ALTER TABLE `ai_tools_user_favourites`
  ADD CONSTRAINT `ai_tools_user_favourites_ai_tool_id_foreign` FOREIGN KEY (`ai_tool_id`) REFERENCES `ai_tools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tools_user_favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_tool_categories`
--
ALTER TABLE `ai_tool_categories`
  ADD CONSTRAINT `ai_tool_categories_ai_tool_id_foreign` FOREIGN KEY (`ai_tool_id`) REFERENCES `ai_tools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tool_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_tool_features`
--
ALTER TABLE `ai_tool_features`
  ADD CONSTRAINT `ai_tool_features_ai_tool_id_foreign` FOREIGN KEY (`ai_tool_id`) REFERENCES `ai_tools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tool_features_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_tool_pricing_plan`
--
ALTER TABLE `ai_tool_pricing_plan`
  ADD CONSTRAINT `ai_tool_pricing_plan_ai_tool_id_foreign` FOREIGN KEY (`ai_tool_id`) REFERENCES `ai_tools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tool_pricing_plan_pricing_plan_id_foreign` FOREIGN KEY (`pricing_plan_id`) REFERENCES `pricing_plan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_tool_reviews`
--
ALTER TABLE `ai_tool_reviews`
  ADD CONSTRAINT `ai_tool_reviews_ai_tool_id_foreign` FOREIGN KEY (`ai_tool_id`) REFERENCES `ai_tools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tool_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_tool_review_like_dislike`
--
ALTER TABLE `ai_tool_review_like_dislike`
  ADD CONSTRAINT `ai_tool_review_like_dislike_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `ai_tool_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ai_tool_review_like_dislike_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `ai_tool_parent_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parent_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD CONSTRAINT `news_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_categories_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_user_favourites`
--
ALTER TABLE `news_user_favourites`
  ADD CONSTRAINT `news_user_favourites_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
