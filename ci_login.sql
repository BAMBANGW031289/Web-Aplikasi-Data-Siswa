-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Apr 2018 pada 16.49
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(3) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_guru` text NOT NULL,
  `telpon_guru` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `nip`, `kelamin`, `alamat_guru`, `telpon_guru`, `username`, `password`) VALUES
(1, 'Budi Setiawan', '111112', 'laki-laki', 'Bogor', '0217703999', 'budi', 'guru'),
(2, 'Rosni Anjar', '111113', 'perempuan', 'Jakarta', '0217703111', 'rosni', 'guru'),
(3, 'Iwan Pranoto', '111114', 'laki-laki', 'Cijantung', '0217703222', 'iwan', 'guru'),
(4, 'Imam Raharja', '111115', 'laki-laki', 'Bekasi', '0217703555', 'imam', 'guru'),
(5, 'Desi Sukma', '111116', 'perempuan', 'Bogor', '0217703444', 'desi', 'guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `NAMA` varchar(200) DEFAULT NULL,
  `ALAMAT` varchar(150) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(12) DEFAULT NULL,
  `FAX` varchar(13) DEFAULT NULL,
  `PIC` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `KOTA` varchar(15) DEFAULT NULL,
  `WILAYAH` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `NAMA`, `ALAMAT`, `PHONE`, `MOBILE`, `FAX`, `PIC`, `EMAIL`, `KOTA`, `WILAYAH`) VALUES
(1, 'Asdep Penataan Ruang Kav. Strategis Ekonomi', '-', '-', '081286808423', '-', 'Ibu. silmi', 'silmitsurayyaiz@gmail.com', 'Jakarta', 'DKI Jakarta'),
(2, 'Bappeda DKI', '-', '-', '08122392899', '-', 'Ibu Anie', 'bidang.psklh@bappedadki.net', 'Jakarta', 'DKI Jakarta'),
(3, 'Bappeda DKI Kepala Dinas Penataan Kota', '-', '021-3811613/33822159', '085945608060', '021-3822360', 'Bp.Douglas', '-', 'Jakarta', 'DKI Jakarta'),
(4, 'Bappeda Kabupaten Mimika', '-', '-', '081219355510', '-', 'Bp. Casper', '-', 'Papua', 'Irian Jaya'),
(5, 'Bappeda Karawang', '-', '-', '08128444321', '-', 'Bp. Arian', '-', 'Karawang', 'Jawa Barat'),
(6, 'Bappeda Kepri', '-', '-', '081277499924', '-', 'Ibu Venny', '-', 'Batam', 'Kepulauan Riau'),
(7, 'Bappeda Kota Bogor', '-', '(0251)8338052', '-', '(0251)8321075', '-', '-', 'Bogor', 'Jawa Barat'),
(8, 'Bappeda Kota Bukit Tinggi', 'Jl. Kusuma Bhakti No.1 (Bukit Gulai Bancah)', '(0752)33050', '-', '-', '-', '-', 'Bukit Tinggi', 'Sumatera Barat'),
(9, 'Bappeda Kota Makassar', '-', '-', '082196457497', '-', 'Ibu Yanisa', '-', 'Makassar', 'Sulawesi Selata'),
(10, 'Bappeda Kota Makassar', '-', '-', '08164385897', '-', 'Bp. Darwis', '-', 'Makassar', 'Sulawesi Selata'),
(11, 'Bappeda Kota Makassar', '-', '-', '085395244119', '-', 'Ibu Tasya', '-', 'Makassar', 'Sulawesi Selata'),
(12, 'Bappeda Prov. Sulsel kasubdit Tata Ruang', '-', '-', '08124256772', '(0411) 453869', 'Ibu Any Ro', '-', 'Makassar', 'Sulawesi Selata'),
(13, 'Bappeda Provinsi Jatim', '-', '-', '081332205467', '-', 'Tiat Sutra', '-', 'Surabaya', 'Jawa Timur'),
(14, 'Bappeda Provinsi Sumatera Barat', 'Jl. Khatib Sulaiman, No.1, Padang Sumatera Barat', '(0751)7054374', '-', '-', '-', '-', 'Bukit Tinggi', 'Sumatera Barat'),
(15, 'Bappeda Sekretariat Bogor', '-', '(0251)8321075', '-', '(0251)8321577', '-', 'bappeda.sekretariat@gmail.com', 'Bogor', 'Jawa Barat'),
(16, 'Bappenas Kelautan dan Perikanan', '-', '-', '-', '-', '-', 'rierie269@gmail.com', 'Jakarta', 'DKI Jakarta'),
(17, 'Bappenas Pangan Pertanian Deputi Kemaritiman', '-', '021-31934323', '-', '021-3915401', '-', 'pertanian@bappenas.go.id', 'Jakarta', 'DKI Jakarta'),
(18, 'Bappenas Pengembangan Wil. Regional', '', '021-3157016', 'Ext 3308/330', '-', 'Suratno', '-', 'Jakarta', 'DKI Jakarta'),
(19, 'Bappenas Tata Ruang dan Tanah', '-', '-', '-', '-', '-', 'trp@bappenas.go.id', 'Jakarta', 'DKI Jakarta'),
(20, 'Bidang Tata Ruang Kota Makassar', '-', '(0411) 435550', '-', '-', 'Bpk Yusril', '-', 'Makassar', 'Sulawesi Selata'),
(21, 'Bina Usaha Perdagangan', '-', '-', '-', '021-3858188', 'Bp. Sahar', 'ditbinusdag@kemendag.go.id', 'Jakarta', 'DKI Jakarta'),
(22, 'BPN Bogor', '-', '(0251)328796/323478', '-', '(0251)8332105', '-', '-', 'Bogor', 'Jawa Barat'),
(23, 'BPN Kota Bogor', '-', '(0251) 879011', '-', '(0251) 332105', '-', 'kot-bogor@bpn.go.id', 'Bogor', 'Jawa Barat'),
(24, 'BPN Provinsi Sumatera Barat', 'Jl. R.A Kartini No.22 Padang 2112', '0751-28279,28180', '-', '-', '-', 'sumbar@bpn.go.id', 'Padang', 'Sumatera Barat'),
(25, 'BPN Sumsel Makassar', '-', '(0411) 859539', '085242004579', '-', 'Bp. Taufik', 'taufikrahman@yahoo.com', 'Makassar', 'Sulawesi Selata'),
(26, 'Dinas Kebersihan Kota Bogor', '-', '-', '-', '(0251)8321577', '-', '-', 'Bogor', 'Jawa Barat'),
(27, 'Dinas Koperasi, Pengindustrian dan Perdagangan Kota Bukit Tinggi', 'Jl. Perwira No.148', '0752-21486', '-', '-', '-', '-', 'Bukit Tinggi', 'Sumatera Barat'),
(28, 'Dinas Pengelolaan Pasar Kota Bukit Tinggi', 'Jl. Yos Sudarso', '0752-21055', '-', '-', '-', '-', 'Bukit Tinggi', 'Sumatera Barat'),
(29, 'Dinas Perindustrian dan Perdagangan Provinsi Sumatera Barat', 'Jl. Khotib Sulaiman No.11', '(0751)7055292', '-', '(0751)7052701', '-', '-', 'Bukit Tinggi', 'Sumatera Barat'),
(30, 'Dinas Prasarana Jalan, Tata Ruang dan Permukiman Sumatera Barat', 'Jl. Taman Siswa No.1 Padang', '0751-7051756', '-', '0751-7051756', '-', '-', 'Padang', 'Sumatera Barat'),
(31, 'Dinas Tata Ruang Kepri', '-', '-', '08192203001', '-', 'Ibu Fauzia', '-', 'Batam', 'Kepulauan Riau'),
(32, 'Dinas Tata Ruang Kepri', '-', '-', '085271311757', '-', 'Bp Robi', '-', 'Batam', 'Kepulauan Riau'),
(33, 'Direktorat Jendral Perhubungan Darat', '-', '021-3503013', '-', '-', '-', '-', 'Jakarta', 'DKI Jakarta'),
(34, 'Direktorat Prasarana Perhubungan Darat', '-', '021-3506145', '-', '-', '-', '-', 'Jakarta', 'DKI Jakarta'),
(35, 'Direktur Sinkronisasi Urusan Daerah', '-', '021-7942640/7942634', '-', '-', '-', '-', 'Jakarta', 'DKI Jakarta'),
(36, 'Direktur Tata Ruang & Pertanahan Bappenas', '-', '021-3927412', '-', '-', '-', 'soedradjat@yahoo.com', 'Jakarta', 'DKI Jakarta'),
(37, 'Dinas Pengawasan Bangunan dan Permukiman', 'Jalan Pengadilan No. 8A;', '(0251)8322001', '-', '(0251)8322001', '-', 'diswasbangkim@kotabogor.go.id', 'Bogor', 'Jawa Barat'),
(38, 'Dinas Perhubungan DKI Jakarta', 'Jl. Taman Jati Baru No.1, RT.17/RW.1, Cideng, Gambir, Kota', '021-3501349', '-', '-', '-', 'dishub.jakarta.go.id', 'Jakarta', 'DKI Jakarta'),
(39, 'Dinas Perhubungan Kota Makassar', 'Jl. Mallengkeri No.18, Mangasa, Tamalate, Kota Makassar, Sulawesi Selatan', '(0411) 884816', '085399242499', '-', 'Bp Jasman', '-', 'Makassar', 'Sulawesi Selata'),
(40, 'Direktorat Bina Usaha Perdagangan', '-', '-', '085711090436', '-', 'Bp Rabda', 'binusdag.kemendag.go.id', 'Jakarta', 'DKI Jakarta'),
(41, 'Direktorat Bina Usaha Perdagangan', '-', '-', '085276906050', '-', 'Ibu Nova', '-', 'Jakarta', 'DKI Jakarta'),
(42, 'Humas PD Pasar Jaya', '-', '021-8580981', '-', '021-8580629', '-', '-', 'Jakarta', 'DKI Jakarta'),
(43, 'Kantor Pertanahan Kota Bukit Tinggi', 'Jl. Prof. Hazairin, SH No.15 Belakang balok', '0752-22947 / 628769', '-', '-', '-', 'kot-bukittinggi@bpn.go.id', 'Bukit Tinggi', 'Sumatera Barat'),
(44, 'Kanwil BPN Jawa Timur', '-', '082233652007', '081973872900', '-', 'Aziz Heru / Ferry', '-', 'Surabaya', 'Jawa Timur'),
(45, 'Kanwil BPN Jawa Timur', '-', '-', '081359784118', '-', 'Ferry', '-', 'Surabaya', 'Jawa Timur'),
(46, 'Kasubdit Pertanahan dan Penataan Ruang', '-', '021-7942642', '-', '-', '-', '-', 'Jakarta', 'DKI Jakarta'),
(47, 'Kasubid Tata Ruang Bappeprov Sulsel', '-', '-', '08124256772', '-', 'Ibu Any Rofaida', 'ariany.ra@gmail.com', 'Makassar', 'Sulawesi Selata'),
(48, 'Kemendagri (Dirtjen Bina Bangola)', '-', '021-7942653/3450038', '021-7942631', '021-7983769', '-', '-', 'Jakarta', 'DKI Jakarta'),
(49, 'Kementrian Perhubungan', '-', '021-3852649/3456779', '021-3456919', '021-3451657', '-', 'tu_menhub@yahoo.com', 'Jakarta', 'DKI Jakarta'),
(50, 'Kementrian Perhubungan', '-', '021-3811308 ext 1491', '-', '-', '-', '-', 'Jakarta', 'DKI Jakarta'),
(51, 'Kementrian Perhubungan Biro Rencana', '-', '-', '082113230116', '-', 'Bpk Suryo', '-', 'Jakarta', 'DKI Jakarta'),
(52, 'Kementrian Pariwisata (Destinasi Wisata Alam)', '-', '021-3813739', '-', '021-3813739', '-', '-', 'Jakarta', 'DKI Jakarta'),
(53, 'Kementrian Pertanian Biro Perencanaan', '-', '021-7804156', '-', '-', '-', '-', 'Jakarta', 'DKI Jakarta'),
(54, 'Kepala Bagian Tata Usaha BPN Provinsi Jawa Barat', 'Jl. Soekarno Hatta No.586 Bandung, Jawa Barat', '(022) 7562056-57', '-', '(022) 7563130', 'H. M. AMIN ARSYAD, S', '-', 'Bandung', 'Jawa Barat'),
(55, 'Kepala Bidang Hak Tanah dan Pendaftaran Tanah BPN Prov. Banten', 'Jl. Syech Nawawi Albantani Curug Serang 42171', '0254-7075198 / 267037', '-', '0254-267036', 'TETE PURNAMA, SH, MH', '-', 'Serang', 'Banten'),
(56, 'Kepala Bidang Hak Tanah dan Pendaftaran Tanah BPN Wil. Provinsi', 'Jl. Soekarno Hatta No. 586 Bandung Jawa Barat', '022-7562056-57', '-', '022-7563130', 'ADIANA RATIH YUNIATI', '-', 'Bandung', 'Jawa Barat'),
(57, 'Kepala Bidang Pengaturan dan Penataan Pertanahan BPN Prov BANTEN', 'Jl. Syech Nawawi Albantani Curug, Serang  42171', '0254-7075198 / 267037', '-', '0254-267036', 'ATET GANDJAR MUSLIHA', '-', 'Serang', 'Banten'),
(58, 'Kepala Bidang Pengaturan dan Penataan Pertanahan BPN Provinsi Jawa Barat', 'Jl. Soekarno Hatta No. 586 Bandung, Jawa Barat', '022-7562056-57', '-', '022-7563130', 'Robinson Simangungso', '-', 'Bandung', 'Jawa Barat'),
(59, 'Kepala Bidang Pengendalian Pertanahan dan Pemberdayaan Masyarakat BPN Prov Banten', 'Jl. Syech Nawawi Albantani Curug Serang 42171', '0254-7075198 / 267037', '-', '0254-267036', 'Drs. TRISEMADIONO SL', '-', 'Serang', 'Banten'),
(60, 'Kepala Bidang Pengendalian, Pertanahan dan Pemberdayaan Masyarakat BPN Provinsi', 'Jl. Soekarno Hatta No. 586 Bandung Jawa Barat', '022-7562056-57', '-', '022-7563130', 'Mulyadi Natawijaya,', '-', 'Bandung', 'Jawa Barat'),
(61, 'Kepala Bidang Pengkajian dan Penanganan Sengketa dan Konflik Pertanahan BPN Prov Banten', 'Jl. Syech Nawawi Albantani Curug Serang 42171', '0254-7075198 / 267037', '-', '0254-267036', 'EDY PRASETYO, SH', '-', 'Serang', 'Banten'),
(62, 'Kepala Bidang Pengkajian dan Penanganan Sengketa dan Konflik Pertanahan BPN Prov. Jawa Barat', 'Jl. Soekarno Hatta No. 586 Bandung Jawa Barat', '022-7562056-57', '-', '022-7563130', 'HADIAT SONDARA, D, S', '-', 'Bandung', 'Jawa Barat'),
(63, 'Kepala Bidang Survey Pengukuran dan Pemetaan BPN Prov banten', 'Jl. Syech Nawawi Albantani Curug Serang 42171', '0254-7075198/267037', '', '0254-267036', 'Ir. Nandang Agus Tar', '-', 'Serang', 'Banten'),
(64, 'Kepala Bidang Survey, Pengukuran dan Pemetaan BPN Prov. Jawa Barat', 'Jl. Soekarno Hatta No.586 Bandung, Jawa Barat', '022-7562056-57', '-', '022-7563130,', 'Ir. Djoko Kustanto H', '-', 'Bandung', 'Jawa Barat'),
(65, 'Kepala Kantor Pertanahan Kabuopaten tangerang BPN Prov Banten', 'Komplek Perkantoran PEMDA Tiga Raksa Tangerang Banten', '021-5992163 / 15720', '-', '-', 'YUNIAR HIKMAT GINANJ', '-', 'Serang', 'Banten'),
(66, 'Kepala Kantor Pertanahan Kabupaten Bogor BPN Provinsi Wilayah Jawa Barat', 'Jl. Tegar Beriman Cibinong Bogor Jawa Barat', '021-87901140-41', '-', '021-87901142', 'Ir. Joko Haryadi, MM', '-', 'Bogor', 'Jawa Barat'),
(67, 'Kepala Kantor Pertanahan Kabupaten Lebak BPN Prov Banten', 'Jl. Jend Sudirman KM 3, Rangkas bitung Lebak Banten', '0252-201605/42315', '-', '-', 'Ir. Yus Sudarso', '-', 'Serang', 'Banten'),
(68, 'Kepala Kantor Pertanahan Kabupaten Pandeglang BPN Prov Banten', 'Komplek Perkantoran Cikupa Kabupaten Pandeglang Banten', '0253-204751', '-', '-', 'Ir. Boediharto Toesa', '-', 'Serang', 'Banten'),
(69, 'Kepala Kantor Pertanahan Kabupaten Serang BPN Prov Banten', 'Jl. Letnan Jidun No. 5 Serang Banten', '0254-42115/203301', '-', '-', 'Drs. Dirwan Dachri', '-', 'Serang', 'Banten'),
(70, 'Kepala Kantor Pertanahan Kota Administrasi Jakarta Timur', 'Jl. Dr Sumarmo Pulo Gebang Jakarta Timur 13950', '021-4802138/4802202', '-', '-', 'Ir. Perdananto Aribo', '-', 'Jakarta', 'DKI Jakarta'),
(71, 'Kepala Kantor Pertanahan Kota Administrasi Jakarta Utara', 'Jl. Yos Sudarso No. 27-29 Blok R lt 4. Jakarta Utara', '021-4352439/4301124.ext5171', '-', '-', 'SUKARTONO, SH', '-', 'Jakarta', 'DKI Jakarta'),
(72, 'Kasubdit Kawasan Strategis Direktorat Perencanaan Ruang Laut, Direktorat Jendral Pengelolaan Ruang Laut, Kemen', '-', '021-3513256', '-', '021-3513256', '-', '-', 'Jakarta', 'DKI Jakarta'),
(73, 'Bappeda Provinsi Yogyakarta', '-', '0274-586712', '-', '-', '-', '-', 'Yogyakarta', 'Jawa Tengah'),
(74, 'Dinas Pekerjaan Umum Yogyakarta', '-', '0274-589074', '-', '-', '-', '-', 'Yogyakarta', 'Jawa Tengah'),
(75, 'Dinas Budaya', '-', '0274-562628', '-', '-', '-', '-', 'Yogyakarta', 'Jawa Tengah'),
(76, 'Dinas Pariwisata', '-', '0274-562295', '-', '-', '-', '-', 'Yogyakarta', 'Jawa Tengah'),
(77, 'Bappeda Sumatera Utara', '-', '-', '081511516884', '-', 'Willy Irawan', '-', 'Medan', 'Sumatera Utara'),
(78, 'Bappeda Sumatera Utara', '-', '-', '081397867021', '-', 'Frarev Sitorus', '-', 'Medan', 'Sumatera Utara'),
(79, 'Bappeda Sumatera Utara', '-', '-', '081624108942', '-', 'Frans Togi Gultom', '-', 'Medan', 'Sumatera Utara'),
(80, 'Kabid Dinas Tata Ruang dan Tata Bangunan', '-', '-', '08153103611', '-', 'Benny Iskandar', '-', 'Medan', 'Sumatera Utara'),
(81, 'Bappeda Sumatera Utara', '-', '-', '081361459393', '-', 'Yulidar Xlingsih', '-', 'Medan', 'Sumatera Utara'),
(82, 'Kasubdit Tata Ruang Bappeda Sumatera Utara', '-', '-', '0811636570', '-', 'Susi A', '-', 'Medan', 'Sumatera Utara'),
(83, 'Bappeda Sumatera Utara', '-', '-', '081397726902', '-', 'Bachtiar Siregar', '-', 'Medan', 'Sumatera Utara'),
(84, 'Bappeda Provinsi Sumatera Utara', '-', '-', '0811018321', '-', 'Liga Elba Pardudo', '-', 'Medan', 'Sumatera Utara'),
(85, 'Bappeda Medan', '-', '-', '081370483729', '-', 'Yossi', '-', 'Medan', 'Sumatera Utara'),
(86, 'Dinas Bina Marga Medan', '-', '-', '085297791113', '-', 'Ibu Tukkot', '-', 'Medan', 'Sumatera Utara'),
(87, 'Driver Medan', '-', '-', '082366570888', '-', 'Sofyan', '-', 'Medan', 'Sumatera Utara'),
(88, 'Dinas Penataan Ruang dan Pemukiman', '-', '-', '081322034668', '-', 'Bpk John', '-', 'Medan', 'Sumatera Utara'),
(89, 'Kemendagri Dir. Sinkronisasi Unit Daerah Bangda', 'Subdit Pertanahan dan Penataan Ruang', '-', '081232728042', '-', 'Elfira', '-', 'Jakarta', 'DKI Jakarta'),
(90, 'Kemendagri Dir. Sinkronisasi Unit Daerah bangda', 'Subdit Pertanahan dan Penataan Ruang', '-', '081319935234', '-', 'Mutia', '-', 'Jakarta', 'DKI Jakarta'),
(91, 'Kemendagri Dir. Sinkronisasi Unit Daerah Bangda', 'Subdit Pertanahan dan Penataan Ruang', '021-7942642', '-', '-', 'Kantor', '-', 'Jakarta', 'DKI Jakarta'),
(92, 'Kemenko Perekonomian Sekretaris Pk. Ukil', 'Jakarta', '-', '081286808423', '-', 'Silmi', '-', 'Jakarta', 'DKI Jakarta'),
(93, 'Bappenas', 'Jakarta', '-', '085131041661', '-', 'Gita', '-', 'Jakarta', 'DKI Jakarta'),
(94, 'Sekretariat Bappenas', '-', '021-392 7412 / 6601', '-', '-', 'Kantor', '-', 'Jakarta', 'DKI Jakarta'),
(95, 'BPN Sarinah Thamrin', 'Sarinah Thamrin Jakarta Pusat', '021-3154683', '-', '-', '-', 'pgt.bpnri@yahoo.com', 'Jakarta', 'DKI Jakarta'),
(96, 'Mohammad Habibi', '-', '-', '081284441905', '-', 'Mohammad Habibi', 'subdit2binus@gmail.com', 'Jakarta', 'DKI Jakarta'),
(97, 'Kementrian Perdagangan Staff', '-', '-', '087777880170', '-', 'Wildan Fikri', 'wildanfikri@kemendag.go.id', 'Jakarta', 'DKI Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(11) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `telp` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('00001', 'BAMBANG', 'Laki-laki', '085780907168', 'jl. belly no.5'),
('00002', 'Wahyu ', 'Laki-laki', '082312313', 'Jl. Bungur Raya no 23'),
('00003', 'Putri', 'Perempuan', '821414124', 'Jl. Palem Raya'),
('00004', 'abustman', 'Laki-laki', '0844553312312', 'Jl. Katak No 2'),
('0002', 'Ani', 'Perempuan', '02123213123', 'Jl Salak no 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Wisnu', 'wisnu@gmail.com', 'wisnu', 'wisnu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
