-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 04:27 PM
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
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `quantity`, `unit`, `price`, `username`) VALUES
(9, 'dsaddasdasdadad', 3000, 'adas', '232', NULL),
(10, 'gwapo', 50, 'johnrix', '1e15', NULL),
(11, 'fdfd', 43, 'fdfd', '434', NULL),
(16, 'dasda', 434, 'dsd', '344243434', 'Johnrix'),
(17, 'Hashfddsf', 432423, 'fdssdf', '4234', 'Johnrix');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('john', '21c1af4e1b3e7a24a33345f99c7d13459dddafc6f34cc197596050ae555cdacecef0440f45d349deb0fa5d4a0d96c21197d12b4f312752c70b8a5675546edff2'),
('Johnnysins', '21c1af4e1b3e7a24a33345f99c7d13459dddafc6f34cc197596050ae555cdacecef0440f45d349deb0fa5d4a0d96c21197d12b4f312752c70b8a5675546edff2'),
('Johnrix', '21c1af4e1b3e7a24a33345f99c7d13459dddafc6f34cc197596050ae555cdacecef0440f45d349deb0fa5d4a0d96c21197d12b4f312752c70b8a5675546edff2'),
('Johnx', 'e637ba92b30a006ea11f170b10ed7d4bf7bd6afc92805c5e42349939b3f4ce9c1275c0a371a6084eb526febab85b51b868e0894e06673f9847d312ad71153c4f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
