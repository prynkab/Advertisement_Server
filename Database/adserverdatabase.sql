-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2023 at 09:13 AM
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ad_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`username`, `password`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `advertiser_register`
--

CREATE TABLE `advertiser_register` (
  `advertiser_id` int(4) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `advertiser_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertiser_register`
--


-- --------------------------------------------------------

--
-- Table structure for table `click_count`
--

CREATE TABLE `click_count` (
  `click_count` int(10) UNSIGNED NOT NULL,
  `adname` varchar(100) NOT NULL,
  `client_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `new_ad`
--

CREATE TABLE `new_ad` (
  `email` varchar(50) NOT NULL,
  `adname` varchar(50) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `imagepath` varchar(100) NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `enddate` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `target_url` varchar(200) NOT NULL,
  `ad_height` varchar(20) NOT NULL,
  `ad_width` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_ad`
--

INSERT INTO `new_ad` (`email`, `adname`, `sitename`, `imagepath`, `startdate`, `enddate`, `amount`, `target_url`, `ad_height`, `ad_width`) VALUES
('gursimran81@gmail.com', 'Chicago Trip', 'https://www.goibibo.com', 'uploads/12-10-2016 09:36:21 pmChicago-Advertising-EXPLORE-Trips.jpg', '13-10-2016', '16-11-2016', '170', 'www.goibibo.com/flights/chicago-to-new-delhi-flights/', '324', '500'),
('gursimran81@gmail.com', 'Custom PC', 'pcbuild.com', 'uploads/09-07-2016 12:59:59 pmUnknown.jpg', '10-07-2016', '24-07-2016', '70', 'www.google.co.in', '225', '225'),
('bruno@rocketmail.com', 'Dubai', 'http://www.visitdubai.com/en-in/', 'uploads/12-10-2016 09:42:05 pmNNDubaiDreams.jpg', '12-10-2016', '19-10-2016', '35', 'www.visitdubai.com/en-in/', '277', '500'),
('gursimran81@gmail.com', 'HP Laptop', 'www.hp.com', 'uploads/10-12-2016 05:57:17 pmhp.jpg', '12-12-2016', '12-12-2017', '1825', 'www.hp.com/sfg', '194', '259'),
('gursimran81@gmail.com', 'Macbook', 'www.apple.com', 'uploads/12-10-2016 09:34:15 pmMACBOOKPRO.jpeg', '12-10-2016', '16-10-2016', '20', 'apple.com', '263', '500'),
('gursimran81@gmail.com', 'nirma', 'www.nirma.com', 'uploads/12-07-2016 11:07:34 pmUntitled-716597618.jpg', '4-08-2016', '4-09-2016', '155', 'www.yahoo.com', '200', '300');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `advertiser_register`
--
ALTER TABLE `advertiser_register`
  ADD PRIMARY KEY (`advertiser_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `new_ad`
--
ALTER TABLE `new_ad`
  ADD PRIMARY KEY (`adname`),
  ADD UNIQUE KEY `adname` (`adname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertiser_register`
--
ALTER TABLE `advertiser_register`
  MODIFY `advertiser_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;