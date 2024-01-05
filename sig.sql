-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 03:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `senbud`
--

CREATE TABLE `senbud` (
  `id_instansi` int(8) NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `Kategori` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `no_telepon` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `senbud`
--

INSERT INTO `senbud` (`id_instansi`, `nama_instansi`, `Kategori`, `website`, `no_telepon`, `alamat`, `kota`, `provinsi`, `latitude`, `longitude`) VALUES
(1, 'senbud Flaminggo Tasikmalaya', 'Untuk Laki-laki & perempuan', 'business.google.com', '081223764054', 'Jl. Sindanghurip, Cikalang, Kahuripan, Tawang, Kahuripan, Tawang, Gg. Rosella, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3369878', '108.2141874'),
(2, 'senbud Pak Agus', 'Untuk Pria & Wanita', '', '081323026533', 'Jl. Dadaha, Nagarawangi, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46124', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3468624', '108.1963055'),
(3, 'Humaira Kost', 'Untuk Karyawan & Karyawati', '', '08151485870', 'Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.353989', '108.2204655'),
(4, 'Kost senbud \"KK\"', 'Untuk Karyawan & Karyawati', '', '0895364537799', 'Jl. Komarasari I No.9, Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3283427', '108.2196333'),
(5, 'senbud Mas Slamet', 'Untuk Pria & Wanita', '', '085324403434', 'Jl. Cilolohan No.120, RT.06/RW.08, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3493172', '108.226493'),
(6, 'FISATAR', 'MENERIMA senbud KARYAWAN/PASUTRI - DLL', '', '085319495999', 'BCT, Jl. Kb. Tiwu III, Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3287418', '108.2195691'),
(7, 'senbud Bu Asih', 'Untuk Pria & Wanita', '', '082315861212', 'Jl. Asrama Nyantong No.32, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3471402', '108.1925068'),
(8, 'Gracia Kost', 'Untuk Karyawan', '', '081322566615', 'Jl. Mayor Elang Subandar, Nagarasari, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46132', 'Kota Tasikmalaya', 'Jawa Barat', '-7.314818', '108.2185916'),
(9, 'Syariah Kost', 'Karyawan/Karyawati', '', '085324000075', 'Jl. Sutisna Senjaya No.199, Cikalang, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46114', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3324626', '108.2324818'),
(10, 'senbud Ummi House', 'Karyawan/Karyawati', 'senbud-ummi-house-tasikmalaya.business.site', '085316464267', 'BELAKANG CUCI PAKAIAN FAZRI, Jl. Pembela Tanah Air Gn. Roay II, RT.5/RW.14, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46114', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3527753', '108.2244084'),
(11, 'KOST Ibu Asih', 'Karyawan/Karyawati', '', '085223829391', 'Jalan Dadaha, Nagarawangi, Cihideung, Nagarawangi, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46124', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3363216', '108.2209262'),
(12, 'Kos Ibu Yuyun', 'Karyawan/Karyawati', '', '085765331839', 'Jl. Babakan Siliwangi No.44, Setiaratu, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3462419', '108.2289024'),
(13, 'senbud Pak Tris', 'Perempuan/Laki-laki', '', '082675323943', 'Empangsari, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46113', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3288031', '108.2225475'),
(14, 'Kost Indigo', 'Pria/Wanita', '', '081265312059', 'Jl. Panyerutan No.4, Nagarawangi, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46121', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3328097', '108.2176623'),
(15, 'DaDaha Kost', 'Pria/wanita', '', '081320544999', 'Jl. Lingkar Dadaha No.42 A, Nagarawangi, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46124', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3341034', '108.2209945'),
(16, 'senbud Setiarasa', 'Karyawan/Karyawati', '', '089765843471', 'Jl. Setiarasa, Sukamulya, Kec. Bungursari, Kab. Tasikmalaya, Jawa Barat 46151', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3104008', '108.1679669'),
(17, 'senbud H turyaman', 'Karyawan/Karyawati', '', '085222598766', 'Gg. H. Hindasah, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3488023', '108.2260172'),
(18, 'senbud Pinang Bahari', 'Karyawan/Karyawati', '', '085624998873', 'Jl. Perintis Kemerdekaan No.15, Tugujaya, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46126', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3494392', '108.2156931'),
(19, 'senbud pondok aisyah', 'Untuk putri', '', '082316746847', 'Jl. Batara blok b.6 (tidak masuk kedalam perumahannya), Kahuripan, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3555706', '108.2244262'),
(20, 'Aldera Kost', 'Perempuan/Laki-laki', '', '082119999515', 'Jl. Siliwangi No.69, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'KOta Tasikmalaya', 'Jawa Barat', '-7.348397', '108.2240486'),
(21, 'senbud Vilput', 'Karyawan/Karyawati', '', '081323455455', 'Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3498771', '108.2187499'),
(22, 'senbud SUDIRMAN ', 'Karyawan/Karyawati', '', '082119844147', 'Jl. Noenoeng Tisnasaputra Gg. STM, RT.004/RW.011, Sindanggalih, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa barat', '-7.3498344', '108.2187499'),
(23, 'Kos senbud al-daiti', 'Karayawan/Karyawati', '', '089663264140', 'Mulyasari, Kec. Tamansari, Kab. Tasikmalaya, Jawa Barat 46196', 'Kota Tasikmalaya', 'Jawa Barat', '-7.34881', '108.1952822'),
(24, 'senbud Jati', 'Karyawan/Karyawati', '', '081265420040', 'Jl. Ibrahim Adjie No.28, Indihiang, Kec. Indihiang, Kab. Tasikmalaya, Jawa Barat 46151', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3009383', '108.1689218'),
(25, 'Kost Lavenda', 'Karyawan/Karyawati', '', '082119844147', 'Jl. Macan I No.1, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat ', '-7.3498478', '108.2189534'),
(26, 'senbud bu haji', 'Pria/Wanita', '', '087265331331', 'Nagarawangi, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46113', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3288031', '108.2225475'),
(27, 'Kost Ibu Rina', 'Pria/Wanita', '', '085222562030', 'Jl. Selakaso No.30, Yudanagara, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46121', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3498531', '108.1881831'),
(28, 'senbud putri Mawar Indah', 'Untuk Putri', '', '085221812722', 'Samping poltekes negeri tasikmalaya, Jl. Cilolohan, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.361597', '108.2153366'),
(29, 'senbud Ica', 'Pria/Wanita', '', '085223451229', 'Jl. Cilolohan No.120, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3487489', '108.2308424'),
(30, 'AURA Kost', 'Pria/Wanita', '', '083152229591', 'Jl. Pataruman, Yudanagara, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46121', 'KOta Tasikmalaya', 'Jawa Barat', '-7.3311914', '108.2186817'),
(31, 'KOST IMAH BOJONG', 'Pria/Wanita', '', '082118752999', 'Jl. Bojong, Cipedes, Kec. Cipedes, Kab. Tasikmalaya, Jawa Barat 46133', 'Kota Tasikmalaya ', 'Jawa Barat', '-7.3152779', '108.1797622'),
(32, 'senbud Yaspisa', 'Pria/wanita', '', '085625332502', 'Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat', 'Kota Tasikmalaya ', 'Jawa Barat', '-7.3456867', '108.1890169'),
(33, 'senbud Tedi', 'Pria/wanita', 'mamikos.com', '08164667766', 'Jl. Asrama Nyantong No.38A, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3450033', '108.2183678'),
(34, 'Kos senbud Pa Ana Ekong', 'Pria/Wanita', '', '085223350849', 'Jl. Cilolohan, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'KOta Tasikmalaya', 'Jawa Barat', '-7.3449766', '108.2118017'),
(35, 'kost mas slamet', 'Pria/Wanita', 'mas-slamet.business.site', '085222598766', 'Jl. Cilolohan No.120, RW.8, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3479156', '108.1847506'),
(36, 'senbud SANTIKA', 'Pria/Wanita', '', '081265420040', 'Cilembang, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46123', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3289572', '108.2117957'),
(37, 'senbud Hj Dede', 'Mahasiswa/Mahasiswi', '', '085223314951', 'Jl. Permata Raya No.11, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46112', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3448053', '108.2172212'),
(38, 'senbud Black Orange', 'Pria/Wanita', '', '089265420040', 'Jl. Cilolohan, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3488986', '108.2280566'),
(39, 'Medina Kost', 'Pria/Wanita', '', '085223843823', 'Setiaratu, Kec. Cibeureum, Kab. Tasikmalaya, Jawa Barat 46196', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3431366', '108.2278433'),
(40, 'senbud Hj.Dedeh', 'Pria/wanita', '', '085222562030', 'Cikalang, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46114', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3361133', '108.2271939'),
(41, 'Faridah Kost', 'Pria/Wanita', '', '082330000953', 'Nagarawangi, Kec. Cihideung, Kab. Tasikmalaya, Jawa Barat 46124', 'Kota Tasikmalaya', 'Jawa Barat', '-7.335591', '108.214403'),
(42, 'kost DARUSSALAM', 'Untuk Putri', '', '085323891111', 'Jl. Babakan Siliwangi, Setiaratu, Kec. Cibeureum, Kab. Tasikmalaya, Jawa Barat 46196', 'Kota Tasikmalaya', 'Jawa barat', '-7.3455071', '108.229045'),
(43, 'Kost Sriwit', 'Pria/wanita', '', '085222373083', 'Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3498771', '108.2187499'),
(44, 'Kos Pak Ana Rohana', 'Pria/Wanita', '', '085900395103', 'Jl. Cilolohan, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3488986', '108.2280566'),
(45, 'Ratu senbud', 'Pria/wanita', '', '085397938582', 'Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3498771', '108.2187499'),
(46, 'Kost Hj Euis', 'Untuk Karyawati', '', '082316032629', 'Jl. Cikalang Girang No.17, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3392126', '108.2230283'),
(47, 'KOST PAK EKO', 'Untuk Pria', '', '081323537829', 'Jl. Letjen Mashudi, Setiaratu, Kec. Cibeureum, Kab. Tasikmalaya, Jawa Barat 46196', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3446773', '108.2358869'),
(48, 'Kost Putri 180', 'Untuk Putri', '', '082316746847', 'Jl. Siliwangi No.180, Cikalang, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46114', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3392458', '108.2287565'),
(49, 'KOST BINTANG SILIWANGI', 'Pria/wanita', '', '081265420040', 'Jl. Siliwangi, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3432279', '108.2258769'),
(50, 'senbud H.Cecep', 'Pria/Wanita', '', '085288894891', 'Jl. Letjen Mashudi, Karsamenak, Kec. Kawalu, Kab. Tasikmalaya, Jawa Barat 46182', 'Kota Tasikmalaya', 'Jawa Barat', '-7.3720006', '108.2177593');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `senbud`
--
ALTER TABLE `senbud`
  ADD PRIMARY KEY (`id_instansi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `senbud`
--
ALTER TABLE `senbud`
  MODIFY `id_instansi` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

