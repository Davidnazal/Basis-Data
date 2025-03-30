-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2025 pada 14.20
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
-- Database: `si_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(20) DEFAULT 'Umum',
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jurusan`, `tgl_daftar`) VALUES
('1', 'David Nazal', NULL, '2025-10-05'),
('2', 'Achmad Hanif', NULL, '2025-01-02'),
('3', 'Yasabuana', NULL, '2025-02-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `id_penerbit` varchar(10) DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penerbit`, `tahun_terbit`, `id_penerbit`) VALUES
('B001', 'Laskar Pelangi', 'Bentang Pustaka', 2005, 'P001'),
('B002', 'Bumi Manusia', 'Hasta Mitra', 1980, 'P002'),
('B003', 'Negeri 5 Menara', 'Gramedia Pustaka Utama', 2009, 'P003'),
('B004', 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Truedee Books', 2001, 'P004'),
('B005', 'Perahu Kertas', 'Bentang Pustaka', 2009, 'P005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normal_anggota`
--

CREATE TABLE `normal_anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jurusan_anggota` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `normal_anggota`
--

INSERT INTO `normal_anggota` (`id_anggota`, `nama_anggota`, `jurusan_anggota`) VALUES
(1, 'Dwi Setiawan', 'Teknik Informatika'),
(2, 'Rina Permata', 'Sistem Informasi'),
(3, 'Andi Pratama', 'Basis Data');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normal_buku`
--

CREATE TABLE `normal_buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `normal_buku`
--

INSERT INTO `normal_buku` (`id_buku`, `judul`, `penerbit`) VALUES
('B001', 'Basis Data', 'Informatika'),
('B002', 'Algoritma dan Pemrograman', 'Erlangga'),
('B003', 'Jaringan Komputer', 'Gramedia'),
('B004', 'Pemrograman Web', 'Deepublish'),
('B005', 'Artificial Intelligence', 'Andi Publisher');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normal_peminjaman`
--

CREATE TABLE `normal_peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_buku` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `normal_peminjaman`
--

INSERT INTO `normal_peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(1, 1, 'B001', '2025-03-10', '2025-03-20', 0),
(2, 2, 'B003', '2025-03-12', '2025-03-22', 0),
(3, 3, 'B005', '2025-03-15', '2025-03-22', 14000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` varchar(10) DEFAULT NULL,
  `id_buku` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(1, '1', 'B001', '2025-03-10', '2025-03-20', 0),
(2, '2', 'B003', '2025-03-12', '2025-03-22', 0),
(3, '3', 'B005', '2025-03-15', '2025-03-22', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(100) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `alamat`) VALUES
('P001', 'Bentang Pustaka', 'Yogyakarta, Indonesia'),
('P002', 'Hasta Mitra', 'Jakarta, Indonesia'),
('P003', 'Gramedia Pustaka Utama', 'Jakarta, Indonesia'),
('P004', 'Truedee Books', 'Jakarta, Indonesia'),
('P005', 'Bentang Pustaka', 'Yogyakarta, Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_denormal`
--

CREATE TABLE `tabel_denormal` (
  `id_transaksi` int(11) NOT NULL,
  `nama_anggota` varchar(30) DEFAULT NULL,
  `jurusan_anggota` varchar(30) DEFAULT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `penerbit_buku` varchar(50) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_denormal`
--

INSERT INTO `tabel_denormal` (`id_transaksi`, `nama_anggota`, `jurusan_anggota`, `judul_buku`, `penerbit_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(1, 'David Nazal', NULL, 'Laskar Pelangi', 'Bentang Pustaka', '2025-03-10', '2025-03-20', 0),
(2, 'Achmad Chanif', NULL, 'Negeri 5 Menara', 'Gramedia Pustaka Utama', '2025-03-12', '2025-03-22', 0),
(3, 'Yasabuana', NULL, 'Perahu Kertas', 'Bentang Pustaka', '2025-03-15', '2025-03-22', 14000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `fk_penerbit` (`id_penerbit`);

--
-- Indeks untuk tabel `normal_anggota`
--
ALTER TABLE `normal_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `normal_buku`
--
ALTER TABLE `normal_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `normal_peminjaman`
--
ALTER TABLE `normal_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `tabel_denormal`
--
ALTER TABLE `tabel_denormal`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `normal_anggota`
--
ALTER TABLE `normal_anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `normal_peminjaman`
--
ALTER TABLE `normal_peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_penerbit` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`);

--
-- Ketidakleluasaan untuk tabel `normal_peminjaman`
--
ALTER TABLE `normal_peminjaman`
  ADD CONSTRAINT `normal_peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `normal_anggota` (`id_anggota`),
  ADD CONSTRAINT `normal_peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `normal_buku` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
