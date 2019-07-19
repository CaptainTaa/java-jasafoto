-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2019 pada 04.02
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasafoto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_harga`
--

CREATE TABLE `daftar_harga` (
  `kode_jasa` int(20) NOT NULL,
  `jasa_foto` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_harga`
--

INSERT INTO `daftar_harga` (`kode_jasa`, `jasa_foto`, `harga`) VALUES
(1, 'Foto 2 x 3', 5000),
(2, 'Foto 3 x 4', 6500),
(3, 'Foto Preweding', 850000),
(4, 'Wedding Package', 3500000),
(5, 'Studio Foto', 80000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `nomor_transaksi` int(20) NOT NULL,
  `id_pembeli` int(20) NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL,
  `kode_jasa` int(20) NOT NULL,
  `jasa_foto` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`nomor_transaksi`, `id_pembeli`, `nama_pembeli`, `kode_jasa`, `jasa_foto`, `harga`, `keterangan`) VALUES
(1, 1, 'Atonius', 1, 'Foto 2 x 3', 5000, ''),
(2, 1, 'Antonius', 1, 'Foto 2 x 3', 5000, '02717650001'),
(3, 1234, 'Anton', 3, 'Foto Preweding', 850000, ''),
(4, 9990000, 'Surono', 4, 'Wedding Package', 3500000, '13 November 2019. Gedung Amangkurat nomor 40'),
(5, 12, 'Vika Septiani', 1, 'Foto 2 x 3', 5000, 'Lunas'),
(6, 908760999, 'Klausa Istinja', 5, 'Studio Foto', 80000, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_harga`
--
ALTER TABLE `daftar_harga`
  ADD PRIMARY KEY (`kode_jasa`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`nomor_transaksi`),
  ADD KEY `kode_jasa` (`kode_jasa`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_jasa`) REFERENCES `daftar_harga` (`kode_jasa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
