-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 08:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokaku`
--

-- --------------------------------------------------------

--
-- Table structure for table `baju`
--

CREATE TABLE `baju` (
  `idbaju` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodebaju` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baju`
--

INSERT INTO `baju` (`idbaju`, `gambar`, `kodebaju`, `nama`, `harga`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(10, '1624896297_baju1.jpg', 'KB0402', 'White Nike Shirt', 59000, 13, 'Kaos ini cocok digunakan saat panas, karena menyerap keringat.', NULL, NULL),
(19, '1624896696_baju2.jpg', 'KB0354', 'White Shirt Comfort', 20000, 19, 'Kaos ini cocok digunakan saat panas, karena menyerap keringat', NULL, NULL),
(20, '1624896727_baju3.jpg', 'KB0130', 'Black  Shirt', 59000, 5, 'Kaos ini cocok digunakan saat panas, karena menyerap keringat', NULL, NULL),
(21, '1624896748_baju4.jpg', 'KB0941', 'Enjoy Way', 15000, 15, 'Kaos ini cocok digunakan saat panas, karena menyerap keringat', NULL, NULL),
(22, '1624896781_baju5.jpg', 'KB0562', 'Pink Boy Shirt', 35000, 8, 'Kaos ini cocok digunakan saat panas, karena menyerap keringat', NULL, NULL),
(23, '1624896810_baju9.jpeg', 'KB0668', 'Awake Up', 19000, 11, 'Kaos ini cocok digunakan saat panas, karena menyerap keringat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodebaju` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `biaya` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `kodepembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `userid`, `kodepembayaran`, `bukti`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'KP0648', '1624836454_buktipembayaran.jpg', 'belum disetujui', '2021-06-27 16:27:34', '2021-06-27 16:27:34'),
(2, 1, 'KP0388', '1624837707_buktipembayaran.jpg', 'belum disetujui', '2021-06-27 16:48:27', '2021-06-27 16:48:27'),
(3, 1, 'KP0535', '1624847762_buktipembayaran.jpg', 'belum disetujui', '2021-06-27 19:36:02', '2021-06-27 19:36:02'),
(4, 1, 'KP0839', '1624848298_buktipembayaran.jpg', 'belum disetujui', '2021-06-27 19:44:58', '2021-06-27 19:44:58'),
(5, 1, 'PC0476', '1624849027_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(6, 1, 'PC0857', '1624849072_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(7, 1, 'PC0641', '1624849097_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(8, 1, 'PC0494', '1624849117_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(9, 1, 'PC0976', '1624849141_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(10, 1, 'PC0239', '1624897639_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(11, 1, 'PC0311', '1624897751_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(12, 1, 'PC0231', '1624898580_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(13, 1, 'PC0090', '1624898722_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(14, 1, 'PC0196', '1624899259_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(15, 1, 'PC0078', '1624899289_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(16, 1, 'PC0595', '1624899460_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(17, 1, 'PC0895', '1624899475_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(18, 1, 'PC0208', '1624899560_buktipembayaran.jpg', 'belum valid', NULL, NULL),
(19, 2, 'PC0134', '1624900913_buktipembayaran.jpg', 'belum valid', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_26_123729_baju', 1),
(7, '2014_10_12_000000_create_users_table', 2),
(9, '2021_06_27_221140_cart', 3),
(10, '2021_06_27_231131_checkout', 4),
(11, '2021_06_27_231746_transaksi', 5);

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
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodebaju` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `biaya` bigint(20) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `userid`, `kodepembayaran`, `kodebaju`, `jumlah`, `biaya`, `status`, `tanggal`, `created_at`, `updated_at`) VALUES
(5, '2', 'PC0134', 'KB0130', 3, 177000, 'sudah dikirim', '2021-06-28', '2021-06-28 10:21:53', '2021-06-28 10:38:26'),
(6, '2', 'PC0134', 'KB0668', 3, 57000, 'sudah dikirim', '2021-07-28', '2021-06-28 10:21:53', '2021-06-28 10:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `nama`, `level`, `alamat`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pembeli Satu', 'costumer', 'Rumah 1', 'pembeli1@gmail.com', NULL, '$2y$10$ELwuudCm0D8Mgr7Yj0sDVOcIA1nEz2PKd.P7Wc1VJ0JY2ktfx0/Ce', NULL, '2021-06-28 09:16:04', '2021-06-28 09:16:04'),
(2, 'Pembeli Dua', 'costumer', 'Rumah 2', 'pembeli2@gmail.com', NULL, '$2y$10$3mpOYwhUOCeJsKjRspH/Xe99A5psUaqGdwq6jwxaOIQvI2SX9LbXm', NULL, '2021-06-28 09:18:39', '2021-06-28 09:18:39'),
(3, 'Pembeli Tiga', 'costumer', 'Rumah Tiga', 'pembeli3@gmail.com', NULL, '$2y$10$eNXv77Dg.OjYWxYOGsIGsedWwUYciEh3ggk/nMzhAwRsQVHq7w5UG', NULL, '2021-06-28 09:19:04', '2021-06-28 09:19:04'),
(4, 'admin', 'admin', 'Rumah admin', 'admin@gmail.com', NULL, '$2y$10$ixShk6KBkC58K86ojUPf9OPUuD4ZEHYA5kquMpEEJ.MQ2ktLTHG2i', NULL, '2021-06-28 09:22:21', '2021-06-28 09:22:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baju`
--
ALTER TABLE `baju`
  ADD PRIMARY KEY (`idbaju`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
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
-- AUTO_INCREMENT for table `baju`
--
ALTER TABLE `baju`
  MODIFY `idbaju` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
