-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Apr 2020 pada 13.34
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_connection`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `namalengkapadmin` varchar(255) NOT NULL,
  `usernameadmin` varchar(255) NOT NULL,
  `passwordadmin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `namalengkapadmin`, `usernameadmin`, `passwordadmin`) VALUES
(1, 'nico rachmachandrana', 'nico', '$2y$10$EHbpBG0o3V6OhoecIozgQeslpA1ITCYI28.5uiYrotMKsJUfiNtB2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_login_details`
--

CREATE TABLE `admin_login_details` (
  `admin_login_details_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin_login_details`
--

INSERT INTO `admin_login_details` (`admin_login_details_id`, `admin_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-02-26 00:44:32', 'no'),
(2, 1, '2020-02-26 00:58:02', 'no'),
(3, 1, '2020-02-26 01:01:41', 'no'),
(4, 1, '2020-02-26 01:02:52', 'no'),
(5, 1, '2020-02-26 01:03:56', 'no'),
(6, 1, '2020-02-26 01:06:55', 'no'),
(7, 1, '2020-02-26 01:07:18', 'no'),
(8, 1, '2020-02-26 01:09:33', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(60, 0, 0, 'asd', '2020-02-17 16:00:16', 1),
(61, 22, 18, 'gnv', '2020-02-17 16:01:30', 0),
(62, 0, 0, 'jmjh', '2020-02-17 16:01:37', 1),
(63, 21, 18, 'gu7yi', '2020-02-17 22:44:29', 0),
(64, 19, 18, 'ghffh', '2020-02-25 23:56:30', 1),
(65, 18, 21, 'cok', '2020-02-26 01:52:18', 0),
(66, 0, 18, 'thgfnh fgn gfh', '2020-02-26 01:52:30', 0),
(67, 19, 18, 'llll', '2020-02-26 02:53:57', 1),
(68, 19, 18, 'fsdvfvdvdfh', '2020-04-01 03:08:21', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`user_id`, `namalengkap`, `username`, `password`) VALUES
(18, 'Muhammad Saktya Bintang', 'admin', '$2y$10$OMAXIbX8jOQtJ3i/En/kSeT73JJZ6qlaTeh/Y.DAKPoY1XBdx/5b2'),
(19, 'Amam Basuki M.Psi', 'amam', '$2y$10$hb7HQSSh4HKLvMf005BUQ.x1VIMOQfnI5FZlf5ZgNfPo64JzD8b0a'),
(20, 'Joni Setiyawan', 'joni', '$2y$10$MOvETrKb2NYxRbg1VXrV5u2r3/2y5RgqqKAK.Cgr5PCl./PLmddEi'),
(21, 'Hartoyo S.Psi', 'hartoyo', '$2y$10$D.0RcDjoXzCJok4V3uEu6uY3EvDQJStTz5VKVOjinqSNOB3QR0LCS'),
(22, 'saktya', 'saktya', '$2y$10$P5dfr79SANV2cv3mvrPmtOkn0IZo.WTk90PAaV8pKI0Pi2VPILjtC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-01-21 14:31:13', 'no'),
(2, 1, '2020-01-21 14:31:25', 'no'),
(3, 1, '2020-01-21 14:32:52', 'no'),
(4, 1, '2020-01-21 14:35:58', 'no'),
(5, 1, '2020-01-21 14:41:15', 'no'),
(6, 1, '2020-01-21 14:44:55', 'no'),
(7, 1, '2020-01-21 14:54:02', 'no'),
(8, 1, '2020-01-21 15:12:24', 'no'),
(9, 1, '2020-01-21 15:12:57', 'no'),
(10, 1, '2020-01-21 15:24:15', 'no'),
(11, 1, '2020-01-21 15:29:33', 'no'),
(12, 2, '2020-01-21 15:38:00', 'no'),
(13, 5, '2020-01-21 16:20:30', 'no'),
(14, 3, '2020-01-21 16:32:22', 'no'),
(15, 5, '2020-01-21 22:25:46', 'no'),
(16, 3, '2020-01-21 22:29:19', 'no'),
(17, 6, '2020-01-21 22:36:02', 'no'),
(18, 1, '2020-01-21 22:36:36', 'no'),
(19, 1, '2020-01-22 02:29:56', 'no'),
(20, 1, '2020-01-22 02:38:10', 'no'),
(21, 5, '2020-01-22 02:42:31', 'no'),
(22, 6, '2020-01-22 02:43:51', 'no'),
(23, 5, '2020-01-22 02:51:39', 'no'),
(24, 1, '2020-01-22 03:04:11', 'no'),
(25, 7, '2020-01-22 03:05:47', 'no'),
(26, 7, '2020-01-22 03:07:02', 'no'),
(27, 8, '2020-01-31 08:24:26', 'no'),
(28, 1, '2020-01-31 08:24:59', 'no'),
(29, 1, '2020-02-04 11:38:23', 'no'),
(30, 10, '2020-02-04 11:43:22', 'no'),
(31, 1, '2020-02-05 02:48:58', 'no'),
(32, 11, '2020-02-05 02:53:58', 'no'),
(33, 1, '2020-02-05 03:24:38', 'no'),
(34, 1, '2020-02-12 03:19:24', 'no'),
(35, 12, '2020-02-12 03:26:31', 'no'),
(36, 13, '2020-02-12 03:28:53', 'no'),
(37, 1, '2020-02-12 04:25:07', 'no'),
(38, 17, '2020-02-12 04:27:04', 'no'),
(39, 1, '2020-02-12 04:30:06', 'no'),
(40, 18, '2020-02-12 04:32:04', 'no'),
(41, 18, '2020-02-12 04:35:55', 'no'),
(42, 19, '2020-02-12 04:38:52', 'no'),
(43, 18, '2020-02-12 04:44:13', 'no'),
(44, 18, '2020-02-12 08:54:54', 'no'),
(45, 20, '2020-02-12 08:58:31', 'no'),
(46, 21, '2020-02-12 14:41:50', 'no'),
(47, 18, '2020-02-17 15:53:55', 'no'),
(48, 22, '2020-02-17 15:56:57', 'no'),
(49, 18, '2020-02-17 16:00:54', 'no'),
(50, 18, '2020-02-17 16:10:45', 'no'),
(51, 18, '2020-02-17 16:13:51', 'no'),
(52, 18, '2020-02-17 22:44:06', 'no'),
(53, 18, '2020-02-25 23:56:20', 'no'),
(54, 18, '2020-02-26 01:00:00', 'no'),
(55, 18, '2020-02-26 01:02:01', 'no'),
(56, 18, '2020-02-26 01:04:02', 'no'),
(57, 18, '2020-02-26 01:05:54', 'no'),
(58, 21, '2020-02-26 01:06:30', 'no'),
(59, 18, '2020-02-26 01:19:23', 'no'),
(60, 18, '2020-02-26 01:20:36', 'no'),
(61, 18, '2020-02-26 01:27:39', 'no'),
(62, 21, '2020-02-26 01:28:22', 'no'),
(63, 18, '2020-02-26 01:32:58', 'no'),
(64, 18, '2020-02-26 01:34:28', 'no'),
(65, 18, '2020-02-26 01:43:14', 'no'),
(66, 21, '2020-02-26 01:43:33', 'no'),
(67, 18, '2020-02-26 01:47:22', 'no'),
(68, 18, '2020-02-26 01:47:55', 'no'),
(69, 18, '2020-02-26 01:50:56', 'no'),
(70, 21, '2020-02-26 01:51:39', 'no'),
(71, 18, '2020-02-26 02:09:14', 'no'),
(72, 18, '2020-02-26 04:44:34', 'no'),
(73, 18, '2020-02-26 04:56:37', 'no'),
(74, 18, '2020-02-26 04:56:51', 'no'),
(75, 18, '2020-04-01 03:08:04', 'no');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `admin_login_details`
--
ALTER TABLE `admin_login_details`
  ADD PRIMARY KEY (`admin_login_details_id`);

--
-- Indeks untuk tabel `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin_login_details`
--
ALTER TABLE `admin_login_details`
  MODIFY `admin_login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
