-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2025 pada 06.10
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
-- Database: `dinasarsipdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `Nomor` int(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NIP` bigint(100) NOT NULL,
  `Jabatan` varchar(100) NOT NULL,
  `Bidang` varchar(100) NOT NULL,
  `Kabid` varchar(100) NOT NULL,
  `SKP` varchar(300) NOT NULL,
  `Link` varchar(300) NOT NULL,
  `Periode` enum('Awal','TW1','TW2','TW3','Tahunan') NOT NULL,
  `status` enum('pending','disetujui','revisi') DEFAULT NULL,
  `statuss` enum('pending','disetujui','revisi') NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`Nomor`, `Nama`, `NIP`, `Jabatan`, `Bidang`, `Kabid`, `SKP`, `Link`, `Periode`, `status`, `statuss`, `komentar`, `tanggal`) VALUES
(1, 'Fenti Kesuma Dewi, S,Sos', 197504141999032002, 'Arsiparis Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687cea05b85f5_SKP%20Penilaian%20TW%202.pdf', 'https://drive.google.com/drive/folders/1tSv6E4icL5-oHKnuL6JhtROrsztcI9L5?usp=sharing', 'TW2', 'disetujui', 'disetujui', '', '2025-07-20 19:58:00'),
(3, 'Fenti Kesuma Dewi, S,Sos', 197504141999032002, 'Arsiparis Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687cead1bc76c_SKP%20Penilaian%20TW%201.pdf', 'https://drive.google.com/drive/folders/1zWRja_KCd3egxWVdTspSC9TjrJg_zs-I?usp=sharing', 'TW1', 'disetujui', 'disetujui', '', '2025-07-20 20:07:00'),
(5, 'Trisna Yuli Afni, S.Sos', 197207192007012002, 'Fungsional Ahli Madya Arsiparis', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687d8f17aa446_tw2.pdf', 'https://drive.google.com/file/d/11qmdsWfcBPRpTYz2jx-_RDPmtQJi7-uC/view?usp=sharing', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 07:43:00'),
(7, 'Juliati, SE', 197307031999032003, 'Arsiparis Madya', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687d91970b2ef_SKP%20Juliati%20TW%201.pdf', 'https://drive.google.com/drive/folders/17rTfU2Tq7XnRcwTpDV3TVK_f9TVfhLJc?usp=drive_link', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 07:54:00'),
(8, 'Juliati, SE', 197307031999032003, 'Arsiparis Madya', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687d91e3b1c80_SKP%20Juliati%20TW%202.pdf', 'https://drive.google.com/drive/folders/1g7z-wYMN59RIzWRV3g5HKkLBaCcGYCQG?usp=sharing', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 08:02:00'),
(9, 'Romy Zulfi Yandra, S.Kom, MM', 197501261999031001, 'Arsiparis Ahli Madya', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687db4fc1f5d2_dokumen%20evaluasi%20kinerja%20pegawai%20triwulan%201%202025.pdf', 'https://drive.google.com/file/d/1C34Biaet7t_rsPJc96A5JVkqZeCPdG86/view?usp=sharing', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 07:52:00'),
(10, 'Romy Zulfi Yandra, S.Kom, MM', 197501261999031001, 'Arsiparis Ahli Madya', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687db55c05e73_dokumen%20evaluasi%20kinerja%20pegawai%20triwulan%202%202025.pdf', 'https://drive.google.com/file/d/1XFaktMSbnxV4QscvY8_5k4RtYhQrlkei/view?usp=drive_link', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 10:33:00'),
(16, 'Romy Zulfi Yandra, S.Kom, MM', 197501261999031001, 'Arsiparis Ahli Madya', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687db5d160b59_skp%20tahun%202025.pdf', 'https://drive.google.com/file/d/1XWnCiumVyIje-ifMX1G8jS7ptw6JoZDq/view?usp=drive_link', 'Awal', 'disetujui', 'disetujui', '', '2025-07-21 10:36:00'),
(18, 'Armelia Syafei, S.Sos', 197309131994032001, 'Arsiparis Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687dc223935c3_SKP%20Penilaian%20TW%201%202025.pdf', 'https://drive.google.com/drive/folders/1Wi8AbAQWQVnjjTuZ5lzeiMOmTC3pjy-_?usp=drive_link', 'Awal', 'disetujui', 'disetujui', '', '2025-07-21 11:26:00'),
(21, 'Armelia Syafei, S.Sos', 197309131994032001, 'Arsiparis Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687dc2b86c9f9_SKP%20Penilaian%20TW%202%202025.pdf', 'https://drive.google.com/drive/folders/1sn2-nZC_nAvH_nyL3C7rnNeYhdV5OnNq?usp=sharing', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 11:29:00'),
(24, 'Armelia Syafei, S.Sos', 197309131994032001, 'Arsiparis Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687dc34c6bacd_SKP%20Penilaian%20TW%201%202025.pdf', 'https://drive.google.com/drive/folders/1Wi8AbAQWQVnjjTuZ5lzeiMOmTC3pjy-_?usp=drive_link', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 11:32:00'),
(26, 'Yelvi Oktavia', 198210072006042006, 'Pustakawan Ahli Madya', 'Deposit, Pengembangan, dan Pelestarian Bahan Perpustakaan', 'Dian Dewi Kartika, S.Sos, M.Si', 'http://10.5.49.150:9000/uploads/687dce8cb1699_SKP%20TW%20II%20Yelvi.pdf', 'https://drive.google.com/drive/folders/1qjzHCE9E9G66LW8nvMNwmCXLUwSFw-Xu?usp=sharing', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 12:12:00'),
(30, 'Trisna Yuli Afni, S.Sos', 197207192007012002, 'Fungsional Ahli Madya Arsiparis', 'Kearsipan', 'Sosy Findra, S.Kom., M.M.', 'http://10.5.49.150:9000/uploads/687dd12f0c78a_TW%201.pdf', 'https://drive.google.com/file/d/1tEZQcNeHgKhgbCZkB8PQ2Ze37JwqL4C5/view', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 12:28:00'),
(31, 'DEMIATY BR PERANGIN ANGIN, S.IP.', 197109041994032001, 'Pustakawan Ahli Madya', 'Deposit, Pengembangan, dan Pelestarian Bahan Perpustakaan', 'Dian Dewi Kartika, S.Sos, M.Si', 'http://10.5.49.150:9000/uploads/687dd91a80c68_SKP%20Tw%201%202025%20Demiaty.pdf', 'https://drive.google.com/file/d/14Eko629zg-zz1soE3SRn9SbkaYh46sru/view', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 12:58:00'),
(34, 'DEMIATY BR PERANGIN ANGIN, S.IP.', 197109041994032001, 'Pustakawan Ahli Madya', 'Deposit, Pengembangan, dan Pelestarian Bahan Perpustakaan', 'Dian Dewi Kartika, S.Sos, M.Si', 'http://10.5.49.150:9000/uploads/687dd9749e314_SKP%20Penilaian%20TW%202.pdf', 'https://drive.google.com/file/d/1x0yiBKKThwH9vDbVvB407KTx1GLhuaZV/view', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 13:07:00'),
(37, 'Yelvi Oktavia', 198210072006042006, 'Pustakawan Ahli Madya', 'Deposit, Pengembangan, dan Pelestarian Bahan Perpustakaan', 'Dian Dewi Kartika, S.Sos, M.Si', 'http://10.5.49.150:9000/uploads/687df11c175cd_SKP%20TW%201%20YELVI%20%281%29.pdf', 'https://drive.google.com/drive/folders/1ZLYjNt5CFS6T1Ya6Ln6ayZ70D6VCwyrz?usp=sharing', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 14:42:00'),
(53, 'Yeni Fitri, SE, MM', 197410211999032004, 'Arsiparis Ahli Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687e17c241bda_EVALUASI%20KINERJA%20YENI%20FITRIA%20AWAL.pdf', 'https://drive.google.com/file/d/1PTi38j9_D7fa75dtMMsHrqJFAnhzBHZu/view?usp=sharing', 'Awal', 'disetujui', 'disetujui', '', '2025-07-21 17:30:00'),
(56, 'Yeni Fitri, SE, MM', 197410211999032004, 'Arsiparis Ahli Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687e185525330_evaluasi%20kinerja%20yeni%20fitria%20tri%201.pdf', 'https://drive.google.com/file/d/1Mf3-oWwEMw9EjOzaIFgUkw8hyyV0_5fb/view?usp=sharing', 'TW1', 'disetujui', 'disetujui', '', '2025-07-21 17:34:00'),
(57, 'Yeni Fitri, SE, MM', 197410211999032004, 'Arsiparis Ahli Madya', 'Pembinaan dan Pengawasan', 'Kiswati SS,MPA', 'http://10.5.49.150:9000/uploads/687e189904d52_evaluasi%20kinerja%20yeni%20fitria%20tri%202.pdf', 'https://drive.google.com/drive/folders/1RNCv8HLL2YeEU61lnRlJvI-NQbd_wbtc?usp=drive_link', 'TW2', 'disetujui', 'disetujui', '', '2025-07-21 11:03:00'),
(59, 'Yendri Buharma, SS', 196901291999031002, 'Pustakawan Madya', 'Deposit, Pengembangan, dan Pelestarian Bahan Perpustakaan', 'Dian Dewi Kartika, S.Sos, M.Si', 'http://10.5.49.150:9000/uploads/687f01e68d25c_tw1%20yendri.pdf', ' https://drive.google.com/file/d/1FVUbnrm_dsDOX1-HLULCMWxCpULfqkWa/view', 'TW1', 'disetujui', 'disetujui', '', '2025-07-22 10:12:00'),
(60, 'Yendri Buharma, SS', 196901291999031002, 'Pustakawan Madya', 'Deposit, Pengembangan, dan Pelestarian Bahan Perpustakaan', 'Dian Dewi Kartika, S.Sos, M.Si', 'http://10.5.49.150:9000/uploads/687f02050ba2d_tw2%20yendri.pdf', ' https://drive.google.com/file/d/1PwCkKU8HZiaUSHzq9mMT1W3u6nsiKzWK/view', 'TW2', 'disetujui', 'disetujui', '', '2025-07-22 10:13:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_data`
--

CREATE TABLE `history_data` (
  `id` int(11) NOT NULL,
  `data_id` int(11) DEFAULT NULL,
  `user_input` varchar(100) DEFAULT NULL,
  `aksi` enum('update') DEFAULT 'update',
  `waktu` datetime DEFAULT current_timestamp(),
  `data_lama` text DEFAULT NULL,
  `data_baru` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `history_data`
--

INSERT INTO `history_data` (`id`, `data_id`, `user_input`, `aksi`, `waktu`, `data_lama`, `data_baru`) VALUES
(3, 57, '197410211999032004', 'update', '2025-07-21 18:03:59', '{\"Nomor\":\"57\",\"Nama\":\"Yeni Fitri, SE, MM\",\"NIP\":\"197410211999032004\",\"Jabatan\":\"Arsiparis Ahli Madya\",\"Bidang\":\"Pembinaan dan Pengawasan\",\"Kabid\":\"Kiswati SS,MPA\",\"SKP\":\"http://10.5.49.150:9000/uploads/687e189904d52_evaluasi%20kinerja%20yeni%20fitria%20tri%202.pdf\",\"Link\":\"https://drive.google.com/file/d/1Ho7LA_8dKLFMhnXchY46iSyHZEZP2gGZ/view?usp=sharing\",\"Periode\":\"TW2\",\"status\":\"revisi\",\"statuss\":\"pending\",\"komentar\":\"\",\"tanggal\":\"2025-07-21 17:37:00\"}', '{\"Nama\":\"Yeni Fitri, SE, MM\",\"NIP\":\"197410211999032004\",\"Jabatan\":\"Arsiparis Ahli Madya\",\"Bidang\":\"Pembinaan dan Pengawasan\",\"Kabid\":\"Kiswati SS,MPA\",\"SKP\":\"http://10.5.49.150:9000/uploads/687e189904d52_evaluasi%20kinerja%20yeni%20fitria%20tri%202.pdf\",\"Link\":\"https://drive.google.com/drive/folders/1RNCv8HLL2YeEU61lnRlJvI-NQbd_wbtc?usp=drive_link\",\"Periode\":\"TW2\",\"status\":\"pending\",\"statuss\":\"pending\",\"komentar\":\"\",\"tanggal\":\"2025-07-21T11:03\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabid`
--

CREATE TABLE `kabid` (
  `No` int(100) NOT NULL,
  `Namak` text NOT NULL,
  `NIPk` bigint(20) NOT NULL,
  `Statusk` enum('arsip','bina','deposit','layanan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kabid`
--

INSERT INTO `kabid` (`No`, `Namak`, `NIPk`, `Statusk`) VALUES
(1, 'Sosy Findra, S.Kom., M.M.', 196707241999031006, 'arsip'),
(2, 'Kiswati SS,MPA', 196808151999032001, 'bina'),
(3, 'Dian Dewi Kartika, S.Sos, M.Si', 197209231992022001, 'deposit'),
(4, 'Fajri Rahmad Ersya, S.STP, M.Si', 199203242014061003, 'layanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` bigint(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('admin','madya','kadis','arsip','bina','deposit','layanan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 196708172000031006, 'formulir0', 'kadis'),
(2, 20000527, 'admin0', 'admin'),
(3, 196707241999031006, 'formulir1', 'arsip'),
(4, 196808151999032001, 'formulir1', 'bina'),
(5, 197209231992022001, 'formulir1', 'deposit'),
(6, 199203242014061003, 'formulir1', 'layanan'),
(7, 198210072006042006, 'formulir2', 'madya'),
(8, 196901291999031002, 'formulir2', 'madya'),
(9, 197109041994032001, 'formulir2', 'madya'),
(10, 197501261999031001, 'formulir2', 'madya'),
(11, 197307031999032003, 'formulir2', 'madya'),
(12, 197207192007012002, 'formulir2', 'madya'),
(13, 197309131994032001, 'formulir2', 'madya'),
(14, 197410211999032004, 'formulir2', 'madya'),
(15, 197504141999032002, 'formulir2', 'madya'),
(18, 198710262007011001, 'formulir0', 'kadis');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Nomor`);

--
-- Indeks untuk tabel `history_data`
--
ALTER TABLE `history_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kabid`
--
ALTER TABLE `kabid`
  ADD PRIMARY KEY (`No`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `Nomor` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `history_data`
--
ALTER TABLE `history_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kabid`
--
ALTER TABLE `kabid`
  MODIFY `No` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
