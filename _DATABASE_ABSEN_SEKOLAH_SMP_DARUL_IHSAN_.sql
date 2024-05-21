-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2024 pada 16.10
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
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `no_unik` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`no_unik`, `nama`, `tgl_waktu`) VALUES
(1, 'a', '2024-05-21 09:00:37'),
(2, 'ds', '2024-05-21 09:06:30'),
(12344, 'h', '2024-05-21 09:04:03'),
(12346, 'yt', '2024-05-21 08:58:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswaa`
--

CREATE TABLE `tb_siswaa` (
  `id` int(11) NOT NULL,
  `no_unik` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `no_hp` varchar(10) NOT NULL,
  `tgl_waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_siswaa`
--

INSERT INTO `tb_siswaa` (`id`, `no_unik`, `nama`, `kelas`, `no_hp`, `tgl_waktu`) VALUES
(12, 2, 'ed0', '7', '34353', '2024-05-21 08:57:42'),
(0, 3, 'asdo', '4', '123123123', '2024-05-21 09:20:04'),
(0, 4, 'usep', '4', '123123123', '2024-05-21 14:05:27'),
(0, 78, 'sera', '9', '0938428783', '2024-05-21 14:06:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`no_unik`);

--
-- Indeks untuk tabel `tb_siswaa`
--
ALTER TABLE `tb_siswaa`
  ADD PRIMARY KEY (`no_unik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `no_unik` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12347;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
