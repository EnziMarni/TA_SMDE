-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2024 at 03:16 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumens`
--

CREATE TABLE `dokumens` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `judul_dokumen` varchar(255) NOT NULL,
  `deskripsi_dokumen` text NOT NULL,
  `kategori_dokumen` varchar(255) NOT NULL,
  `validasi_dokumen` varchar(255) NOT NULL,
  `status_file` tinyint(1) DEFAULT '0',
  `tahun_dokumen` year(4) NOT NULL,
  `dokumen_link` varchar(255) DEFAULT NULL,
  `dokumen_file` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumens`
--

INSERT INTO `dokumens` (`id`, `created_by`, `judul_dokumen`, `deskripsi_dokumen`, `kategori_dokumen`, `validasi_dokumen`, `status_file`, `tahun_dokumen`, `dokumen_link`, `dokumen_file`, `tags`, `view`, `status`, `created_at`, `updated_at`) VALUES
(151, 'Sekretaris Jurusan', 'TF ST Akreditasi MI', 'Surat Tugas Sebagai Tim Task Force Akreditasi Program Studi D3 Manajemen Informatika', 'Surat Tugas', 'Ketua Jurusan', 0, 2024, NULL, 'TF_ST_Akreditasi_MI.pdf', 'Surat Tugas', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi,Dosen', 'active', '2024-07-19 08:49:22', '2024-07-19 09:14:05'),
(155, 'Sekretaris Jurusan', 'Peraturan Direktur PNP', 'Peraturan Akademik PNP', 'Dokumen Pendidikan', 'Direktur', 0, 2018, NULL, 'Peraturan_Akademik_PNP_2018.pdf', 'Peraturan, Akademik', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:06:06', '2024-07-21 07:06:06'),
(156, 'Sekretaris Jurusan', 'Panduan Pengembangan Kurikulum', 'Panduan Pengembangan Kurikulum Dengan Kebijakan Merdeka Belajar Kampus Merdeka', 'Dokumen Pendidikan', 'Direktur', 0, 2022, NULL, 'Panduan_MBKM_PNP_2022_OK_sdh_lengkap.pdf', 'Panduan, MBKM', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:08:54', '2024-07-21 07:08:54'),
(157, 'Sekretaris Jurusan', 'Panduan PBL(Project Based Learning)', 'Panduan Penerapan PBL dan Pembelajaran Pemecahan Kasus(CASE METHOD) PNP', 'Dokumen Pendidikan', 'Direktur', 0, 2022, NULL, 'Panduan_PBL_20221223.pdf', 'Panduan PBL, Pembelajaran', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:11:53', '2024-07-21 07:11:53'),
(159, 'Sekretaris Jurusan', 'Izin Penyelenggaraan Program Studi Baru', 'Izin Penyelenggaraan Program Studi Baru di PNP', 'Dokumen Pendidikan', 'Direktur Jendral Pendidikan Tinggi', 0, 2005, NULL, 'Izin_Prodi_MI,_TK.pdf', 'Izin Penyelenggaraan, Program Studi', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:24:50', '2024-07-21 07:24:50'),
(160, 'Sekretaris Jurusan', 'Peraturan Menteri Pendidikan, Kebudayaan, Riset dan Teknologi', 'Peraturan organisasi dan Tata Kerja PNP', 'Dokumen Tata Kelola', 'Menteri Pendidikan, Kebudayaan, Riset Dan Teknologi', 0, 2022, NULL, 'salinan_20221215_150218_Salinan_-_Permendikbudristek_Nomor_58_Tahun_2022.pdf', 'Peraturan, Organisasi dan Tata Kerja', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:31:55', '2024-07-21 07:31:55'),
(161, 'Sekretaris Jurusan', 'Penetapan Auditor Audit Mutu Internal(AMI)', 'Penetapan Auditor Audit Mutu Internal(AMI)PNP', 'Dokumen Sumber Daya Manusia', 'Direktur', 0, 2023, NULL, '2023_1784_SK_AUDITOR.pdf', 'Auditor, AMI', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:39:27', '2024-07-21 07:39:27'),
(162, 'Sekretaris Jurusan', 'Pedoman Penyusunan VMTS', 'Pedoman Penyusunan Visi, Misi, Tujuan, dan Sasaran PNP', 'Dokumen Visi Misi', 'Direktur', 0, 2020, NULL, 'Pedoman_penyusunan_VMTS_PNP_ok.pdf', 'Pedoman, VMTS', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:43:22', '2024-07-21 07:43:22'),
(163, 'Sekretaris Jurusan', 'Standar SPMI', 'Standar Sistem Penjaminan Mutu Internal(SPMI)', 'Dokumen Tata Kelola', 'Direktur', 0, 2020, NULL, 'Standar-SPMI-2020.pdf', 'SPMI, Standar', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:46:47', '2024-07-21 07:46:47'),
(164, 'Sekretaris Jurusan', 'Dokumen Visi Misi', 'Dokumen Visi Misi Program Studi D3 Manajemen Informatika', 'Dokumen Visi Misi', 'Direktur', 0, 2022, NULL, 'Dokumen_Visi_dan_Misi_-_Manajemen_Informatika.pdf', 'Visi Misi, Manajemen Informatika', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:50:42', '2024-07-21 07:50:42'),
(165, 'Sekretaris Jurusan', 'Rencana Strategis', 'Rencana Strategis Jurusan Teknologi Informasi', 'Dokumen Strategi', 'Direktur', 0, 2021, NULL, 'Renstra_TI_20212025.pdf', 'Strategis, Jurusan Teknologi Informasi', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:52:53', '2024-07-21 07:52:53'),
(166, 'Sekretaris Jurusan', 'Laporan Kegiatan', 'Focus Group Discussion Dengan Industri Terkait Kerjasama Magang', 'Dokumen Kerjasama', 'Ketua Jurusan', 0, 2023, NULL, 'Laporan_FGD_industri_30_nov_23_signed.pdf', 'Laporan FGD, Kerjasama Magang', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 07:55:48', '2024-07-21 07:55:48'),
(167, 'Sekretaris Jurusan', 'Laporan Evaluasi Kinerja', 'Laporan Evaluasi Kinerja Program Studi Manajemen Informatika', 'Dokumen Capaian Tridarma', 'Ketua Jurusan', 0, 2023, NULL, 'Dokumen_Evaluasi_Jurusan_TI_Prodi_MI_2023.pdf', 'Evaluasi Kinerja', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:00:08', '2024-07-21 08:00:08'),
(168, 'Sekretaris Jurusan', 'Laporan Rapat Tinjauan', 'Laporan Rapat Tinjauan Manajemen', 'Dokumen Strategi', 'Ketua Jurusan', 0, 2023, NULL, 'Laporan_RTM_Prodi_Manajemen_Informatika_-_2023.pdf', 'Rapat Tinjauan, Laporan', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:03:05', '2024-07-21 08:03:05'),
(169, 'Sekretaris Jurusan', 'Rencana Operasional', 'Rencana Operasional Program Studi D3 Manajemen Infromatika', 'Dokumen Strategi', 'Ketua Jurusan', 0, 2022, NULL, 'RENOP_2023_MI.pdf', 'Rencana Operasional', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:36:59', '2024-07-21 08:36:59'),
(170, 'Sekretaris Jurusan', 'STANDAR PELAMPAUAN', 'Standar Kerja Sama', 'Dokumen Kerjasama', 'Direktur', 0, 2020, NULL, 'Standar_Kerjasama.pdf', 'standar kerjasama', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:48:41', '2024-07-21 08:48:41'),
(171, 'Sekretaris Jurusan', 'Kebijakan Mutu', 'Kebijakan Mutu Sistem Pnejaminan Mutu Internal', 'Dokumen Pendidikan', 'Direktur', 0, 2018, NULL, 'Kebijakan-SPMI-PNP-2018.pdf', 'Kebijakan SPMI', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:51:43', '2024-07-21 08:51:43'),
(172, 'Sekretaris Jurusan', 'STANDAR PENGELOLAAN PENELITIAN', 'Standar SPMI Pengelolaan Penelitian', 'Dokumen Penelitian', 'Direktur', 0, 2020, NULL, 'Standar_Pengelolaan_Penelitian.pdf', 'Penelitian, Standar Pengelolaan', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:53:30', '2024-07-21 08:53:30'),
(173, 'Sekretaris Jurusan', 'STANDAR PENGELOLAAN PENGABDIAN MASYARAKAT', 'Standar SPMI Standar Pengelolaan Pengabdian Masyarakat', 'Dokumen Pengabdian Kepada Masyarakat', 'Direktur', 0, 2020, NULL, 'Standar_Pengelolaan_Pengabdian.pdf', 'Pengabdian, Pengelolaan', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:55:04', '2024-07-21 08:55:04'),
(174, 'Sekretaris Jurusan', 'Laporan Kinerja', 'Laporan Kinerja Jurusan Teknologi Informasi', 'Dokumen Capaian Tridarma', 'Direktur', 0, 2023, NULL, 'LAPORAN_KINERJA_Jurusan_TI_2023.pdf', 'Kinerja, Laporan', 'Ketua Jurusan,Sekretaris Jurusan,Kaprodi', 'active', '2024-07-21 08:56:56', '2024-07-21 08:56:56'),
(177, 'Nama Pengguna Baru', 'Dokumen Sertifikat', 'Sertifikat Magang Merdeka_Batch 5', 'Dokumen Pendidikan', 'Ketua Jurusan', 0, 2023, NULL, 'Sertifikat-MSIB-5_[TTD]-Enzi_Marni.pdf', 'sertifikat, MSIB', 'All', 'active', '2024-07-30 01:09:06', '2024-07-30 01:09:06'),
(178, 'Nama Pengguna Baru', 'Dokumen Sertifikat', 'Sertifikat Magang Merdeka_Batch 5', 'Dokumen Pendidikan', 'Ketua Jurusan', 0, 2023, NULL, 'Sertifikat-MSIB-5_[TTD]-Enzi_Marni.pdf', 'sertifikat, MSIB', 'All', 'active', '2024-08-02 23:10:28', '2024-08-02 23:10:28'),
(179, 'Nama Pengguna Baru', 'Dokumen Sertifikat', 'Sertifikat Magang Merdeka_Batch 5', 'Dokumen Pendidikan', 'Ketua Jurusan', 0, 2023, NULL, 'Sertifikat-MSIB-5_[TTD]-Enzi_Marni.pdf', 'sertifikat, MSIB', 'All', 'active', '2024-08-03 00:57:58', '2024-08-03 00:57:58'),
(180, 'Nama Pengguna Baru', 'Dokumen Sertifikat', 'Sertifikat Magang Merdeka_Batch 5', 'Dokumen Pendidikan', 'Ketua Jurusan', 0, 2023, NULL, 'Sertifikat-MSIB-5_[TTD]-Enzi_Marni.pdf', 'sertifikat, MSIB', 'All', 'active', '2024-08-04 22:26:45', '2024-08-04 22:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE `draft` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `judul_dokumen` varchar(225) CHARACTER SET utf8mb4 NOT NULL,
  `deskripsi_dokumen` text CHARACTER SET utf8mb4 NOT NULL,
  `kategori_dokumen` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `validasi_dokumen` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status_file` tinyint(1) DEFAULT '0',
  `tahun_dokumen` year(4) NOT NULL,
  `dokumen_file` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dokumen_link` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `view` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `draft`
--

INSERT INTO `draft` (`id`, `created_by`, `judul_dokumen`, `deskripsi_dokumen`, `kategori_dokumen`, `validasi_dokumen`, `status_file`, `tahun_dokumen`, `dokumen_file`, `dokumen_link`, `tags`, `view`, `status`, `updated_at`, `created_at`) VALUES
(1, 'mahasiswa2', 'Sertifikat', 'Sertifikat MSIB', 'Dokumen Pendidikan', 'Menteri Pendidikan, Kebudayaan, Riset Dan Teknologi', 0, 2024, 'Sertifikat-MSIB-5_[TTD]-Enzi_Marni.pdf', NULL, 'Sertifikat', 'All', 'draft', '2024-07-27 00:27:35', '2024-07-27 00:27:35'),
(2, 'Nama Pengguna Baru', 'Repository Update', 'Sertifikat Magang Merdeka_Batch 5', 'Dokumen Pendidikan', 'Ketua Jurusan', 0, 2023, 'Dokumen_Internal.pdf', NULL, 'tag1,tag2', 'Ketua Jurusan', 'draft', '2024-08-05 00:04:43', '2024-08-05 00:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `dokumen_id` int(11) NOT NULL,
  `judul_dokumen` varchar(255) NOT NULL,
  `deskripsi_dokumen` text NOT NULL,
  `kategori_dokumen` varchar(255) NOT NULL,
  `validasi_dokumen` varchar(255) NOT NULL,
  `status_file` tinyint(1) DEFAULT '0',
  `tahun_dokumen` int(11) NOT NULL,
  `dokumen_link` varchar(255) DEFAULT NULL,
  `dokumen_file` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `created_at`) VALUES
(1, 'All', '2024-07-07 11:47:35'),
(20, 'Ketua Jurusan', '2024-06-26 15:50:10'),
(21, 'Sekretaris Jurusan', '2024-06-26 15:50:10'),
(22, 'Kaprodi', '2024-06-26 15:50:10'),
(23, 'Dosen', '2024-06-26 15:50:10'),
(24, 'Adm', '2024-06-26 15:50:10'),
(25, 'Mahasiswa', '2024-06-26 15:50:10'),
(26, 'Admin', '2024-06-26 15:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_dokumen`
--

CREATE TABLE `kategori_dokumen` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_dokumen`
--

INSERT INTO `kategori_dokumen` (`id`, `nama_dokumen`, `created_at`) VALUES
(1, 'Dokumen Visi Misi', '2024-06-24 18:28:56'),
(2, 'Dokumen Tujuan', '2024-06-24 18:28:56'),
(3, 'Dokumen Strategi', '2024-06-24 18:28:56'),
(4, 'Dokumen Tata Pamong', '2024-06-24 18:28:56'),
(5, 'Dokumen Tata Kelola', '2024-06-24 18:28:56'),
(6, 'Dokumen Kerjasama', '2024-06-24 18:28:56'),
(7, 'Dokumen Mahasiswa', '2024-06-24 18:28:56'),
(8, 'Dokumen Sumber Daya Manusia', '2024-06-24 18:28:56'),
(9, 'Dokumen Keuangan', '2024-06-24 18:28:56'),
(10, 'Dokumen Sarana Prasarana', '2024-06-24 18:28:56'),
(11, 'Dokumen Pendidikan', '2024-06-24 18:28:56'),
(12, 'Dokumen Penelitian', '2024-06-24 18:28:56'),
(13, 'Dokumen Pengabdian Kepada Masyarakat', '2024-06-24 18:28:56'),
(14, 'Dokumen Iuran', '2024-06-24 18:28:56'),
(15, 'Dokumen Capaian Tridarma', '2024-06-24 18:28:56'),
(20, 'Surat Tugas', '2024-07-19 15:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `approved`, `password`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'super user', 'superuser@example.com', 1, '$2y$12$3U52mGDwQa42EB7wGtvEoev4OG3WqRFwtggZ1ynhrcg8OVNQfoNQO', 'Admin', '2024-05-08 17:52:21', '2024-06-13 10:56:47'),
(9, 'Ketua Jurusan', 'kajur@example.com', 1, '$2y$12$MDzlIpHrNa/Vx347IPO6ROJJybcRXb5xyiGDN6tcrbcpmCbrSMS3q', 'Ketua Jurusan', '2024-06-14 07:52:09', '2024-07-19 20:56:06'),
(10, 'Sekretaris Jurusan', 'sekjur@example.com', 1, '$2y$12$EXIc0IEb8MP4dY.YFcAbDO8uxs9DwzoYf31sQQu./hYZQUsYBWYqO', 'Sekretaris Jurusan', '2024-06-14 07:53:19', '2024-07-19 20:56:16'),
(11, 'Kaprodi', 'kaprodi@example.com', 1, '$2y$12$weC3nWpMLcMtrEXTj/mTr.TbvYKS3.Gnc6ZwzFt50ek/ED1Xop1q2', 'Kaprodi', '2024-06-14 07:55:14', '2024-06-16 11:03:45'),
(12, 'Dosen', 'dosen@example.com', 1, '$2y$12$da22xoMe/yEQdtymlouW7OXaQ/Iqw7NQyfNECnyGC3m7NGyGhuzBC', 'Dosen', '2024-06-14 08:00:20', '2024-06-25 14:26:28'),
(13, 'Adm', 'adm@example.com', 1, '$2y$12$DaVdHSAzSxjYs1F1z.JdWOUwRWMTipe2UvXg5myiZm2FMFU86x9ge', 'Adm', '2024-06-14 08:01:14', '2024-07-13 02:02:25'),
(14, 'Nama Pengguna Baru', 'mahasiswa@example.com', 1, '$2y$12$f4qq6Eym2PEL5ujNGjNHhODxikukUuR4ybOSP49jPAixaR88CE.2u', 'Mahasiswa', '2024-06-14 08:02:06', '2024-08-03 00:01:46'),
(15, 'Admin', 'admin@example.com', 1, '$2y$12$UWVkYaZzPqs5FEOETedIK.gAULspUIrtq23Bkqqdaksp4EZLzY.ia', 'Admin', '2024-06-14 08:02:41', '2024-06-16 11:14:36'),
(26, 'Contoh', 'contoh@gmail.com', 1, '$2y$12$Jxa7C4ZMoXYckR6J0ddBeuCveypA8gciSw5kHndsHrWLntyYxkFyS', 'contoh 1', '2024-07-19 09:06:42', '2024-07-19 09:07:28'),
(27, 'Mahasiswa', 'testtest@gmail.com', 1, '$2y$12$q9zaMZaEzenGsGPHmFTe.ejtQhzE/53jAEqhxlVhsuPMBZOmN6A/2', 'Mahasiswa', '2024-07-19 09:09:22', '2024-08-02 23:59:56'),
(28, 'Mahasiswa1', 'mahasiswa1@gmail.com', 1, '$2y$12$R3fyIrDDsy0p6QMkDgtfzuhF0dkWmNr0wx52ZX3BO99ll5QIOZPBa', 'Mahasiswa', '2024-07-20 18:17:26', '2024-08-03 00:01:46'),
(29, 'mahasiswa2', 'mahasiswa2@gmail.com', 1, '$2y$12$wNizmYmjh5nQ6McD7CiqB.Hh1xKeim2TJZk7hmUZYvk0PK.e00HBG', 'Mahasiswa', '2024-07-20 18:17:52', '2024-07-25 05:04:25'),
(32, 'Test Mahasiswa', 'mahasiswa1@example.com', 1, '$2y$12$zkYrtkQu4tJFKZ7spTawKedHRlD2O7fy.8XQWLAKXiFVCzgbVIkES', 'Mahasiswa', '2024-07-23 04:19:19', '2024-07-23 04:29:47'),
(33, 'Test Mahasiswa', 'mahasiswa2020@example.com', 0, '$2y$12$n/9sWrJ9fOvtkWXsrF47EuhlAp5rBShAm51Mo7xdwofnYEqH.HiBW', 'Mahasiswa', '2024-08-05 00:15:54', '2024-08-05 00:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `validasi`
--

CREATE TABLE `validasi` (
  `id` int(11) NOT NULL,
  `nama_validasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `validasi`
--

INSERT INTO `validasi` (`id`, `nama_validasi`, `created_at`, `updated_at`) VALUES
(30, 'Ketua Jurusan', '2024-06-27 23:04:53', '2024-07-08 16:56:42'),
(31, 'Ketua Program Studi', '2024-06-27 23:04:53', '2024-07-08 16:56:42'),
(32, 'Kelompok Bidang Keahlian', '2024-06-27 23:04:53', '2024-07-08 16:56:42'),
(33, 'Direktur', '2024-07-20 22:34:42', '2024-07-22 17:32:30'),
(34, 'Direktur Jendral Pendidikan Tinggi', '2024-07-21 07:16:11', '2024-07-21 07:16:11'),
(35, 'Menteri Pendidikan, Kebudayaan, Riset Dan Teknologi', '2024-07-21 07:28:15', '2024-07-21 07:28:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_id` (`dokumen_id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_jabatan` (`nama_jabatan`);

--
-- Indexes for table `kategori_dokumen`
--
ALTER TABLE `kategori_dokumen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_dokumen` (`nama_dokumen`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `validasi`
--
ALTER TABLE `validasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_validasi` (`nama_validasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumens`
--
ALTER TABLE `dokumens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `draft`
--
ALTER TABLE `draft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kategori_dokumen`
--
ALTER TABLE `kategori_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `validasi`
--
ALTER TABLE `validasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`dokumen_id`) REFERENCES `dokumens` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
