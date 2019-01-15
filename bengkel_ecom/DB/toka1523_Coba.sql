-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2018 at 10:48 PM
-- Server version: 10.0.37-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toka1523_Coba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama`, `email`) VALUES
(1, 'admin', 'admin', NULL, 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_kirim`
--

CREATE TABLE `tbl_biaya_kirim` (
  `id_biaya_kirim` int(10) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_biaya_kirim`
--

INSERT INTO `tbl_biaya_kirim` (`id_biaya_kirim`, `kota`, `biaya`) VALUES
(1, 'Jakarta', 10000),
(2, 'Yogayakarta', 20000),
(3, 'Pemalang', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_detail_order` int(11) NOT NULL,
  `id_order` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_detail_order`, `id_order`, `id_produk`, `jumlah`, `harga`) VALUES
(1, 149, 4, 1, 0),
(2, 0, 5, 5, 0),
(3, 0, 6, 4, 0),
(4, 0, 6, 1, 0),
(5, 0, 6, 2, 0),
(6, 0, 5, 1, 0),
(7, 0, 5, 3, 0),
(8, 0, 6, 1, 0),
(9, 0, 5, 1, 0),
(10, 0, 5, 1, 0),
(11, 0, 6, 1, 0),
(12, 0, 5, 1, 0),
(13, 0, 7, 1, 0),
(14, 0, 14, 1, 0),
(15, 0, 23, 1, 0),
(16, 0, 22, 1, 0),
(17, 0, 13, 1, 0),
(18, 0, 19, 1, 0),
(19, 0, 23, 1, 0),
(20, 0, 21, 1, 0),
(21, 0, 18, 1, 0),
(22, 0, 22, 1, 0),
(23, 0, 23, 1, 0),
(24, 0, 21, 1, 0),
(25, 0, 18, 2, 0),
(26, 0, 22, 1, 0),
(27, 0, 23, 1, 0),
(28, 0, 23, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori_produk` int(3) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori_produk`, `nama_kategori`) VALUES
(1, 'Women'),
(2, 'Men');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(10) NOT NULL,
  `id_order` int(10) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `id_order`, `nama`, `alamat`, `email`, `no_hp`) VALUES
(75, 0, 'Nur Hadian', 'moga', 'Barcoding97@gmail.com', '0877'),
(76, 0, 'Nur Hadian', 'Moga', 'Barcoding97@gmail.com', '0877'),
(77, 0, 'Nur Hadian', 'Moga', 'Barcoding97@gmail.com', '0877'),
(78, 0, 'dian', 'moga', 'Barcoding97@gmail.com', '0877'),
(79, 0, 'dian', 'moga', 'Barcoding97@gmail.com', '0877'),
(80, 0, 'Nur Hadian', 'moga', 'Barcoding97@gmail.com', '0877');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merek`
--

CREATE TABLE `tbl_merek` (
  `id_merek` int(3) NOT NULL,
  `nama_merek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_merek`
--

INSERT INTO `tbl_merek` (`id_merek`, `nama_merek`) VALUES
(5, 'Ripcurl'),
(6, 'Macbeth'),
(7, 'Volcom');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(5) NOT NULL,
  `status_order` char(1) NOT NULL,
  `id_produk` int(5) DEFAULT NULL,
  `jumlah` int(3) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `id_session` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `status_order`, `id_produk`, `jumlah`, `harga`, `id_session`) VALUES
(14, 'P', 5, 3, NULL, '15ri55rh5p36nde9llkd3eorn0'),
(15, 'P', 4, 1, NULL, '15ri55rh5p36nde9llkd3eorn0'),
(16, 'P', 5, 7, NULL, '1bm1pt48tna4h7bn982m3l1o21'),
(17, 'P', 5, 20, NULL, '6ofg008td04qgb0o5vk5b1hi00'),
(18, 'P', 4, 2, 0, '6ofg008td04qgb0o5vk5b1hi00'),
(19, 'P', 6, 2, 0, '6ofg008td04qgb0o5vk5b1hi00'),
(22, 'P', 14, 1, 0, 'cj36arl31smilmd9c24lah8fd3'),
(23, 'P', 20, 1, 0, 'cj36arl31smilmd9c24lah8fd3'),
(24, 'P', 23, 1, 0, 'abd711a3a645596c87f718adaa94aa4f'),
(25, 'P', 18, 1, 0, '6a44a042c4093a625027ff873f0676c3'),
(26, 'P', 20, 1, 0, '47e9a28d7779efd04bf9b365aa3b5296'),
(27, 'P', 23, 1, 0, '415e4aa361b02bc27bf0285880dc2610'),
(28, 'P', 14, 1, 0, '35949a4ddf89f9d662d2739c5305eebe'),
(29, 'P', 21, 1, 0, '480d5d10e88c17407e15a20e03b7f371'),
(30, 'P', 22, 1, 0, '945f9368825a26759f386c4353af4b6b'),
(31, 'P', 19, 1, 0, '1699b6091334e4d827dff70f82a303a4'),
(32, 'P', 17, 1, 0, 'e1190b3616d1476cb458dee0270fb98f'),
(33, 'P', 13, 1, 0, '5f0f2db8360f88c06d8379f2e4d434a4'),
(35, 'P', 17, 1, 0, 'd925f6fe90165c8e102eb63f3c542371'),
(36, 'P', 23, 1, 0, 'd87ac4d1aaa49c43719a7ca818d195bb'),
(37, 'P', 23, 1, 0, '69d7c33d01d993498075f9bc71c7b4c3'),
(38, 'P', 19, 1, 0, '843173b1682d3818dd640dd0bf055d6f'),
(39, 'P', 14, 1, 0, 'aa6afe9afe88a76fb6462d364bbcc742'),
(40, 'P', 21, 1, 0, '8e88e4263bae9e2af71caa3f1a16faa0'),
(41, 'P', 20, 1, 0, '6fe50eeb6cb8bd4830dc63eebbdeff04'),
(42, 'P', 22, 1, 0, 'eedadba63eacee7420511a5fd772119a'),
(43, 'P', 18, 1, 0, '4ac3dacb1b1cb7280e433c550964d6cc'),
(44, 'P', 13, 1, 0, '341dd1ae5b39e8f94ff2c5a971c56f95'),
(45, 'P', 13, 1, 0, '188dbeb82804fff8c86e9f6a31eaae49'),
(46, 'P', 14, 1, 0, 'cd6d146fe9d6ba35405297e1b0717b1b'),
(47, 'P', 13, 1, 0, '4fd107ee1e72036f0b2d636661375bf4'),
(48, 'P', 20, 1, 0, '966ef54e88c75cacf906dd73c933636e'),
(49, 'P', 21, 1, 0, '26cbdf15f024a95aafb08ff34e89d99a'),
(50, 'P', 17, 1, 0, '50a2e706dedfe6758998bb4130f3a9c2'),
(51, 'P', 18, 1, 0, 'f1ae0dc1db2c8a01dc9c26271d448e1d'),
(52, 'P', 22, 1, 0, 'd973a83f4faa19401acad0cde815f6d6'),
(53, 'P', 19, 1, 0, '59e4e362e743ba8655afa765bf8c687c'),
(54, 'P', 23, 1, 0, '434aa428cde2d005a00cd65bfef410ac'),
(55, 'P', 20, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(56, 'P', 22, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(57, 'P', 21, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(58, 'P', 23, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(59, 'P', 13, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(60, 'P', 14, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(61, 'P', 17, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(62, 'P', 19, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(63, 'P', 18, 1, 0, '94abe9812308b89db2c14fc6ce2fdd5e'),
(64, 'P', 18, 1, 0, '8c0f129af6a21b4a47c487ddb3fae8e8'),
(65, 'P', 19, 1, 0, 'c5e614d83e1448f1d21b894d6f77455d'),
(66, 'P', 23, 1, 0, '4e4dc9a1dc58fe9e67979eeb18786e0c'),
(67, 'P', 14, 1, 0, '36703cc14cb36d99bf0204dc912f1769'),
(68, 'P', 14, 1, 0, 'a539d330376a9388b959541e9c98afa0'),
(69, 'P', 14, 1, 0, 'acdf912fbf061a31056c213f39dcc23a'),
(70, 'P', 21, 1, 0, '1186e9c894d443b5b1b7aaf6075f79ee'),
(71, 'P', 20, 1, 0, '7e8cb60668ddc3b83cf973e7a5a91abe'),
(72, 'P', 22, 1, 0, 'c9d7ba512a4b4c9fc8efe2139740716a'),
(73, 'P', 23, 1, 0, '6e5d878f0cb114a631ee2630dbb2c3aa'),
(74, 'P', 19, 1, 0, '4febf971955ecca794d4350305938042'),
(75, 'P', 13, 1, 0, '7dd43765fe89c0c3c377daa6e5ab189d'),
(76, 'P', 18, 1, 0, 'ad1f676b69d76e25e0d4de4b6d66563f'),
(77, 'P', 17, 1, 0, '0594e20aeb421329a00c7688f2e6b5b0'),
(78, 'P', 14, 1, 0, 'a0ebf0693d0029b6345da3d14490c6e0'),
(79, 'P', 19, 1, 0, '25441d54a56dfb88284d439446678fb1'),
(80, 'P', 13, 1, 0, '97fe3deabbb1cb948cfc5c56deb07070'),
(81, 'P', 19, 1, 0, '746e12c20f58760184d3ec83d544d467'),
(82, 'P', 23, 1, 0, '48fef05ead54bfce94e12f1eb59a6d3f'),
(83, 'P', 21, 1, 0, '4406da8a1122aef18f47f0a02d8709dd'),
(84, 'P', 23, 1, 0, '24cc7e5378bfcc819e41e896803089d4'),
(85, 'P', 22, 1, 0, 'eae48d198c57e4243dc2ae75618c964a'),
(86, 'P', 21, 1, 0, '08729ce6fd64612ab697ee57ce94a2d5'),
(87, 'P', 20, 1, 0, 'cc3f70beca2b2701720ffd2695d72ce4'),
(88, 'P', 19, 1, 0, '35b044cfdaeac895ab2da003419b525f'),
(89, 'P', 18, 1, 0, '220acf03190253b0675f80bffdef78bb'),
(90, 'P', 17, 1, 0, 'ea0604c4edc81aae1593e84dfcc50fd7'),
(91, 'P', 14, 1, 0, 'ed9c7dc4506e5c1f73f8aba77ca19ba1'),
(92, 'P', 13, 1, 0, 'baacccfe18f13be2ebfeb5a6f288531a'),
(93, 'P', 14, 1, 0, '5b604f293b853af52e6696f2fcec8412'),
(94, 'P', 18, 1, 0, 'aa2e747037bc2561a6a28d1062a86e36'),
(95, 'P', 21, 1, 0, '1c4aba8eccfa9e078669089b8fa3249d'),
(96, 'P', 22, 1, 0, '3ba54640770550c8af2a38b1cc5759a7'),
(97, 'P', 19, 1, 0, '3cbb38a6154bb12e71f023ab4a9dbf65'),
(98, 'P', 20, 1, 0, '711d91678ce10ba5d0a67010ec9871ce'),
(99, 'P', 17, 1, 0, 'fa9ec46dfdba836164d5f4b6ae384084'),
(100, 'P', 23, 1, 0, 'a92976ef85a16056da838d1b890c97cd'),
(101, 'P', 13, 1, 0, '73e49a9b18707f1f5e138f4f68e8229e'),
(102, 'P', 14, 1, 0, '6593a8b75a50a6e1164dd307094ec712'),
(103, 'P', 19, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(104, 'P', 18, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(105, 'P', 21, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(106, 'P', 20, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(107, 'P', 13, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(108, 'P', 22, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(109, 'P', 14, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(110, 'P', 17, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(111, 'P', 23, 1, 0, '1f4a3cbd561f7e274aa9d4fb34fd106a'),
(112, 'P', 21, 1, 0, 'f91cb041bb4c648bdf79d0b0022db0b8'),
(113, 'P', 22, 1, 0, '4782161b6967fb7bd004045f26111064'),
(114, 'P', 14, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(115, 'P', 17, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(116, 'P', 18, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(117, 'P', 20, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(118, 'P', 21, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(119, 'P', 22, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(120, 'P', 23, 1, 0, '7b6717ac754a9fc12900c6b503b809a5'),
(121, 'P', 13, 1, 0, '482a5bcd1c77a44b60dd1c42828891f7'),
(122, 'P', 19, 1, 0, '482a5bcd1c77a44b60dd1c42828891f7'),
(123, 'P', 13, 1, 0, 'f13f0f17383c9b814ab7dddfa413f08b'),
(124, 'P', 21, 1, 0, '5def822ad9a1045aa0f3fac15d627041'),
(125, 'P', 19, 1, 0, '6313b21f54561c6e9112bf4cd17dc47f'),
(126, 'P', 23, 1, 0, '06da231d3b24d0f2661609274087e16f'),
(127, 'P', 22, 1, 0, '7ebfa011e4a50f14ac24c6a28f7608bd'),
(128, 'P', 21, 1, 0, '074ae2483921f93364a3f24d07066bb7'),
(129, 'P', 20, 1, 0, '957cee8e568caa2e1b29f4319d246612'),
(130, 'P', 19, 1, 0, '05ed08190c269112d31458241f1943c9'),
(131, 'P', 18, 1, 0, 'e4128d58ecf2d94a71fb1df2ac4469f7'),
(132, 'P', 17, 1, 0, 'b0001c634ab7cfcce84684591f49075d'),
(133, 'P', 14, 1, 0, '2dee936ca6334e68faa63e96b92284ec'),
(134, 'P', 13, 1, 0, 'b8070c3bc5f488e728fc52eda8858829'),
(135, 'P', 20, 1, 0, '4ff1cd49d57987b142601f76a5d6d19a'),
(136, 'P', 14, 1, 0, 'a0f249a4503b2e30d8437d2ca7bc057d'),
(137, 'P', 13, 1, 0, 'a6773bb01f49f847471994518db375e2'),
(138, 'P', 21, 1, 0, 'c5fd41465881fa7db13f86adb4019711'),
(139, 'P', 22, 1, 0, '41aa829ad90036c77e8c057a70375982'),
(140, 'P', 23, 1, 0, '85d985b66cea059c8b148fd20fc99f16'),
(141, 'P', 17, 1, 0, '8fc8adde8c941cccc9999df5ea82c954'),
(142, 'P', 19, 1, 0, 'a86c9ed3fd7bf7a6fa3528b77747e588'),
(143, 'P', 18, 1, 0, 'd57458ca3a985520664ff360ccee7acb'),
(144, 'P', 17, 1, 0, '58bc87d4360d3b8e322539beadba1803'),
(145, 'P', 23, 1, 0, '31f1f3d9c48c8ff844029c0c5d481700'),
(146, 'P', 18, 1, 0, '6c927c64fb7ab51a5868dac15a79a20a'),
(147, 'P', 14, 1, 0, '04d2c2707a0d0422b095e480c5415585'),
(148, 'P', 21, 1, 0, '6f8821464e152d21f43280075b9d5a4d'),
(149, 'P', 20, 1, 0, '7b8caf87e2b33ca45794dd8bd2f8e4d6'),
(150, 'P', 14, 1, 0, 'a51db579c867f1b42cacf4f22ca3f26d'),
(151, 'P', 22, 1, 0, '7b648e84669e146f2a256695e7129f62'),
(152, 'P', 19, 1, 0, '597d36a8d743505e11301489350d9ff2'),
(153, 'P', 13, 1, 0, 'ae174c52f788dfcc1675827701ca646b'),
(154, 'P', 21, 1, 0, 'f8023eedb9f778fdf7439b03d47e5874'),
(155, 'P', 23, 1, 0, '6974757777b15231bc5586e0a6ac25d1'),
(156, 'P', 21, 1, 0, 'e9b877711ca531e33659c339ca53e629'),
(157, 'P', 21, 1, 0, 'bdea2d814a0cf2eeea586d09a21bfe6c'),
(158, 'P', 23, 1, 0, 'cdfd1255a961aed720853e33e92e7c6c'),
(159, 'P', 18, 1, 0, 'efd3dcdb6d1d6e44a287ee5cc281f654'),
(160, 'P', 23, 1, 0, '257e78edba16a848f6601d795a7c6ce9'),
(161, 'P', 13, 1, 0, 'e036c5eff71c4eff859663133b394f68'),
(162, 'P', 13, 1, 0, 'b406d66731ae1ad9717085af775955ee'),
(163, 'P', 20, 1, 0, '6f43b88edf759f47a70f16b64f73644f'),
(164, 'P', 21, 1, 0, '052b074a0221324f650c440869cb391e'),
(165, 'P', 22, 1, 0, '6b6582d83df158ea55f92dd433a03d65'),
(166, 'P', 23, 1, 0, 'caed6c31b3f880591919bec1c7486bb9'),
(167, 'P', 19, 1, 0, '4e477cfd06646ab385d7fa879b9749a7'),
(168, 'P', 18, 1, 0, 'b912730a96aa2a7e93646a267222d748'),
(169, 'P', 13, 1, 0, '629f8ac2787e1b9ea93ffe7da92aa782'),
(170, 'P', 14, 1, 0, '205c3a93fd81923f26a9614353c97dea'),
(171, 'P', 17, 1, 0, 'bce7e9934d12bf3843f86c6f2a656e0b'),
(172, 'P', 17, 1, 0, 'a666f4d83c0f9f2b74c892e156a633c6'),
(173, 'P', 19, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(174, 'P', 18, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(175, 'P', 14, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(176, 'P', 21, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(177, 'P', 20, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(178, 'P', 23, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(179, 'P', 22, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(180, 'P', 17, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(181, 'P', 13, 1, 0, 'c10d48b517aa1ddc125d9d83dde20324'),
(182, 'P', 23, 1, 0, '85def0d20ee950362ac6eec013a62b0e'),
(183, 'P', 21, 1, 0, 'd2c121e165b54198e6aa7d5b26b8a605'),
(184, 'P', 22, 1, 0, '5878367871d0fab2d1fc8efa1c63cccd'),
(185, 'P', 23, 1, 0, '8500ab7f0e06259d9cbaa81f1ffc98dc'),
(186, 'P', 22, 1, 0, '8500ab7f0e06259d9cbaa81f1ffc98dc'),
(187, 'P', 21, 1, 0, '8500ab7f0e06259d9cbaa81f1ffc98dc'),
(188, 'P', 20, 1, 0, '8500ab7f0e06259d9cbaa81f1ffc98dc'),
(189, 'P', 19, 1, 0, '8500ab7f0e06259d9cbaa81f1ffc98dc'),
(190, 'P', 18, 1, 0, '8500ab7f0e06259d9cbaa81f1ffc98dc'),
(191, 'P', 22, 2, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(192, 'P', 18, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(193, 'P', 23, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(194, 'P', 20, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(195, 'P', 19, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(196, 'P', 21, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(197, 'P', 14, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(198, 'P', 13, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(199, 'P', 17, 1, 0, '8085fd8edc12786dca7bfa2e8c29f9b7'),
(201, 'P', 23, 1, 0, '5540c19edf9f032ec94a1630a83b9f35'),
(202, 'P', 21, 1, 0, '630ea5284f696c58d7e4be576877ee8a'),
(203, 'P', 22, 1, 0, 'dfc51e95b3701fc0072d2416e9eb56b7'),
(204, 'P', 20, 1, 0, 'd977ef2631bf21652947a77e1a430b1d'),
(205, 'P', 23, 1, 0, '96e29b44567a453a65dc92c58fd54beb'),
(206, 'P', 19, 1, 0, '729c4c982f123db76e02e24d4f05c914'),
(207, 'P', 18, 1, 0, '27af29b66b2d363986413591be612910'),
(208, 'P', 13, 1, 0, '55f87f1a093de97b8f1ef34098b3b97b'),
(209, 'P', 17, 1, 0, '178fcdd309829c7d753a4ca6f43eab05'),
(210, 'P', 14, 1, 0, '2632786626aa98078949764db2f0fad3'),
(211, 'P', 23, 1, 0, '5487478a89838aec86fe63432669c4dd'),
(212, 'P', 22, 1, 0, '4301648c2fcc343a8eca1c1c612c3236'),
(213, 'P', 23, 1, 0, 'e3d7e3dac73c3a08c54eb5e18bee2814'),
(214, 'P', 21, 1, 0, '9b94dff9a8d402e8dbcc0f283c6754b9'),
(215, 'P', 20, 1, 0, '781c8e3fce86f3f1c8d80b3dccc11f94'),
(216, 'P', 19, 1, 0, '967a52adcb34fdd2f60dbbf0e5c42343'),
(217, 'P', 18, 1, 0, 'b580e18c2fd370379fba48bd7073ed90'),
(218, 'P', 17, 1, 0, '1cd3d42a9e2711b5c79e5172364dce25'),
(219, 'P', 14, 1, 0, 'aed4496e285f0a9dd098521510a41634'),
(220, 'P', 13, 1, 0, '92050f8bc81665741abfd6eea0163599'),
(221, 'P', 22, 1, 0, '0c3fcd17b16d0085794fb7bd679dce10'),
(222, 'P', 20, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(223, 'P', 22, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(224, 'P', 21, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(225, 'P', 23, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(226, 'P', 13, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(227, 'P', 14, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(228, 'P', 17, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(229, 'P', 19, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(230, 'P', 18, 1, 0, 'c705d77fd0aef25daf6eef674fe68805'),
(231, 'P', 19, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(232, 'P', 18, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(233, 'P', 14, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(234, 'P', 21, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(235, 'P', 20, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(236, 'P', 23, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(237, 'P', 22, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(238, 'P', 17, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(239, 'P', 13, 1, 0, '760e7a7fc0a5e6b7106220a3d8420cbc'),
(240, 'P', 17, 1, 0, '8dd285c929b7db6527a3f2c14957af88'),
(241, 'P', 22, 1, 0, '2c6079288a0635c2fae8b32e18daba43'),
(242, 'P', 23, 1, 0, 'c3306389ac0f2464d0f9ef782c84a465'),
(243, 'P', 23, 1, 0, '78294ac322c606aec77a44214b257672'),
(244, 'P', 23, 1, 0, '80a796d22e856b06d1e3c87b9c3d029d'),
(245, 'P', 23, 1, 0, 'e683290a2b2d0db5f9673a52f6223b5d'),
(246, 'P', 22, 1, 0, '51cccb328267d25d5c0e721f7fdc5301'),
(247, 'P', 21, 1, 0, 'b66e9cf6f3aa1bae33cfc0ac17aa1357'),
(248, 'P', 20, 1, 0, 'ba408bf6c4ebd172d04bfa318cee9ee8'),
(249, 'P', 19, 1, 0, 'b54edd8eea932f373c15b6989385d34d'),
(250, 'P', 18, 1, 0, '15037a4f6cd1241687b31b8b0ce94b3d'),
(251, 'P', 17, 1, 0, '407da35ed4073abb5b8dd7d66978bf81'),
(252, 'P', 14, 1, 0, '0d4e8ba2b8f1f6e3e6dd6f8d745c6bc7'),
(253, 'P', 13, 1, 0, '06b3c963ea4e88ad5fe3fc6a49145dfc'),
(254, 'P', 14, 1, 0, 'd23596daa0f6e0099c110ed25b9a47d2'),
(255, 'P', 17, 1, 0, 'a3e4946f0c31b85560bd0e4a0f944cb7'),
(256, 'P', 19, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(257, 'P', 18, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(258, 'P', 14, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(259, 'P', 21, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(260, 'P', 20, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(261, 'P', 23, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(262, 'P', 22, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(263, 'P', 17, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(264, 'P', 13, 1, 0, '167265ac7c5ba25cd8891b255b927645'),
(265, 'P', 23, 1, 0, 'a4275a5233643b686537231e527134dc'),
(266, 'P', 20, 1, 0, '68ea858100e2a64e1db6b874d024de01'),
(267, 'P', 17, 1, 0, 'fa0ed24ee043988b08fee262424be6bd'),
(268, 'P', 21, 1, 0, '1375336fc361403941d44e78fe1fe6aa'),
(269, 'P', 13, 1, 0, '6178a150d6174ce2444f2d0e2766c002'),
(270, 'P', 14, 1, 0, '3924ee708d5c4326939953b702ebf095'),
(271, 'P', 18, 1, 0, 'f07590619a2283699658579dc76a7b59'),
(272, 'P', 13, 1, 0, 'e0b85bd6d732471a9f8f738179459c3a'),
(273, 'P', 17, 1, 0, '48ccd708361f1b15a89deb93f40112d5'),
(274, 'P', 18, 1, 0, 'e33c6b0a00fe9f07741afaa7612684c2'),
(275, 'P', 14, 1, 0, '4570547e17c08092a5a21df397b8b1d3'),
(276, 'P', 19, 1, 0, 'f7d339961170b595a5ffd28403e1430c'),
(277, 'P', 20, 1, 0, '3612e846751f859cdb7521605bb534e5'),
(278, 'P', 21, 1, 0, '55d182528cac237b17fd6e943553858c'),
(279, 'P', 22, 1, 0, 'adada83c66d447898704c6687ae1b26f'),
(280, 'P', 23, 1, 0, '3dfe59266c10852de91044a2f7231686'),
(281, 'P', 23, 1, 0, '3011d235d8ba34f2ada02cc25d24a63b'),
(282, 'P', 22, 1, 0, 'f02cc546f814a4b740496b604c589dca'),
(283, 'P', 13, 1, 0, 'dd4595e66b1746c3728c7b60a815f52f'),
(284, 'P', 18, 1, 0, 'dd64e7f112ead08f14ffe3286a88fd95'),
(285, 'P', 21, 1, 0, 'ad153f77f220289352818356c918b90d'),
(286, 'P', 20, 1, 0, 'ce9fc0f8e28e58f624b23931069d89d4'),
(287, 'P', 13, 1, 0, '907657f9bf61e1f51fe8d9df3a9c17e0'),
(288, 'P', 14, 1, 0, '62d45902c029185feb1045b7b55a3f23'),
(289, 'P', 17, 1, 0, '0166e7a7abf5373bb52cc016cd466d27'),
(290, 'P', 18, 1, 0, 'aa8a81913baade366df83f9d99f57fa9'),
(291, 'P', 19, 1, 0, 'c2648af870d9f258c54b443dde90ce36'),
(292, 'P', 20, 1, 0, 'e767dabf51161af1ace9511c1835d901'),
(293, 'P', 21, 1, 0, '0031bfc429c59541083b63e3da2aac6f'),
(294, 'P', 22, 1, 0, 'ec06005a2671667ed33991c74d3b1d58'),
(295, 'P', 23, 1, 0, '8202fe48a18125f78307390a0a52c0b3'),
(296, 'P', 22, 1, 0, 'dcd58386102c5a43816b18eab9ad9445'),
(297, 'P', 13, 1, 0, '9c157a704eccc0eb8bcde6ccff60f3ee'),
(298, 'P', 23, 1, 0, 'dd49b9b0edd26e8478377ac00e78568b'),
(299, 'P', 22, 1, 0, 'dfa590aa77825c4b7044a6c9ccbc2975'),
(300, 'P', 21, 1, 0, '44c64195fd89e270988297018debd2ad'),
(301, 'P', 21, 1, 0, '3f1e06d0e213d23353ec2ab178e92a6d'),
(302, 'P', 22, 1, 0, '56cf5c199bc867415b6e1ab7f9a2ed7f'),
(303, 'P', 23, 1, 0, 'c2bfeac8a84ac5753690e399c4bd7349'),
(304, 'P', 13, 1, 0, '183793e3b8b4fa772e0ba88fb73f257f'),
(305, 'P', 20, 1, 0, '0b4dcedbcb9748d389eb7c83e116076a'),
(306, 'P', 22, 1, 0, '8fd25ac60121558754134904c735fb15'),
(307, 'P', 17, 1, 0, '60466ab1580749a7bc790c58bc29268f'),
(308, 'P', 14, 1, 0, '66ac9cea96d1f267dfc17cb107e397e5'),
(309, 'P', 19, 1, 0, '9313c2711548319150bb382c1f366600'),
(310, 'P', 21, 1, 0, '0e78a0f785036e709c1072459a19408a'),
(311, 'P', 20, 1, 0, '5bd08da6643bff6532aed71e068cfa49'),
(312, 'P', 23, 1, 0, '6b4a374f64ae173b6b2d2d3f5d141356'),
(313, 'P', 23, 1, 0, 'c63eca2a0c24cd14f40371b69f5bab9f'),
(314, 'P', 21, 1, 0, '0044fcc2e8ebf36ac4cecd0fcfa638c7'),
(315, 'P', 2147483647, 1, 0, '939a72a2068c879e3353ec082d0e8e14'),
(316, 'P', 21, 1, 0, '6fb09e1a4ecbb74a26bc68a564be0e1f'),
(317, 'P', 17, 1, 0, 'ae18cb93f92c19d7d32baef98e1abcf5'),
(318, 'P', 23, 1, 0, 'd11cced4da6b962b9bbd09ba70df3a74'),
(319, 'P', 23, 1, 0, 'ed65b7ad167f2ed2f56a3b908fc127d1'),
(320, 'P', 23, 1, 0, '1861e8949604e25dc722d33f64d2f1cc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id_order` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `tanggal_beli` varchar(30) DEFAULT NULL,
  `status_order` char(1) DEFAULT NULL,
  `biaya_kirim` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`id_order`, `nama`, `alamat`, `email`, `no_telp`, `tanggal_beli`, `status_order`, `biaya_kirim`) VALUES
(0, 'Nur Hadian', 'MOGA', 'Barcoding97@gmail.com', '0877', '2018-07-07', 'P', 10000),
(0, 'Nur Hadian', 'MOGA', 'Barcoding97@gmail.com', '0877', '2018-07-08', 'P', 10000),
(0, 'Nur Hadian', 'MOGA', 'Barcoding97@gmail.com', '0877', '2018-07-09', 'P', 10000),
(0, 'ardi', 'pemalang', 'Syahardian671@gmail.com', '087764230097', '2018-07-09', 'P', 20000),
(0, 'erik', 'jakarta', 'admin@amikom.ac.id', '087764230097', '2018-07-09', 'P', 20000),
(0, 'faiz', 'moga', 'Barcoding97@gmail.com', '087764230097', '2018-07-10', 'P', 20000),
(0, 'Nur Hadian', 'u', 'Barcoding97@gmail.com', '087764230097', '2018-07-11', 'P', 10000),
(0, 'Nur Hadian', 'hh', 'Barcoding97@gmail.com', '087764230097', '2018-07-11', 'P', 10000),
(0, 'Alex', 'esf', 'liar@gmail.com', '01238', '2018-07-11', 'P', 10000),
(0, 'Nur Hadian', 'Jln.pelan no 1 Jogja', 'Barcoding97@gmail.com', '087764230097', '2018-07-11', 'P', 20000),
(0, 'dian', 'wa', 'Syahardian671@gmail.com', '087764230097', '2018-07-11', 'P', 10000),
(0, 'Nur Hadian', 'hh', 'Barcoding97@gmail.com', '087764230097', '2018-07-11', 'P', 10000),
(0, 'Nur Hadian', 'ff', 'Barcoding97@gmail.com', '087764230097', '2018-07-11', 'P', 10000),
(0, 'faiz', 'pemalang', 'Barcoding97@gmail.com', '087764230097', '2018-07-11', 'P', 20000),
(0, 'erik', 'maguwoharjo', 'liar@gmail.com', '087764230097', '2018-07-12', 'P', 50000),
(0, 'ahmad', 'maguwoharjo', 'admin@amikom.ac.id', '087790000', '2018-07-12', 'P', 20000),
(0, 'safiq', 'Jln. ABCD', 'Safiq@gmail.com', '085255001340', '2018-07-12', 'P', 20000),
(0, '', '', '', '', '2018-07-18', 'P', 0),
(0, 'Erikc Anderiansyah', 'Dero,Gg.seno,No.07,Rt.01,Rw.14\r\nCondong Catur Depok Seleman', 'erikc.an@students.amikom.ac.id', '082353255978', '2018-07-25', 'P', 20000),
(0, 'Nur Hadian', 'PEMALANG', 'Syahardian671@gmail.com', '087764230097', '2018-07-27', 'P', 50000),
(0, 'Erik', 'Condong catur', 'erika@tokokita.com', '08652729017', '2018-09-17', 'P', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) NOT NULL,
  `id_kategori_produk` int(3) NOT NULL,
  `id_merek` int(3) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text,
  `harga` int(20) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `slide` char(1) DEFAULT NULL,
  `rekomendasi` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori_produk`, `id_merek`, `nama_produk`, `deskripsi`, `harga`, `gambar`, `slide`, `rekomendasi`) VALUES
(13, 2, 6, 'Palazzo', '', 50000, '2-Recovered copy.png', '', ''),
(14, 1, 7, 'trouser', '', 70000, 'Polos Wanita1.png', '', ''),
(17, 2, 7, 'Palazzo', '', 70000, 'Laki2.png', '', ''),
(18, 1, 5, 'Palazzo', '', 50000, 'Wanita2.png', '', ''),
(19, 1, 6, 'trouser', '', 100000, 'AX.png', '', ''),
(20, 2, 7, 'Palazzo', '', 50000, '97oxyqxkza-21-0-1--l.png', '', ''),
(21, 2, 6, 'Palazzo', '', 70000, '86zbxn7y47-143-0-2--l (1).png', '', ''),
(22, 2, 5, 'Palazzo', '', 70000, 'yrodqdxqzj-448-0-1--l.png', '', ''),
(23, 1, 6, 'trouser', '', 100000, 'XD.png', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  ADD PRIMARY KEY (`id_biaya_kirim`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_detail_order`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbl_merek`
--
ALTER TABLE `tbl_merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_biaya_kirim`
--
ALTER TABLE `tbl_biaya_kirim`
  MODIFY `id_biaya_kirim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id_detail_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori_produk` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_merek`
--
ALTER TABLE `tbl_merek`
  MODIFY `id_merek` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
