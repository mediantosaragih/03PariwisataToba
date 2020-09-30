-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 07:42 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$0X4nHoX8ae6gWxEgx69MYua35QF9HOW42J5n3CrmRvWmjLXLPPD2.', NULL, NULL),
(10, 'admin', 'admin', '2020-06-11 10:03:30', '2020-06-11 10:03:30'),
(11, 'admin', 'admin', '2020-06-11 10:04:05', '2020-06-11 10:04:05'),
(12, 'admin', 'admin', '2020-06-11 10:04:40', '2020-06-11 10:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id` int(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id`, `gambar`, `nama`, `kategori`, `deskripsi`) VALUES
(5, '447907989.jpg', 'Museum TB Silalahi', 'Destinasi', '-'),
(6, '59915405.jpg', 'Bukit Gibeon', 'Destinasi', '-');

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE `kuliner` (
  `id` int(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliner`
--

INSERT INTO `kuliner` (`id`, `gambar`, `nama`, `kategori`, `deskripsi`) VALUES
(3, '292669350.jpg', 'Hutanta Coffee', 'Kuliner', '-'),
(4, '542724507.jpg', 'Green\'s Cafe', 'Kuliner', '-');

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
(1, '2020_06_11_125752_create_admin_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oleh_oleh`
--

CREATE TABLE `oleh_oleh` (
  `id` int(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oleh_oleh`
--

INSERT INTO `oleh_oleh` (`id`, `gambar`, `nama`, `kategori`, `deskripsi`) VALUES
(3, '840435410.jpg', 'Pasar Tradisional', 'Pusat Oleh Oleh', '-'),
(4, '451014280.jpg', 'batikta', 'Pusat Oleh Oleh', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penginapan`
--

CREATE TABLE `penginapan` (
  `id` int(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penginapan`
--

INSERT INTO `penginapan` (`id`, `gambar`, `nama`, `kategori`, `deskripsi`) VALUES
(3, '881909986.jpg', 'Hotel Serenauli', 'Penginapan', '-'),
(5, '993360179.JPG', 'Hotel Tiara Bunga', 'Penginapan', '-');

-- --------------------------------------------------------

--
-- Table structure for table `transportasi`
--

CREATE TABLE `transportasi` (
  `id` int(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportasi`
--

INSERT INTO `transportasi` (`id`, `gambar`, `nama`, `kategori`, `deskripsi`) VALUES
(4, '279633260.jpg', 'Mobil Travel', 'Transportasi', '-'),
(5, '731012692.jpg', 'KBT', 'Transportasi', '-');

-- --------------------------------------------------------

--
-- Table structure for table `umum`
--

CREATE TABLE `umum` (
  `id` int(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umum`
--

INSERT INTO `umum` (`id`, `gambar`, `nama`, `kategori`, `deskripsi`) VALUES
(4, '967219611.jpg', 'HKBP Balige', 'Layanan Umum', '-'),
(5, '165060552.jpg', 'Bank BRI', 'Layanan Umum', '-'),
(6, '952651579.jpg', 'Kantor Pos Balige', 'Layanan Umum', '-'),
(7, '362671032.jpg', 'Kantor Polisi', 'Layanan Umum', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oleh_oleh`
--
ALTER TABLE `oleh_oleh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penginapan`
--
ALTER TABLE `penginapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportasi`
--
ALTER TABLE `transportasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umum`
--
ALTER TABLE `umum`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oleh_oleh`
--
ALTER TABLE `oleh_oleh`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penginapan`
--
ALTER TABLE `penginapan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transportasi`
--
ALTER TABLE `transportasi`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `umum`
--
ALTER TABLE `umum`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
