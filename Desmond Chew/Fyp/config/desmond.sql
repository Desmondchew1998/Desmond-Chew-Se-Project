-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 03:21 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desmond`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(4, 'admin', 'admin', 'admin@admin.com', 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3'),
(5, 'admin', 'admin', 'admin@admin.com', 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Raspberry Pi'),
(2, 'Arduino'),
(3, 'Gizduino'),
(4, 'Sensor'),
(5, 'Module'),
(6, 'Capacitor'),
(7, 'Resistor'),
(8, 'Transistor'),
(9, 'Supplement'),
(10, 'Controlled Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(132, 9, 'has logged in the system at ', '2021-11-09 16:53:22'),
(133, 9, 'has logged in the system at ', '2021-11-09 16:54:04'),
(134, 9, 'has logged in the system at ', '2021-11-09 16:55:27'),
(135, 9, 'has logged in the system at ', '2021-11-10 14:33:57'),
(136, 1, 'added a new product 2 of a', '2021-11-10 17:08:31'),
(137, 9, 'has logged in the system at ', '2021-11-11 15:17:39'),
(138, 10, 'has logged in the system at ', '2021-11-11 15:21:00'),
(139, 9, 'has logged in the system at ', '2021-11-11 15:28:32'),
(140, 9, 'has logged in the system at ', '2021-11-11 15:47:03'),
(141, 9, 'has logged in the system at ', '2021-11-11 15:47:40'),
(142, 9, 'has logged in the system at ', '2021-11-11 15:50:19'),
(143, 10, 'has logged in the system at ', '2021-11-11 15:50:58'),
(144, 9, 'has logged in the system at ', '2021-11-11 15:59:15'),
(145, 10, 'has logged in the system at ', '2021-11-11 16:01:52'),
(146, 9, 'has logged in the system at ', '2021-11-11 16:03:57'),
(147, 9, 'has logged in the system at ', '2021-11-11 16:07:04'),
(148, 10, 'has logged in the system at ', '2021-11-11 16:56:15'),
(149, 10, 'has logged in the system at ', '2021-11-11 16:56:52'),
(150, 9, 'has logged in the system at ', '2021-11-11 16:57:01'),
(151, 10, 'has logged in the system at ', '2021-11-11 16:57:15'),
(152, 9, 'has logged in the system at ', '2021-11-12 01:31:04'),
(153, 9, 'has logged in the system at ', '2021-11-12 01:40:15'),
(154, 9, 'has logged in the system at ', '2021-11-12 01:44:27'),
(155, 9, 'has logged in the system at ', '2021-11-12 01:47:09'),
(156, 10, 'has logged in the system at ', '2021-11-12 01:50:27'),
(157, 9, 'has logged in the system at ', '2021-11-12 01:53:34'),
(158, 9, 'has logged in the system at ', '2021-11-12 02:21:39'),
(159, 9, 'has logged in the system at ', '2021-11-12 16:36:02'),
(160, 10, 'has logged in the system at ', '2021-11-12 16:36:16'),
(161, 10, 'has logged in the system at ', '2021-11-12 16:36:37'),
(162, 9, 'has logged in the system at ', '2021-11-12 17:19:28'),
(163, 9, 'has logged in the system at ', '2021-11-12 17:25:52'),
(164, 10, 'has logged in the system at ', '2021-11-12 18:24:13'),
(165, 10, 'has logged in the system at ', '2021-11-12 18:43:33'),
(166, 10, 'has logged in the system at ', '2021-11-12 23:20:54'),
(167, 10, 'has logged in the system at ', '2021-11-12 23:20:54'),
(168, 10, 'has logged in the system at ', '2021-11-13 00:10:26'),
(169, 10, 'has logged in the system at ', '2021-11-13 00:22:15'),
(170, 10, 'has logged in the system at ', '2021-11-13 00:22:46'),
(171, 11, 'has logged in the system at ', '2021-11-13 00:41:04'),
(172, 11, 'has logged in the system at ', '2021-11-13 00:48:40'),
(173, 11, 'has logged in the system at ', '2021-11-13 01:04:10'),
(174, 11, 'has logged in the system at ', '2021-11-13 01:13:10'),
(175, 11, 'has logged in the system at ', '2021-11-13 01:26:23'),
(176, 11, 'has logged in the system at ', '2021-11-13 01:46:40'),
(177, 11, 'has logged in the system at ', '2021-11-13 16:08:03'),
(178, 11, 'has logged in the system at ', '2021-11-13 16:13:35'),
(179, 9, 'has logged in the system at ', '2021-11-13 16:19:01'),
(180, 11, 'has logged in the system at ', '2021-11-13 16:20:11'),
(181, 11, 'added a new product 3 of a', '2021-11-13 16:21:45'),
(182, 11, 'has logged in the system at ', '2021-11-13 16:38:21'),
(183, 11, 'has logged in the system at ', '2021-11-13 16:46:23'),
(184, 9, 'has logged in the system at ', '2021-11-13 16:49:45'),
(185, 11, 'has logged in the system at ', '2021-11-13 16:51:09'),
(186, 11, 'has logged in the system at ', '2021-11-13 16:58:27'),
(187, 11, 'has logged in the system at ', '2021-11-13 17:06:38'),
(188, 11, 'has logged in the system at ', '2021-11-13 21:19:26'),
(189, 11, 'has logged in the system at ', '2021-11-13 21:23:20'),
(190, 11, 'added 3 of a', '2021-11-13 21:32:41'),
(191, 11, 'added 10 of a', '2021-11-13 21:32:51'),
(192, 11, 'added 12 of a', '2021-11-13 21:32:57'),
(193, 11, 'added 114 of Arduino Uno Rec3-1', '2021-11-13 21:33:04'),
(194, 11, 'has logged in the system at ', '2021-11-13 21:34:56'),
(195, 11, 'has logged in the system at ', '2021-11-13 21:38:07'),
(196, 9, 'has logged in the system at ', '2021-11-13 21:48:42'),
(197, 11, 'has logged in the system at ', '2021-11-13 22:00:04'),
(198, 11, 'added 12 of a', '2021-11-13 22:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `shipping_add` varchar(500) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', '434.00', 6, '1'),
(54, 13, 3, '335', '1302.00', 6, '1'),
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(79, 14, 1, '233', '760.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(98, 15, 1, '', '455.00', 5, ''),
(99, 15, 1, '', '455.00', 6, ''),
(100, 16, 1, '', '1500.00', 6, ''),
(101, 12, 1, '392', '155.00', 8, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(103, 15, 1, '', '455.00', 8, ''),
(104, 14, 1, '221', '760.00', 9, '1'),
(105, 17, 1, '25', '2200.00', 9, '1'),
(106, 12, 10, '381', '1550.00', 9, '1'),
(107, 18, 1, '1', '12.00', 10, '1'),
(108, 19, 7, '8', '84.00', 11, '1'),
(109, 18, 4, '', '48.00', 11, '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(11, 'Arduino Uno Rec3-1', 'Small Arduino Uno Blue', 114, '123.00', '125.00', 'Arduino', 'Alcatroz, Inc.', '1122330099', 'arduino mega 2560-1.jpg', 'Arduino Uno Rev3-1.jpg', '1.png'),
(12, 'Aruino Mega', 'ATMega Arduino', 381, '133.00', '155.00', 'Arduino', 'Alcatroz, Inc.', '341156780', 'Arduinomega2560-3.jpg', 'arduino mega 2560-1.jpg', '2.png'),
(15, 'Flame Sensor', 'Flame Sensor 3 Pins', 455, '450.00', '455.00', 'Sensor', 'QUEZELCO', '456523702', 'flame2.jpg', 'flamesensor1.jpg', 'flamesensor.png'),
(18, 'a', 'as', 14, '0.00', '12.00', 'yoink', 'Supplier B', '12', 'Screenshot (11).png', 'Screenshot (13).png', 'Screenshot (10).png'),
(19, 'a', 'as', 20, '12.00', '12.00', 'yoink', 'Supplier A', '69', 'Screenshot (15).png', 'Screenshot (90).png', 'Screenshot (117).png');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(1, 'Supplier A', 'Penang', '(987)-884-12', 'Supplier A@gmail.com'),
(2, 'Supplier B', 'Kedah', '45643534567879', 'Supplier B@gmail.com'),
(3, 'Supplier C', 'Selangor', '9435398928', 'Supplier C @gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(9, 'Harry', 'Jr', 'Den', 'espn', 'harryden@mail.com', '9876543210', 'harry', 'a1Bz20ydqelm8m1wqld3915844cde56f2dccfd24c7d34d12f0'),
(11, 'des', 'des', 'des', 'asdasdasd', 'des@des.com', '1240104245', 'des', 'a1Bz20ydqelm8m1wql0ecee728bf87a4c1a02883004044dcd5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
