-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 7 月 14 日 13:06
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `wip_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_number` int(11) NOT NULL,
  `item_amount` int(11) NOT NULL,
  `published` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
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
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(385, '2014_10_12_000000_create_users_table', 1),
(386, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(387, '2014_10_12_100000_create_password_resets_table', 1),
(388, '2019_08_19_000000_create_failed_jobs_table', 1),
(389, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(390, '2023_06_24_155819_create_books_table', 1),
(391, '2023_06_26_113525_create_wip_users_table', 1),
(392, '2023_06_26_114707_create_wip_groups_table', 1),
(393, '2023_06_26_114910_create_wip_scores_table', 1),
(394, '2023_06_26_115019_create_wip_user_groups_table', 1),
(395, '2023_06_26_115721_create_wip_domains_table', 1),
(396, '2023_06_26_123107_create_wip_user_profiles_table', 1),
(397, '2023_06_26_142253_create_wip_perm_groups_table', 1),
(398, '2023_07_01_131258_create_wip_chat_systems_table', 1),
(399, '2023_07_03_132735_create_wip_supervisor_groups_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `domain_id` varchar(8) NOT NULL,
  `user_active` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_chat_systems`
--

CREATE TABLE `wip_chat_systems` (
  `chat_sys` varchar(3) NOT NULL,
  `chat_sys_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_chat_systems`
--

INSERT INTO `wip_chat_systems` (`chat_sys`, `chat_sys_name`) VALUES
('SLK', 'Slack'),
('SYM', 'Symphony'),
('TMS', 'MS Teams');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_domains`
--

CREATE TABLE `wip_domains` (
  `domain_id` varchar(8) NOT NULL,
  `domain_short_name` varchar(12) NOT NULL,
  `domain_display_name` varchar(32) NOT NULL,
  `domain_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_domains`
--

INSERT INTO `wip_domains` (`domain_id`, `domain_short_name`, `domain_display_name`, `domain_active`, `created_at`, `updated_at`) VALUES
('GJGLCKMD', 'DOMAIN_C', '会社C', 1, '2023-07-01 15:10:10', '2023-07-13 02:32:24'),
('U05IZL4Y', 'WIP', 'WIP', 1, '2023-07-13 03:20:18', '2023-07-13 03:20:18'),
('WJKKII6T', 'DOMAIN_A', '会社A', 1, '2023-07-01 15:16:10', '2023-07-13 02:31:42'),
('YL1H8LX3', 'DOMAIN_B', '会社B', 1, '2023-07-01 15:10:39', '2023-07-13 02:31:58');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_groups`
--

CREATE TABLE `wip_groups` (
  `group_id` varchar(12) NOT NULL,
  `group_short_name` varchar(12) NOT NULL,
  `group_display_name` varchar(36) NOT NULL,
  `domain_id` varchar(8) DEFAULT NULL,
  `group_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_groups`
--

INSERT INTO `wip_groups` (`group_id`, `group_short_name`, `group_display_name`, `domain_id`, `group_active`, `created_at`, `updated_at`) VALUES
('E3416GDY6Q6C', 'DB_G1', '会社B_Group1', 'YL1H8LX3', 1, '2023-07-13 02:35:50', '2023-07-13 02:37:15'),
('JIA5JK94Z6Z2', 'DB_G2', '会社B_Group2', 'YL1H8LX3', 1, '2023-07-13 02:36:09', '2023-07-13 02:37:10'),
('KUO50LW33W2J', 'DA_G1', '会社A_Group1', 'WJKKII6T', 1, '2023-07-01 17:54:57', '2023-07-13 02:34:23'),
('N0743J1ZM1F9', 'DC_G1', '会社C_Group1', 'GJGLCKMD', 1, '2023-07-13 02:36:30', '2023-07-13 02:37:06'),
('OMN0VD9GHO3L', 'DC_G2', '会社C_Group2', 'GJGLCKMD', 1, '2023-07-13 02:36:55', '2023-07-13 02:37:02'),
('UI3454M7W08A', 'SA', 'WIP Super Admin', 'U05IZL4Y', 1, '2023-07-14 02:04:59', '2023-07-14 02:05:43'),
('WUM9ZJMMNGO9', 'DA_G2', '会社A_Group2', 'WJKKII6T', 1, '2023-07-13 02:35:20', '2023-07-13 02:35:34');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_perm_groups`
--

CREATE TABLE `wip_perm_groups` (
  `perm_group_id` tinyint(4) NOT NULL,
  `perm_group_name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_perm_groups`
--

INSERT INTO `wip_perm_groups` (`perm_group_id`, `perm_group_name`, `created_at`, `updated_at`) VALUES
(0, 'Regular User', '2023-07-01 19:30:49', '2023-07-01 19:30:49'),
(40, 'Supervisor', '2023-07-01 19:30:33', '2023-07-01 19:30:33'),
(60, 'Domain Admin', '2023-07-01 19:30:12', '2023-07-01 19:30:12'),
(90, 'Super Admin', '2023-07-01 19:30:04', '2023-07-01 19:30:04');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_scores`
--

CREATE TABLE `wip_scores` (
  `score_id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` varchar(8) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `chat_sys` varchar(3) NOT NULL,
  `origin` varchar(6) NOT NULL,
  `display_name` varchar(36) NOT NULL,
  `chat_user_id` varchar(20) NOT NULL,
  `doc_id` varchar(32) NOT NULL,
  `conversation_id` varchar(40) NOT NULL,
  `thread_id` varchar(40) NOT NULL,
  `message_id` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `who_to_do` tinyint(4) NOT NULL,
  `by_when` tinyint(4) NOT NULL,
  `from_when` tinyint(4) NOT NULL,
  `until_when` tinyint(4) NOT NULL,
  `at_where` tinyint(4) NOT NULL,
  `in_where` tinyint(4) NOT NULL,
  `from_where` tinyint(4) NOT NULL,
  `to_where` tinyint(4) NOT NULL,
  `how_to_do` tinyint(4) NOT NULL,
  `how_much` tinyint(4) NOT NULL,
  `how_many` tinyint(4) NOT NULL,
  `what_to_do` tinyint(4) NOT NULL,
  `why` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_scores`
--

INSERT INTO `wip_scores` (`score_id`, `domain_id`, `user_id`, `chat_sys`, `origin`, `display_name`, `chat_user_id`, `doc_id`, `conversation_id`, `thread_id`, `message_id`, `date`, `time`, `who_to_do`, `by_when`, `from_when`, `until_when`, `at_where`, `in_where`, `from_where`, `to_where`, `how_to_do`, `how_much`, `how_many`, `what_to_do`, `why`) VALUES
(1, 'ATHFWK8N', 'FX0PKKOY420138QGA462', 'SYM', 'ai', 'Symbot3 Kurosawa', '349026222360289', '64a2beb458413d9d27a6cbeb', 'elNBjhvc4uirR7ZEyB_7XH___ndWQpHtdA', '', 'l6S9l4Zyea5qWkxSL1fKt3___nbkRyJ-bQ', '2023-07-03', '21:27:27', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(2, 'ATHFWK8N', 'FX0PKKOY420138QGA462', 'SYM', 'ai', 'Symbot3 Kurosawa', '349026222360289', '64a2bf0058413d9d27a6cbed', 'elNBjhvc4uirR7ZEyB_7XH___ndWQpHtdA', '', '-CIawjbt5NPmS-3JGtv-Q3___nbkRgF5bQ', '2023-07-03', '21:28:41', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_supervisor_groups`
--

CREATE TABLE `wip_supervisor_groups` (
  `supervisor_group_id` bigint(20) UNSIGNED NOT NULL,
  `supervisor_user_id` varchar(20) NOT NULL,
  `group_id` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_supervisor_groups`
--

INSERT INTO `wip_supervisor_groups` (`supervisor_group_id`, `supervisor_user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'Q7YR63S6YMKTES6ZR7OW', 'KUO50LW33W2J', '2023-07-13 04:26:56', '2023-07-13 04:26:56'),
(2, 'Q7YR63S6YMKTES6ZR7OW', 'WUM9ZJMMNGO9', '2023-07-13 04:27:13', '2023-07-13 04:27:13'),
(3, 'WYAOO8FAPKDKF0JH8GFR', 'E3416GDY6Q6C', '2023-07-13 04:27:59', '2023-07-13 04:27:59'),
(4, 'WYAOO8FAPKDKF0JH8GFR', 'JIA5JK94Z6Z2', '2023-07-13 04:28:11', '2023-07-13 04:28:11'),
(5, 'NORP5JXLQU7N9I2GSJK6', 'N0743J1ZM1F9', '2023-07-13 04:28:25', '2023-07-13 04:28:25'),
(6, 'NORP5JXLQU7N9I2GSJK6', 'OMN0VD9GHO3L', '2023-07-13 04:28:32', '2023-07-13 04:28:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_users`
--

CREATE TABLE `wip_users` (
  `user_id` varchar(20) NOT NULL,
  `domain_id` varchar(8) DEFAULT NULL,
  `user_active` tinyint(1) NOT NULL,
  `perm_group_id` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_users`
--

INSERT INTO `wip_users` (`user_id`, `domain_id`, `user_active`, `perm_group_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('AYEC93405JH2K4YVST8M', 'GJGLCKMD', 1, 0, 'domain C user 3', 'dcu3@wip.com', NULL, '$2y$10$Zr3IT7FQPBZaCSeM.o.8sP1xTobLnO', NULL, '2023-07-13 02:55:52', '2023-07-13 02:57:08'),
('CUFPT13Q3YXX2RCYM69V', 'YL1H8LX3', 1, 0, 'domain B user 2', 'dbu2@wip.com', NULL, '$2y$10wzFk.uMo8qwZuncKNW', NULL, '2023-07-13 02:55:10', '2023-07-13 02:56:52'),
('EYPG5DK549JE6459OTQ6', 'GJGLCKMD', 1, 0, 'domain C user 2', 'dcu2@wip.com', NULL, '$2y$10$gTcC.iQtw1yJZyvMXP82', NULL, '2023-07-13 03:14:44', '2023-07-13 03:19:22'),
('FX0PKKOY420138QGA462', 'U05IZL4Y', 1, 90, 'seimei', 'seimei.kurosawa@gmail.com', NULL, '$2y$10$ovgyLV272T28k.I4JlF5CM.y', '60qvS5tdXD6Lfo6xKpK5mr5McPnrr8t5T3KUQ06ke8Z', '2023-07-01 03:58:22', '2023-07-13 03:20:37'),
('G1H6P584IMJKXPOJR5Q4', 'WJKKII6T', 1, 60, 'domain A admin', 'daadmin@wip.com', NULL, '$2y$10$LcoqXXxj05KbeAVD0a9jr9Jce', NULL, '2023-07-13 02:58:17', '2023-07-13 03:17:14'),
('I31OUFLWTM5V4E4DUU49', 'GJGLCKMD', 1, 0, 'domain C user 1', 'dcu1@wip.com', NULL, '$2y$10$B4LMCW7hBJDeHRsiwrGzyktbsAB.S2Mq', NULL, '2023-07-13 02:55:30', '2023-07-13 02:57:02'),
('JF6MLV2TR5394HJ8Q7FY', 'WJKKII6T', 1, 0, 'domain A user 2', 'dau2@wip.com', NULL, '$2y$10$jUaq46Cy/w1fR3FrMfjQJM2YhlFrKzgokO', NULL, '2023-07-13 02:54:11', '2023-07-13 15:17:27'),
('LI6S5SO5U6BQR32BNW9P', 'WJKKII6T', 1, 0, 'domain A user 3', 'dau3@wip.com', NULL, '$2y$10$HQi/o3ESX7vx.KlAP5isPjUBBdZjstf2', NULL, '2023-07-13 03:12:20', '2023-07-13 03:19:01'),
('MJ8HKVH0I7AHUA36PHOQ', 'YL1H8LX3', 1, 0, 'domain B user 3', 'dbu3@wip.com', NULL, '$2y$10$GBIh.kLbXt6ISAxgQtQlcDVG', NULL, '2023-07-13 03:12:45', '2023-07-13 03:19:12'),
('NORP5JXLQU7N9I2GSJK6', 'GJGLCKMD', 1, 40, 'symbot4.kurosawa', 'symbot4.kurosawa@gmail.com', NULL, '$2y$10$QdqIgOJoL3Ge2/yj.V5tRFkdabXMy', NULL, '2023-07-04 19:40:11', '2023-07-13 03:18:37'),
('Q7YR63S6YMKTES6ZR7OW', 'WJKKII6T', 1, 40, 'symbot1.kurosawa', 'symbot1.kurosawa@gmail.com', NULL, '$2y$10$BFlKAYs6CYSHW/GUELrYC', NULL, '2023-07-04 19:38:56', '2023-07-13 03:18:07'),
('SPPRT5E56O45B3ABRB02', 'YL1H8LX3', 1, 0, 'domain B user 1', 'dbu1@wip.com', NULL, '$2y$10$aAGXvJMy48akSzLiD0Xvgu', NULL, '2023-07-13 02:54:49', '2023-07-13 02:56:43'),
('TKBFV36ZO2O2M1Z03Q3K', 'WJKKII6T', 1, 40, 'domain A user 1', 'dau1@wip.com', NULL, '$2y$10$oB2VA4vW.xzj7wNNmZBa', NULL, '2023-07-13 02:53:27', '2023-07-13 18:01:04'),
('TUNRRP63ZV321VFCS6K7', 'GJGLCKMD', 1, 60, 'domain C admin', 'dcadmin@wip.com', NULL, '$2y$10$jLlCmG166KgMZQV8aQ9zogN.', NULL, '2023-07-13 02:59:10', '2023-07-13 03:17:46'),
('WYAOO8FAPKDKF0JH8GFR', 'YL1H8LX3', 1, 40, 'symbot3.kurosawa', 'symbot3.kurosawa@gmail.com', NULL, '$2y$10$EFZ1BVhZmB0p.xazlfUn3gPyhZpcS', NULL, '2023-07-04 19:39:46', '2023-07-13 03:18:22'),
('Z8J9YSAB8GQU17G69Q5T', 'YL1H8LX3', 1, 60, 'domain B admin', 'dbadmin@wip.com', NULL, '$2y$10$1ruJgTL.FWlsG3eMejR6Ud1/.zRa2', NULL, '2023-07-13 02:58:39', '2023-07-13 03:17:29');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_user_groups`
--

CREATE TABLE `wip_user_groups` (
  `user_group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `group_id` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_user_groups`
--

INSERT INTO `wip_user_groups` (`user_group_id`, `user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(3, 'TKBFV36ZO2O2M1Z03Q3K', 'KUO50LW33W2J', '2023-07-13 03:21:58', '2023-07-13 03:21:58'),
(4, 'JF6MLV2TR5394HJ8Q7FY', 'KUO50LW33W2J', '2023-07-13 03:22:09', '2023-07-13 03:22:09'),
(5, 'LI6S5SO5U6BQR32BNW9P', 'WUM9ZJMMNGO9', '2023-07-13 03:22:24', '2023-07-13 03:22:24'),
(6, 'SPPRT5E56O45B3ABRB02', 'E3416GDY6Q6C', '2023-07-13 03:22:38', '2023-07-13 03:22:38'),
(7, 'CUFPT13Q3YXX2RCYM69V', 'E3416GDY6Q6C', '2023-07-13 03:22:53', '2023-07-13 03:22:53'),
(8, 'MJ8HKVH0I7AHUA36PHOQ', 'JIA5JK94Z6Z2', '2023-07-13 03:23:03', '2023-07-13 03:23:03'),
(10, 'I31OUFLWTM5V4E4DUU49', 'N0743J1ZM1F9', '2023-07-13 03:25:24', '2023-07-13 03:25:24'),
(11, 'EYPG5DK549JE6459OTQ6', 'N0743J1ZM1F9', '2023-07-13 03:25:32', '2023-07-13 03:25:32'),
(12, 'AYEC93405JH2K4YVST8M', 'OMN0VD9GHO3L', '2023-07-13 03:25:44', '2023-07-13 03:25:44'),
(14, 'FX0PKKOY420138QGA462', 'UI3454M7W08A', '2023-07-14 02:05:56', '2023-07-14 02:05:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `wip_user_profiles`
--

CREATE TABLE `wip_user_profiles` (
  `user_profile_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `chat_user_id` varchar(20) NOT NULL,
  `chat_sys` tinytext NOT NULL,
  `chat_interval` tinyint(4) NOT NULL,
  `chat_limit` tinyint(4) NOT NULL,
  `user_profile_active` tinyint(1) NOT NULL,
  `user_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wip_user_profiles`
--

INSERT INTO `wip_user_profiles` (`user_profile_id`, `user_id`, `chat_user_id`, `chat_sys`, `chat_interval`, `chat_limit`, `user_profile_active`, `user_note`, `created_at`, `updated_at`) VALUES
(3, 'WYAOO8FAPKDKF0JH8GFR', '349026222360289', 'SYM', 10, 5, 1, 'sym3', '2023-07-04 19:42:09', '2023-07-13 03:05:13'),
(4, 'Q7YR63S6YMKTES6ZR7OW', '349026222360285', 'SYM', 5, 5, 1, 'sym1', '2023-07-04 19:43:58', '2023-07-13 03:04:41'),
(6, 'NORP5JXLQU7N9I2GSJK6', '349026222360293', 'SYM', 5, 3, 1, 'sym4', '2023-07-04 19:45:30', '2023-07-13 03:04:26'),
(7, 'FX0PKKOY420138QGA462', '12345678', 'SYM', 5, 4, 1, 'seimei', '2023-07-13 03:01:26', '2023-07-13 07:53:47'),
(8, 'AYEC93405JH2K4YVST8M', '12345678', 'SYM', 5, 6, 1, 'domain C user 3', '2023-07-13 03:02:06', '2023-07-13 03:09:28'),
(9, 'CUFPT13Q3YXX2RCYM69V', '12345678', 'SYM', 5, 5, 1, 'domain B user 2', '2023-07-13 03:02:35', '2023-07-13 07:53:15'),
(10, 'G1H6P584IMJKXPOJR5Q4', '12345678', 'SYM', 5, 5, 1, 'domain A admin', '2023-07-13 03:07:24', '2023-07-13 03:07:24'),
(11, 'I31OUFLWTM5V4E4DUU49', '12345678', 'SYM', 5, 5, 1, 'domain C user 1', '2023-07-13 03:07:48', '2023-07-13 03:08:22'),
(12, 'JF6MLV2TR5394HJ8Q7FY', '12345678', 'SYM', 5, 5, 1, 'domain  A user 2', '2023-07-13 03:08:10', '2023-07-13 03:08:10'),
(13, 'SPPRT5E56O45B3ABRB02', '12345678', 'SYM', 4, 4, 1, 'domain B user 1', '2023-07-13 03:08:46', '2023-07-13 03:08:46'),
(14, 'TKBFV36ZO2O2M1Z03Q3K', '12345678', 'SYM', 3, 3, 1, 'domain A user 1', '2023-07-13 03:09:09', '2023-07-13 03:09:09'),
(15, 'TUNRRP63ZV321VFCS6K7', '12345678', 'SYM', 3, 3, 1, 'domain C admin', '2023-07-13 03:10:07', '2023-07-13 03:10:07'),
(16, 'Z8J9YSAB8GQU17G69Q5T', '12345678', 'SYM', 2, 2, 1, 'domain B admin', '2023-07-13 03:10:26', '2023-07-13 03:10:26'),
(17, 'EYPG5DK549JE6459OTQ6', '12345678', 'SYM', 5, 5, 1, 'domain C user 2', '2023-07-13 03:15:18', '2023-07-13 03:15:18'),
(19, 'LI6S5SO5U6BQR32BNW9P', '12345678', 'SYM', 4, 4, 1, 'domain A user 3', '2023-07-13 22:49:19', '2023-07-13 22:49:19');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- テーブルのインデックス `wip_chat_systems`
--
ALTER TABLE `wip_chat_systems`
  ADD PRIMARY KEY (`chat_sys`);

--
-- テーブルのインデックス `wip_domains`
--
ALTER TABLE `wip_domains`
  ADD PRIMARY KEY (`domain_id`),
  ADD UNIQUE KEY `domain_key` (`domain_short_name`,`domain_display_name`),
  ADD UNIQUE KEY `wip_domains_domain_short_name_unique` (`domain_short_name`);

--
-- テーブルのインデックス `wip_groups`
--
ALTER TABLE `wip_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_key` (`group_short_name`,`group_display_name`,`domain_id`);

--
-- テーブルのインデックス `wip_perm_groups`
--
ALTER TABLE `wip_perm_groups`
  ADD PRIMARY KEY (`perm_group_id`);

--
-- テーブルのインデックス `wip_scores`
--
ALTER TABLE `wip_scores`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `wip_scores_domain_id_index` (`domain_id`),
  ADD KEY `wip_scores_user_id_index` (`user_id`),
  ADD KEY `wip_scores_chat_user_id_index` (`chat_user_id`),
  ADD KEY `wip_scores_doc_id_index` (`doc_id`),
  ADD KEY `wip_scores_conversation_id_index` (`conversation_id`),
  ADD KEY `wip_scores_thread_id_index` (`thread_id`),
  ADD KEY `wip_scores_message_id_index` (`message_id`),
  ADD KEY `wip_scores_date_index` (`date`);

--
-- テーブルのインデックス `wip_supervisor_groups`
--
ALTER TABLE `wip_supervisor_groups`
  ADD PRIMARY KEY (`supervisor_group_id`),
  ADD UNIQUE KEY `supervisor_group_key` (`supervisor_user_id`,`group_id`),
  ADD KEY `wip_supervisor_groups_supervisor_user_id_index` (`supervisor_user_id`),
  ADD KEY `wip_supervisor_groups_group_id_index` (`group_id`);

--
-- テーブルのインデックス `wip_users`
--
ALTER TABLE `wip_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `wip_users_email_unique` (`email`),
  ADD UNIQUE KEY `user_key` (`user_id`,`domain_id`,`perm_group_id`);

--
-- テーブルのインデックス `wip_user_groups`
--
ALTER TABLE `wip_user_groups`
  ADD PRIMARY KEY (`user_group_id`),
  ADD UNIQUE KEY `user_group_key` (`user_id`,`group_id`),
  ADD KEY `wip_user_groups_user_id_index` (`user_id`),
  ADD KEY `wip_user_groups_group_id_index` (`group_id`);

--
-- テーブルのインデックス `wip_user_profiles`
--
ALTER TABLE `wip_user_profiles`
  ADD PRIMARY KEY (`user_profile_id`),
  ADD UNIQUE KEY `user_profile_key` (`user_id`,`chat_user_id`,`chat_sys`) USING HASH,
  ADD KEY `wip_user_profiles_user_id_index` (`user_id`),
  ADD KEY `wip_user_profiles_chat_user_id_index` (`chat_user_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `wip_scores`
--
ALTER TABLE `wip_scores`
  MODIFY `score_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `wip_supervisor_groups`
--
ALTER TABLE `wip_supervisor_groups`
  MODIFY `supervisor_group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `wip_user_groups`
--
ALTER TABLE `wip_user_groups`
  MODIFY `user_group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルの AUTO_INCREMENT `wip_user_profiles`
--
ALTER TABLE `wip_user_profiles`
  MODIFY `user_profile_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
