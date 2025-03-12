-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2025 pada 20.56
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
