-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2025 pada 09.23
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_universitas`
--

CREATE TABLE `data_universitas` (
  `NPM` char(5) DEFAULT NULL,
  `Nama_mahasiswa` varchar(50) DEFAULT NULL,
  `Jurusan` varchar(20) DEFAULT NULL,
  `Mata_kuliah` varchar(20) DEFAULT NULL,
  `Nilai` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_universitas`
--

INSERT INTO `data_universitas` (`NPM`, `Nama_mahasiswa`, `Jurusan`, `Mata_kuliah`, `Nilai`) VALUES
('10001', 'Budi Setiawan', 'Teknik Sipil', 'Mekanika Tanah', 82.50),
('10002', 'Budi Santoso', 'Teknologi Informasi', 'Struktur Data', 88.00),
('10003', 'Siti Maimunah', 'Teknik Sipil', 'Mekanika Tanah', 83.20),
('10004', 'Rudi Hartono', 'Teknik Elektro', 'Rangkaian Listrik', 77.00),
('10005', 'Lina Maharani', 'Teknik Mesin', 'Gambar Teknik', 75.90),
('10006', 'Dwi Asyoko', 'Teknik Industri', 'Mekanika Industri', 95.00),
('10007', 'David Nazal', 'Teknologi Informasi', 'Struktur Data', 90.70),
('10008', 'Farah Prima', 'Teknik Industri', 'Mekanika Industri', 84.30),
('10009', 'Yoga Pratama', 'Mekatronika', 'Sensor dan Akuator', 87.80),
('10010', 'Yasir Efendi', 'Mekatronika', 'Sensor dan Akuator', 88.10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `Nama_mahasiswa` varchar(50) NOT NULL,
  `Jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `Nama_mahasiswa`, `Jurusan`) VALUES
('10001', 'Budi Setiawan', 'Teknik Sipil'),
('10002', 'Budi Santoso', 'Teknologi Informasi'),
('10003', 'Siti Maimunah', 'Teknik Sipil'),
('10004', 'Rudi Hartono', 'Teknik Elektro'),
('10005', 'Lina Maharani', 'Teknik Mesin'),
('10006', 'Yasa Wijaya', 'Teknik Industri'),
('10007', 'David Nazal', 'Teknologi Informasi'),
('10008', 'Farah Nuraini', 'Teknik Industri'),
('10009', 'Yoga Pratama', 'Mekatronika'),
('10010', 'Yasir Efendi', 'Manufaktur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mk` int(5) NOT NULL,
  `nama_mk` varchar(20) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mk`, `nama_mk`, `sks`) VALUES
(25001, 'Mekanika Tanah', 2),
(25002, 'Struktur Data', 2),
(25003, 'Rangkaian Listrik', 3),
(25004, 'Gambar Teknik', 3),
(25005, 'Ergonomi Industri', 2),
(25006, 'Manajemen Industri', 2),
(25007, 'Sensor dan Aktuator', 3),
(25008, 'Rekayasa Material', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(5) NOT NULL,
  `NPM` char(5) DEFAULT NULL,
  `id_mk` int(11) DEFAULT NULL,
  `nilai` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `NPM`, `id_mk`, `nilai`) VALUES
(1, '10001', 25001, 82.50),
(2, '10002', 25002, 88.00),
(3, '10003', 25001, 90.20),
(4, '10004', 25003, 85.60),
(5, '10005', 25004, 89.30),
(6, '10006', 25005, 92.00),
(7, '10007', 25002, 86.70),
(8, '10008', 25006, 91.50),
(9, '10009', 25007, 87.40),
(10, '10010', 25008, 93.10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mk`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `NPM` (`NPM`),
  ADD KEY `id_mk` (`id_mk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_mk`) REFERENCES `mata_kuliah` (`id_mk`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
