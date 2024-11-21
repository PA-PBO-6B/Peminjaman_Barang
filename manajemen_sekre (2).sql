-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2024 at 04:59 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manajemen_sekre`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_biro`
--

CREATE TABLE `admin_biro` (
  `NIM_mhs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_mhs` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Pass_mhs` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `no_telp_mhs` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `Jabatan_fungsi` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_biro`
--

INSERT INTO `admin_biro` (`NIM_mhs`, `Nama_mhs`, `Pass_mhs`, `no_telp_mhs`, `Jabatan_fungsi`) VALUES
('2309116080', 'Vincenz', '12345678', '085393367878', 'Admin ');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_inforsa`
--

CREATE TABLE `anggota_inforsa` (
  `NIM_mhs` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_mhs` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Pass_mhs` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `no_telp_mhs` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `departemen_mhs` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_inforsa`
--

INSERT INTO `anggota_inforsa` (`NIM_mhs`, `Nama_mhs`, `Pass_mhs`, `no_telp_mhs`, `departemen_mhs`) VALUES
('2309116060', 'Ucup', '1234567899', '085393367889', 'Biro '),
('2309116096', 'Jaki Atsal', '123456789', '085321550629', 'Biro '),
('2309116099', 'Bambang', '12345', '085321550666', 'Relekat');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Kode_brg` int NOT NULL,
  `Jenis_brg` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Spesifikasi_brg` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Stok_brg` int NOT NULL,
  `Status_brg` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Kode_brg`, `Jenis_brg`, `Spesifikasi_brg`, `Stok_brg`, `Status_brg`) VALUES
(1, 'Bendera', 'Bendera Inforsa', 1, 'Tidak ada'),
(6, 'Spidol', 'boardmarker hitam', 11, 'Tersedia'),
(7, 'Pensil', 'Faber Castell', 20, 'Tersedia'),
(8, 'Pulpen', 'Standard', 9, 'Tersedia'),
(11, 'Bom', 'C4', 1, 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM_mhs` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_mhs` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Pass_mhs` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `no_telp_mhs` varchar(13) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM_mhs`, `Nama_mhs`, `Pass_mhs`, `no_telp_mhs`) VALUES
('2309116060', 'Ucup', '1234567899', '085393367889'),
('2309116080', 'Vincenz', '12345678', '085393367878'),
('2309116096', 'Jaki Atsal', '123456789', '085321550629'),
('2309116099', 'Bambang', '12345', '085321550666');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_Peminjaman` int NOT NULL,
  `Kode_brg` int NOT NULL,
  `Stok_brg` int NOT NULL,
  `NIM_mhs` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `Status_peminjaman` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_Peminjaman`, `Kode_brg`, `Stok_brg`, `NIM_mhs`, `tanggal_pinjam`, `tanggal_kembali`, `Status_peminjaman`) VALUES
(1, 8, 2, '2309116096', '2024-11-18', '2024-11-20', 'Selesai'),
(3, 6, 1, '2309116096', '2024-11-07', '2024-11-16', 'Menunggu'),
(4, 8, 1, '2309116099', '2024-11-01', '2024-11-02', 'Menunggu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_biro`
--
ALTER TABLE `admin_biro`
  ADD PRIMARY KEY (`NIM_mhs`),
  ADD KEY `Nama_mhs_admin` (`Nama_mhs`),
  ADD KEY `no_telp_mhs_admin` (`no_telp_mhs`),
  ADD KEY `Pass_mhs_admin` (`Pass_mhs`);

--
-- Indexes for table `anggota_inforsa`
--
ALTER TABLE `anggota_inforsa`
  ADD PRIMARY KEY (`NIM_mhs`),
  ADD KEY `Nama_mhs_inforsa` (`Nama_mhs`),
  ADD KEY `no_telp_mhs_inforsa` (`no_telp_mhs`),
  ADD KEY `Pass_mhs_inforsa` (`Pass_mhs`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_brg`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM_mhs`),
  ADD UNIQUE KEY `Nama_mhs` (`Nama_mhs`),
  ADD UNIQUE KEY `no_telp_mhs` (`no_telp_mhs`),
  ADD UNIQUE KEY `Pass_mhs` (`Pass_mhs`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_Peminjaman`),
  ADD KEY `Kode_brg_pinjam` (`Kode_brg`),
  ADD KEY `Kuantitas` (`Stok_brg`),
  ADD KEY `NIM_mhs_anggota` (`NIM_mhs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `ID_Peminjaman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_biro`
--
ALTER TABLE `admin_biro`
  ADD CONSTRAINT `Nama_mhs_admin` FOREIGN KEY (`Nama_mhs`) REFERENCES `mahasiswa` (`Nama_mhs`),
  ADD CONSTRAINT `NIM_mhs_admin` FOREIGN KEY (`NIM_mhs`) REFERENCES `mahasiswa` (`NIM_mhs`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `no_telp_mhs_admin` FOREIGN KEY (`no_telp_mhs`) REFERENCES `mahasiswa` (`no_telp_mhs`),
  ADD CONSTRAINT `Pass_mhs_admin` FOREIGN KEY (`Pass_mhs`) REFERENCES `mahasiswa` (`Pass_mhs`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `anggota_inforsa`
--
ALTER TABLE `anggota_inforsa`
  ADD CONSTRAINT `Nama_mhs_inforsa` FOREIGN KEY (`Nama_mhs`) REFERENCES `mahasiswa` (`Nama_mhs`),
  ADD CONSTRAINT `Nim_Mahasiswa_Inforsa` FOREIGN KEY (`NIM_mhs`) REFERENCES `mahasiswa` (`NIM_mhs`),
  ADD CONSTRAINT `no_telp_mhs_inforsa` FOREIGN KEY (`no_telp_mhs`) REFERENCES `mahasiswa` (`no_telp_mhs`),
  ADD CONSTRAINT `Pass_mhs_inforsa` FOREIGN KEY (`Pass_mhs`) REFERENCES `mahasiswa` (`Pass_mhs`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `Kode_brg_pinjam` FOREIGN KEY (`Kode_brg`) REFERENCES `barang` (`Kode_brg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `NIM_mhs_anggota` FOREIGN KEY (`NIM_mhs`) REFERENCES `anggota_inforsa` (`NIM_mhs`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
