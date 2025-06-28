-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 06:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `owner` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myorders`
--

CREATE TABLE `myorders` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `order_created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myorders`
--

INSERT INTO `myorders` (`orderid`, `userid`, `pid`, `owner`, `order_created_date`) VALUES
(30, 2, 12, 1, '2024-11-16 17:17:26'),
(31, 2, 18, 1, '2024-11-16 17:17:26'),
(32, 2, 22, 6, '2024-11-16 17:17:26'),
(33, 4, 20, 6, '2024-11-16 17:27:17'),
(34, 4, 18, 1, '2024-11-16 17:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `details` text NOT NULL,
  `impath` varchar(500) NOT NULL,
  `owner` int(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `price`, `details`, `impath`, `owner`, `created_date`) VALUES
(12, 'ASIAN', 1000, 'Mens Wonder-13 Sports Running Shoes', '../shared/images/ASIAN Mens Wonder-13 Sports Running Shoes.jpg', 1, '2024-11-16 16:57:33'),
(15, 'Lancer', 600, ' Mens Sports Running Shoes Indus-251', '../shared/images/Lancer Mens Sports Running Shoes Indus-251.jpg', 1, '2024-11-16 17:01:33'),
(18, 'ASIAN', 800, 'Mens TARZAN-11 Casual Sneaker Shoes', '../shared/images/ASIAN Mens TARZAN-11 Casual Sneaker Shoes.jpg', 1, '2024-11-16 17:05:48'),
(19, 'Nivia', 1200, 'Flash 2.0 Badminton Shoes for Men', '../shared/images/Nivia Flash 2.0 Badminton Shoes for Men.jpg', 1, '2024-11-16 17:06:50'),
(20, 'SPARX', 800, ' SPARX Mens Sm 277 Running Shoe', '../shared/images/SPARX Mens Sm 277 Running Shoe.jpg', 6, '2024-11-16 17:12:02'),
(22, 'MACTREE', 800, ' Mens Hiking Trekking Stitched Sole Ankle Boot', '../shared/images/MACTREE Mens Hiking Trekking Stitched Sole Ankle Boot.jpg', 6, '2024-11-16 17:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `usertype`, `address`) VALUES
(1, 'Rhushabh', 'Rhushabh', 'Seller', 'Pune'),
(2, 'Rhushi', 'Rhushi', 'Buyer', 'Mumbai'),
(3, 'Rh', 'Rh', 'Buyer', 'Nashik'),
(4, 'Rhu', 'Rhu', 'Buyer', 'Nagpur'),
(6, 'Rhush', 'Rhush', 'Seller', 'Nagpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `myorders`
--
ALTER TABLE `myorders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `myorders`
--
ALTER TABLE `myorders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
