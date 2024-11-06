-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Nov 2024 pada 07.00
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pplg1_indahh_db1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kd_buku` char(8) COLLATE utf8mb4_general_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pengarang` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penerbit` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `th_terbit` year DEFAULT NULL,
  `id_genre` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`kd_buku`, `judul`, `pengarang`, `penerbit`, `th_terbit`, `id_genre`) VALUES
('BK0001', 'Biografi Tokoh Revolusi', 'Dr.Rudi Santoso', 'Gramedia', '2019', 1),
('BK0002', 'Biografi Ulama Terkemuka', 'Ustadzah Nadia Rahmah', 'Andi Publisher', '2020', 1),
('BK0003', 'Cahaya di Ufuk Timur', 'Aulia Wulandari', 'Andi Publisher', '2020', 2),
('BK0004', 'Ensiklopedia Hewan Langka', 'Dr. Rudi Hartono', 'Pustaka Wijaya', '2019', 3),
('BK0005', 'Ensiklopedia Sejarah Islam', 'Dr.Rudi Santoso', 'Andi Publisher', '2023', 3),
('BK0006', 'Inspirasi Hidup Para Pemimpin', 'Dr.Rudi Santoso', 'Pustaka Ilmu', '2021', 1),
('BK0007', 'Jalan Menuju Kebahagiaan', 'Ustadzah Nadia Rahmah', 'Pustaka Ilmu', '2020', 4),
('BK0008', 'Kepingan Kenangan', 'Aulia Wulandari', 'Gramedia', '2022', 2),
('BK0009', 'Kisah Hidup Pahlawan Nusantar', 'Dr.Rudi Santoso', 'Pustaka Ilmu', '2018', 1),
('BK0010', 'Mengenal Sejarah Dunia', 'Dr.Rudi Santoso', 'Andi Publisher', '2022', 3),
('BK0011', 'Meraih Ketenangan Hati', 'Ustadzah Nadia Rahmah', 'Gramedia', '2021', 4),
('BK0012', 'Mutiara Kehidupan', 'Ustadzah Nadia Rahmah', 'Pustaka Ilmu', '2019', 4),
('BK0013', 'Petualangan di Negeri Awan', 'Aulia Wulandari', 'Gramedia', '2019', 2),
('BK0014', 'Senja di Batas Kota', 'Aulia Wulandari', 'Gramedia', '2021', 2),
('BK0015', 'Teladan Para Nabi', 'Ustadzah Nadia Rahmah', 'Gramedia', '2023', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_genre`
--

CREATE TABLE `tb_genre` (
  `id_genre` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_genre` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_genre`
--

INSERT INTO `tb_genre` (`id_genre`, `nama_genre`) VALUES
('1', 'Biografi'),
('2', 'Fiksi'),
('3', 'Ensiklopedia'),
('4', 'Religi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_kelas` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
('1', 'XI PPLG 1'),
('2', 'XI PPLG 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_peminjaman` int NOT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `nis` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kd_buku` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_peminjaman`, `tgl_peminjaman`, `nis`, `kd_buku`, `tgl_kembali`) VALUES
(1, '2024-10-29', '20231009', 'BK0015', '2024-11-01'),
(2, '2024-10-01', '20231001', 'BK0001', '2024-10-04'),
(3, '2024-10-01', '20231010', 'BK0004', '2024-10-04'),
(4, '2024-10-01', '20231003', 'BK0007', '2024-10-04'),
(5, '2024-10-01', '20231005', 'BK0012', '2024-10-04'),
(6, '2024-10-02', '20231009', 'BK0011', '2024-10-05'),
(7, '2024-10-03', '20231010', 'BK0013', '2024-10-06'),
(8, '2024-10-04', '20231007', 'BK0008', '2024-10-07'),
(9, '2024-10-05', '20231001', 'BK0002', '2024-10-08'),
(10, '2024-10-05', '20231005', 'BK0004', '2024-10-08'),
(11, '2024-10-05', '20231002', 'BK0015', '2024-10-08'),
(12, '2024-10-05', '20231003', 'BK0001', '2024-10-08'),
(13, '2024-10-11', '20231004', 'BK0014', '2024-10-14'),
(14, '2024-10-20', '20231001', 'BK0008', '2024-10-23'),
(15, '2024-10-23', '20231002', 'BK0010', '2024-10-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_lengkap` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` char(2) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `nama_lengkap`, `alamat`, `no_hp`, `id_kelas`) VALUES
('20231001', 'Alif Muhammad Ramadhan', 'Tegaldlimo', '0812-2345-6789', '1'),
('20231002', 'Arka Damar Pratama', 'Licin', '0813-6543-2109', '2'),
('20231003', 'Aulia Putri Maulida', 'Rogojampi', '0812-3456-7890', '1'),
('20231004', 'Dimas Yudha Saputra', 'Wongsorejo', '0896-4321-0987', '1'),
('20231005', 'Fania Rahma Andini', 'Rogojampi', '0822-4567-8901', '2'),
('20231006', 'Farel Aditya Prakoso', 'Kalipuro', '0878-1234-5678', '2'),
('20231007', 'Keisha Alana Wijayanti', 'Licin', '0838-9876-5432', '2'),
('20231008', 'Nabila Salsabila Putri', 'Licin', '0856-7890-1234', '1'),
('20231009', 'Naufal Rizky Pratama', 'Genteng', '0821-5678-1234', '2'),
('20231010', 'Zahra Ayu Permatasari', 'Genteng', '0857-2345-6789', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `tb_genre`
--
ALTER TABLE `tb_genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
