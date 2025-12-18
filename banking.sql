-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2025 pada 11.55
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
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jenis` enum('SETOR','TARIK') DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `user_id`, `jenis`, `jumlah`, `tanggal`) VALUES
(1, 1, 'SETOR', 20, '2025-12-18 10:14:42'),
(2, 1, 'TARIK', 10, '2025-12-18 10:14:54'),
(3, 1, 'TARIK', 10, '2025-12-18 10:17:21'),
(4, 1, 'SETOR', 10, '2025-12-18 10:17:37'),
(5, 1, 'TARIK', 5, '2025-12-18 10:17:44'),
(6, 1, 'SETOR', 20, '2025-12-18 10:29:21'),
(7, 1, 'SETOR', 50, '2025-12-18 10:32:24'),
(8, 1, 'TARIK', 20, '2025-12-18 10:32:53'),
(9, 1, 'SETOR', 20000, '2025-12-18 10:33:18'),
(10, 3, 'SETOR', 30000, '2025-12-18 10:44:00'),
(11, 3, 'SETOR', 10000, '2025-12-18 10:52:18'),
(12, 3, 'TARIK', 5000, '2025-12-18 10:52:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `saldo` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `saldo`) VALUES
(1, 'kukuh', '$2y$10$jaDnlm9m/.USkdZEKZN.VOgNogOL0tUzDmM0eaJ9zr9VaC/2DzbE2', 20055),
(2, 'kulis', '$2y$10$LIldJNmcAZ3zjOoSvlEnweNHLjq9/IKfsrUomsq1Xg1XQVrGT4/Ta', 0),
(3, 'alfa', '$2y$10$6AbgPFQtcvdvOulEkhs5ju.0.34clXgBfGGDENPth0gUX6lT3C0Tq', 35000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
