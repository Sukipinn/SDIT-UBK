-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2026 at 03:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdit_ubk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'bcrypt hash',
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `nama_lengkap`, `email`, `created_at`) VALUES
(1, 'admin', '$2y$10$TuZ6Ruk/HdQs8svSlufaWuT8Qg72G8H94qjtRhNAlRijcg5QI4DOy', 'Administrator', 'admin@sdit-ubk.sch.id', '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int NOT NULL,
  `judul` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `created_at`) VALUES
(1, 'Penerimaan Peserta Didik Baru 2026/2027', 'SDIT Umar Bin Khattab Kudus membuka pendaftaran peserta didik baru untuk tahun ajaran 2026/2027. Dapatkan diskon pendaftaran untuk 50 pendaftar pertama!', NULL, '2026-01-10', '2026-01-14 05:39:30'),
(2, 'Juara 1 Lomba Tahfidz Tingkat Kabupaten', 'Alhamdulillah, siswa-siswi SDIT UBK meraih juara 1 pada lomba Tahfidz Qur\'an tingkat Kabupaten Kudus yang diselenggarakan pada 5 Januari 2026.', NULL, '2026-01-08', '2026-01-14 05:39:30'),
(3, 'Kegiatan Outbound Siswa Kelas 5', 'Siswa kelas 5 mengikuti kegiatan outbound di Colo Adventure Kudus sebagai bagian dari program pengembangan karakter dan teamwork.', NULL, '2026-01-05', '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '?',
  `warna` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '#2D7A3E' COMMENT 'Hex color code',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id`, `nama`, `deskripsi`, `icon`, `warna`, `created_at`) VALUES
(1, 'Tahfidz Qur\'an', 'Program menghafal Al-Qur\'an dengan metode Yanbu\'a', '📖', '#2D7A3E', '2026-01-14 05:39:30'),
(2, 'Futsal', 'Latihan futsal untuk membentuk jiwa sportif dan teamwork', '⚽', '#1E88E5', '2026-01-14 05:39:30'),
(3, 'Basket', 'Ekstrakurikuler basket mini untuk siswa kelas 3-6', '🏀', '#FF6F00', '2026-01-14 05:39:30'),
(4, 'English Club', 'Meningkatkan kemampuan berbahasa Inggris dengan fun learning', '🗣️', '#8E24AA', '2026-01-14 05:39:30'),
(5, 'Sains Club', 'Eksperimen sains sederhana untuk menumbuhkan rasa ingin tahu', '🔬', '#00897B', '2026-01-14 05:39:30'),
(6, 'Komputer', 'Belajar dasar-dasar komputer dan coding untuk anak', '💻', '#5E35B1', '2026-01-14 05:39:30'),
(7, 'Kaligrafi Arab', 'Seni menulis indah kaligrafi Arab dengan khat Naskhi', '✍️', '#D4AF37', '2026-01-14 05:39:30'),
(8, 'Hadroh', 'Seni musik Islami dengan rebana dan vocals', '🥁', '#6D4C41', '2026-01-14 05:39:30'),
(9, 'Pramuka', 'Gerakan pramuka untuk membentuk karakter kepemimpinan', '🏕️', '#558B2F', '2026-01-14 05:39:30'),
(10, 'Karate', 'Bela diri karate untuk melatih disiplin dan percaya diri', '🥋', '#D32F2F', '2026-01-14 05:39:30'),
(11, 'Renang', 'Ekstrakurikuler renang di kolam renang Kudus', '🏊', '#0288D1', '2026-01-14 05:39:30'),
(12, 'Melukis', 'Seni melukis dan menggambar untuk kreativitas anak', '🎨', '#E91E63', '2026-01-14 05:39:30'),
(13, 'Tari Tradisional', 'Tarian tradisional Indonesia untuk melestarikan budaya', '💃', '#C2185B', '2026-01-14 05:39:30'),
(14, 'Robotik', 'Belajar merakit robot sederhana dan programming dasar', '🤖', '#455A64', '2026-01-14 05:39:30'),
(15, 'Jurnalistik', 'Belajar menulis berita dan membuat majalah dinding', '📰', '#F57C00', '2026-01-14 05:39:30'),
(16, 'Panahan', 'Seni memanah sesuai sunnah Rasulullah SAW', '🏹', '#4E342E', '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `jabatan`, `foto`, `pendidikan`, `created_at`) VALUES
(2, 'Ustadzah Siti Nurhaliza, S.Pd', 'Wali Kelas 1A', NULL, 'S1 Pendidikan Guru Sekolah Dasar', '2026-01-14 05:39:30'),
(3, 'Ustadz Muhammad Ridwan, S.Pd', 'Wali Kelas 1B', NULL, 'S1 Pendidikan Guru Sekolah Dasar', '2026-01-14 05:39:30'),
(4, 'Ustadzah Fatimah Azzahra, S.Pd', 'Wali Kelas 2A', NULL, 'S1 Pendidikan Guru Sekolah Dasar', '2026-01-14 05:39:30'),
(5, 'Ustadz Yusuf Abdullah, S.Pd', 'Wali Kelas 2B', NULL, 'S1 Pendidikan Guru Sekolah Dasar', '2026-01-14 05:39:30'),
(6, 'Ustadzah Khadijah Amin, S.Pd', 'Wali Kelas 3A', NULL, 'S1 Pendidikan Guru Sekolah Dasar', '2026-01-14 05:39:30'),
(7, 'Ustadz Umar Hasan, S.Pd', 'Guru Tahfidz', NULL, 'S1 Pendidikan Agama Islam', '2026-01-14 05:39:30'),
(8, 'Ustadzah Aisyah Rahman, S.Pd', 'Guru Bahasa Inggris', NULL, 'S1 Pendidikan Bahasa Inggris', '2026-01-14 05:39:30'),
(9, 'Ustadz Ibrahim Malik, S.Kom', 'Guru Komputer', NULL, 'S1 Teknik Informatika', '2026-01-14 05:39:30'),
(12, 'Muhammad Akif Abdul Hafidz', 'Hamba Allah', 'uploads/guru/IMG_20220515_213056_1768443990_696850562ae25.jpg', 'S5 Mid', '2026-01-15 02:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `halaman_statis`
--

CREATE TABLE `halaman_statis` (
  `id` int NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman_statis`
--

INSERT INTO `halaman_statis` (`id`, `slug`, `judul`, `konten`, `updated_at`) VALUES
(1, 'sejarah', 'Sejarah SDIT Umar Bin Khattab Kudus', '<p>SDIT Umar Bin Khattab Kudus didirikan pada tahun 2010 di bawah naungan <strong>Yayasan Al-Fath</strong> dengan tujuan mencetak generasi Qur\'ani yang berakhlak mulia dan unggul dalam prestasi.</p><p>Berawal dari 2 rombongan belajar dengan 40 siswa, kini SDIT UBK telah berkembang menjadi sekolah dengan 12 rombongan belajar dan lebih dari 300 siswa aktif.</p><p>Sekolah yang berlokasi strategis di pusat Kota Kudus ini dilengkapi dengan fasilitas modern seperti ruang kelas ber-AC, laboratorium komputer, perpustakaan digital, dan masjid yang nyaman untuk kegiatan ibadah siswa.</p>', '2026-01-14 05:39:30'),
(2, 'visi_misi', 'Visi & Misi SDIT Umar Bin Khattab', '<h3>VISI</h3><p>\"Menjadi Sekolah Dasar Islam Terpadu yang unggul dalam prestasi, kuat dalam akidah, dan berakhlak mulia berdasarkan Al-Qur\'an dan As-Sunnah\"</p><h3>MISI</h3><ol><li>Menyelenggarakan pendidikan Islam terpadu yang mengintegrasikan ilmu pengetahuan umum dan agama</li><li>Membentuk generasi Qur\'ani melalui program tahfidz Al-Qur\'an</li><li>Mengembangkan potensi akademik dan non-akademik siswa secara optimal</li><li>Menanamkan nilai-nilai akhlak mulia dalam kehidupan sehari-hari</li><li>Menciptakan lingkungan sekolah yang Islami, nyaman, dan kondusif untuk belajar</li></ol>', '2026-01-14 05:39:30'),
(3, 'sambutan', 'Sambutan Kepala Sekolah', '<div style=\"text-align: center; margin-bottom: 20px;\"><em>\"Assalamu\'alaikum Warahmatullahi Wabarakatuh\"</em></div><p>Alhamdulillahi rabbil \'alamin, segala puji bagi Allah SWT yang telah memberikan rahmat dan hidayah-Nya kepada kita semua.</p><p>Selamat datang di website resmi <strong>SDIT Umar Bin Khattab Kudus</strong>. Kami berkomitmen untuk memberikan pendidikan terbaik yang mengintegrasikan nilai-nilai Islam dengan ilmu pengetahuan modern.</p><p>Di SDIT UBK, kami tidak hanya fokus pada prestasi akademik, tetapi juga pembentukan karakter Islami yang kuat. Melalui program tahfidz, pembelajaran berbasis STEM, dan berbagai kegiatan ekstrakurikuler, kami berupaya mencetak generasi yang cerdas, beriman, dan berakhlak mulia.</p><p>Semoga website ini dapat menjadi jembatan komunikasi antara sekolah dengan orang tua, masyarakat, dan seluruh stakeholder pendidikan. Mari bersama-sama kita wujudkan generasi Qur\'ani yang gemilang.</p><div style=\"margin-top: 30px;\"><strong>Wassalamu\'alaikum Warahmatullahi Wabarakatuh</strong><br><br><strong>Ustadz Ahmad Fauzi, S.Pd.I</strong><br>Kepala Sekolah SDIT Umar Bin Khattab Kudus</div>', '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id` int NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id`, `key`, `value`, `updated_at`) VALUES
(1, 'ppdb_status', 'open', '2026-01-14 05:39:30'),
(2, 'sekolah_alamat', 'Jl. Sunan Muria No. 123, Kudus, Jawa Tengah 59319', '2026-01-14 05:39:30'),
(3, 'sekolah_telepon', '(0291) 438888', '2026-01-14 05:39:30'),
(4, 'sekolah_email', 'info@sdit-ubk.sch.id', '2026-01-14 05:39:30'),
(5, 'sekolah_jam_operasional', 'Senin - Jumat: 07.00 - 15.00 WIB<br>Sabtu: 07.00 - 12.00 WIB', '2026-01-14 05:39:30'),
(6, 'social_facebook', 'https://facebook.com/sditubkkudus', '2026-01-14 05:39:30'),
(7, 'social_instagram', 'https://instagram.com/sditubkkudus', '2026-01-14 05:39:30'),
(8, 'social_youtube', 'https://youtube.com/@sditubkkudus', '2026-01-14 05:39:30'),
(9, 'logo_path', 'uploads/config/logo.png', '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `telepon`, `pesan`, `is_read`, `created_at`) VALUES
(1, 'Budi Santoso', 'budi.santoso@email.com', '081234567890', 'Assalamu\'alaikum, saya ingin menanyakan biaya pendaftaran dan SPP untuk tahun ajaran 2026/2027. Terima kasih.', 1, '2026-01-14 05:39:30'),
(2, 'Dewi Lestari', 'dewi.lestari@email.com', '085678901234', 'Apakah SDIT UBK menerima siswa pindahan dari sekolah lain? Anak saya saat ini kelas 3 SD.', 0, '2026-01-14 05:39:30'),
(3, 'Rudi Hartono', 'rudi.hartono@email.com', '089876543210', 'Mohon info jadwal open house dan pendaftaran gelombang 2. Jazakumullahu khairan.', 0, '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int NOT NULL,
  `nama_siswa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumen_akta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen_kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_siswa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','lolos','tidak_lolos') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ppdb`
--

INSERT INTO `ppdb` (`id`, `nama_siswa`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `nama_ayah`, `nama_ibu`, `no_hp`, `email`, `dokumen_akta`, `dokumen_kk`, `foto_siswa`, `status`, `created_at`) VALUES
(1, 'Muhammad Fahri Ramadhan', 'Kudus', '2019-05-15', 'L', 'Jl. Sunan Kudus No. 45, Kudus', 'Ahmad Sulaiman', 'Siti Maryam', '08123456789', 'ahmad.sulaiman@email.com', NULL, NULL, NULL, 'lolos', '2026-01-14 05:39:30'),
(2, 'Zahra Amelia Putri', 'Kudus', '2019-08-22', 'P', 'Jl. Singocandi No. 12, Kudus', 'Muhammad Hasan', 'Fatimah Azzahra', '08129876543', 'muh.hasan@email.com', NULL, NULL, NULL, 'pending', '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int NOT NULL,
  `judul` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` enum('akademik','olahraga','seni','agama') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat` enum('sekolah','kecamatan','kabupaten','provinsi','nasional') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id`, `judul`, `kategori`, `tingkat`, `tahun`, `deskripsi`, `created_at`) VALUES
(1, 'Juara 1 Tahfidz Juz 30', 'agama', 'kabupaten', 2026, 'Muhammad Azka Ramadhan meraih juara 1 lomba Tahfidz Juz 30 tingkat Kabupaten Kudus', '2026-01-14 05:39:30'),
(2, 'Juara 2 Olimpiade Matematika', 'akademik', 'provinsi', 2025, 'Salma Zahira meraih juara 2 Olimpiade Matematika SD tingkat Provinsi Jawa Tengah', '2026-01-14 05:39:30'),
(3, 'Juara 1 Futsal Antar SD', 'olahraga', 'kecamatan', 2025, 'Tim futsal putra SDIT UBK juara 1 pada kompetisi antar SD se-Kecamatan Kota', '2026-01-14 05:39:30'),
(4, 'Juara 3 Kaligrafi Arab', 'seni', 'kabupaten', 2025, 'Nabila Putri meraih juara 3 lomba kaligrafi Arab tingkat Kabupaten Kudus', '2026-01-14 05:39:30'),
(5, 'Juara 1 Cerdas Cermat Agama', 'agama', 'kabupaten', 2025, 'Tim cerdas cermat agama SDIT UBK juara 1 tingkat Kabupaten', '2026-01-14 05:39:30'),
(6, 'Juara 2 English Speech', 'akademik', 'kabupaten', 2025, 'Ahmad Zidan meraih juara 2 lomba pidato Bahasa Inggris', '2026-01-14 05:39:30'),
(7, 'Juara 1 Basket Mini', 'olahraga', 'sekolah', 2025, 'Kelas 5A juara 1 turnamen basket mini antar kelas', '2026-01-14 05:39:30'),
(8, 'Juara 1 Hadroh', 'seni', 'provinsi', 2025, 'dalam rangka HUT RI', '2026-01-14 05:39:30'),
(9, 'Juara 1 Data Analyst', 'akademik', 'nasional', 2025, 'Alhmadulillah', '2026-01-15 02:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urutan` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `nama`, `deskripsi`, `icon`, `urutan`, `created_at`) VALUES
(1, 'Program Tahfidz Qur\'an', 'Program unggulan SDIT UBK dalam menghafal Al-Qur\'an dengan metode Yanbu\'a. Setiap siswa ditargetkan hafal minimal 1 juz selama di SDIT dengan bimbingan guru tahfidz berpengalaman.', NULL, 1, '2026-01-14 05:39:30'),
(2, 'Program Sains & Teknologi', 'Pembelajaran berbasis STEM (Science, Technology, Engineering, Mathematics) dengan praktikum langsung, kunjungan ke science center, dan pelatihan robotik untuk menumbuhkan jiwa inovatif.', NULL, 2, '2026-01-14 05:39:30'),
(3, 'Program Bina Pribadi Islami', 'Pembentukan karakter Islami melalui pembiasaan ibadah harian, akhlak mulia, dan nilai-nilai Islam dalam kehidupan sehari-hari. Dilengkapi dengan mentoring dan program tarbiyah.', NULL, 3, '2026-01-14 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `admin_id`, `ip_address`, `user_agent`, `last_activity`) VALUES
('00978ac08cc1ca62e8363eb659284aba75d04524bb5fa72cac8f050e5694575c', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:07:14'),
('0bf86a71f0e5a032e8ade33eee7712366a10bf2954ea381d569f1870cce0681f', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 06:28:06'),
('100cb798fe1e99d0469c3a05c1bac67759b4be73fa003fdd58aa93e554a5999a', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:15:39'),
('192e77a0892c7b6cd899a8d7c49a7144a879155f97025dab586478d67fdf1cdf', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-14 06:09:26'),
('1a390da8e69f182696a87e8f39522acd70301e7eec701d031dd7729a51a47b1f', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:07:21'),
('1eaa2d7af0378b76597d9c178f076a8fd1e3c0603400803104e77168021d5eff', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 00:52:30'),
('3007df88b35369b9155fa8ab1fe332569cdb0ae85b842ef9da664f87db5905a9', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 03:02:25'),
('3167813aad72d336fb28329d56248674a386b5ef7e1c1acd61dc740419fbeebd', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:15:13'),
('3baaa50baf3a523f32e729010c019299268c1676a3d003fa937a94d60794f929', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:06:51'),
('3c63361e514be6bb135c56443d6e14a78224ca855f966be7fa2124a98bd01b01', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:10:25'),
('3d6efc5f8daec2bd81e8db4a7b9ef25acf8785ed589ae3870ee8329753529dc4', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:42:14'),
('4f87ded84a29e0c775b0d523e0bf9b074e10c76846d3939dce006047b92212b9', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:12:39'),
('587a310896c11599bb6ed25e4c4c9269617fecdc609e968242083ae07a2e1a37', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:51:14'),
('62b7dcc4db83c5d8921ecb1d0296825d8fd0762c3d0989d4f9e0996cb803eb61', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:13:38'),
('698324625912c63bc5f4a3a340a577e702ef1209a344acbedb08e9c07625979f', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 03:11:01'),
('6c9131f7dbeff6aafab36a8bfb2d8358464f016dfa9675f2385628be16c6c154', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 02:14:30'),
('6cb8c0ff20f69e6bd9c1195173003507844e8bf9855c5a70e64fb18c6e6b8f59', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 06:28:08'),
('6fee2eca34ec33d352e25b3f3b2db57ef58dac1357285bcd78b4591c8a174965', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:54:27'),
('73005e2bc05debe3c404f355be1c8d36f2dabe9c11241e1874b7c1963613c16b', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-14 06:24:28'),
('77869d74a0c272e36162eae303b7ef6cc2cd6bfbe4e243afa9145bc7d2f98dc8', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:10:01'),
('7e0ad89b4dd6326797ef8e11591c5e990f2a92aade97b47e5dd623192415f553', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:00:01'),
('861efd509f94a3b8b58a5c2dd126bf67509098d2c32bd400c53955a032288416', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 06:37:21'),
('8948bdb057f57198789776c9ef8cb08482739a9e83165b3e9a351007b296d850', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 02:00:37'),
('8bfb3dfdcaf510304d3a96396ef08323404dc6a14a406166ecabd1bf5c8d45f0', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 02:20:12'),
('8c6e72528fe360ed4c4f574b4390d9ed03aafd2cccce04e1e87a527ed49abb45', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:17:59'),
('8f1d53b4860d4e696fdc8a013edc46af9056411cc06455dc9b96e262dee3410c', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:04:10'),
('98d1f4ae589ce46ad1779bb1d4ecae109a0af9ce82de5b8e207ec444d599967a', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-14 06:09:38'),
('a52dcafb64adb456c343449114ae20ae1b2e6222fbeef0a295b32f8f3fb15331', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 06:10:44'),
('afe33aa0ca2a802b17bcded2cbca1110f818f941ee9837bb435eb96280b5919d', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-14 06:21:18'),
('b295ccd5c69e1cf5ee87a40de5032990fc899465576e18484e474c7bab3ce21c', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:09:02'),
('bf653d80103a7b170f3300a95e740e7a931fa68bc6528b0f6407ab55bf5b19ea', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-14 06:23:59'),
('ca20ce2abf6ce4bda446a07adce20f9d6842d1d15ead9c91b909d40bbb781c45', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-14 06:18:47'),
('d1b2bd2a7fa6ca29e06c90f45d46cc2931e29e0f1cec818610ae9008b7337427', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:15:57'),
('dd89242fa587b1c87c973f6840dea60972e0ff7eed5600234511f036957bfb48', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 01:14:57'),
('dfacaec59abed9de5c3a7ab802475fe52409bfd2a08cc45fb8e0a4b5e3a6f3f9', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 02:10:46'),
('ec44d4b4a44e1cc9561d9d51e798c486e7bccbd811a8711b34f0e5293bf3db10', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 00:55:59'),
('fb8b9e279e4ebf862cc2cc711c783c4d560fb87fcb30be86b2e415754a4a3521', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-15 03:05:46'),
('fcec71d5ffb988b1362cf13064c0bea1cc60d1c3f2112f0ddbb8f032e3d2e0f5', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-14 14:28:42'),
('fddc3035bb279deb7b4aea6b610b2e320ce55735c5827cc3d362dbeba36d7472', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', '2026-01-15 01:13:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tanggal` (`tanggal`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jabatan` (`jabatan`);

--
-- Indexes for table `halaman_statis`
--
ALTER TABLE `halaman_statis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_slug` (`slug`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_is_read` (`is_read`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kategori` (`kategori`),
  ADD KEY `idx_tahun` (`tahun`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_urutan` (`urutan`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_id` (`admin_id`),
  ADD KEY `idx_last_activity` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `halaman_statis`
--
ALTER TABLE `halaman_statis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
