-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2026 at 08:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_05_30_143447_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
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
(1, 'App\\Models\\User', 31, 'api-token', '35acc3882aa48df557c67f09559028b22de252c7632093e37c8762990bedbbd1', '[\"*\"]', NULL, NULL, '2026-05-30 07:46:23', '2026-05-30 07:46:23'),
(2, 'App\\Models\\User', 31, 'api-token', 'c3edf26fb45713788dffcb902bd801b9edeabd2398e6c5170da6125601ceebef', '[\"*\"]', NULL, NULL, '2026-05-30 07:52:49', '2026-05-30 07:52:49'),
(3, 'App\\Models\\User', 31, 'api-token', '7b8111a68252548dae0192f5eff234154b40c042b1ad544078db875d29466ed3', '[\"*\"]', NULL, NULL, '2026-05-30 07:54:07', '2026-05-30 07:54:07'),
(4, 'App\\Models\\User', 31, 'api-token', 'e3a7c53db181c2db69278c32e271df127771438602241f3974fccd2b8a4111f4', '[\"*\"]', NULL, NULL, '2026-05-30 07:55:01', '2026-05-30 07:55:01'),
(5, 'App\\Models\\User', 31, 'api-token', '3fd40d673ce1c9a98691491a5d83ab2dd023f4b32e8211329b08ed519ebe8c15', '[\"*\"]', NULL, NULL, '2026-05-30 07:59:04', '2026-05-30 07:59:04'),
(6, 'App\\Models\\User', 31, 'api-token', '089bb8293e7b84a3b51148a1f182f0e684a8ca09c2fbab971062b8c4152a8829', '[\"*\"]', NULL, NULL, '2026-05-30 08:03:03', '2026-05-30 08:03:03'),
(7, 'App\\Models\\User', 31, 'api-token', '0492d52af7152e04de02e342c8029787d090af6f21f4c7f82ee91e67079f737d', '[\"*\"]', NULL, NULL, '2026-05-30 08:06:26', '2026-05-30 08:06:26'),
(8, 'App\\Models\\User', 31, 'api-token', '0df90a9488d639c751e3123ae98290bf0e210aa451df4fac4aabf20e95370a61', '[\"*\"]', NULL, NULL, '2026-05-30 08:09:25', '2026-05-30 08:09:25'),
(9, 'App\\Models\\User', 31, 'api-token', 'fc0a409f6e241323561d52d248c27cea1883756b747b0a02f1acc87b2de26fc1', '[\"*\"]', NULL, NULL, '2026-05-30 08:15:11', '2026-05-30 08:15:11'),
(10, 'App\\Models\\User', 31, 'api-token', 'b3c4d0e9193031fbf415b193477b8de5c30447fe199f5ec7466b65d662ca2ee9', '[\"*\"]', NULL, NULL, '2026-05-30 08:15:40', '2026-05-30 08:15:40'),
(11, 'App\\Models\\User', 31, 'api-token', '931c123d45540c58111bd50d63dc9eeda325f55f1da88d9660450e0f1a3e43ee', '[\"*\"]', NULL, NULL, '2026-05-30 08:17:38', '2026-05-30 08:17:38'),
(12, 'App\\Models\\User', 31, 'api-token', 'ea416eff1ffdd74b597ec5bf65d928ba8486216c9c4502aedbf500373aa18c1b', '[\"*\"]', NULL, NULL, '2026-05-30 08:21:29', '2026-05-30 08:21:29'),
(13, 'App\\Models\\User', 31, 'api-token', '9d8fe80ec9b94016ac7bc154b3185cbae7450ab96dfbc1d0df5e4ff53d499cd0', '[\"*\"]', NULL, NULL, '2026-05-30 08:23:25', '2026-05-30 08:23:25'),
(14, 'App\\Models\\User', 31, 'api-token', '5b919539d9c64ad8d6c624a4e4114c4fdd7389c7258b4b61c1e868aae846271e', '[\"*\"]', NULL, NULL, '2026-05-30 08:25:49', '2026-05-30 08:25:49'),
(15, 'App\\Models\\User', 31, 'api-token', '4a5915f0ac26fd0e6817c6580a77b8fad35cf09429a3a23cabfd1c7837247e4a', '[\"*\"]', NULL, NULL, '2026-05-30 08:28:24', '2026-05-30 08:28:24'),
(16, 'App\\Models\\User', 31, 'api-token', '2c25df4d39926caa3fc9fadecd83a3c53ee2c5ce3f5c91aade981b840b38188a', '[\"*\"]', NULL, NULL, '2026-05-30 08:32:53', '2026-05-30 08:32:53'),
(17, 'App\\Models\\User', 31, 'api-token', 'aea6b6b668754ab9e0913f21110e119ce06f6c825fa50ed652bd940b3ef392eb', '[\"*\"]', NULL, NULL, '2026-05-30 08:36:11', '2026-05-30 08:36:11'),
(18, 'App\\Models\\User', 31, 'api-token', '56e4e0b23fb03a0505fbf9d48606faa0c235f6ab30c188c46e65c54133d8cd8d', '[\"*\"]', NULL, NULL, '2026-05-30 08:39:06', '2026-05-30 08:39:06'),
(19, 'App\\Models\\User', 31, 'api-token', 'd3375514d9aeadd222bd1094a5b0e2da12e7c7aa09a12acdcc139a47994b6c18', '[\"*\"]', NULL, NULL, '2026-05-30 08:39:48', '2026-05-30 08:39:48'),
(20, 'App\\Models\\User', 31, 'api-token', 'fbb14da1db5ccced65e2ded94352ba2b22633db8834e5fb468e4c5553e2b6b1c', '[\"*\"]', NULL, NULL, '2026-05-30 08:41:19', '2026-05-30 08:41:19'),
(21, 'App\\Models\\User', 31, 'api-token', '2240f3da21d64b782f7e1062e300996feda6876b9da28c4f2b0396ea122909b0', '[\"*\"]', NULL, NULL, '2026-05-30 08:41:40', '2026-05-30 08:41:40'),
(22, 'App\\Models\\User', 31, 'api-token', '81f6b12fe497974f8cee7e95ed56052e5b3c60202a724667e3f246ebb6f8b492', '[\"*\"]', NULL, NULL, '2026-05-30 08:42:26', '2026-05-30 08:42:26'),
(23, 'App\\Models\\User', 31, 'api-token', '6bd226809840ad01b194ed81a6618880c1c740dcba7e4882d720999d6f2aed73', '[\"*\"]', NULL, NULL, '2026-05-30 08:43:04', '2026-05-30 08:43:04'),
(24, 'App\\Models\\User', 31, 'api-token', '378c00e2485bc32dc48f0e91b8091c006824f9d0f517e22344e85b24a8429728', '[\"*\"]', NULL, NULL, '2026-05-30 08:48:14', '2026-05-30 08:48:14'),
(25, 'App\\Models\\User', 31, 'api-token', 'c7e325b6f6d80690da79bbb189dec274a90456337d5545a8f4913e690ebf1efa', '[\"*\"]', NULL, NULL, '2026-05-30 08:50:47', '2026-05-30 08:50:47'),
(26, 'App\\Models\\User', 31, 'api-token', '4d2155d67942552b2ddf471351a90c3a9a956d8184340d7de844de42e1bf13db', '[\"*\"]', NULL, NULL, '2026-05-30 08:52:01', '2026-05-30 08:52:01'),
(27, 'App\\Models\\User', 31, 'api-token', 'ac9e30e9554a2f6e6e2321fa6ca08410d2d6132e1a9e730e3b984b8176b1ef2a', '[\"*\"]', NULL, NULL, '2026-05-30 08:59:33', '2026-05-30 08:59:33'),
(28, 'App\\Models\\User', 31, 'api-token', 'f0127536d998263d06b690ef5680212052400604adeb0a6986e6156c424270f5', '[\"*\"]', NULL, NULL, '2026-05-30 09:00:47', '2026-05-30 09:00:47'),
(29, 'App\\Models\\User', 31, 'api-token', '7c1a026c22f8b7865aa40343513c9b40d2005e19dd8b78d84a08a8e7f3966a67', '[\"*\"]', NULL, NULL, '2026-05-30 19:02:31', '2026-05-30 19:02:31'),
(30, 'App\\Models\\User', 31, 'api-token', 'ee3462f72555e95b711ad9e2ba303645a9b474754eeb3928bf419bb6d545ee92', '[\"*\"]', NULL, NULL, '2026-05-30 19:07:00', '2026-05-30 19:07:00'),
(31, 'App\\Models\\User', 31, 'api-token', '46227e4c734ea3bb4a3c4bd075f91f332d16783184a60656b5221a68be6f570a', '[\"*\"]', NULL, NULL, '2026-05-30 19:09:43', '2026-05-30 19:09:43'),
(32, 'App\\Models\\User', 31, 'api-token', '2123097d985ce41d342f9fecb9cba35972e3a6462a7a05251e2a17de2203ffa1', '[\"*\"]', NULL, NULL, '2026-05-30 19:23:25', '2026-05-30 19:23:25'),
(33, 'App\\Models\\User', 31, 'api-token', '0525410742433734e0ab1f90ece8c42bde637cab63c5455fba22f0cd51f03814', '[\"*\"]', NULL, NULL, '2026-05-30 19:24:38', '2026-05-30 19:24:38'),
(34, 'App\\Models\\User', 31, 'api-token', 'a8c85090bf4a34fe7578921d98ade08c2af92975bc84652976f187f81161a3af', '[\"*\"]', NULL, NULL, '2026-05-30 19:29:36', '2026-05-30 19:29:36'),
(35, 'App\\Models\\User', 31, 'api-token', '46bfabe9bda73c4585dc7283299a88ea28f8894dcbccb9ec5492636bafe515e4', '[\"*\"]', NULL, NULL, '2026-05-30 20:39:17', '2026-05-30 20:39:17'),
(36, 'App\\Models\\User', 31, 'api-token', 'e89ae5095d79fcb412d8611cc5b54548d85352bacd83cb32b2afb61e397e6ad0', '[\"*\"]', NULL, NULL, '2026-05-30 20:41:11', '2026-05-30 20:41:11'),
(37, 'App\\Models\\User', 31, 'api-token', '4dc78216a6fcbb4dc5db16d606cfa1c0458fb89014bd6453536776ca019942db', '[\"*\"]', NULL, NULL, '2026-05-30 21:43:58', '2026-05-30 21:43:58'),
(38, 'App\\Models\\User', 31, 'api-token', 'ca68acc75e1e84707f158a455609e91a9ee8b49f716e15ab0a6013f858379c63', '[\"*\"]', NULL, NULL, '2026-05-30 22:05:05', '2026-05-30 22:05:05'),
(39, 'App\\Models\\User', 31, 'api-token', '85b2146ee6a03a446f5fc99295a940dcacf43e490a4b195213eb3e8afa9ec125', '[\"*\"]', NULL, NULL, '2026-05-30 22:10:46', '2026-05-30 22:10:46'),
(40, 'App\\Models\\User', 31, 'api-token', '362d16a736822047f7f58d7744e22b52aeabc4f99a6a7e5766dee091d7aee517', '[\"*\"]', '2026-05-30 22:30:45', NULL, '2026-05-30 22:30:25', '2026-05-30 22:30:45'),
(41, 'App\\Models\\User', 31, 'api-token', '46a9451029fb7655ce1ae7f8ee08bbaf17d66f72bca2ac1b9629c36a36a9f991', '[\"*\"]', '2026-05-30 23:35:46', NULL, '2026-05-30 22:37:45', '2026-05-30 23:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `registration_patients`
--

CREATE TABLE `registration_patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` char(36) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `medical_record_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `is_attendance` enum('0','1') NOT NULL DEFAULT '0',
  `doctor_coordinator` varchar(255) DEFAULT NULL,
  `doctor_package` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`doctor_package`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_patients`
--

INSERT INTO `registration_patients` (`id`, `patient_id`, `fullname`, `nik`, `gender`, `email`, `place`, `department`, `mobile_phone`, `status`, `medical_record_number`, `created_at`, `updated_at`, `title`, `birth`, `phone_code`, `address`, `deleted_at`, `place_of_birth`, `is_attendance`, `doctor_coordinator`, `doctor_package`) VALUES
(1, '9a760290-93e8-4963-936a-2f850c7ea8ef', 'antok saja', '3603302905040001', NULL, 'testsaja@gmail.com', NULL, 'IT', '2347829837423', 'active', NULL, NULL, '2026-05-29 03:03:55', NULL, '1995-12-12', NULL, 'jakarta', NULL, NULL, '0', NULL, NULL),
(2, '4f102bbd-9442-43b9-aec2-29296c0a0ede', 'ASEP MUHAMAD SAEFULLOH', '3309141211869004', 'm', '', '', '', '', 'active', '057665', NULL, NULL, '', '1980-06-06', '', '', NULL, '', '0', NULL, NULL),
(3, '9f30dd14-9e4b-4989-a33c-ec9d73b2f3f7', 'BAMBANG SETIAWAN', '33091412118690049', 'm', '', '', '', '', 'active', '057667', NULL, NULL, '', '1991-02-14', '', '', NULL, '', '0', NULL, NULL),
(4, 'd61bd3c1-4a7b-4d55-9c57-b4df424de7d4', 'Test Ervan test', '3173052304880003', 'm', 'ervanmanalu11@gmail.com', 'jakrta', 'ENG| IT & TELEMATIC', '02937492834', 'active', NULL, '2026-05-29 03:09:09', '2026-05-29 03:09:09', 'Test Ervan', '1980-01-01', '62', 'jakrta', NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6GJbxKYWjcsTQ1tuJC9gna1UGmTuM6kL1Oe3mHa0', NULL, '127.0.0.1', 'PostmanRuntime/7.54.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEFxYVo2OTZUbVFORkpqbHpyNkFINGRudFBlU2xHMGpCd04wQ1hKUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780204266),
('bWJse21mrXFbbtFraS5HKjIPgt5vKkT4rxaPNoCI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMllwbGdwZ2N4YjR6NFROWWJubmVTcEFyNjgzb3ZsNlNEQUpabmZjcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780209369),
('chvxkCQffIpEt8q2IQweindEUDmPsoJCsadosJSn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0YzeEI2Q0Fvb0ZLUzBzV2xTbVZDejQwS1I1Z3pTYm1BNXNoSUNqZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780198871),
('NM5FTPHUt9yna17BAF3QXZVW6qXgzFfctIuZyTfd', NULL, '127.0.0.1', 'PostmanRuntime/7.54.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNkwycURvOWRnRTZSSHZsWWdPYjV2a3pnMG5JbWYxQU85V3h0QjdBciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780152307),
('zz7s9fudLu5s2zhkbvpIsBJLmDtmSYu98kMXfx6U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0MyVXMyTmNBMnFvUmhtekRPTk9TZlU0b2lEVnhEWDNWRDZGY04yNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib2FyZCI7fX0=', 1780156848);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `additional_info` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_id`, `name`, `username`, `additional_info`, `avatar`, `status`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `deleted_at`) VALUES
(2, '777c4f52-d807-4d71-ba0d-74622a19b9a9', 'Reno Eno', 'renowowo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '-', 'active', 'eno.erno@gmail.com', NULL, '$2y$10$9B4XAZn0fsFK25QsXxoNguyk/0oYQQP5KpOwjowvCF1B1VOISYDw.', NULL, '2022-11-23 09:13:22', '2022-12-02 06:43:57', 'SUPER_ADMIN', '2022-12-02 06:43:57'),
(8, '8669e38a-65ee-4e84-abdd-8d07a5739824', 'bayu fajar sidik', 'bayufs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '-', 'active', 'bayu.baylilab@gmail.com', NULL, '$2y$10$Fz7lLTm2B6Sf0Hx1qdBZ.u52ROmQg71I5QQd/iOu86hcw04qfV9Ny', NULL, '2022-11-30 08:43:29', '2026-04-12 13:17:03', 'DOKTER LAB', '2026-04-12 13:17:03'),
(9, '77333824-7217-404b-b464-9082ca74a039', 'admin', 'admin', '-', '-', 'active', 'admin@admin.com', NULL, '$2y$10$RAobEyHFoxjB1onxL5Wf7.gkdukHoMObihohyTFswRplL13VB2mtO', NULL, '2022-12-01 11:09:39', '2026-04-12 13:17:18', 'SUPER_ADMIN', NULL),
(10, '6dffb6b6-ba75-4eb8-8993-3b33570dd227', 'dokter demo', 'dokterdemo', 'none', '-', 'active', 'dokterdemo@gmailcom', NULL, '$2y$10$1/8zCDsvuk8VtalCroEiNerz1NE/y56IOQ7Lke9XpdKqvOhK1TpP6', NULL, '2022-12-07 10:24:30', '2026-04-12 13:17:27', 'DOKTERMCU', '2026-04-12 13:17:27'),
(11, 'f29182bc-a323-45bd-bbc9-ae3981e9b7c0', 'testing user', 'test_users', 'Laki - laki', '-', 'active', 'testlab@gmail.com', NULL, '$2y$10$3nxXNzIThjoDyBWE7mbF7eM8i61eA9LIuaGC13oPMjmLeg8gsAy4W', NULL, '2023-04-07 02:19:06', '2026-04-12 13:17:41', 'LABORATORIUM', '2026-04-12 13:17:41'),
(12, 'b4ec9892-a25f-448b-a434-3fd887f09ce7', 'testing', 'testing', 'testing', '-', 'active', 'test@gmail.com', NULL, '$2y$10$WhQsbnM4bRaG4P2kZHpkf.F3Xqzqfdl0ou.G7JgXNli2TLo56bbEG', NULL, '2023-04-07 02:28:01', '2026-04-12 13:17:46', 'TESTING', '2026-04-12 13:17:46'),
(13, 'a734f5d5-5054-4c75-9e4c-4d34c086f9bf', 'Ervan Manalu', 'ervan.manalu', 'Kedoya Selatan', '-', 'active', 'ervan.manalu@dayamedika.com', NULL, '$2y$10$r7V8Cb8v2p5h0KDJTL6cDO.Ync9wXyXNB1eepgXZ0nNHaeN16iBs2', NULL, '2023-04-11 18:16:08', '2023-04-11 18:16:08', 'SUPER_ADMIN', NULL),
(14, '619c852a-74c4-4034-ab35-4837cced943f', 'Ros Kembar', 'ros.kembar', 'Jakarta', '-', 'active', 'ros.kembar@dayamedika.com', NULL, '$2y$10$iKticqBLMu8xmF3VYBw4xuH4VQwuMyZpxHyAJ0/gaf1o0XnpWKXYq', NULL, '2023-04-11 18:25:09', '2024-10-10 01:33:11', 'NURSES', NULL),
(15, 'c4647dcb-4ab8-408a-b35a-fde15b920212', 'Aini Suci', 'aini.suci', 'Klinik dr. Sander B - Kedoya', '-', 'active', 'admin.mcu@dayamedika.com', NULL, '$2y$10$Kar.oiz93ir72KlBLoQXvOV6L5EnxhE77drvLaDfzZzBbU3EAcc8S', NULL, '2023-04-11 20:36:56', '2023-11-20 16:15:43', 'ADMIN', NULL),
(16, 'ad33a10a-b394-4329-bf87-719ea6d29088', 'Perawat Freelance', 'perawat', 'Klinik dr. Sander B - Kedoya', '-', 'active', 'perawat@gmail.com', NULL, '$2y$10$Nrw1NJ3X/tw209aYdSvjJ.evnRnwm3m6RjKeE05AyVpflXcYuoEL6', NULL, '2023-04-11 23:57:26', '2023-09-21 00:38:54', 'NURSES', NULL),
(17, 'd7a1c2cb-1da6-49d8-89fe-1bba8ec496bc', 'Surya', 'surya', 'Klinik dr. Sander B - Kedoya', '-', 'active', 'surya@gmail.com', NULL, '$2y$10$bRSfo2fb2kweKukFNHSRWun8Z0x2n54DbkPk8n3cmBZqyEs5DIWq2', NULL, '2023-04-12 00:00:31', '2023-11-22 02:30:53', 'RADIOLOGY', NULL),
(18, '985110ba-5a13-4f95-a00e-380d4d803f34', 'Dokter MCU Onsite', 'dokter.mcu', 'Klinik dr. Sander B', '-', 'active', 'doktermcu@gmail.com', NULL, '$2y$10$ZvPlm3Y2CKzvJrvci5FPOuFfYCeSEmnb6B/uKKjpUBGw2kUwa2Kzi', NULL, '2023-04-12 00:04:26', '2023-11-20 03:11:49', 'DOKTERMCU', NULL),
(19, '38dc56f5-51a9-4490-8f96-06bf143295cb', 'Dwi Sugianto', 'dwi.sugianto', 'Klinik dr. Sander', '-', 'active', 'dwi@gmail.com', NULL, '$2y$10$U8ogN8Gnj4Pz960isIqcKu98wTtuDPNsclliRiQx0JadPb53SoIPe', NULL, '2023-04-12 00:19:24', '2023-05-30 20:03:15', 'LABORATORIUM', NULL),
(20, '4d0891fb-5bc0-420a-8a90-1c30b84bc5a3', 'eno lab', 'lab_eno', 'PIC', '-', 'active', 'reno@gmail.com', NULL, '$2y$10$s5UeR4rsf4Aq0LWCzMSvF.YnKndFGzRlIZ3e3SeUSbRMSETyE.C2S', NULL, '2023-05-07 00:25:14', '2023-05-07 00:27:40', 'RADIOLOGY', '2023-05-07 00:27:40'),
(21, 'a661652d-2b32-47fd-bf7b-8a36091e3cf6', 'eno dokter', 'dokter@gmail.com', 'rr', '-', 'active', 'dokter@gmail.com', NULL, '$2y$10$wjgcB1gSdi.dRmGI60emNeOd3T5uftF55tCs1A1s5IaDa.8imZRNO', NULL, '2023-05-07 00:28:10', '2023-05-07 00:30:03', 'DOCTOR', '2023-05-07 00:30:03'),
(22, 'ba4aacab-7e29-466f-bebd-abc7612213e3', 'reno test', 'reno_test', 'Manager', '-', 'active', 'renotest@gmail.com', NULL, '$2y$10$HndfitCoiJ9RSAsFlQxFUeyNjoAcPgZ3UkzN7QzpbhDDO0s5NTnpq', NULL, '2023-05-24 08:54:41', '2026-04-12 13:18:06', 'DOKTERMCU', '2026-04-12 13:18:06'),
(23, '5eb41268-7d9a-44ed-91aa-56259e42862b', 'Test Dokter Lab', 'testdokterlab', 'testTest Dokter Lab', '-', 'active', 'testdokterlab@gmail.com', NULL, '$2y$10$v4mP13wjcBhZNmdZNQYTF.ZV9MUtvZZ2pdZwkx/qbqHNo33ShaJfG', NULL, '2023-05-29 07:26:31', '2023-06-19 01:27:46', 'DOKTER LAB', NULL),
(24, '5981053b-a4cb-4512-899b-ddf023795ec6', 'dr.Juli', 'dr.juli', 'Test', '-', 'active', 'dr.juli@gmail.com', NULL, '$2y$10$CX.G159K7YqcwEDABXsKkuv14erAUVGEsU0LuWvGkXeyFOrblDRyi', NULL, '2023-07-04 02:25:05', '2023-11-22 21:41:50', 'DOKTER LAB', NULL),
(25, '91c84eee-175c-40a3-a2e7-9bc32c97d554', 'Petugas Laboratorium', 'laboratorium', 'As', '-', 'active', 'laboratorium@gmail.com', NULL, '$2y$10$CWeug1Yq5Oc1mshHy8rd8.rnXHBVwv51FwSyr5VcG6Qh9vwxIJcL6', NULL, '2023-09-21 00:37:10', '2023-11-22 21:35:05', 'LABORATORIUM', NULL),
(26, 'c23318c4-6faf-43b9-a769-c9246e2ed2c4', 'Dokter Lab', 'dokter.lab', 'Penanggung Jawab Lab', '-', 'active', 'dokter.lab@gmail.com', NULL, '$2y$10$UtJYlftoIxi7cyKaZ/seDOGW5nLoTCbOfhKkEJuVOlcBEFDNOrPmm', NULL, '2023-11-22 21:43:44', '2024-04-02 00:48:19', 'DOKTER LAB', NULL),
(27, '06e4ac43-3cc7-4090-ba19-cf831929c672', 'Dokter', 'Resume', 'Untuk Resume Dokter', '-', 'active', 'dokresume@dayamedika.com', NULL, '$2y$10$XHotaucJkRvJTKMeHFhE1.48.s1CL0Q4nX5ZJXI7DyOZnMYskvAaG', NULL, '2024-06-05 17:35:39', '2024-06-05 17:35:39', 'ADMIN', NULL),
(28, '62471749-cd8b-4cc8-a45a-2576eb03bbe3', 'Koordinator MCU', 'dr. Flyndie Simon', 'Koordinator MCU', '-', 'active', 'koordinatormcu@gmail.com', NULL, '$2y$10$Rm4h2dmo6hZ4.cVNFL/JUe3QmIygk4ie/x0PhmiqoOHwzwNG0tnYi', NULL, '2024-06-09 18:17:42', '2024-06-11 20:16:39', 'SUPER_ADMIN', '2024-06-11 20:16:39'),
(29, '0dbb4d7c-92f0-4bac-8840-3c85bdd7594a', 'Koordinator MCU', 'Flyndie Simon', '-', '-', 'active', 'koordinator_mcu@gmail.com', NULL, '$2y$10$YZ7MKJtzvUfIpVCxHL4wQeM3jVe80Ew/E8eiOIqDGU.O8ZV6ubMDS', NULL, '2024-06-11 20:18:10', '2024-06-11 20:18:10', 'SUPER_ADMIN', NULL),
(31, '9ef03ea5-198d-4898-9adb-07e26d90787f', 'Tsurayya Nabila', 'Tsurayya.Nabila', '-', '-', 'active', 'tsurayya.nabila@dayamedika.com', NULL, '$2y$12$IJgZxQKBldxNfB07pav.PuRLcK6qkmW/8MBDgr7Yrg5f.lUedvn/a', NULL, '2025-10-01 21:09:31', '2026-05-30 07:46:23', 'ADMIN', NULL),
(32, '45d3289b-1bf8-4d92-97a2-8ac9045db7d7', 'M. Rifky', 'm.rifki', 'IT', '-', 'active', 'm.rifqi@dayamedika.com', NULL, '$2y$10$BFy.PkOn867Ujhyirpin1egVlsv0JVbxPho/vsU4Izqbe3ABYjLk.', NULL, '2026-04-23 04:29:08', '2026-04-23 04:38:05', 'SUPER_ADMIN', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `registration_patients`
--
ALTER TABLE `registration_patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idxxx_patients_patient_id` (`patient_id`),
  ADD KEY `patients_patient_id_index` (`patient_id`),
  ADD KEY `idx_patients_patient_id` (`patient_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `registration_patients`
--
ALTER TABLE `registration_patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21925;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
