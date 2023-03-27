-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 10:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `administradores`
--

CREATE TABLE `administradores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(255) NOT NULL,
  `lastnames` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administradores`
--

INSERT INTO `administradores` (`id`, `names`, `lastnames`, `state`, `phone_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Alexander', 'asdads', 1, '54645646', 'test@gmail.com', NULL, '$2y$10$W33VIofWsrPrX4uup4BN3u0s.NRv8jF6cO/fq8VSHl5qEGZtFAiXm', NULL, '2023-03-24 02:37:42', '2023-03-24 02:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(255) NOT NULL,
  `lastnames` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `phone_number` varchar(255) NOT NULL,
  `CV` varchar(255) DEFAULT NULL,
  `degree_lv` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ci` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docentes`
--

INSERT INTO `docentes` (`id`, `names`, `lastnames`, `state`, `phone_number`, `CV`, `degree_lv`, `birthdate`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `ci`) VALUES
(1, 'Gregoriana', 'Mamalon', 1, '7854854', '', 'Maestria en Big Data', '2023-03-22', 'gregorio@gmail.com', NULL, '$2y$10$CnQTlKg/SvDF5K/0J/Fs/OMcLGY3cIDgpka8hEPlkX9QTkHGZxJ1K', NULL, '2023-03-22 19:47:24', '2023-03-24 00:46:18', NULL, 5299072);

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(255) NOT NULL,
  `lastnames` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `phone_number` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `names`, `lastnames`, `state`, `phone_number`, `birthdate`, `address`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Alexander', 'Florido Siles', 1, '79374484', '2023-03-20', 'Av. B. Navarrete', 'alex@gmail.com', NULL, '$2y$10$vXAEUZXIdZpHCFiRLa1spu0QbmsDcXs502mfVgegYUQNv8woq3ksy', NULL, '2023-03-21 03:00:13', '2023-03-23 19:21:30', NULL),
(7, 'asdasd', 'asdasd', 1, '23342', '2023-03-20', 'asdasd', 'test@gmail.com', NULL, '$2y$10$SMQKuDEeVipJpy6VB.efKOGMzo3iLiW7KIB1imc1d0fHS5pixB.fK', NULL, '2023-03-21 03:26:20', '2023-03-22 07:58:32', '2023-03-22 07:58:32'),
(8, 'Johandasd', 'Florido', 1, '789456123', '2023-03-21', 'Calle B. Navarrete', 'johan@gmail.com', NULL, '$2y$10$K9GiVeTEY9f27AkAUNiELed.2flrepcTMJoF..xjfE8x2MrfOlDy.', NULL, '2023-03-21 23:05:34', '2023-03-23 07:08:34', '2023-03-23 07:08:34'),
(9, 'Pruebita1', 'asdasd', 1, '12353454353', '2023-03-21', 'dasdsad', 'hola@gmail.com', NULL, '$2y$10$kJMb1vk7X.wNi0LNBv8WAOMNYKM6z1hcY4jah7.k2XjI0LH3DAJsu', NULL, '2023-03-22 04:34:50', '2023-03-22 19:04:16', '2023-03-22 19:04:16'),
(10, 'Alexander Ruslan', 'Florido Siles', 1, '34324324', '2023-03-23', 'Calle B. Navarrete casi Av. Guadalquivir', 'alexanderruslan@hotmail.com', NULL, '$2y$10$9H8nZfCittCZ/PosyfBhv.DneVe4Y2DiMPdPNhNT74zxyuEWo6Yt.', NULL, '2023-03-24 01:55:32', '2023-03-24 01:55:32', NULL),
(11, 'Alexander Ruslan', 'Florido Siles', 1, '234234234', '2023-03-23', 'Calle B. Navarrete casi Av. Guadalquivir', 'alexsanderruslan@hotmail.com', NULL, '$2y$10$L.PKSwAasHOfH9rYEZv8ge2LV6SByhKMiLiwahe8oQ09tnNZWGT/e', NULL, '2023-03-24 01:56:34', '2023-03-24 01:56:34', NULL),
(12, 'Alexander Ruslan', 'Florido Siles', 1, '4345345435', '2023-03-23', 'Calle B. Navarrete casi Av. Guadalquivir', 'alexsanddsaderruslan@hotmail.com', NULL, '$2y$10$4fmTTmCTVTkJpumAvrkhH.Mb4lIBHHB0Z2ja/Apiy3T/acS.8iCpK', NULL, '2023-03-24 01:57:07', '2023-03-24 01:57:07', NULL);

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_03_14_215407_create_table_estudiantes', 2),
(12, '2023_03_14_215603_create_docentes', 2),
(13, '2023_03_14_220134_create_administradores', 3),
(14, '2023_03_21_191402_add_soft_delete_to_estudiantes', 4),
(15, '2023_03_22_152845_add_soft_delete_to_docentes', 5),
(16, '2023_03_24_222222_create_table_cursos', 6);

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

-- --------------------------------------------------------

--
-- Table structure for table `table_cursos`
--

CREATE TABLE `table_cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo_curso` varchar(255) NOT NULL,
  `max_personas` int(11) NOT NULL,
  `costo` double(8,2) NOT NULL,
  `duracion` int(11) NOT NULL,
  `unidad_duracion` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(255) NOT NULL,
  `lastnames` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `names`, `lastnames`, `phone_number`, `birthdate`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', 'asdasd', 'asdasdasd', '2023-03-10', 'deeadas@gmail.com', NULL, 'asdasdasdasd', NULL, '2023-03-11 01:54:26', '2023-03-11 01:54:26'),
(3, 'Alexander', 'Florido', '79374484', '1997-09-08', 'elnagas123@gmail.com', NULL, 'asdasd', NULL, '2023-03-11 18:17:48', '2023-03-11 18:17:48'),
(4, 'asdasd', 'asdasd', 'asdasd', '2023-03-14', 'admin1@gmail.com', NULL, 'asdasdasd', NULL, '2023-03-15 03:03:28', '2023-03-15 03:03:28'),
(5, 'asdasd', 'asdads', '54353453453', '2023-03-23', 'test@gmail.com', NULL, '$2y$10$xw7n.ctN2nGB9pTv.UQl0eNdLnea20bWb/gHmcfAXKtJ5TO6OHPs2', NULL, '2023-03-24 02:36:13', '2023-03-24 02:36:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administradores_email_unique` (`email`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docentes_email_unique` (`email`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estudiantes_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `table_cursos`
--
ALTER TABLE `table_cursos`
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
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_cursos`
--
ALTER TABLE `table_cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
