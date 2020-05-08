-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 02:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php1119_shop_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cate`
--

CREATE TABLE `tbl_cate` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_cate` datetime NOT NULL DEFAULT current_timestamp(),
  `stt_cate` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cate`
--

INSERT INTO `tbl_cate` (`id_cate`, `name_cate`, `date_cate`, `stt_cate`) VALUES
(5, 'Quần áo mùa Đông', '2019-11-21 19:33:56', 1),
(6, 'Quần áo mùa Hè', '2019-11-21 19:34:07', 1),
(7, 'Quần áo mùa Thu', '2019-11-21 19:34:17', 1),
(8, 'Quần áo Mùa Xuân', '2019-11-21 19:34:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `stt` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(11) NOT NULL,
  `name_member` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_member` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `addres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_member` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passw` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stt_member` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stt_order` int(11) NOT NULL DEFAULT 1,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả sản phẩm',
  `date_creat` datetime NOT NULL DEFAULT current_timestamp(),
  `stt` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `id_cate`, `name`, `price`, `img`, `quantity`, `description`, `date_creat`, `stt`) VALUES
(9, 6, 'Váy Body V01', 850000, 'products-01.png', 10, 'Mô tả sản phẩm Váy Body V01', '2019-11-05 19:38:02', 1),
(10, 6, 'Váy Body V02', 1250000, 'products-02.png', 5, 'Mô tả sản phẩm Váy Body V02', '2019-11-21 19:38:02', 2),
(11, 7, 'Đầm dạ hội DV01', 5500000, 'products-03.png', 5, 'Mô tả sản phẩm Váy Body DV01', '2019-11-13 19:38:02', 1),
(12, 8, 'Đầm dạ hội DV02', 6500000, 'products-04.png', 7, 'Mô tả sản phẩm Váy Body DV02', '2019-11-21 19:38:02', 1),
(13, 6, 'Váy xòe VX01', 9500000, 'products-05.png', 7, 'Mô tả sản phẩm Váy Body VX01', '2019-11-21 19:38:02', 2),
(14, 7, 'Váy xòe VX02', 9500000, 'products-06.png', 7, 'Mô tả sản phẩm Váy Body VX02', '2019-11-21 19:38:02', 2),
(15, 7, 'Váy dạ hội VDH01', 9500000, 'products-07.png', 7, 'Mô tả sản phẩm Váy Body VDH01', '2019-11-21 19:38:02', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passw` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stt_user` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cate`
--
ALTER TABLE `tbl_cate`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_order`,`id_product`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cate`
--
ALTER TABLE `tbl_cate`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `fk_id_order_detail_order_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_product_order_detail_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_id_member_order_member` FOREIGN KEY (`id_member`) REFERENCES `tbl_member` (`id_member`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_id_cate_tbl_product_cate` FOREIGN KEY (`id_cate`) REFERENCES `tbl_cate` (`id_cate`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
