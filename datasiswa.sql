-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 08:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datasiswa`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `joinsiswa`
-- (See below for the actual view)
--
CREATE TABLE `joinsiswa` (
`id` int(9)
,`nis` int(10)
,`foto` varchar(100)
,`nama` varchar(50)
,`angkatan` varchar(20)
,`id_jurusan` int(10)
,`jurusan` varchar(100)
,`email` varchar(20)
,`hp` varchar(15)
,`alamat` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(9) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `jurusan`) VALUES
(2, 'RPL'),
(3, 'TKJ'),
(4, 'TBSM'),
(5, 'TOI'),
(6, 'DKV');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(5) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `tingkat` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `mapel`, `tingkat`) VALUES
(20, 'BAHASA INDONESIA', 1),
(21, 'BAHASA INGGRIS', 2),
(22, 'BAHASA SUNDA', 3),
(23, 'MATEMATIKA', 4),
(24, 'PRAKARYA', 5),
(25, 'SENI BUDAYA', 6),
(26, 'KIMIA', 7),
(27, 'FISIKA', 7),
(28, 'PKK', 9),
(29, 'PPKN', 10),
(30, 'PWPB', 11),
(31, 'PBO', 12),
(32, 'BASIS DATA', 13),
(33, 'PPL', 14),
(34, 'PENJASKES', 16);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(9) NOT NULL,
  `nis` int(10) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `angkatan` varchar(20) NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `foto`, `nama`, `angkatan`, `id_jurusan`, `email`, `hp`, `alamat`) VALUES
(1, 5, 'silvi.jpg', 'silvi', '2020', 1, 'silviivii@gmail.com', '085708171404', 'kp.cidahu rt 2/rw 3'),
(37, 20276063, 'WhatsApp_Image_2023-04-03_at_12_33_24.jpeg', 'MUHTAR AZIZ', '2020', 2, 'muhtar@gmail.com', '087879060475', 'KP.CIKAREO RT/06 RW/03'),
(38, 20276064, 'WhatsApp_Image_2023-04-03_at_12_33_27_(1).jpeg', 'NENG SILVI', '2020', 2, 'silvi@gmail.com', '087656754456', 'KP.CIDAHU RT/02 RW/03'),
(39, 20276065, 'WhatsApp_Image_2023-04-03_at_12_33_30.jpeg', 'RAYSA SITI AISYAH', '2020', 2, 'raysa@gmail.com', '087675434432', 'KP.PELANG RT/01 RW/06'),
(40, 20276066, 'WhatsApp_Image_2023-04-03_at_12_33_31.jpeg', 'AQMARINA FALAHIA', '2020', 2, 'aqma@gmail.com', '087676565433', 'KP.LEUWIANYAR RT/04 RW/21'),
(41, 20276067, 'WhatsApp_Image_2023-04-03_at_12_33_34.jpeg', 'RISA MAULANI', '2020', 2, 'risa@gmail.com', '085765454330', 'KP.BEBEDAHAN 1 RT/01 RW/08'),
(42, 20276068, 'WhatsApp_Image_2023-04-03_at_12_33_27.jpeg', 'LIA AULIA', '2020', 2, 'lia@gmail.com', '085546543433', 'KP.SARIPIN');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(9) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure for view `joinsiswa`
--
DROP TABLE IF EXISTS `joinsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joinsiswa`  AS SELECT `a`.`id` AS `id`, `a`.`nis` AS `nis`, `a`.`foto` AS `foto`, `a`.`nama` AS `nama`, `a`.`angkatan` AS `angkatan`, `a`.`id_jurusan` AS `id_jurusan`, `b`.`jurusan` AS `jurusan`, `a`.`email` AS `email`, `a`.`hp` AS `hp`, `a`.`alamat` AS `alamat` FROM (`siswa` `a` join `jurusan` `b` on(`a`.`id_jurusan` = `b`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
