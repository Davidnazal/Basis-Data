-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2025 pada 14.29
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
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bidang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `bidang`) VALUES
('1978010110', 'Dr. Andi Kobra', 'Pemrograman'),
('1979050430', 'Dr. Yulianto', 'Jaringan'),
('1980021520', 'Dr. Rina Nose', 'Basis Data');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`) VALUES
('2200010001', 'Hanip Ahmad', 'Informatika'),
('2200010002', 'Budiono Siregar', 'Sistem Informasi'),
('2200010003', 'Setianingrum', 'Teknik Komputer'),
('2200010004', 'Aldi', 'Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` char(6) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('IF101', 'Pemrograman', 3),
('IF102', 'Struktur Data', 3),
('IF103', 'Basis Data', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` varchar(20) NOT NULL,
  `nama_tagihan` varchar(100) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `tanggal_jatuh_tempo` date DEFAULT NULL,
  `status` enum('Belum Lunas','Menunggu Pembayaran','Lunas','Kadaluarsa') DEFAULT 'Belum Lunas',
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `nama_tagihan`, `jumlah`, `tanggal_jatuh_tempo`, `status`, `keterangan`) VALUES
('TAG001', 'SPP Semester 1', 1500000.00, '2024-08-31', 'Lunas', 'Tagihan SPP semester ganjil'),
('TAG002', 'Uang Praktikum', 500000.00, '2024-07-15', 'Menunggu Pembayaran', 'Estimasi biaya praktikum komputer'),
('TAG003', 'Denda Keterlambatan', 100000.00, '2024-06-30', 'Lunas', 'Denda keterlambatan pembayaran SPP'),
('TAG004', 'Uang UKT Semester 2', 1600000.00, '2024-12-31', 'Kadaluarsa', 'Tagihan UKT semester genap belum dibayar'),
('TAG005', 'Biaya Perpustakaan', 200000.00, '2024-06-20', 'Belum Lunas', 'Tagihan biaya keanggotaan perpustakaan'),
('TAG006', 'Uang Seragam', 750000.00, '2024-09-15', 'Menunggu Pembayaran', 'Pembelian seragam resmi kampus'),
('TAG007', 'Administrasi Wisuda', 250000.00, '2024-11-10', 'Lunas', 'Biaya administrasi wisuda mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_tabel`
--

CREATE TABLE `temp_tabel` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
