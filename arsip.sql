-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2018 at 02:55 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `eps_modul`
--

CREATE TABLE `eps_modul` (
  `kode_modul` int(4) NOT NULL,
  `nama_modul` varchar(50) NOT NULL,
  `url_seo` varchar(50) NOT NULL,
  `folder` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_modul`
--

INSERT INTO `eps_modul` (`kode_modul`, `nama_modul`, `url_seo`, `folder`) VALUES
(1, 'SK Berkala', 'berkala', 'mod_berkala'),
(2, 'Pesan', 'pesan', 'mod_pesan'),
(3, 'Share', 'share', 'mod_share'),
(4, 'Modul', 'modul', 'mod_modul'),
(5, 'User', 'user', 'mod_user'),
(6, 'SIB', 'sib', 'mod_sib'),
(7, 'Arsip', 'arsip', 'mod_arsip');

-- --------------------------------------------------------

--
-- Table structure for table `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `kodedisposisi` int(2) NOT NULL,
  `disposisi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_disposisi`
--

INSERT INTO `tb_disposisi` (`kodedisposisi`, `disposisi`) VALUES
(1, 'Diketahui / Dipedomani'),
(2, 'Koordinasikan dg Kasi terkait'),
(3, 'Koordinasikan dg Subag terkait'),
(4, 'Selesaikan sesuai aturan'),
(5, 'Hadiri dan laporkan hasilnya'),
(6, 'Bantu sesuai kemampuan'),
(7, 'Pelajari dan ajukan saran'),
(8, 'Tindak lanjuti / Cek lapangan'),
(9, 'Siapkan bahan'),
(10, 'Cukupi / Persiapkan'),
(11, 'Catat dan ingatkan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `kode` int(2) NOT NULL,
  `jenis` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`kode`, `jenis`) VALUES
(1, 'Biasa'),
(2, 'Segera'),
(3, 'Penting'),
(4, 'Rahasia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kasi`
--

CREATE TABLE `tb_kasi` (
  `kode_kasi` int(11) NOT NULL,
  `kasi` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_kasi`
--

INSERT INTO `tb_kasi` (`kode_kasi`, `kasi`) VALUES
(1, 'Camat'),
(2, 'Sekretaris Camat'),
(3, 'Subag Perencanaan dan Keuangan'),
(4, 'Subag Umum dan Kepegawaian'),
(5, 'Seksi Pemerintah dan Pelayanan Umum'),
(6, 'Seksi Kesejahteraan Sosial'),
(7, 'Seksi Pemberdayaan Masyarakat'),
(8, 'Seksi Ketentraman dan Ketertiban');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pola`
--

CREATE TABLE `tb_pola` (
  `kode` int(11) NOT NULL,
  `kodekla` varchar(255) CHARACTER SET utf8 NOT NULL,
  `indeks` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pola`
--

INSERT INTO `tb_pola` (`kode`, `kodekla`, `indeks`) VALUES
(1, '000', 'Umum'),
(2, '001', 'Lambang'),
(3, '001.1', 'Garuda'),
(4, '001.2', 'Bendera Kebangsaan'),
(8, '001.4', 'Bandir/Umbul-umbul'),
(6, '001.3', 'Daerah (Provinsi/Kabupaten/Kota)'),
(9, '002', 'Tanda kehormatan/penghargaan (khusus untuk Non PNS)'),
(10, '005', 'Undangan'),
(11, '045.2', 'Pengantar'),
(12, '973', 'Pajak'),
(13, '510', 'Perdagangan'),
(14, '141', 'Pemerintah Desa'),
(15, '800', 'Kepegawaian'),
(16, '850', 'Cuti'),
(17, '016', 'Pengurusan Kendaraan Dinas'),
(18, '476', 'Keluarga Berencana'),
(19, '518', 'Koperasi'),
(20, '700', 'Pengawasan'),
(21, '067', 'Standart Operasional Prosedur'),
(22, '824.3', 'PNS Golongan III'),
(23, '011', 'Gedung Kantor'),
(24, '03', 'Hari Raya/Besar'),
(25, '045.2', 'Akuisisi Arsip'),
(26, '045.2', 'Akuisisi Arsip'),
(27, '620', 'Jalan'),
(28, '411', 'Gotongroyong'),
(29, '028', 'Inventaris'),
(30, '030', 'Kekayaan Daerah'),
(31, '025', 'Lemari Arsip'),
(32, '621', 'Jalan'),
(33, '015', 'Peminjaman sapras'),
(34, '051', 'Laporan'),
(35, '451.12', 'Zakat, Infaq, dan Shodaqoh'),
(36, '451.1', 'Peribadatan'),
(37, '800', 'seleksi jabatan pimpinan tinggi pratama (eselon II)'),
(38, '824.2/G26/2016', 'PNS Golongan II'),
(39, '466', 'Sumbangan Sosial'),
(40, '556', 'Pariwisata dan Rekreasi'),
(41, '010', 'Urusan Dalam'),
(42, '020', 'Barang dan Jasa'),
(43, '030', 'Kekayaan Daerah'),
(44, '040', 'Perpustakaan/ Kearsipan/ Dokumentasi/ Sandi'),
(45, '050', 'Perencanaan dan Evaluasi'),
(46, '060', 'Organisasi'),
(47, '070', 'Penelitian dan Pengembangan'),
(48, '080', 'Konperensi/ Rapat Koordinasi'),
(49, '090', 'Perjalanan Dinas'),
(50, '100', 'Pemerintahan'),
(51, '120', 'Pemerintah Provinsi'),
(52, '130', 'Pemerintah Kabupaten'),
(53, '140', 'Pemerintahan Desa/ Kelurahan'),
(54, '150', 'Legislatif MPR/ DPR/ DPD'),
(55, '160', 'DPRD Provinsi'),
(56, '170', 'DPRD Kabupaten/ Kota'),
(57, '180', 'Hukum'),
(58, '190', 'Hubungan Luar Negeri'),
(59, '200', 'Politik'),
(60, '210', 'Kepartaian'),
(61, '220', 'Organisasi Kemasyarakatan'),
(62, '230', 'Organisasi Profesi dan Fungsional'),
(63, '240', 'Organisasi Pemuda'),
(64, '250', 'Organisasi Buruh, TNI dan Nelayan'),
(65, '260', 'Organisasi Wanita'),
(66, '270', 'Pemilu, Pilkada'),
(67, '280', 'Pengawasan Pemilu/ Pilkada'),
(68, '300', 'Keamanan dan Ketertiban Umum'),
(69, '310', 'Pertahanan'),
(70, '320', 'Kemiliteran/ TNI'),
(71, '330', 'Keamanan'),
(72, '340', 'Perlindungan Masyarakat (LINMAS)'),
(73, '350', 'Kejahatan'),
(74, '360 ', 'Bencana'),
(75, '370', 'Kecelakaan'),
(76, '555.4', 'Penertiban,Pembinaan'),
(77, '605.2', 'Instalasi Listrik'),
(78, '611.317', 'Terowongan'),
(79, '426', 'Keolahragaan '),
(80, '142', 'Anggaran Pendapatan dan Belanja Desa / Kelurahan ( APBDes / Kel )'),
(81, '470', 'Kependudukan dan Catatan Sipil'),
(82, '003', 'Himbauan Pemasangan Spanduk'),
(83, 'S-22', 'Pemenuhan Kewajiban Perpajakan Bendahara Pemerintah'),
(84, '460', 'Sosial'),
(85, '518', 'Koperasi'),
(86, '004.5', 'Ucapan Lainnya'),
(87, '7', 'pengumuman Pendaftaran calon anggota Panwascam'),
(88, '971.11', 'Pajak Bumi Bangunan ( PBB )'),
(89, '006', 'Tanda Jabatan'),
(90, '468', 'Palang Merah Indonesia'),
(121, '083', 'Komponen Eselon Lainnya'),
(92, '364', 'Kebakaran'),
(94, '130', 'pemetaan Urusan Pemerintah'),
(95, '065', 'Ketatalaksanaan'),
(96, '003', 'Hari Raya/ Besar'),
(97, '072', 'Pengembangan Sistem'),
(98, '522.554', 'Bencana Alam'),
(99, '451.47', 'Pengajian'),
(100, '451.1', 'Peribadatan'),
(101, '412.2', 'Pelaksanaan bantuan keuangan'),
(102, '141.1', 'Pemberitahuan'),
(103, '484.4', 'Bantuan Kepada/dari organisasi Profesi Wartawan'),
(104, '978', 'Bantuan'),
(105, '978.5', 'Bantuan Lainnya'),
(106, '2421', 'pos penjagaan'),
(107, '2861', 'pengawasan kesehatan'),
(108, '', 'Surat permohonan dan ucapan terima kasih'),
(109, '045.2', 'SP ADD '),
(110, '0412.2', 'Permintaan  Pencairan '),
(111, '973', 'Validasi Data '),
(112, '061', 'Organisasi'),
(113, '401', 'Kebijakan dan Program Pemerintah Untuk Kesejahteraan Rakyat'),
(114, '511.1', 'Sembako'),
(115, '903', 'APBD'),
(116, '', 'Petugas piket pppk'),
(117, '113', 'Susunan Kabinet'),
(118, '913', 'pedoman penyusunan RKAP SKPDdan PPKD T A 2016 '),
(119, '411.4', 'Pembinaan Kesejahteraan Keluarga PKK'),
(120, '412', 'Perekonomian Desa'),
(122, '430', 'Kebudayaan'),
(123, '412.2', 'Monitoring BUMDES'),
(124, '048', 'data'),
(125, '411.4', 'permintaan jumlah murid / siswa'),
(126, '472.12', 'kematian'),
(127, '003', 'Pemberitahuan, Pemilihan'),
(128, '131', 'pembentukan ssekretariat PPS'),
(129, '660', 'Tata lingkungan'),
(130, '441.5', 'Usaha Kesehatan Sekolah'),
(131, '410', 'Pembangunan Desa'),
(132, '460', 'Pengenalan ketrampilan'),
(133, '620', ' Pemulihan Jalan'),
(134, '541.2', 'Penyaluran'),
(135, '050', 'permohonan personil'),
(136, '028', 'pengiriman personil'),
(137, '050', 'Pemasangan papan kegiatan TA 2016'),
(138, '500', 'Perekonomian'),
(139, '360.2', 'Surat Keputusan'),
(140, '551.39', 'Perizinan'),
(141, '440', 'Kesehatan'),
(142, '441.5', 'Mohon sebagai narasumber UKS'),
(143, '158', 'Peninjauan/ Kunjungan Lapangan'),
(144, '30', 'ijin praktek '),
(145, '469', 'Makam'),
(146, '028', 'tindak lanjut asistensi'),
(147, '660', 'tata lingkungan '),
(148, '', 'SK  Panwaslu'),
(149, '021', 'Penawaran'),
(150, '003.1', 'Nasional'),
(151, '614.323', 'Stasiun Pengukur Cuaca'),
(152, '003.3', 'HUT'),
(153, '004.4', 'Bela Sungkawan'),
(154, '560', 'Tenaga Kerja'),
(155, '485.2', 'Pendirian information center'),
(156, '591', 'Permohonan Alih Fungsi Tanah'),
(157, '279', 'KPU'),
(158, '003', 'Himbauan'),
(159, '900', ' Percepatan Pelaksanaan APBD'),
(160, '414', 'Pengembangan Desa'),
(161, '524', 'Permohonan sosalisasi'),
(162, '028.1', 'Permohonan bantuan BMD'),
(163, '065', 'Pembentukan kelompok'),
(164, '476', 'Pengawasan Kesejahteraan Sosial'),
(165, '', 'Permohonan'),
(166, '473.3', 'pelayanan'),
(167, '', 'Pengajuan'),
(168, '', 'Pokok Hasil pemeriksaan'),
(169, '485', 'Penyuluhan Masyarakat'),
(171, '', 'Monitoring'),
(172, '', 'Somasi'),
(173, '', 'Ketentuan Pokok STQ'),
(174, '900', 'Keuangan'),
(175, '518.3', 'Usaha Mikro Kecil dan Menengah (UMKM)'),
(176, '874', 'Daftar Riwayat Pekerjaan'),
(177, '537', 'Aneka Kerajinan'),
(178, '412.2', 'Pembiayaan Pembangunan Desa'),
(179, '864', 'Ujian Dinas'),
(180, '427', 'Kepemudaan'),
(181, '551.58', 'Perawatan/ Perbaikan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skpd`
--

CREATE TABLE `tb_skpd` (
  `kodeskpd` int(4) NOT NULL,
  `skpd` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_skpd`
--

INSERT INTO `tb_skpd` (`kodeskpd`, `skpd`) VALUES
(156, 'Kepala Bagian '),
(157, 'Kepala Badan Kepegawaian Daerah'),
(155, 'Kepala Cabang Ranting Kecamatan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat`
--

CREATE TABLE `tb_surat` (
  `id` int(11) NOT NULL,
  `no_agenda` char(4) NOT NULL,
  `kode` int(2) NOT NULL,
  `tahun` char(4) NOT NULL,
  `kodeskpd` int(4) NOT NULL,
  `nosurat` char(50) NOT NULL,
  `tglsurat` date NOT NULL,
  `perihal` text NOT NULL,
  `indeks` varchar(255) NOT NULL,
  `tglditerima` date NOT NULL,
  `disposisi` text NOT NULL,
  `kode_kasi` char(1) NOT NULL,
  `kodekla` char(10) NOT NULL,
  `lampiran` varchar(255) NOT NULL,
  `tglditeruskan` date DEFAULT NULL,
  `disposisi2` text NOT NULL,
  `gambar_user` varchar(80) NOT NULL,
  `disposisia` text NOT NULL,
  `disposisib` text NOT NULL,
  `disposisic` text NOT NULL,
  `disposisid` text NOT NULL,
  `disposisie` text NOT NULL,
  `disposisif` text NOT NULL,
  `disposisig` text NOT NULL,
  `disposisih` text NOT NULL,
  `disposisii` text NOT NULL,
  `disposisij` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_surat`
--

INSERT INTO `tb_surat` (`id`, `no_agenda`, `kode`, `tahun`, `kodeskpd`, `nosurat`, `tglsurat`, `perihal`, `indeks`, `tglditerima`, `disposisi`, `kode_kasi`, `kodekla`, `lampiran`, `tglditeruskan`, `disposisi2`, `gambar_user`, `disposisia`, `disposisib`, `disposisic`, `disposisid`, `disposisie`, `disposisif`, `disposisig`, `disposisih`, `disposisii`, `disposisij`) VALUES
(513, '0002', 3, '2018', 157, '800/101/21/2018', '2018-01-15', 'Permintaan data PNS', 'Kepegawaian', '2018-01-15', '', '', '800', '1 Lembar', '0000-00-00', '', './gambar/', '', '', '', '', '', '', '', '', '', ''),
(512, '0001', 3, '2018', 155, '800/212/12/2017', '2018-01-15', 'Ijin pinjam tempat', 'Kepegawaian', '2018-01-15', '', '', '800', '1 Lembar', '0000-00-00', '', './gambar/', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id` int(11) NOT NULL,
  `kodekla` varchar(255) CHARACTER SET utf8 NOT NULL,
  `indeks` text CHARACTER SET ucs2 NOT NULL,
  `no_agenda` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nosurat` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `perihal` text CHARACTER SET ucs2 NOT NULL,
  `kodeskpd` int(4) NOT NULL,
  `kode_kasi` char(1) CHARACTER SET ucs2 NOT NULL,
  `tglsurat` date NOT NULL,
  `lampiran` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `catatan` text NOT NULL,
  `gambar_user` varchar(50) NOT NULL,
  `tahun` char(4) CHARACTER SET ucs2 NOT NULL,
  `kode` char(1) CHARACTER SET ucs2 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id`, `kodekla`, `indeks`, `no_agenda`, `nosurat`, `perihal`, `kodeskpd`, `kode_kasi`, `tglsurat`, `lampiran`, `catatan`, `gambar_user`, `tahun`, `kode`) VALUES
(1, '005', 'Undangan', '0275', '005/0275/2016', 'Pencairan Dana Santunan Kematian Tahun 2016', 17, '', '2016-05-23', '1 Lembar', '', './gambar/Undangan Pencairan Dana 23 Mei 2016.pdf', '2016', '2'),
(2, '824.3', 'PNS Golongan III', '0276', '824.3/0276/2016', 'Menghadapkan ', 13, '', '2016-05-25', '-', '', './gambar/Pemberitahuan .pdf', '2016', '1'),
(3, '824.3', 'PNS Golongan III', '0277', '824.3/0277/2016', 'Menghadapkan ', 26, '', '2016-05-25', '-', '', './gambar/Menghadapkan Heri Purwanto 25 Mei 2016.pd', '2016', '1'),
(4, '141', 'Pemerintah Desa', '0278', '141/0278/2016', 'Serah Terima Jabatan', 18, '', '2016-05-25', '-', '', './gambar/Sekda Serah terima Jabatan 25 Mei 2016.pd', '2016', '3'),
(5, '141', 'Pemerintah Desa', '0279', '141/0279/2016', 'Kader dan Sekdes se kecamatan ', 29, '', '2016-05-06', '-', '', './gambar/', '2016', '1'),
(6, '045.2', 'Akuisisi Arsip', '0280', '045.2/0280/2016', 'Pengantar ADD terhadap 1 Desa Pebatan tahun 2016', 7, '', '2016-05-26', '-', '', './gambar/', '2016', '1'),
(7, '045.2', 'Akuisisi Arsip', '0281', '045.2/0281/2016', 'Data Ketua RT/RW Desa se kecamatan wanasari Kabupaten Brebes', 30, '', '2016-05-26', '-', '', './gambar/Pemdes 26 Mei 2016.pdf', '2016', '1'),
(8, '005', 'Undangan', '0282', '005/0282/2016', 'Rotasi Jabatan di Pemerintah Kabupaten Brebes', 17, '', '2016-05-27', '-', '', './gambar/', '2016', '1'),
(9, '005', 'Undangan', '0283', '005/0283/2016', 'Undangan Ketrampilan Air', 17, '', '2016-05-27', '-', '', './gambar/', '2016', '1'),
(10, '621', 'Jalan', '0284', '621/0284/2016', 'Laporan Keadaan Ruas jalan yang rusak di wilayah Kec.Wanasari', 34, '', '2016-05-30', '-', '', './gambar/Laporan jalan rusak 30 Mei 21060001.pdf', '2016', '2'),
(11, '005', 'Undangan', '0285', '005/0285/2016', 'Pelaksanaan Bimtek Jaringan Dokumentasi dan Informasi Hukum', 18, '', '2016-05-24', '1 Lembar', '', './gambar/Pelaksanaan Bimtek JDIH 24 Mei 20160001.p', '2016', '1'),
(12, '621', 'Jalan', '0286', '621/0286/2016', 'Laporan Jalan Rusak', 34, '', '2016-05-30', '-', '', './gambar/', '2016', '1'),
(13, '045.2', 'Pengantar', '0287', '045.2/0287/2016', 'Surat Pengantar Matrik Rencana Kerja Perangkat Daerah (RKPD) Perubahan Kabupaten Brebes (Program dan Kegiatan) Tahun 2016', 34, '', '2016-05-30', '-', '', './gambar/', '2016', '1'),
(14, '045.2', 'Pengantar', '0288', '045.2/0288/2016', 'Pengantar APD thp 1 Desa Kertabesuki thn 2016', 7, '', '2016-05-31', '-', '', './gambar/', '2016', '1'),
(15, '045.2', 'Pengantar', '0289', '045.2/0289/2016', 'Data Ukuran Baju', 39, '', '2016-05-31', '-', '', './gambar/', '2016', '1'),
(16, '045.2', 'Pengantar', '0290', '045.2/0290/2016', 'Desa siasem', 7, '', '2016-05-30', '-', '', './gambar/', '2016', '1'),
(17, '451.1', 'Peribadatan', '0291', '451.1/0291/2016', 'Kegiatan Safari Ramadhan Tahun 1437H/ 2016M', 41, '', '2016-06-02', '-', '', './gambar/Kegiatan Ramadhan 2 Juni 20160001.pdf', '2016', '3'),
(18, '466', 'Sumbangan Sosial', '0292', '466/0292/2016', 'Menerima Santunan Kematian', 11, '', '2016-06-02', '-', '', './gambar/', '2016', '1'),
(19, '005', 'Undangan', '0293', '005/0293/2016', 'Undangan Mengikuti TIM Safari Ramadhan Tingkat Kabupaten di Desa Keboledan', 45, '', '2016-06-02', '-', '', './gambar/Safari Ramdhan keboledan.pdf', '2016', '3'),
(20, '141', 'Pemerintah Desa', '0294', '141/0294/2016', 'Usulan Seragam Bagi RT dan RW', 34, '', '2016-06-02', '1 Lembar', '', './gambar/Usulan Seragam Bagi RT RW.pdf', '2016', '1'),
(21, '005', 'Undangan', '0295', '005/0295/2016', 'Undangan mengikuti tim safari ramadhan tingkat kabupaten di desa keboledan ', 9, '', '2016-06-02', '-', '', './gambar/', '2016', '1'),
(22, '045.2', 'Pengantar', '0296', '045.2/0296/2016', 'Dana Desa wanasari keboledan th 2015', 12, '', '2016-06-03', '-', '', './gambar/', '2016', '1'),
(23, '045.2', 'Pengantar', '0297', '045.2/0297/2016', 'Proposal Bantuan Sosial Pemegaran rumah di Desa Lengkong', 12, '', '2016-06-03', '-', '', './gambar/', '2016', '1'),
(24, '045.2', 'Pengantar', '0298', '045.2/0298/2016', 'LPS Dana Desa th 20015 Desa Tegaalgandu', 12, '', '2016-06-06', '-', '', './gambar/', '2016', '1'),
(25, '045.2', 'Pengantar', '0299', '045.2/0299/2016', 'Surat Edaran Kemendagri', 17, '', '2016-06-06', '-', '', './gambar/', '2016', '1'),
(26, '470', 'Kependudukan dan Catatan Sipil', '0300', '470/0300/2016', 'Permohonan E-KTP', 53, '', '2016-06-06', '-', '', './gambar/', '2016', '1'),
(27, '470', 'Kependudukan dan Catatan Sipil', '0301', '470/0301/2016', 'Permohonan Blangko', 53, '', '2016-06-06', '-', '', './gambar/', '2016', '1'),
(28, '045.2', 'Pengantar', '0302', '045.2/0302/2016', 'Pemberitahuan Kegiatan Pelaksaan P2TL dan Penertiban Penerangan Jalan Umum Illegal', 17, '', '2016-06-06', '-', '', './gambar/', '2016', '1'),
(29, '045.2', 'Pengantar', '0303', '045.2/0303/2016', 'Surat Pengantar Daftar Calon Peserta Ujian Penyelesaian Ijazah dan calon Peserta Ujian Dinas th 2017', 5, '', '2016-06-07', '-', '', './gambar/', '2016', '1'),
(30, '045.2', 'Pengantar', '0304', '045.2/0304/2016', 'Surat Edaran Bupati Nomor: 142.21/01467/2016 tanggal 2 Juni 2016. Tentang Perencanaan Kegiatan Dana Desa Tahun Anggaran 2016', 17, '', '2016-06-08', '-', '', './gambar/Surat Pengantar Edaran Bupati 8 Juni 2016', '2016', '1'),
(31, '141', 'Pemerintah Desa', '0305', '141/0305/2016', 'Surat Terima Jabatan', 58, '', '2016-06-08', '-', '', './gambar/', '2016', '1'),
(32, '045.2', 'Pengantar', '0306', '045.2/0306/2016', 'Surat Pengantar Perkiraan perhitungan Gaji TAP 2016 sampai 2017', 7, '', '2016-06-08', '-', '', './gambar/', '2016', '1'),
(33, '045.2', 'Pengantar', '0307', '045.2/0307/2016', 'Surat Pengantar Berita Acara Pemugaran Rumah', 12, '', '2016-06-09', '-', '', './gambar/', '2016', '1'),
(34, '045.2', 'Pengantar', '0308', '045.2/0308/2016', 'LPJ ADD thp II 2015 Dumeling, Pesantuanan, Sigentong', 7, '', '2016-06-09', '-', '', './gambar/', '2016', '1'),
(35, '005', 'Undangan', '0309', '005/0309/2016', 'Bantuan Anak Yatim Piatu di Luar Panti Asuhan Kec. Wanasari 2016', 17, '', '2016-06-09', '-', '', './gambar/', '2016', '1'),
(36, '045.2', 'Pengantar', '0310', '045.2/0310/2016', 'Surat Pengantar Surat Pernyataan Tidak Mencaikan Retensi (5%)', 7, '', '2016-06-10', '-', '', './gambar/', '2016', '1'),
(37, '518', 'Koperasi', '0311', '518/0311/2016', 'Paket sembako pemprov ', 59, '', '2016-06-13', '-', '', './gambar/', '2016', '1'),
(38, '045.2', 'SP ADD ', '0312', '045.2/0312/2016', 'Sp ADD Tahap I  tahun 2016', 7, '7', '2016-06-13', '-', '', './gambar/', '2016', '1'),
(39, '045.2', 'SP ADD ', '0313', '045.2/0313/2016', 'SP LPJ DD Tahun 2015 Desa Dukuhwringin dan Desa Dumeling', 7, '7', '2016-06-13', '-', '', './gambar/', '2016', '1'),
(40, '0412.2', 'Permintaan  Pencairan ', '0314', '0412.2/0314/2016', 'Permintaaan Pencairan Dana Desa Sidamulya', 12, '7', '2016-06-13', '-', '', './gambar/', '2016', '1'),
(41, '0412.2', 'Permintaan  Pencairan ', '0315', '0412.2/0315/2016', 'Pencairan DD /APBN Tahap I 2016', 12, '7', '2016-06-13', '-', '', './gambar/', '2016', '1'),
(42, '005', 'Undangan', '0316', '005/0316/2016', 'permohonan data kemiskinan di wilayah kec.wanasari', 1, '6', '2016-06-13', '-', '', './gambar/', '2016', '1'),
(43, '973', 'Validasi Data ', '0317', '973/0317/2016', 'Validsi data piutang PBB -P2', 17, '7', '2016-06-14', '-', '', './gambar/', '2016', '1'),
(44, '045.2', 'Akuisisi Arsip', '0275', '045.2/0275/2018', 'Kunjungan arsip kantor kecamatan', 16, '4', '2018-01-02', '1 Lembar', '', './gambar/', '2018', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun`
--

CREATE TABLE `tb_tahun` (
  `tahun` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tahun`
--

INSERT INTO `tb_tahun` (`tahun`) VALUES
('2020'),
('2019'),
('2016'),
('2017'),
('2018');

-- --------------------------------------------------------

--
-- Table structure for table `userbkd`
--

CREATE TABLE `userbkd` (
  `kode_user` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userbkd`
--

INSERT INTO `userbkd` (`kode_user`, `username`, `password`, `nama`, `level`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Kantor Data Kearsipan dan Perpustakaan', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `kode_user` int(4) NOT NULL,
  `kdlokasi` char(18) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kdpos` varchar(50) NOT NULL,
  `nama_ttd` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `kode` int(11) NOT NULL,
  `an` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`kode_user`, `kdlokasi`, `username`, `password`, `nama`, `level`, `unit_kerja`, `alamat`, `kdpos`, `nama_ttd`, `nip`, `pangkat`, `kode`, `an`) VALUES
(31, '80000000', 'inspektorat', 'dbfd35a0b4ec29080895ba9dd847decc', 'Inspektorat', 'User', 'INSPEKTORAT', 'JL. MT. HARYONO NO. 64 BREBES', '52212', 'WISNU BROTO, S.H., M.H', '19560212 198003 1 014', 'PEMBINA UTAMA MUDA', 119, ''),
(32, '20000000', 'sekdprd', '1778a786ca740cff45c4a7b28580ea44', 'Sekretariat DPRD', 'User', 'SEKRETARIAT DEWAN PERWAKILAN RAKYAT DAERAH', 'Jalan Gajahmada Nomor 5 Brebes Telepon  (0283) 671128 Fax (0283) 672545', 'BREBES 52212 ', 'Drs. SRI TEGUH PAMBUDI, M.Si', '19650521 198603 1 020', 'Pembina Utama Muda', 115, ''),
(33, 'G0000000', 'sekbnk', '1caff0ba6c11102b1e3d84254cd3664f', 'Sekretariat BNK', 'User', 'PELAKSANA HARIAN BADAN NARKOTIKA KABUPATEN', 'Kompleks GOR Sasana Krida Adhi Karsa Brebes Telp./Fax.(0283) 673147', 'BREBES 52212', 'Drs. ATMO TAN SIDIK', '196102221996031001', 'Pembina Tk. I', 112, ''),
(34, 'F0000000', 'sekkorpri', 'e60339ebbd0a6c204021285d77580025', 'Sekretariat KORPRI', 'User', 'SEKRETARIAT KORPRI', 'Jl. MT Haryono. No. 29  Brebes No. Telp. 0283 671047  Fax 671047', 'Brebes 52212', 'Drs SANTOSO', '196109081990011001', 'Pembina Tk. I', 101, ''),
(35, '09000000', 'bagorganisasi', '06e10ce75c53f521ab921938c917ede3', 'Bagian Organisasi', 'User', 'BAGIAN ORGANISASI', 'JL.P.DIPENOGORO NO.141 BREBES', '52212', 'Drs. TATAG KOES ADIANTO, MSi', '19700503 199101 1 001', 'PEMBINA TK.I', 128, ''),
(36, 'D0000000', 'rsudbrebes', '02c3315667a703688fe834c19613448a', 'RSUD Brebes', 'User', 'RUMAH SAKIT UMUM DAERAH', 'Jl. Jenderal Sudirman No. 181 Telp. (0283) 671431 Fax. 671095', 'BREBES 52212', 'drg. OO SUPRANA, M.Kes', '196104031989011001', 'Pembina Utama Muda', 114, ''),
(37, 'D1000000', 'rsudbumiayu', '719cb42f741a1998a594d9f09d4954d7', 'RSUD Bumiayu', 'User', 'RUMAH SAKIT UMUM DAERAH BUMIAYU', 'Jl. KH.Ahmad Dahlan KM,01 Telp. {0289} 432347 Fax. {0289} 4300014', '52273', 'drg. ROZIKIN.SH', '19641106 199312 1 003', 'Pembina Tk.I', 113, ''),
(38, '33000000', 'bappeda', '5cb3c68711a767288e4031f09c2305e5', 'BAPPEDA', 'User', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', 'aaaa', 'aaaa', 'aaaa', 'aaaa', 'aaaa', 71, ''),
(39, '31000000', 'bkd', '9102ea59edb21c56878f3afcab426fbe', 'BKD', 'User', 'BADAN KEPEGAWAIAN DAERAH', 'Jl. RA Kartini No. 3 Telp. (0283) 672586 Fax. (0283) 671724', 'BREBES 52212', 'Dra. LUTFIYATUL LATIFAH', '19580104 198603 2 002', 'Pembina Utama Muda', 6, ''),
(40, '30000000', 'bkbpp', '73d92532705b8c31ecea8d1a82f05f13', 'BKBPP', 'User', 'BADAN KELUARGA BERENCANA DAN PEMBERDAYAAN PEREMPUAN', 'Jl. Veteran No. 10 Brebes', '52212', 'Drs. KHAMBALI, M.H.', '19601114 198512 1 001', 'Pembina Utama Muda - IV/c', 99, ''),
(41, '32000000', 'bpmdk', 'efe4bbdf77825c5568140bc2790e8d40', 'BPMDK', 'User', 'BADAN PEMBERDAYAAN MASYARAKAT DESA DAN KELURAHAN', 'Jalan GOR Nomor 2 Brebes Telp. 0283671798', 'Brebes - 52212', 'Rofiq Qoidul Adzam, SH', '196412271991031007', 'Pembina Utama Muda', 117, ''),
(42, '34000000', 'bpbd', '320496dba70303f2e3a1f7ee47e20f28', 'BPBD', 'User', 'BADAN PENANGGULANGAN BENCANA DAERAH', 'Jl.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'BREBES 52212', 'AAAAAAAAAAAAAAA', '197003252008011008', 'Pembina Utama Muda', 158, ''),
(43, '43000000', 'dinkes', 'd1c7e93048a30d60d970e18407699c25', 'DINKES', 'User', 'DINAS KESEHATAN', 'Jln.dr. Wahidin Nomor  02  Brebes', '52212', 'dr. SRI GUNADI PARWOKO,M.Kes.', '19620707  199010   1 002', 'Pembina  Utma  Muda', 13, ''),
(45, '41000000', 'dinlutkan', 'c019e6655675d4a86ff5cc713c830d5e', 'DINLUTKAN', 'User', 'DINAS KELAUTAN DAN PERIKANAN', 'JL.Laksda Yos Sudarso No. 07 Brebes', '52212', 'Tandi, A.Pi, MM.', '19630403 198703 1 013', 'Pembina TK. I  -   IV/b', 127, ''),
(46, '72000000', 'dinhubkominfo', '0e4a1df0504387c8675d794f71be15f9', 'DINHUBKOMINFO', 'User', 'DINAS PERHUBUNGAN KOMUNIKASI DAN INFORMATIKA', 'Jl. Raya Grinting No. 242 Bulakamba Brebes', 'Brebes 52251', 'Drs. Mayang Sri Herbimo', '19640703 198903 1 014', 'Pembina Utama Muda', 105, ''),
(47, '46000000', 'dputaru', 'c1e0040323b27eaaba9cdc03dde22a49', 'DPUTARU', 'User', 'DINAS PEKERJAAN UMUM DAN TATA RUANG', 'Jl. R.A. Kartini No. 3 Telp (0283) 672586 Fax (0283) 671724', '52212', 'Ir. NUSHY MANSUR, Msc.', '19631123 199601 1 001', 'Pembina Tk.I', 41, ''),
(48, '70000000', 'dppk', '7680520b0aa53de5c44fe98fc1b81753', 'DPPK', 'User', 'DINAS PENDAPATAN DAN PENGELOLAAN KEUANGAN ', 'JALAN VETERAN NO 11 BREBES TELPON (0283)', 'BREBES 52212', 'Drs. DIDING SETIADI S', '19610420 198503 1 011', 'PEMBINA UTAMA MUDA - IV/c', 42, ''),
(49, '42000000', 'dindukcapil', '8a9d9adc68ca94196f0e9294fb798d5d', 'DINDUKCAPIL', 'User', 'DINAS KEPENDUDUKAN DAN CATATAN SIPIL ', 'Jl. Jend. Sudirman No. 150 Brebes ( 0283 ) 671322', '52212', 'Drs. ASMUNI, M. Si', '19580828 198512 1 005', 'Penata Utama Muda', 116, ''),
(50, '76000000', 'dinsosnakretrans', 'e512915968907cf00806ed360f068fb8', 'DINSOSNAKRETRANS', 'User', 'DINAS SOSIAL TENAGA KERJA DAN TRANSMIGRASI', 'Jl. Diponegoro No. 150 Telp./Fax (0283) 6177495', 'Brebes - 52221', 'SYAMSUL KOMAR KAEDY, S. Sos', '19601010 198703 1 012', 'Pembina Tk. I - IVb', 110, ''),
(51, '40000000', 'dinhutbun', '37b7118d94a65c2a76a21f71e9a2dbf8', 'DINHUTBUN', 'User', 'DINAS KEHUTANAN DAN PERKEBUNAN', 'Jl. Sultan Agung KM. 2 No. 84 Pulosari Telp. (0283) 6176465 Fax. (0283) 6176365', 'Brebes - 52213', 'Ir. EKO ANDALAS MUCHTI, MM', '195810101987031014', 'Pembina Utama Muda', 81, ''),
(52, '71000000', 'dpesdm', '1876b13aa2a50138682148a082fed9eb', 'DPESDM', 'User', 'DINAS PENGAIRAN ENERGI SUMBER DAYA MINERAL', 'Jl. Hasanudin Komp. RSS Gandasuli Brebes', '52215', 'Ir. SLAMET RIYADI', '19580116 198503 1 001', 'PEMBINA UTAMA MUDA', 122, ''),
(53, '45000000', 'dinparbudpora', '62e8f731a9aa9a5c706e62230eb04dd0', 'DINPARBUDPORA', 'User', 'DINAS PARIWISATA KEBUDAYAAN PEMUDA DAN OLAHRAGA', 'Jl. A.Yani No. 87 Brebes Telpon (0283) 671840', '52212', 'Ir. AMIN BUDI RAHARJO, M.Pi', '19581030 198503 1 004', 'Pembina Utama Muda', 125, ''),
(54, '73000000', 'dinperindag', 'b8f3747f2815035b3e0c83e1c04e1808', 'DINPERINDAG', 'User', 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'JL. MT HARYONO NO 68 ', '52212', 'Drs. ZAENUDIN, MSi', '19640131 199403 1 002', 'Pembina Tingkat I', 124, ''),
(55, '75000000', 'dinpeternakan', '7d76a80d3e5b7eeea1d030d4ba536b7e', 'DINPETERNAKAN', 'User', 'DINAS PETERNAKAN', 'Jalan Taman Siswa 28 Telp. (0283) 6176485 Brebes', '52212', 'Ir. Yulia Hendrawati, M.Si', '19650714 199103 2 008', 'Pembina Utama Muda', 107, ''),
(56, '44000000', 'dinkoumkm', '00cd9ffccc31e9bb488d2c7b0277e990', 'DINKOUMKM', 'User', 'DINAS KOPERASI USAHA MIKRO KECIL DAN MENENGAH', 'Jln. veteran No.7 Brebes', '52212', 'Sutejo', '195905251991031003', 'Pembina Tk I', 46, ''),
(57, '93000000', 'klh', '535062915a6210ef0394c80449fad618', 'KLH', 'User', 'KANTOR LINGKUNGAN HIDUP', '', '', '', '', '', 0, ''),
(58, '91000000', 'kkesbangpol', 'a40f361c91f89f2b1bf87272745e0187', 'KKESBANGPOL', 'User', 'KANTOR KESATUAN BANGSA DAN  POLITIK', 'JL.JENDSUDIRMA NO.143 BREBES', '52212', 'KOMAR,SE', '19640714 199203 1 006', 'PEMBINA TK.I', 104, ''),
(59, '92000000', 'kketahpang', '0d707b3c7cdf6c540bd2597c26e4511a', 'KKETAHPANG', 'User', 'KANTOR KETAHANAN PANGAN', 'JL. GAJAH MADA N0. 03 B T', '52221', 'Ir. GATOT RUDIONO, M.M', '196009121992081001', 'PEMBINA TK. I', 129, ''),
(60, '90000000', 'kdkp', 'cd8094ac4c7a3d5ea0fcdcd5d39b13ef', 'KDKP', 'User', 'KANTOR DATA KEARSIPAN DAN PERPUSTAKAAN', 'Jalan Pusponegoro 3 A Telpon/Fax. (0283) 671371/673035', 'BREBES - 52212', 'ATHOILAH, SE., M.Si', '19591219 198003 1 011', 'Pembina Tingkat I', 109, ''),
(61, '94000000', 'kppt', '941425ad3841977a2b52955213f0477c', 'KPPT', 'User', 'KANTOR PERIJINAN TERPADU', 'Jl. Jend. Sudirman No. 111 Brebes', '62212', ' KEPALA KANTOR PELAYANAN PERIJINAN TERPADU', '196205201994121001', 'Pembina', 100, ''),
(62, '95000000', 'ksatpolpp', 'ba7246f69ee27e6aa57168e68bed7893', 'KSATPOLPP', 'User', 'KANTOR SATUAN POLISI PAMONG PRAJA', 'Jln P. Diponegoro No. 1 Brebes Telp/Fax (0283) 672858', '52212', 'Drs. Budhi Darmawan, M.Si', '19680210 198803 1 004', 'Pembina Tingkat I', 106, ''),
(98, '74000000', 'dptph', '7b5c71936c87ceaa4d927d9b5eef9f33', 'DINAS PERTANIAN', 'User', 'DINAS PERTANIAN TANAMAN PANGAN DAN HORTIKULTURA', 'Jl. XXXXXX', 'BREBES 52212', 'AAAAAAA', '19700325 200801 1 008', 'Pembina Utama Muda', 108, ''),
(63, '53000000', 'uptdbrebes', '08910fb46789fa91c1aecb99cc2bfd70', 'UPTD PENDIDIKAN KECAMATAN BREBES', 'User', 'UPTD DINAS PENDIDIKAN KEC. BREBES', 'Jl. Jenderal Sudirman No. 147  Telp. (0283) 671651 ', 'BREBES 52212', 'SUPARTI, S.Pd., M.Pd.', '19630711 198405 2 002', 'Pembina', 51, ''),
(64, '67000000', 'uptdwanasari', '03dd584329c404725ba904e955b92a9b', 'UPTD PENDIDIKAN KEC. WANASARI', 'User', 'UPTD DINAS PENDIDIKAN KEC. WANASARI', 'Jl. raya klampok- Wanasari Kab. brebes  Telp ( 0283) 673088 ', ' BREBES 52252', 'Hj. EVARONI  AFLAHAH, S.Pd', '19640720 198405 2 001', 'Pembina', 57, ''),
(65, '54000000', 'uptdbulakamba', 'a96668ab6363ab2b5aca40b7429d74a7', 'UPTD PENDIDIKAN KEC. BULAKAMBA', 'User', 'UPTD DINAS PENDIDIKAN KEC. BULAKAMBA', 'Jalan Raya Bulakamba No. 12 Telp. 0283 870191', '52253', 'WALUYO, S.Pd, M.Pd', '196305241984051002', 'Pembina, IV/a', 56, '-'),
(66, '65000000', 'uptdtanjung', '5db3e2f978ab691ac93c4dbbd8bedbda', 'UPTD PENDIDIKAN KEC. TANJUNG', 'User', 'UPTD DINAS PENDIDIKAN KEC. TANJUNG', ' Jln.Cemara Nomor 425 Tanjung Telp. (0283) 877775', '52254', 'SODIKIN,S.Pd', '19600516 197911 1 001', 'Pembina, IV/a', 55, ''),
(67, '60000000', 'uptdlosari', '44bf4b46e0e4d85fb6aaaa5fb80054b8', 'UPTD PENDIDIKAN KEC. LOSARI', 'User', 'UPTD DINAS PENDIDIKAN KEC. LOSARI', 'Jln. Raya Jatirokeh - Songgom - Brebes', 'Kode Pos 52266', 'Kuat Slamet,S.Pd', '196206071984051001', 'Pembina', 53, ''),
(68, '57000000', 'uptdkersana', '7eaaebb67f43d6996f3d3418b4405aab', 'UPTD PENDIDIKAN KEC. KERSANA', 'User', 'UPTD DINAS PENDIDIKAN KEC. KERSANA', 'Jalan Pemuda No. 56 Telp. (0283) 881035', 'Kersana 52264', 'Drs. TUSDI, M.Pd', '19630302 198405 1 002', 'Pembina Tingkat I', 54, ''),
(69, '51000000', 'uptdbanjarharjo', 'd2c287bf68145f044dae5c795160d6ba', 'UPTD PENDIDIKAN KEC. BANJARHARJO', 'User', 'UPTD DINAS PENDIDIKAN KEC. BANJARHARJO', 'Jl.Merdeka No.155 Banjarharjo', '52265', 'H. MUNASEH, SPd', '19620819 198304 1 002', 'Pembina, IV/a', 45, ''),
(70, '58000000', 'uptdketanggungan', 'a96c7ac90239f65f033f399236ff9c8c', 'UPTD PENDIDIKAN KEC. KETANGGUNGAN', 'User', 'UPTD DINAS PENDIDIKAN KEC. KETANGGUNGAN', 'Jl. A. Yani No. 133 Telp. 0283 - 881205 Ketanggungan', '52263', 'ABDUL MAJID, SIP', '19630403 198405 1 001', 'Pembina ', 59, ''),
(71, '59000000', 'uptdlarangan', '0dec53cf4a17804d615f08a1ce201959', 'UPTD PENDIDIKAN KEC. LARANGAN', 'User', 'UPTD DINAS PENDIDIKAN KEC. LARANGAN', 'Jalan Raya Barat Larangan â€“ Brebes Kode Pos 52262 Telp. (0283) 6183928', '52262', 'MUHARSONO, S.Pd', '19600327 198405 1 001', 'Pembina', 58, ''),
(72, '64000000', 'uptdsonggom', '02a8ed95df70fc7f62da3b53945807a4', 'UPTD PENDIDIKAN KEC. JATIBARANG', 'User', 'UPTD DINAS PENDIDIKAN KEC. SONGGOM', 'Jalan Raya Jatirokeh Songgom', '52266', 'SLAMET KUWAT, SPD', '19620607198405 1 001', 'pembina IV/a', 52, ''),
(73, '56000000', 'uptdjatibarang', '739bd54f58fdb9da03d2b08885bdc5ff', 'UPTD PENDIDIKAN KEC. JATIBARANG', 'User', 'UPTD DINAS PENDIDIKAN KEC. JATIBARANG', 'Jalan Raya Timur No. 38 Telp. (0283) 6183264', '52261', 'SUTONO, S.Pd', '19610912 198201 1 005', 'PEMBINA', 144, ''),
(74, '66000000', 'uptdtonjong', 'a1c0881eab439dbd19f0e16ec8d88417', 'UPTD PENDIDIKAN KEC. TONJONG', 'User', 'UPTD DINAS PENDIDIKAN KEC. TONJONG', '', '', '', '', '', 0, ''),
(75, '55000000', 'uptdbumiayu', '7709dba383f61d7fb9e79360f842e2fa', 'UPTD PENDIDIKAN KEC. BUMIAYU', 'User', 'UPTD DINAS PENDIDIKAN KEC. BUMIAYU', 'Jl. KH Akhmad Dahlan No.6 Kalierang Bumiayu  Telp 0289-432311', '52273', 'H. TARYONO, S.Pd., M.Pd.', '19610509 198201 1 002', 'Pembina IV/a', 138, ''),
(76, '61000000', 'uptdpaguyangan', '0c3ab7465459e060406e2ea238fce05d', 'UPTD PENDIDIKAN KEC. PAGUYANGAN', 'User', 'UPTD DINAS PENDIDIKAN KEC. PAGUYANGAN', '', '', '', '', '', 0, ''),
(77, '52000000', 'uptdbantarkawung', 'be075e4e37a6de05f0ed65afe5270459', 'UPTD PENDIDIKAN KEC. BANTARKAWUNG', 'User', 'UPTD DINAS PENDIDIKAN KEC. BANTARKAWUNG', 'Jalan Raya Bantarkawung No. 179', '52274', 'H. SURIPNO, S.Pd', '19580807 197802 1 003', 'Pembina', 133, ''),
(78, '63000000', 'uptdsirampog', '4ab3dd650a574665775db6b7634aac54', 'UPTD PENDIDIKAN KEC. SIRAMPOG', 'User', 'UPTD DINAS PENDIDIKAN KEC. SIRAMPOG', 'Jl.Raya Plang No.2 Buniwah Kecamatan Sirampog Kabupaten Brebes', '52272', 'HUDIYANTO,S.Pd.SD', '19590814 197711 1 002', 'Pembina', 143, ''),
(79, '62000000', 'uptdsalem', '84d514374a2342171b0a04140e8efefe', 'UPTD PENDIDIKAN KEC. SALEM', 'User', 'UPTD DINAS PENDIDIKAN KEC. SALEM', 'Jalan Raya Brak Nomor 10 Salem - Brebes', '52275', 'SUTAR, S.Pd.,M.Pd', '19600714 198304 1 003', 'Pembina', 135, ''),
(80, 'A2000000', 'kecbrebes', 'b8dee17249e5dc69afba000475661e16', 'Kecamatan Brebes', 'User', 'KECAMATAN BREBES', 'Jl.MT.Haryono No.70 Brebes', '52212', 'EKO PURWANTO, BA, M.Si', '19621226 198803 1 003', 'Pembina TK. I', 64, ''),
(81, 'B6000000', 'kecwanasari', 'e62f276848b53cf78d604fd044d3d8b1', 'Kecamatan Wanasari', 'User', 'KECAMATAN WANASARI', 'JALAN RAYA KLAMPOK NO 14 BREBES', 'Kode Pos : 52252', 'NURUDDIN, SH', '19690817 199803 1 017', 'Pembina', 80, ''),
(82, 'A3000000', 'kecbulakamba', '0c062508a4b02bd2b9c5589925600a43', 'Kecamatan Bulakamba', 'User', 'KECAMATAN BULAKAMBA', 'jl.raya bulakamba no 10 bulakamba', '52253', 'EDY SUDARMANTO,sip', '19590817198607 1 001', 'Pembina iv b', 47, ''),
(83, 'B4000000', 'kectanjung', 'ab82922c832f4c98d95b249a9851cf17', 'Kecamatan Tanjung', 'User', 'KECAMATAN TANJUNG', 'Jl. CENDRAWASIH No. 157 TANJUNG-BREBES', '52254', 'SUGENG BASUKI, SH.MM', '19640103 1980302 1 002', 'PEMBINA -IV/a', 146, ''),
(84, 'A9000000', 'keclosari', 'b13add46a1a2b9f212532e07349ac5ff', 'Kecamatan Losari', 'User', 'KECAMATAN LOSARI', 'Jl. Jendral Sudirman No.04 Telp.(0231) 831002 Losari Brebes', '52255', 'Drs. HUDIYONO, M.Si', '19581026 198512 1 001', 'Pembina Tk.I', 137, ''),
(85, 'A6000000', 'keckersana', 'f091d98e607f33a0db8f8cd29f33caa6', 'Kecamatan Kersana', 'User', 'KECAMATAN KERSANA', 'Jl. Pemuda No 56 Telp. ( 0283) 889543 Kersana', '52264', 'MOHAMAD SALAHUDIN,S.IP', '19650928 198607 1002', 'Pembina Tk I', 134, ''),
(86, 'A0000000', 'kecbanjarharjo', '9ca7e523b6d4f1ec8ec080a52c608963', 'Kecamatan Banjarharjo', 'User', 'KECAMATAN BANJARHARJO', 'Jalan Merdeka Nomor 113 Telepon 889550', 'BANJARHARJO - 52265', 'JAKARIA, S.IP, MM.', '19590918 198312 1 001', 'PEMBINA', 43, ''),
(87, 'A8000000', 'keclarangan', '052bf26ec58c95596b2de35ff396b426', 'Kecamatan Larangan', 'User', 'KECAMATAN LARANGAN', 'Jalan Raya Larangan No. 15 telp ( 0283 ) 618408 Larangan ', '52262', 'SUPRIYADI,S.Sos', '19710721 199009 1 001', 'Pembina TK. I', 132, ''),
(88, 'B3000000', 'kecsonggom', 'db1b888c7e40524e0b62ae6f3f7f3028', 'Kecamatan Songgom', 'User', 'KECAMATAN SONGGOM', 'Jln. Raya Jatirokeh No. 119 Kec. Songgom Kab. Brebes', '52266', 'EDY YUSUF, S.IP', '195904141989011001', 'Pembina Tingkat I', 139, ''),
(89, 'A5000000', 'kecjatibarang', 'd983a75e4aeb773dc140d72df2a739ba', 'Kecamatan Jatibarang', 'User', 'KECAMATAN JATIBARANG', 'JALAN RAYA TIMUR NOMOR : 18 JATIBARANG TELP.(0283) 6184162', 'JATIBARANG 52261', 'DARMADI,SH', '19590315 198003 1 008', 'PEMBINA TK.I', 79, ''),
(90, 'B5000000', 'kectonjong', '3d079b0b637e172e8b734d3f4dab8835', 'Kecamatan Tonjong', 'User', 'KECAMATAN TONJONG', 'JL.PURWODADI NO.13 TONJONG', '52271', 'SUMARNO,S.Pd,M.Si', '19680712 199210 1 001', 'PEMBINA', 140, ''),
(91, 'A4000000', 'kecbumiayu', '38702a97ceaebcfd63c7e2c2bac0892a', 'Kecamatan Bumiayu', 'User', 'KECAMATAN BUMIAYU', 'Jl. Asri No. 13 Bumiayu', '52273', 'Urip Rosidik, S. IP.', '19651108 198607 1 001', 'Pembina Tk. I', 142, ''),
(92, 'B0000000', 'kecpaguyangan', 'ed2b910e14f6647f081a955b8625133a', 'Kecamatan Paguyangan', 'User', 'KECAMATAN PAGUYANGAN', '', '', '', '', '', 0, ''),
(93, 'A1000000', 'kecbantarkawung', '2822fe64483830112dd2a33b677c855b', 'Kecamatan Bantarkawung', 'User', 'KECAMATAN BANTARKAWUNG', 'Jl. Raya Bantarkawung No. 159 Bantarkawung', '52274', 'Gunarto, S. IP.', '19600409 198503 1 022', 'Pembina Tk. I', 0, ''),
(94, 'B2000000', 'kecsirampog', 'e918a6ca0191069a85bdd7887caf7881', 'Kecamatan Sirampog', 'User', 'KECAMATAN SIRAMPOG', 'JLN RAYA PLANG BUNIWAHNO.1SIRAMPOG', '52272', 'MUNAEDI,SH', '196106181985031012', 'PEMBINA', 145, ''),
(95, 'A7000000', 'kecketanggungan', '1453925b23f8ee225f086ef0b2f77dc9', 'Kecamatan Ketanggungan', 'User', 'KECAMATAN KETANGGUNGAN', 'JL AHMAD YANI NO. 127', '52263', 'REJEH JUANDA, SH', '19581027 198703 1 004', 'PEMBINA TK. I', 148, ''),
(96, 'B1000000', 'kecsalem', '779570de2cf6422122d5b3ea06307b16', 'Kecamatan Salem', 'User', 'KECAMATAN SALEM', 'Jln. P. Diponegoro   Nomor : 53  Salem', '52275', 'MOCH. ADNAN, S.IP', '19580817 198003 1 025', 'PEMBINA TK. I', 131, ''),
(97, '50000000', 'dinpendik', '8c0aaed4be8aee7fa3ee7d1bab8dafa7', 'Dinas Pendidikan', 'User', 'DINAS PENDIDIKAN', 'Jl. Jendral Sudirman Nomor 187 Telephone (0283) 671157 Brebes', 'BREBES 52212', 'Dr. TAHRONI, M.Pd', '19710609 199802 1 001', 'Pembina Tk. I', 50, '');

-- --------------------------------------------------------

--
-- Table structure for table `userwns`
--

CREATE TABLE `userwns` (
  `kode_user` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(100) CHARACTER SET ucs2 NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eps_modul`
--
ALTER TABLE `eps_modul`
  ADD PRIMARY KEY (`kode_modul`);

--
-- Indexes for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`kodedisposisi`);

--
-- Indexes for table `tb_kasi`
--
ALTER TABLE `tb_kasi`
  ADD PRIMARY KEY (`kode_kasi`);

--
-- Indexes for table `tb_pola`
--
ALTER TABLE `tb_pola`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tb_skpd`
--
ALTER TABLE `tb_skpd`
  ADD PRIMARY KEY (`kodeskpd`);

--
-- Indexes for table `tb_surat`
--
ALTER TABLE `tb_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userbkd`
--
ALTER TABLE `userbkd`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indexes for table `userwns`
--
ALTER TABLE `userwns`
  ADD PRIMARY KEY (`kode_user`);
ALTER TABLE `userwns` ADD FULLTEXT KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eps_modul`
--
ALTER TABLE `eps_modul`
  MODIFY `kode_modul` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `kodedisposisi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_kasi`
--
ALTER TABLE `tb_kasi`
  MODIFY `kode_kasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pola`
--
ALTER TABLE `tb_pola`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tb_skpd`
--
ALTER TABLE `tb_skpd`
  MODIFY `kodeskpd` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tb_surat`
--
ALTER TABLE `tb_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `userbkd`
--
ALTER TABLE `userbkd`
  MODIFY `kode_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `kode_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
