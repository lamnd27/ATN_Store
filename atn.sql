-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 09:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atn`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bid` int(11) NOT NULL,
  `bname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bid`, `bname`) VALUES
(1, 'Cantho'),
(2, 'Vinhlong');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `cuserid` int(11) NOT NULL,
  `cproid` int(11) NOT NULL,
  `cquantity` int(11) NOT NULL,
  `cdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'Gundam'),
(2, 'Puzzle'),
(4, 'Figure ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pprice` decimal(8,0) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `pimage` varchar(100) NOT NULL,
  `pquan` int(11) NOT NULL,
  `pcatid` int(11) NOT NULL,
  `pbid` int(11) NOT NULL,
  `pdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pprice`, `pinfo`, `pimage`, `pquan`, `pcatid`, `pbid`, `pdate`) VALUES
(1, 'METAL BUILD DRAGON SCALE Sirbine Limited', 240, 'METAL BUILD DRAGON SCALE Sirbine Limited\n\nThe pleasure of assembling the METAL BUILD DRAGON SCALE Sirbine Limited will give a completely different value to your object because it will have been made by you!\n\nHere in Japan we call plastic model but oversea', 'METAL-BUILD-DRAGON-SCALE-Sirbine-Limited-1.jpg', 50, 1, 1, '2023-08-12'),
(2, 'METAL BUILD Laevatein Arbalest Reference Limited B', 200, 'METAL BUILD Laevatein Arbalest Reference Limited\n\nThe pleasure of assembling the METAL BUILD Laevatein Arbalest Reference Limited BANDAI will give a completely different value to your object because it will have been made by you!\n\nHere in Japan we cal', 'METAL-BUILD-Laevatein-Arbalest-Reference-Limited-BANDAI.jpg', 50, 1, 2, '2023-08-12'),
(3, 'METAL BUILD Gundam Astray Gold Frame (Alternative ', 220, 'METAL BUILD Gundam Astray Gold Frame (Alternative Strike Ver.) Limited  The pleasure of assembling the product METAL BUILD Gundam Astray Gold Frame (Alternative Strike Ver.) Limited will give a completely different value to your object because it will hav', 'METAL-BUILD-Gundam-Astray-Gold-Frame-Alternative-Strike-Ver.-Limited.webp', 50, 1, 1, '2023-08-12'),
(4, 'DABAN 8816 Gundam Astraea', 45, 'DABAN 8816 Gundam Astraea', 'DABAN-8816-Gundam-Astraea.jpg', 50, 1, 1, '2023-08-14'),
(5, 'Astray Red Dragon', 160, 'MB Astray Red Dragon', 'MB-Astray-Red-Dragon.jpg', 20, 1, 2, '2023-08-14'),
(6, 'Vidar Date Masamune DH 01 Devil Hunter', 95, 'Vidar Date Masamune DH 01 Devil Hunter | MB Metal Figure 1/100', 'MB-Date-Masamune.jpg', 20, 1, 2, '2023-08-14'),
(7, 'MB Sanada Yukimura', 92, 'MB Sanada Yukimura | MB Metal Figure 1/100', 'MB-Sanada-Yukimura.jpg', 20, 1, 2, '2023-08-14'),
(8, 'Bandai Hobby PG RX-0 Unicorn Gundam Model Kit', 92, 'MB Sanada Yukimura | MB Metal Figure 1/100', 'Hobby PG RX-0 Unicorn Gundam Model Kit.jpg', 20, 1, 1, '2023-08-14'),
(9, 'MB Takeda Shingen Moshow 1/72', 160, 'MB Takeda Shingen Moshow 1/72', 'MB-Takeda-Shingen.jpg', 20, 1, 1, '2023-08-14'),
(10, 'BePuzzled-Hanayama-Cast-Puzzle-Cylinder-Level-4', 28, 'BePuzzled-Hanayama-Cast-Puzzle-Cylinder-Level-4', 'BePuzzled-Hanayama-Cast-Puzzle-Cylinder-Level-4.jpg', 50, 2, 2, '2023-12-14'),
(11, 'Cast-Coaster-Hanayama-Puzzle-Level-4', 30, 'Cast-Coaster-Hanayama-Puzzle-Level-4', 'Cast-Coaster-Hanayama-Puzzle-Level-4.jpg', 50, 2, 1, '2023-12-16'),
(12, 'ONE-PIECE-SENKOUZEKKEI-PORTGAS-D-ACE-BANPRESTO-AZG', 46, 'ONE-PIECE-SENKOUZEKKEI-PORTGAS-D-ACE-BANPRESTO-AZGUNDAM', 'ONE-PIECE-SENKOUZEKKEI-PORTGAS-D-ACE-BANPRESTO-AZGUNDAM.jpg', 40, 4, 2, '2023-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hometown` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `state` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `hometown`, `phone_num`, `state`) VALUES
(1, 'admin', 'Admin@123', 'unknown', '0358568400', 1),
(3, 'duylam2702', 'Admin@123', '2', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `cproid` (`cproid`),
  ADD KEY `cuserid` (`cuserid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `product_ibfk_1` (`pcatid`),
  ADD KEY `product_ibfk_2` (`pbid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cproid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cuserid`) REFERENCES `user` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`pcatid`) REFERENCES `category` (`cid`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`pbid`) REFERENCES `branch` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
