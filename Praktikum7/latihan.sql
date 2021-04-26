-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 02:20 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kata sandi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `kata sandi`) VALUES
(1, 'putri', 123),
(1, 'putri', 123);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jkel` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(20) DEFAULT NULL,
  `pesan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `jkel`, `email`, `alamat`, `kota`, `pesan`) VALUES
(2, 'putri', 'perempuan', 'putrilstari12@gmail.com', 'panjunan', 'SIDOARJO', 'baik'),
(3, 'INAYAH WULANDARI', 'PEREMPUAN', 'wulan@gmail', 'GEDANGAN', 'SIDOARJO', 'SANGAT BAIK'),
(9, 'AISYA APRILIYA', 'PEREMPUAN', 'aisya@gmail.com', 'GAJAH MADA', 'SURABAYA', 'HALO'),
(10, 'irham', 'laki laki', 'irham@gmail.com', 'radenpatah', 'YOGYAKARTA', 'salam kenal'),
(11, 'salwa', 'perempuan', 'salwa@gmail.com', 'balong', 'MALANG', 'haiii');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(13) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `id_mahasiswa`, `nama`, `jenis_kelamin`, `jurusan`, `alamat`) VALUES
('TI102132', 1, 'NURIS AKBAR', 'L', 'TEKNIK INFORMATIKA', 'BANDA ACEH'),
('TI102133', 2, 'MUHAMMAD HAFIDZ MUZAKI', 'L', 'TEKNIK ELEKTRO', 'BANDUNG'),
('TI102134', 3, 'NURIS AKBAR', 'P', 'REKAMEDIS', 'CIMAHI'),
('TI102135', 4, 'PUTRI LESTARI', 'P', 'SISTEM INFORMASI', 'SIDOARJO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
