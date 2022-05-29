-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 09:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `howdy_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `date`, `link`, `description`, `images`, `category`, `news`, `created_at`, `updated_at`) VALUES
(1, 'Endek Bali diharap kian populer di dunia', 'Sat, 28 May 2022 10:50:03 +0700', 'https://www.antaranews.com/berita/2906701/endek-bali-diharap-kian-populer-di-dunia', 'Endek Bali diharap kian populer di dunia', 'https://img.antaranews.com/cache/800x533/2022/05/28/antarafoto-penjualan-tenun-endek-meningkat-220221-fik-1.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:51', '2022-05-28 05:38:51'),
(2, 'Havaianas perkenalkan koleksi musim panas 2022 \"Slim Neutral\"', 'Wed, 25 May 2022 15:12:57 +0700', 'https://www.antaranews.com/berita/2901277/havaianas-perkenalkan-koleksi-musim-panas-2022-slim-neutral', 'Havaianas perkenalkan koleksi musim panas 2022 \"Slim Neutral\"', 'https://img.antaranews.com/cache/800x533/2022/05/25/PicsArt_05-25-03.08.54.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:51', '2022-05-28 05:38:51'),
(3, 'Kolaborasi jam tangan dan permen lolipop hasilkan warna menggemaskan', 'Wed, 25 May 2022 06:07:16 +0700', 'https://www.antaranews.com/berita/2900389/kolaborasi-jam-tangan-dan-permen-lolipop-hasilkan-warna-menggemaskan', 'Kolaborasi jam tangan dan permen lolipop hasilkan warna menggemaskan', 'https://img.antaranews.com/cache/800x533/2022/05/25/D1-Milano-Chupa-Chups-Ambient-Group-04.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:51', '2022-05-28 05:38:51'),
(4, 'Label W.ESSENTILS rilis koleksi streetwear Pokmon', 'Tue, 24 May 2022 05:25:45 +0700', 'https://www.antaranews.com/berita/2897881/label-wessentils-rilis-koleksi-streetwear-pokmon', 'Label W.ESSENTILS rilis koleksi streetwear Pokmon', 'https://img.antaranews.com/cache/800x533/2022/05/24/pokemon.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:51', '2022-05-28 05:38:51'),
(5, 'Road to Jakarta Moslem Fashion Week digelar', 'Mon, 23 May 2022 22:36:38 +0700', 'https://www.antaranews.com/berita/2897705/road-to-jakarta-moslem-fashion-week-digelar', 'Road to Jakarta Moslem Fashion Week digelar', 'https://img.antaranews.com/cache/800x533/2022/05/23/WhatsApp-Image-2022-05-23-at-8.42.14-PM.v1.cropped.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:51', '2022-05-28 05:38:51'),
(6, 'Mustika Ratu luncurkan \"face palette\" kolaborasi dengan Bubah Alfian', 'Sun, 22 May 2022 16:55:26 +0700', 'https://www.antaranews.com/berita/2895025/mustika-ratu-luncurkan-face-palette-kolaborasi-dengan-bubah-alfian', 'Mustika Ratu luncurkan \"face palette\" kolaborasi dengan Bubah Alfian', 'https://img.antaranews.com/cache/800x533/2022/05/22/WhatsApp-Image-2022-05-22-at-2.15.55-PM.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(7, 'Pameran \"sneaker\" Virgil Abloh hadir di New York', 'Sun, 22 May 2022 09:59:28 +0700', 'https://www.antaranews.com/berita/2894473/pameran-sneaker-virgil-abloh-hadir-di-new-york', 'Pameran \"sneaker\" Virgil Abloh hadir di New York', 'https://img.antaranews.com/cache/800x533/2022/05/22/XAQERC5HNBLUDI64TNMRSVK224.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(8, 'Converse kolaborasi dengan A-COLD-WALL hadirkan Aeon Active CX', 'Thu, 19 May 2022 12:20:23 +0700', 'https://www.antaranews.com/berita/2889029/converse-kolaborasi-dengan-a-cold-wall-hadirkan-aeon-active-cx', 'Converse kolaborasi dengan A-COLD-WALL hadirkan Aeon Active CX', 'https://img.antaranews.com/cache/800x533/2022/05/19/Photo8_CONVERSE_ACW_LIFESTYLE_AEON_A00679C_230_HF1_16x9.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(9, 'PUMA rilis kerudung olahraga untuk para \"hijaber\"', 'Thu, 19 May 2022 08:25:33 +0700', 'https://www.antaranews.com/berita/2888597/puma-rilis-kerudung-olahraga-untuk-para-hijaber', 'PUMA rilis kerudung olahraga untuk para \"hijaber\"', 'https://img.antaranews.com/cache/800x533/2022/05/19/hijab-puma.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(10, 'Rossa bakal pakai busana rancangan Iris van Herpen di konser mendatang', 'Tue, 17 May 2022 19:02:13 +0700', 'https://www.antaranews.com/berita/2885025/rossa-bakal-pakai-busana-rancangan-iris-van-herpen-di-konser-mendatang', 'Rossa bakal pakai busana rancangan Iris van Herpen di konser mendatang', 'https://img.antaranews.com/cache/800x533/2022/05/17/WhatsApp-Image-2022-05-17-at-6.49.02-PM.jpeg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(11, 'Tips pertahankan keuangan usaha fesyen usai lonjakan omzet Ramadhan', 'Mon, 16 May 2022 06:58:12 +0700', 'https://www.antaranews.com/berita/2881825/tips-pertahankan-keuangan-usaha-fesyen-usai-lonjakan-omzet-ramadhan', 'Tips pertahankan keuangan usaha fesyen usai lonjakan omzet Ramadhan', 'https://img.antaranews.com/cache/800x533/2022/05/16/Tips-Mempertahankan-Keuangan-Usaha-Fesyen-Usai-Lonjakan-Omzet-saat-Ramadan-dan-Idul-Fitri_Shutterstock1.jpeg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(12, 'Kolaborasi Lazy Oaf x Crocs hadirkan koleksi unik', 'Sun, 15 May 2022 10:07:33 +0700', 'https://www.antaranews.com/berita/2880801/kolaborasi-lazy-oaf-x-crocs-hadirkan-koleksi-unik', 'Kolaborasi Lazy Oaf x Crocs hadirkan koleksi unik', 'https://img.antaranews.com/cache/800x533/2022/05/15/newFile-2_copy_1024x682.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(13, 'Perubahan gaya hidup yang berikan dampak nyata bagi bumi', 'Wed, 11 May 2022 13:45:14 +0700', 'https://www.antaranews.com/berita/2872897/perubahan-gaya-hidup-yang-berikan-dampak-nyata-bagi-bumi', 'Perubahan gaya hidup yang berikan dampak nyata bagi bumi', 'https://img.antaranews.com/cache/800x533/2022/05/11/environmental-protection-683437_1280.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(14, 'EIGER hadirkan komunitas digital melalui koleksi NFT pertamanya', 'Wed, 11 May 2022 09:51:22 +0700', 'https://www.antaranews.com/berita/2872433/eiger-hadirkan-komunitas-digital-melalui-koleksi-nft-pertamanya', 'EIGER hadirkan komunitas digital melalui koleksi NFT pertamanya', 'https://img.antaranews.com/cache/800x533/2022/05/11/WhatsApp-Image-2022-05-11-at-9.36.39-AM-1.jpeg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(15, 'Barbie luncurkan boneka seri desainer Vera Wang', 'Tue, 10 May 2022 11:12:35 +0700', 'https://www.antaranews.com/berita/2870361/barbie-luncurkan-boneka-seri-desainer-vera-wang', 'Barbie luncurkan boneka seri desainer Vera Wang', 'https://img.antaranews.com/cache/800x533/2022/05/10/newFile-6_copy_1024x683.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(16, 'Beyonce tak hadiri Met Gala 2022, alasannya?', 'Tue, 03 May 2022 15:06:20 +0700', 'https://www.antaranews.com/berita/2859549/beyonce-tak-hadiri-met-gala-2022-alasannya', 'Beyonce tak hadiri Met Gala 2022, alasannya?', 'https://img.antaranews.com/cache/800x533/2020/05/31/beyonce.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(17, 'Gigi Hadid serba merah di Met Gala 2022', 'Tue, 03 May 2022 14:46:06 +0700', 'https://www.antaranews.com/berita/2859529/gigi-hadid-serba-merah-di-met-gala-2022', 'Gigi Hadid serba merah di Met Gala 2022', 'https://img.antaranews.com/cache/800x533/2022/05/03/Picsart_22-05-03_14-26-03-964.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(18, 'Kim Kardashian pakai gaun ikonik Marilyn Monroe di Met Gala 2022', 'Tue, 03 May 2022 12:23:02 +0700', 'https://www.antaranews.com/berita/2859385/kim-kardashian-pakai-gaun-ikonik-marilyn-monroe-di-met-gala-2022', 'Kim Kardashian pakai gaun ikonik Marilyn Monroe di Met Gala 2022', 'https://img.antaranews.com/cache/800x533/2022/05/03/CM_Photogrid_1651554512093_copy_1024x683.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(19, 'Serba-serbi Met Gala 2022, presenter hingga tema acara', 'Tue, 03 May 2022 12:05:22 +0700', 'https://www.antaranews.com/berita/2859365/serba-serbi-met-gala-2022-presenter-hingga-tema-acara', 'Serba-serbi Met Gala 2022, presenter hingga tema acara', 'https://img.antaranews.com/cache/800x533/2022/05/03/2022-05-03T013540Z_1534945727_HP1EI5304FCAN_RTRMADP_3_FASHION-MET-GALA_1.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52'),
(20, 'Tiga tips memilih kerudung untuk olahraga', 'Mon, 02 May 2022 13:47:12 +0700', 'https://www.antaranews.com/berita/2858633/tiga-tips-memilih-kerudung-untuk-olahraga', 'Tiga tips memilih kerudung untuk olahraga', 'https://img.antaranews.com/cache/800x533/2022/05/02/Zinc-Hijab-x-Noore-Final.jpg', 'Fashion', 'antaranews.com', '2022-05-28 05:38:52', '2022-05-28 05:38:52');

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `image`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Jaket Denim', 'denim_jacket.jpg', 55000, 1, 'Ukuran Jaket 2.10 x 1.10', '2022-05-25 08:32:06', '2022-05-26 02:08:03'),
(2, 'Hoodie', 'hoodie.jpg', 60000, 3, 'Ukuran Hoodie 2.10 x 1.10', '2022-05-25 08:32:06', '2022-05-26 02:20:12'),
(3, 'Jaket Kulit', 'leather_jacket.jpg', 70000, 4, 'Ukuran Jaket: 2.10 x 1.10', '2022-05-25 08:36:33', '2022-05-26 04:51:24'),
(4, 'Sweater', 'sweater.jpg', 50000, 5, 'Ukuran Sweater: 2.10 x 1.10', '2022-05-25 08:37:42', '2022-05-26 19:26:23'),
(5, 'Peacoat', 'peacoat.jpg', 100000, 3, 'Ukuran Mantel 2.10 x 1.10', '2022-05-25 08:38:31', '2022-05-25 08:38:31');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_23_144836_create_items_table', 1),
(7, '2022_05_23_145543_create_order_details_table', 1),
(9, '2022_05_24_121840_create_articles_table', 2),
(11, '2022_05_23_145351_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_code` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date`, `status`, `unique_code`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-26', '1', 214, 100000, '2022-05-26 07:22:02', '2022-05-26 07:50:30'),
(2, 1, '2022-05-26', '1', 124, 50000, '2022-05-26 08:28:02', '2022-05-26 08:30:16'),
(3, 1, '2022-05-26', '1', 923, 50000, '2022-05-26 08:31:26', '2022-05-26 08:41:51'),
(4, 1, '2022-05-27', '1', 638, 50000, '2022-05-26 19:16:30', '2022-05-26 19:26:23'),
(5, 1, '2022-05-28', '0', 629, 50000, '2022-05-28 05:39:09', '2022-05-28 05:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `item_id`, `order_id`, `total`, `subtotal`, `created_at`, `updated_at`) VALUES
(12, 4, 1, 2, 100000, '2022-05-26 07:22:02', '2022-05-26 07:22:02'),
(13, 4, 2, 1, 50000, '2022-05-26 08:28:02', '2022-05-26 08:28:02'),
(14, 4, 3, 1, 50000, '2022-05-26 08:31:26', '2022-05-26 08:31:26'),
(15, 4, 4, 1, 50000, '2022-05-26 19:16:31', '2022-05-26 19:16:31'),
(16, 4, 5, 1, 50000, '2022-05-28 05:39:09', '2022-05-28 05:39:09');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'William', 'will@mail.com', NULL, '$2y$10$9HAkoKLDM8TX/lxozJj3ZuzmZbun/cEoIYyvv4HnOBc5we/ThaUu2', 'Jl. Suka Makmur Jaya Sentosa Abadi', '08123920405', NULL, '2022-05-23 18:03:59', '2022-05-26 05:50:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
