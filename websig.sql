-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 07:35 AM
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
-- Database: `websig`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3401', 'KULON PROGO', '-7.7993169657013,110.12952672553625', 446019, 586.00);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3401010', 1, 'TEMON', 27480, 3630.00),
('3401020', 1, 'WATES', 49395, 3200.00),
('3401030', 1, 'PANJATAN', 37096, 4459.00),
('3401040', 1, 'GALUR', 31720, 3291.00),
('3401050', 1, 'LENDAH', 40347, 3559.00),
('3401060', 1, 'SENTOLO', 49802, 5265.00),
('3401070', 1, 'PENGASIH', 50726, 6166.00),
('3401080', 1, 'KOKAP', 32234, 7380.00),
('3401090', 1, 'GIRIMULYO', 22822, 5490.00),
('3401100', 1, 'NANGGULAN', 30184, 3961.00),
('3401110', 1, 'KALIBAWANG', 22626, 53.00),
('3401120', 1, 'SAMIGALUH', 426420, 6929.00);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20402590, '3401090', 'SD NEGERI 2 SOKOMOYO', 'Gunung Kelir', 'NEGERI', 'SD', '-7.7693000,110.1179000'),
(20402718, '3401040', 'SMP NEGERI 1 GALUR', 'Jl. Raya Brosot no. 20', 'NEGERI', 'SMP', '-7.9403000,110.2362000'),
(20402769, '3401050', 'SMP NEGERI 2 LENDAH', 'Ngentakrejo', 'NEGERI', 'SMP', '-7.8953000,110.2682000'),
(20402773, '3401120', 'SMP NEGERI 2 SAMIGALUH', 'Trayu', 'NEGERI', 'SMP', '-7.6603000,110.1576000'),
(20402806, '3401090', 'SMA NEGERI 1 GIRIMULYO', 'Grigak', 'NEGERI', 'SMA', '-7.7730000,110.1921000'),
(20402869, '3401060', 'SD MUHAMMADIYAH KALISOKA', 'Kalisoko', 'SWASTA', 'SD', '-7.8866000,110.2404000'),
(20402971, '3401030', 'SD MUH BUGEL', 'Pedukuhan II', 'SWASTA', 'SD', '-7.9450000,110.1700000'),
(20402973, '3401100', 'SD KANISIUS KENTENG', 'Kenteng', 'SWASTA', 'SD', '-7.7526000,110.2077000'),
(20403089, '3401010', 'SD NEGERI DEMEN', 'DEMEN', 'NEGERI', 'SD', '-7.8857000,110.0985000'),
(20403580, '3401020', 'SD KANISIUS WATES', 'Wates', 'SWASTA', 'SD', '-7.8605000,110.1553000'),
(20404075, '3401070', 'SMK YPKK 2 KULON PROGO', 'JL. CLERENG', 'SWASTA', 'SMK', '-7.8356000,110.1652000'),
(20409725, '3401080', 'SMK NEGERI 1 KOKAP', 'JL. SELO TIMUR, HARGOREJO, KOKAP', 'NEGERI', 'SMK', '-7.8422000,110.1010000'),
(69726028, '3401110', 'SDIT IBNU ABBAS III', 'Ngipikrejo', 'SWASTA', 'SD', '-7.7140000,110.2150000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
