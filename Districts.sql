-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 01:20 PM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landinvest`
--

-- --------------------------------------------------------

--
-- Table structure for table `Districts`
--

CREATE TABLE `Districts` (
  `DistrictID` int(11) NOT NULL,
  `ProvinceID` int(11) NOT NULL,
  `DistrictName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Districts`
--

INSERT INTO `Districts` (`DistrictID`, `ProvinceID`, `DistrictName`) VALUES
(1, 24, 'Ba Đình'),
(2, 24, 'Hoàn Kiếm'),
(3, 24, 'Tây Hồ'),
(4, 24, 'Long Biên'),
(5, 24, 'Cầu Giấy'),
(6, 24, 'Đống Đa'),
(7, 24, 'Hai Bà Trưng'),
(8, 24, 'Hoàng Mai'),
(9, 24, 'Thanh Xuân'),
(10, 24, 'Hà Đông'),
(11, 24, 'Bắc Từ Liêm'),
(12, 24, 'Nam Từ Liêm'),
(13, 24, 'Thị xã Sơn Tây'),
(14, 24, 'Huyện Ba Vì'),
(15, 24, 'Huyện Chương Mỹ'),
(16, 24, 'Huyện Đan Phượng'),
(17, 24, 'Huyện Đông Anh'),
(18, 24, 'Huyện Gia Lâm'),
(19, 24, 'Huyện Hoài Đức'),
(20, 24, 'Huyện Mê Linh'),
(21, 24, 'Huyện Mỹ Đức'),
(22, 24, 'Huyện Phú Xuyên'),
(23, 24, 'Huyện Phúc Thọ'),
(24, 24, 'Huyện Quốc Oai'),
(25, 24, 'Huyện Sóc Sơn'),
(26, 24, 'Huyện Thạch Thất'),
(27, 24, 'Huyện Thanh Oai'),
(28, 24, 'Huyện Thanh Trì'),
(29, 24, 'Huyện Thường Tín'),
(30, 24, 'Huyện Ứng Hòa'),

(31, 28, 'Lương Sơn'),
(32, 28, 'Cao Phong'),
(33, 28, 'Đà Bắc'),
(34, 28, 'Kim Bôi'),
(35, 28, 'Kỳ Sơn'),
(36, 28, 'Lạc Sơn'),
(37, 28, 'Lạc Thủy'),
(38, 28, 'Mai Châu'),
(39, 28, 'Tân Lạc'),
(40, 28, 'Yên Thủy'),
(41, 28, 'Kim Bôi'),
(42, 28, 'Thành Phố Hòa Bình'),

(43, 28, 'Lương Sơn'),
(44, 28, 'Cao Phong'),
(45, 28, 'Đà Bắc'),
(46, 28, 'Kim Bôi'),
(47, 28, 'Kỳ Sơn'),
(48, 28, 'Lạc Sơn'),
(49, 28, 'Lạc Thủy'),
(50, 28, 'Mai Châu'),
(51, 28, 'Tân Lạc'),
(52, 28, 'Yên Thủy'),
(53, 28, 'Kim Bôi'),
(54, 28, 'Thành Phố Hòa Bình'),

;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Districts`
--
ALTER TABLE `Districts`
  ADD PRIMARY KEY (`DistrictID`),
  ADD KEY `ProvinceID` (`ProvinceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Districts`
--
ALTER TABLE `Districts`
  MODIFY `DistrictID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Districts`
--
ALTER TABLE `Districts`
  ADD CONSTRAINT `Districts_ibfk_1` FOREIGN KEY (`ProvinceID`) REFERENCES `Provinces` (`ProvinceID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
