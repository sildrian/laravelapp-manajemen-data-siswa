-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2017 at 12:39 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE `datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nisn` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_siswa` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`id`, `nisn`, `nama_siswa`, `jenis_kelamin`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
(1, '1001', 'Agus Yulianto', 'L', '1990-06-29', '2017-03-10 11:10:15', '2017-03-10 11:10:15'),
(2, '1002', 'Babang Tanto', 'L', '1990-09-09', '2017-02-10 11:10:15', '2017-02-10 11:10:15'),
(3, '1003', 'Tani Yuli', 'P', '1992-04-22', '2017-03-13 11:10:15', '2017-03-13 11:10:15'),
(4, '1004', 'Citra Rahmawati', 'P', '1992-03-11', '2017-03-16 11:10:15', '2017-03-16 11:10:15'),
(5, '1005', 'Seno Kolo', 'L', '1991-11-15', '2017-03-19 11:10:15', '2017-03-19 11:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `hobi`
--

CREATE TABLE `hobi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hobi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobi`
--

INSERT INTO `hobi` (`id`, `nama_hobi`, `created_at`, `updated_at`) VALUES
(1, 'Coding', '2017-06-03 08:01:15', '2017-06-15 06:19:06'),
(2, 'Membaca', '2017-06-03 08:01:15', '2017-06-03 08:01:15'),
(3, 'Traveling', '2017-06-03 08:01:15', '2017-06-03 08:01:15'),
(4, 'Gaming', '2017-06-03 08:01:15', '2017-06-03 08:01:15'),
(5, 'Futsal', '2017-06-15 07:04:03', '2017-06-15 07:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `hobi_siswa`
--

CREATE TABLE `hobi_siswa` (
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `id_hobi` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobi_siswa`
--

INSERT INTO `hobi_siswa` (`id_siswa`, `id_hobi`, `created_at`, `updated_at`) VALUES
(1, 2, '2017-06-22 19:01:58', '2017-06-22 19:01:58'),
(1, 3, '2017-06-22 19:01:58', '2017-06-22 19:01:58'),
(4, 4, '2017-06-13 04:42:58', '2017-06-13 04:42:58'),
(6, 1, '2017-06-13 06:07:00', '2017-06-13 06:07:00'),
(6, 2, '2017-06-13 06:07:00', '2017-06-13 06:07:00'),
(6, 3, '2017-06-13 06:07:00', '2017-06-13 06:07:00'),
(6, 4, '2017-06-13 06:07:00', '2017-06-13 06:07:00'),
(10, 4, '2017-06-13 17:03:55', '2017-06-13 17:03:55'),
(11, 3, '2017-06-14 20:05:06', '2017-06-14 20:05:06'),
(12, 5, '2017-06-22 21:42:26', '2017-06-22 21:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 'X-1', '2017-06-01 13:01:15', '2017-06-15 02:29:48'),
(2, 'X-2', '2017-06-01 13:01:15', '2017-06-01 13:01:15'),
(3, 'X-3', '2017-06-01 13:01:15', '2017-06-01 13:01:15'),
(5, 'X-4', '2017-06-15 06:51:01', '2017-06-15 06:51:01');

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
(48, '2014_10_12_000000_create_users_table', 1),
(49, '2014_10_12_100000_create_password_resets_table', 1),
(50, '2017_03_26_055738_create_test_table', 1),
(51, '2017_05_06_023204_create_posts_table', 1),
(52, '2017_05_06_043301_add_is_admin_column_to_posts_table', 1),
(53, '2017_05_08_060010_add_deleted_column_to_posts_tables', 1),
(54, '2017_05_09_070302_add_user_id_column_to_posts_tables', 1),
(55, '2017_05_22_112949_create_table_siswaa', 1),
(56, '2017_05_22_123504_add_is_tanggal_lahir', 1),
(57, '2017_05_22_183246_create_table_datas', 1),
(58, '2017_05_30_220928_create_table_telepon', 1),
(59, '2017_06_01_000554_create_table_kelas', 1),
(60, '2017_06_03_052506_create_table_hobi', 2),
(61, '2017_06_03_052704_create_table_hobi_siswa', 2),
(62, '2017_06_03_074158_create_table_hobi_siswa', 3),
(63, '2017_06_09_121556_add_foto', 4),
(64, '2017_06_20_052752_add_level_column_to_users', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nisn` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_siswa` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama_siswa`, `jenis_kelamin`, `id_kelas`, `created_at`, `updated_at`, `tanggal_lahir`, `foto`) VALUES
(1, '9999', 'vofx gormn mifk', 'L', 2, '2017-06-01 09:07:51', '2017-06-22 19:01:58', '1991-09-09', NULL),
(4, '5656', 'invoker', 'L', 3, '2017-06-09 05:05:55', '2017-06-13 04:42:58', '1993-09-09', '20170613124258.png'),
(6, '3434', 'valar morghulis', 'P', 3, '2017-06-13 06:06:59', '2017-06-13 06:06:59', '1992-09-09', '20170613140659.PNG'),
(10, '4444', 'ghoul', 'L', 1, '2017-06-13 17:03:55', '2017-06-13 17:03:55', '1993-06-06', '20170614010355.jpg'),
(11, '9988', 'germoni finch', 'P', 2, '2017-06-14 20:05:04', '2017-06-14 20:05:04', '1992-07-07', '20170615040504.jpg'),
(12, '4455', 'mr.unix', 'L', 5, '2017-06-22 21:42:25', '2017-06-22 21:42:25', '1991-06-06', '20170623054225.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id_siswa`, `nomor_telepon`, `created_at`, `updated_at`) VALUES
(1, '089456345234', '2017-06-01 09:07:51', '2017-06-01 09:07:51'),
(4, '0777754447777', '2017-06-09 05:05:56', '2017-06-09 05:05:56'),
(6, '8989898988900', '2017-06-13 06:06:59', '2017-06-13 06:06:59'),
(10, '026567777888', '2017-06-13 17:03:55', '2017-06-13 17:03:55'),
(11, '0234494985858', '2017-06-14 20:05:06', '2017-06-14 20:05:06'),
(12, '0655666556', '2017-06-22 21:42:25', '2017-06-22 21:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$10$wXtAjCLvDLeZ/gShU8M5i.FVeVVjc6EIYkQcIu2teWtj7VhepSyhm', 'D30j0uR2uDhnjAZVpOQJwvMuMgCtzpkrmXg7nAMhhzb1a4KkV3PIToPBhzcR', '2017-06-15 09:38:37', '2017-06-15 09:38:37', 'admin'),
(4, 'qwerty', 'qwerty@gmail.com', '$2y$10$1LyRNWTNEqZ/RTcRGMJSO.kx67aT8nU7/F/e1nmQGxjV8vNs2p3tO', '1r9hRa4giAtMl8WTjIQBtsq7bK08K5thHTNvqMzXab7NTLfnOGxAsjXPiqEC', '2017-06-19 15:36:12', '2017-06-19 15:36:12', 'admin'),
(8, 'Foxx Roxy', 'asd@gmail.com', '$2y$10$N543j6h7OSmORPUfuw0Bzu36fhppmopB8FMfeitjnQ1PLLJD38hL.', 'ELhnXS5ftoylmNjWkoRTmnX0xJnGjv0T2EdkEmtpZDSuaVxE3VT01vkIsh7q', '2017-06-22 19:17:36', '2017-07-18 05:53:22', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datas_nisn_unique` (`nisn`);

--
-- Indexes for table `hobi`
--
ALTER TABLE `hobi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobi_siswa`
--
ALTER TABLE `hobi_siswa`
  ADD PRIMARY KEY (`id_siswa`,`id_hobi`),
  ADD KEY `hobi_siswa_id_siswa_index` (`id_siswa`),
  ADD KEY `hobi_siswa_id_hobi_index` (`id_hobi`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD KEY `siswa_id_kelas_foreign` (`id_kelas`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `telepon_nomor_telepon_unique` (`nomor_telepon`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datas`
--
ALTER TABLE `datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hobi`
--
ALTER TABLE `hobi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hobi_siswa`
--
ALTER TABLE `hobi_siswa`
  ADD CONSTRAINT `hobi_siswa_id_hobi_foreign` FOREIGN KEY (`id_hobi`) REFERENCES `hobi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hobi_siswa_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telepon`
--
ALTER TABLE `telepon`
  ADD CONSTRAINT `telepon_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
