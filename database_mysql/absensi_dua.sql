-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2023 pada 16.30
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_dua`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensis`
--

CREATE TABLE `absensis` (
  `id` int(11) NOT NULL,
  `users_nip` int(11) DEFAULT NULL,
  `status` enum('in','out') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `absensis`
--

INSERT INTO `absensis` (`id`, `users_nip`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'in', '2023-05-29 08:03:34', '2023-05-29 08:03:34'),
(2, 2, 'out', '2023-05-29 08:04:58', '2023-05-29 08:04:58'),
(3, 7, 'in', '2023-05-29 08:20:16', '2023-05-29 08:20:16'),
(4, 7, 'out', '2023-05-29 08:20:22', '2023-05-29 08:20:22'),
(7, 1003, 'in', '2023-06-07 03:11:40', '2023-06-07 03:11:40'),
(8, 1003, 'out', '2023-06-07 03:11:41', '2023-06-07 03:11:41'),
(20, 1003, 'in', '2023-06-07 03:59:30', '2023-06-07 03:59:30'),
(21, 1003, 'out', '2023-06-07 03:59:33', '2023-06-07 03:59:33'),
(22, 1004, 'in', '2023-06-11 12:52:10', '2023-06-11 12:52:10'),
(23, 1004, 'out', '2023-06-11 12:52:13', '2023-06-11 12:52:13'),
(24, 1003, 'in', '2023-06-17 13:49:04', '2023-06-17 13:49:04'),
(25, 1003, 'out', '2023-06-22 15:59:14', '2023-06-22 15:59:14'),
(26, 1003, 'in', '2023-06-22 15:59:15', '2023-06-22 15:59:15'),
(27, 1003, 'in', '2023-06-22 16:08:28', '2023-06-22 16:08:28'),
(28, 1003, 'out', '2023-06-22 16:08:30', '2023-06-22 16:08:30'),
(29, 1003, 'in', '2023-06-22 16:08:31', '2023-06-22 16:08:31'),
(30, 1003, 'out', '2023-06-22 16:08:33', '2023-06-22 16:08:33'),
(31, 1003, 'in', '2023-06-22 16:08:34', '2023-06-22 16:08:34'),
(32, 1003, 'out', '2023-06-22 17:04:41', '2023-06-22 17:04:41'),
(33, 1003, 'out', '2023-06-22 17:05:33', '2023-06-22 17:05:33'),
(34, 1010, 'in', '2023-06-29 12:58:13', '2023-06-29 12:58:13'),
(35, 1010, 'out', '2023-06-29 12:58:14', '2023-06-29 12:58:14'),
(36, 1003, 'in', '2023-06-30 07:51:01', '2023-06-30 07:51:01'),
(37, 1003, 'out', '2023-06-30 07:51:02', '2023-06-30 07:51:02'),
(38, 1003, 'out', '2023-06-30 08:51:55', '2023-06-30 08:51:55'),
(39, 1003, 'in', '2023-06-30 08:51:57', '2023-06-30 08:51:57'),
(40, 1003, 'in', '2023-07-24 14:05:56', '2023-07-24 14:05:56'),
(41, 1003, 'out', '2023-07-24 14:05:57', '2023-07-24 14:05:57'),
(42, 1003, 'out', '2023-07-24 14:05:58', '2023-07-24 14:05:58'),
(43, 1003, 'in', '2023-07-24 14:05:59', '2023-07-24 14:05:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nip`, `nama`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'ujang', '123', '2023-05-29 04:16:22', '2023-05-29 04:16:22'),
(2, 2, 'abdi', '1234', '2023-05-29 04:22:00', '2023-05-29 04:22:00'),
(3, 3, 'xian', 'xianjieng', '2023-05-29 04:25:30', '2023-05-29 05:06:36'),
(4, 4, 'suneo', '$2b$10$qWIYFSjEE7dEddybygn7.epmutXs8FYi1VLdQY6okA9/3kecbmk9a', '2023-05-29 05:18:07', '2023-05-29 05:18:07'),
(5, 5, 'nobita-kun', 'dola-chan', '2023-05-29 05:24:51', '2023-05-29 05:35:09'),
(8, 6, 'aing', '$2b$10$ln/t2IMap54Um3V569Fk8OyJWthviLAYqQXaQ.RJ.uVZa/koEQfbC', '2023-05-29 05:42:41', '2023-05-29 05:43:55'),
(9, 7, 'jeff2', '$2b$10$0SRSeshVrJ9WyYGlHDpIdOqUTosGOtJZMY6Mo9ntEwst2pAh4EJjy', '2023-05-29 08:13:04', '2023-05-29 08:45:10'),
(10, 1001, 'ujang', '$2b$10$MEcGNDcXtz5OCn.ZTtKcxe81W2i12HxEy7/aEZhaaQ6cwsT5jHGRm', '2023-06-03 14:20:52', '2023-06-03 14:20:52'),
(12, 1002, 'Rahmat', '$2b$10$yYUGhWHw9aFjCyrDay6e1..bgaceEREgf5b7i.aXQxPBQvXm117mK', '2023-06-06 07:51:35', '2023-06-06 07:51:35'),
(14, 1003, 'Remi', '$2b$10$XKQaOBuFlsWSGPRSlAXbX.5lLxeLZsIZ9/GmKdrpZYfDNVGOOMY2O', '2023-06-06 07:58:38', '2023-06-30 08:52:11'),
(20, 1004, 'Jack', '$2b$10$ObFeHsueJEi7CljVCEOQ4.wpn.tDKElhMh8zgNSihrPbH9beXjaqC', '2023-06-11 12:30:55', '2023-06-11 12:30:55'),
(25, 1010, 'Mine', '$2b$10$IPm/Oy/2vRL0DkMzDcPLS.zLN843ixAt6lppQ1tUvj2AFXONBk1Vq', '2023-06-29 12:57:52', '2023-06-29 12:57:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
