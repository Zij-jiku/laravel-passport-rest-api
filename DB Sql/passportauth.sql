-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 07:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passportauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('080187b2d6695e1a63e36502c5a7010f4cccacf81fef9b000d949692b2cfe5e9fefffe8e19bd2ba4', 1, 1, 'app', '[]', 0, '2022-06-17 08:13:27', '2022-06-17 08:13:27', '2023-06-17 14:13:27'),
('0c4ed6d9a6694bb4c5329d24d99526644f3cf1f5ad47d2efafad3a8273d0a9555f7f5de17387ce37', 1, 1, 'app', '[]', 0, '2022-06-15 12:53:16', '2022-06-15 12:53:16', '2023-06-15 18:53:16'),
('1b34ab60e66b1fa4c473b70cd5b52e9ffec703121eded1a04942838f248f0f2b00fd610fa29a193e', 1, 1, 'app', '[]', 0, '2022-06-17 08:25:39', '2022-06-17 08:25:39', '2023-06-17 14:25:39'),
('1f1e294d4cdf345c107abfbee8e3345f0be9d681b9922b77e45661b7d65d6cb3dca822a4b82a746a', 1, 1, 'app', '[]', 0, '2022-06-15 15:38:36', '2022-06-15 15:38:36', '2023-06-15 21:38:36'),
('27924915539ed87877feb9662064c20f4accd972733c732aaa1c42fbb4795489607c033c14b4b011', 1, 1, 'app', '[]', 0, '2022-06-15 15:01:47', '2022-06-15 15:01:47', '2023-06-15 21:01:47'),
('2e550700c003651fe2ea3ed4fbf9718fd59cabc164d9a51e839eb01af7de75a8d8d5e9742f0b660b', 6, 1, 'app', '[]', 0, '2022-06-17 09:43:46', '2022-06-17 09:43:46', '2023-06-17 15:43:46'),
('32778ac0a9c104abf1791943bfce8c86aa6f0dd4ef4d7857027c43c2520fd38eea496137dd6d785f', 1, 1, 'app', '[]', 0, '2022-06-17 08:31:26', '2022-06-17 08:31:26', '2023-06-17 14:31:26'),
('3792f1841e35e9c0b0c58f04579521843a4376ab358af274421c65d769a3ec82e54f744aded5f6ad', 1, 1, 'app', '[]', 0, '2022-06-15 15:34:32', '2022-06-15 15:34:32', '2023-06-15 21:34:32'),
('4b20f9ca223f1dfeee07418fe6d264a1f0bc88ed6f7a52f5aaa59f1c67a0f7203b8013731808035c', 1, 1, 'app', '[]', 0, '2022-06-15 15:40:14', '2022-06-15 15:40:14', '2023-06-15 21:40:14'),
('52164efb8d38cf9c5417f7328602d920185a8af17dbd8bf3658a519464ddfd27505eff048a1c9486', 1, 1, 'app', '[]', 0, '2022-06-15 11:49:06', '2022-06-15 11:49:06', '2023-06-15 17:49:06'),
('534ba56dc8e8691d22eb244c5ea4cef913c0ec771024ecfe656dfe48ae793071e1966c9ea8630dae', 1, 1, 'app', '[]', 0, '2022-06-15 15:39:32', '2022-06-15 15:39:32', '2023-06-15 21:39:32'),
('5b9de9b1eeb9e399281018dbfe492fc9e2f81da7dc12be6eec027939e36182c0ec4f40e9808c7a28', 1, 1, 'app', '[]', 0, '2022-06-15 15:23:31', '2022-06-15 15:23:31', '2023-06-15 21:23:31'),
('637f8aca8a548fd4bc26cf10ff6cae3711ad79428ff6fa29a9aa904fd9540321e65765d8f3a3c4fe', 1, 1, 'app', '[]', 0, '2022-06-17 08:11:29', '2022-06-17 08:11:29', '2023-06-17 14:11:29'),
('65685223e283c068a68145397b8a39bdc340404e367f267ebc290a7328c7a5c3bce5d6895df6f937', 3, 1, 'app', '[]', 0, '2022-06-17 09:37:24', '2022-06-17 09:37:24', '2023-06-17 15:37:24'),
('7553c744ff8c63df6b73f19d49b8576b1a5a8b77fd2f0439e00786eff816222a65981a8773eb287a', 1, 1, 'app', '[]', 0, '2022-06-17 08:19:12', '2022-06-17 08:19:12', '2023-06-17 14:19:12'),
('7d4112efa2222605c1398143acd9e25c549ad6ade01238c08df1742ccacb028ce0838e7e1a766276', 1, 1, 'app', '[]', 0, '2022-06-17 09:41:52', '2022-06-17 09:41:52', '2023-06-17 15:41:52'),
('7fca1ff98962fc379bf69f6185e04d99617561ea516d128a7b2319030d221d90fa991b378ac406f8', 2, 1, 'app', '[]', 0, '2022-06-15 15:02:08', '2022-06-15 15:02:08', '2023-06-15 21:02:08'),
('82c710b152ae1fd5b8fc424a763282fd68357ad59478a81b815daad7a5e3242dc9de969276a80729', 1, 1, 'app', '[]', 0, '2022-06-17 09:50:57', '2022-06-17 09:50:57', '2023-06-17 15:50:57'),
('8c5a001f80585f7d1b85995ed9289db44c6bfbff98794789ce9a018b42b728e644f833ce3fd18789', 1, 1, 'app', '[]', 0, '2022-06-17 09:43:20', '2022-06-17 09:43:20', '2023-06-17 15:43:20'),
('979f0d2202e4657ea6a68e71feef1628aa0c24b572b898be0383d35f4efb6121fa53f5c2f38d8e6a', 1, 1, 'app', '[]', 0, '2022-06-17 11:02:34', '2022-06-17 11:02:34', '2023-06-17 17:02:34'),
('98da26d2c62db4e61dab7d86d8943fe6bf66e90323ce8dfa169f9ef803d91cb34b67fc802424daef', 5, 1, 'app', '[]', 0, '2022-06-17 09:42:59', '2022-06-17 09:42:59', '2023-06-17 15:42:59'),
('a17ada2d942e6947f0c931aa0b74c9723fcfddbe2e49e9e796c082d92c4ad6d647f129bc0da088d7', 1, 1, 'app', '[]', 0, '2022-06-17 08:22:14', '2022-06-17 08:22:14', '2023-06-17 14:22:14'),
('a5a7f71298113a7458ba0978444806e37775f83e928a48c4828556056e3e9908e963f7834b74906a', 1, 1, 'app', '[]', 0, '2022-06-17 11:06:03', '2022-06-17 11:06:03', '2023-06-17 17:06:03'),
('af6f731a566473c7197257f21077f6459a7a249ebea508bf95bb0365d701765ebaaf97e36e360b99', 1, 1, 'app', '[]', 0, '2022-06-15 15:31:56', '2022-06-15 15:31:56', '2023-06-15 21:31:56'),
('b48a8ebf9a4e8b4577bcd8128a3f12c37e358b4e87b415114891526e4c5469d493165988acf55161', 1, 1, 'app', '[]', 0, '2022-06-15 11:48:42', '2022-06-15 11:48:42', '2023-06-15 17:48:42'),
('c5a67ce3320c85993433d8a0f8f150bc85734a964114a8e08c0f450d75e5000b1286754cd56a29c5', 1, 1, 'app', '[]', 0, '2022-06-15 15:23:16', '2022-06-15 15:23:16', '2023-06-15 21:23:16'),
('dd82953f35c4ae201658d64775adf0341fdfda130a98a09a1bd08f3cd334a101211d89a853368ce5', 4, 1, 'app', '[]', 0, '2022-06-17 09:40:06', '2022-06-17 09:40:06', '2023-06-17 15:40:06'),
('e1e3d3485305ab110f400335dc7bce299e1ba77324e6e53345416c672b8bb615856f2bb248c2da8c', 1, 1, 'app', '[]', 0, '2022-06-15 15:37:57', '2022-06-15 15:37:57', '2023-06-15 21:37:57'),
('f1f1147d7dec73cc59e8d6c4aad097011b8b5433cfed52019952c0a75aa17fc697bbee45ca5a9380', 1, 1, 'app', '[]', 0, '2022-06-17 08:28:15', '2022-06-17 08:28:15', '2023-06-17 14:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'KMqMx07A0MJd5QkBRVOTTsICGWQcZyvmxJBECvkn', NULL, 'http://localhost', 1, 0, 0, '2022-06-15 10:47:09', '2022-06-15 10:47:09'),
(2, NULL, 'Laravel Password Grant Client', 'r7vDRceLnFkOGgWQMgPaDBPvvxfaczZWTlQ9Gv76', 'users', 'http://localhost', 0, 1, 0, '2022-06-15 10:47:09', '2022-06-15 10:47:09');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-15 10:47:09', '2022-06-15 10:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jiku', 'jiku@gmail.com', NULL, '$2y$10$gQ/MRd5rGnGTsFZDTJ0H1uxk0IWItJrhZWGJFWlZi9Z2k5O1uwti2', NULL, '2022-06-15 11:48:42', '2022-06-15 11:48:42'),
(2, 'Jiku', 'jiku1@gmail.com', NULL, '$2y$10$apoJHHfi/SmXQ1pC0dkxbuNmjvjvqXH/DYmjZH6uNThe1HkxqhDFu', NULL, '2022-06-15 15:02:08', '2022-06-15 15:02:08'),
(3, 'Check', 'check@gmail.com', NULL, '$2y$10$ugrgp6YUMlouObP5i3I30.3S6R2qNQD5o27etfn7A5JZo7Hzauxji', NULL, '2022-06-17 09:37:23', '2022-06-17 09:37:23'),
(4, 'one', 'one@gmail.com', NULL, '$2y$10$mSMPeI4KaV6nmFiWptde9OEBffxD/rdrjWVCZFKEHi70TwD1ZMFUy', NULL, '2022-06-17 09:40:06', '2022-06-17 09:40:06'),
(5, 'two', 'two@gmail.com', NULL, '$2y$10$z9xOl143vilquo/XGpFhM.JOz/yoe8YaPeTI3tO4ua.bxYVnDZLqW', NULL, '2022-06-17 09:42:59', '2022-06-17 09:42:59'),
(6, 'jahidulone', 'jahidul1@gmail.com', NULL, '$2y$10$WLLYCd1FgwEWjEVE8Tltz.64kkRdq9Lihnr8mXmaEcZMz99hzQOaK', NULL, '2022-06-17 09:43:46', '2022-06-17 09:43:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
