-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2023 at 06:04 AM
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
-- Database: `om`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_segments`
--

CREATE TABLE `customer_segments` (
  `segment_id` int(11) NOT NULL,
  `segment_name` varchar(50) DEFAULT NULL,
  `target_market_size` int(11) DEFAULT NULL,
  `acquisition_rate` decimal(5,2) DEFAULT NULL,
  `churn_rate` decimal(5,2) DEFAULT NULL,
  `growth_rate` decimal(5,2) DEFAULT NULL,
  `market_share` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_segments`
--

INSERT INTO `customer_segments` (`segment_id`, `segment_name`, `target_market_size`, `acquisition_rate`, `churn_rate`, `growth_rate`, `market_share`) VALUES
(1, 'Enterprise', 1000, 0.05, 0.03, 0.02, 0.10),
(2, 'Startups', 5000, 0.08, 0.06, 0.02, 0.05),
(3, 'Individual Developers', 10000, 0.10, 0.08, 0.02, 0.08);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_segments`
--
ALTER TABLE `customer_segments`
  ADD PRIMARY KEY (`segment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
