-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 05:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeeorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `quantity`, `total`) VALUES
(1, 2, 1, 6),
(2, 4, 2, 16),
(3, 3, 1, 12),
(4, 4, 4, 32),
(5, 3, 1, 12),
(6, 4, 1, 8),
(7, 3, 1, 12),
(8, 4, 1, 8),
(9, 2, 1, 6),
(10, 3, 1, 12),
(11, 2, 1, 6),
(12, 1, 3, 36),
(13, 2, 3, 18),
(14, 2, 3, 18),
(15, 6, 4, 26),
(16, 2, 4, 24),
(17, 3, 3, 36),
(18, 1, 3, 36),
(19, 3, 3, 36),
(20, 2, 4, 24),
(21, 3, 3, 36),
(22, 2, 4, 24),
(23, 4, 3, 24),
(24, 2, 3, 18),
(25, 1, 5, 60),
(26, 2, 1, 6),
(27, 6, 4, 26),
(28, 5, 3, 16.8),
(29, 2, 4, 24),
(30, 3, 3, 36),
(31, 4, 3, 24),
(32, 2, 1, 6),
(33, 3, 1, 12),
(34, 2, 1, 6),
(35, 3, 4, 48),
(36, 1, 3, 36),
(37, 2, 3, 18),
(38, 3, 3, 36),
(39, 2, 4, 27.6),
(40, 3, 1, 10.5),
(41, 4, 3, 21),
(42, 1, 2, 26),
(43, 9, 2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(30) NOT NULL,
  `fName` varchar(40) NOT NULL,
  `lName` varchar(40) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fName`, `lName`, `phoneNum`, `email`, `address`, `password`) VALUES
(1, 'Nurul Hafiza', 'Basiruddin', '1161513865', 'hafizabasiruddin@yahoo.com', 'No 41 Taman Melati Lumut Perak', '123'),
(2, 'Nur Fatihah ', 'Razak', '01727172645', 'fatihahrazak@gmail.com', '123', '123'),
(3, 'Nor ', 'Nazreen', '0145617293', 'nornazreen999@gmail.com', 'No 47 Jalan ', '123'),
(4, 'Nurul Ain', 'Basiruddin', '174527323', 'nurulain99@gmail.com', 'no 45 Jalan bahagia sitiawan', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `feedback` varchar(30) NOT NULL,
  `rating` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fName`, `feedback`, `rating`) VALUES
(1, 'Nurul Hafiza', 'Good job guys!', '5'),
(2, '', '', ''),
(3, '', '', ''),
(4, ' hafiza', 'i like all your menus', '5'),
(5, ' Nurul Ain', 'i love your system all your se', '5');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `menuID` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `des` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `menuID`, `price`, `des`, `image`) VALUES
(1, 'Iced Blended Mocha', 'IBM', 13.00, 'A smooth blend of aromatic espresso, rich chocolate and frothy milk.', 'img/iceblendedmocha.png'),
(2, 'Iced Americano', 'IA', 7.00, 'A flavourful sip with two parts brewed espresso and water,topped with ice.', 'img/icedamericano.png'),
(3, 'Iced Blended Chocolate', 'IBC', 10.50, ' A luxurious mix of velvety cocoa and creamy milk finished with luscious whipped cream.', 'img/iceblendedchocolate.png'),
(4, 'Iced Latte', 'IL', 7.00, 'A twist on a milky favourite with rich espresso and steamed milk, poured.', 'img/icedlatte.png'),
(5, 'Cappuccino', 'CP', 6.30, 'A classic with a blanket of cocoa,aromatic espresso and steamed milk.', 'img/cappuccino.png'),
(6, 'Flat White', 'FW', 6.50, 'The flat white a double shot of espresso blended with steamed and slightly frothed milk.', 'img/flatwhite.png'),
(9, 'Iced Mocha', 'IM', 11.50, 'A smooth blend of espresso, rich chocolate and frothy milk,topped with whipped cream.', 'img/icedmocha.png'),
(15, 'Chocolate cake package', 'CCP', 12.00, 'Cake is come with chocolate blended smoothie', 'img/cake.png');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_names` varchar(100) NOT NULL,
  `quantity` int(15) NOT NULL,
  `cust_name` varchar(250) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `sales_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` float NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `p_id`, `p_names`, `quantity`, `cust_name`, `contact_no`, `email`, `address`, `shipping`, `sales_date`, `total`, `status`) VALUES
(19, 3, 'Iced Blended Chocolate', 3, 'Nurul Hafiza Basiruddin', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'ASAP(30mins)', '2021-01-19 15:16:21', 36, 'In Progress'),
(20, 2, 'Iced Americano', 4, 'Nurul Hafiza Basiruddin', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'ASAP(30mins)', '2021-01-19 15:16:21', 24, 'Delivery'),
(21, 4, 'Iced Latte', 3, 'Nurul Hafiza Basiruddin', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'ASAP(30mins)', '2021-01-19 15:16:21', 24, 'In Progress'),
(22, 2, 'Iced Americano', 0, 'Nur Amirah ', '0182812823', 'amirahazhar99@gmail.com', 'NO 41 JALAN SELAMAT', 'SelfPickup', '2021-01-20 02:08:43', 18, 'In Progress'),
(23, 1, 'Iced Blended Mocha', 0, 'Nur Amirah ', '0182812823', 'amirahazhar99@gmail.com', 'NO 41 JALAN SELAMAT', 'SelfPickup', '2021-01-20 02:08:43', 60, 'Delivery'),
(24, 2, 'Iced Americano', 0, 'Jannah', '019291928', 'jannah55@gmail.com', 'No 41 Taman Bunga Matahari', 'ASAP(30mins)', '2021-01-20 02:25:06', 6, 'Delivery'),
(25, 6, 'Flat White', 0, 'Jannah', '019291928', 'jannah55@gmail.com', 'No 41 Taman Bunga Matahari', 'ASAP(30mins)', '2021-01-20 02:25:06', 26, 'In Progress'),
(26, 5, 'Cappuccino', 0, 'Jannah', '019291928', 'jannah55@gmail.com', 'No 41 Taman Bunga Matahari', 'ASAP(30mins)', '2021-01-20 02:25:06', 16.8, 'In Progress'),
(27, 2, 'Iced Americano', 4, 'Liyana ', '0182817723', 'liyana99@gmail.com', 'No 42 Taman Bistari', 'ASAP(30mins)', '2021-01-20 02:28:46', 24, 'Delivery'),
(28, 3, 'Iced Blended Chocolate', 3, 'Liyana ', '0182817723', 'liyana99@gmail.com', 'No 42 Taman Bistari', 'ASAP(30mins)', '2021-01-20 02:28:46', 36, 'In Progress'),
(29, 4, 'Iced Latte', 3, 'Liyana ', '0182817723', 'liyana99@gmail.com', 'No 42 Taman Bistari', 'ASAP(30mins)', '2021-01-20 02:28:46', 24, 'Delivery'),
(30, 2, 'Iced Americano', 1, 'Aina', '0127166234', 'fatihahrazak@gmail.com', 'N0 42 Jalan Kenanga', 'ASAP(30mins)', '2021-01-20 04:43:11', 6, 'In Progress'),
(31, 3, 'Iced Blended Chocolate', 1, 'Aina', '0127166234', 'fatihahrazak@gmail.com', 'N0 42 Jalan Kenanga', 'ASAP(30mins)', '2021-01-20 04:43:11', 12, 'In Progress'),
(32, 2, 'Iced Americano', 1, 'hafiza', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'Delivery', '2021-01-20 05:06:55', 6, 'In Progress'),
(33, 3, 'Iced Blended Chocolate', 4, 'hafiza', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'Delivery', '2021-01-20 05:06:55', 48, 'In Progress'),
(34, 1, 'Iced Blended Mocha', 3, 'Hafiza', '01161513865', 'hafizabasiruddin@yahoo.com', '', 'SelfPickup', '2021-01-20 11:17:37', 36, 'Delivery'),
(35, 2, 'Iced Americano', 3, 'Hafiza', '01161513865', 'hafizabasiruddin@yahoo.com', '', 'SelfPickup', '2021-01-20 11:17:37', 18, 'In Progress'),
(36, 3, 'Iced Blended Chocolate', 3, 'Hafiza', '01161513865', 'hafizabasiruddin@yahoo.com', '', 'SelfPickup', '2021-01-20 11:17:37', 36, 'Delivery'),
(37, 2, 'Iced Americano', 4, 'Nurul Hafiza Basiruddin', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'Delivery', '2021-01-26 04:37:38', 27.6, ''),
(38, 3, 'Iced Blended Chocolate', 1, 'Nurul Hafiza Basiruddin', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'Delivery', '2021-01-26 04:37:38', 10.5, ''),
(39, 4, 'Iced Latte', 3, 'Nurul Hafiza Basiruddin', '01161513865', 'hafizabasiruddin@yahoo.com', 'NO 91 LORONG PENGKALAN BATU', 'Delivery', '2021-01-26 04:37:39', 21, ''),
(40, 1, 'Iced Blended Mocha', 2, 'Nurul Ain', '017616263', 'nurulain99@gmail.com', 'No 91 Jalan Bahagia, Sitiawan', 'Delivery', '2021-02-04 15:24:46', 26, 'In Progress'),
(41, 9, 'Iced Mocha', 2, 'Nurul Ain', '017616263', 'nurulain99@gmail.com', 'No 91 Jalan Bahagia, Sitiawan', 'Delivery', '2021-02-04 15:24:46', 23, '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `email`, `password`) VALUES
(1, 'farahdiyana@gmail.com', '123'),
(2, 'bytemecafe@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`menuID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
