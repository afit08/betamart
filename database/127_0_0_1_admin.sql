-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 06:35 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `admin`;

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` varchar(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `input`
--

INSERT INTO `input` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(54, 'Kopi Kapal Api Spesial 165g', 'Original', 'Foods and Drinks', '11000', 50, 'kopi12.jpg'),
(55, 'Kurma', 'kurma arab', 'Fruits', '80000', 30, 'kurma11.jpeg'),
(56, 'Pharmaton Formula', 'obat multivitamin', 'Medical', '30000', 50, 'pharmaton11.jpg'),
(57, 'Magicom Cosmos', '', 'Home Living', '120000', 70, 'cosmos11.jpg'),
(59, 'Susu Ultra Putih', 'Susu segar dari peternak sapi pilihan', 'Foods and Drinks', '10000', 80, 'susu12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 13, 5, 'nm_barang', 1, 0, ''),
(2, 14, 8, 'Dompet', 1, 200000, ''),
(3, 14, 9, 'Jam Tangan Casio', 1, 250000, ''),
(4, 25, 8, 'Dompet', 1, 200000, ''),
(5, 30, 9, 'Jam Tangan Casio', 1, 250000, ''),
(6, 34, 35, 'YAMAHA Gitar Akustik Elektrik CPX500II - Black', 1, 3130000, ''),
(7, 34, 8, 'Dompet', 1, 200000, ''),
(8, 34, 15, 'Mouse Gaming G203', 1, 250000, ''),
(9, 34, 18, 'Mousepad Gaming NYK', 1, 128000, ''),
(10, 34, 25, 'Laptop HP 15 Ryzen R3', 1, 17000000, ''),
(11, 36, 36, 'Yamaha FS-100C NT', 1, 1380000, ''),
(12, 37, 9, 'Jam Tangan Casio', 1, 250000, ''),
(13, 37, 24, 'OPPO F7', 1, 4000000, ''),
(14, 39, 9, 'Jam Tangan Casio', 2, 250000, ''),
(15, 40, 9, 'Jam Tangan Casio', 1, 250000, ''),
(16, 1, 55, 'Kurma', 1, 90000, ''),
(17, 1, 54, 'Kopi Kapal Api Spesial 165g', 1, 11000, ''),
(18, 2, 59, 'Susu Ultra Putih', 1, 10000, ''),
(19, 2, 54, 'Kopi Kapal Api Spesial 165g', 1, 11000, ''),
(20, 3, 55, 'Kurma', 1, 80000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Syafitriawan Akbar Rabbani', 'jl nurul hidayah', '2020-06-24 22:21:26', '2020-06-25 22:21:26'),
(2, 'Acep', 'Jl. Barokah', '2020-06-25 18:48:13', '2020-06-26 18:48:13'),
(3, '', '', '2020-07-13 11:14:36', '2020-07-14 11:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Syafitriawan', 'afit', '321', 2),
(4, 'afit', 'afit', '112', 2),
(5, 'Furqon', 'furqon20', '12345', 2),
(6, 'hamba Allah', 'ais', '20', 2),
(7, 'admin', 'admin', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `input`
--
ALTER TABLE `input`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
