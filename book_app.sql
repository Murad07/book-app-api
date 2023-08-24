-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 12:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `author` varchar(150) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `rating` int(20) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `thumbnail`, `price`, `rating`, `featured`) VALUES
(1, 'The Last Thing He Told Me: A Novel', 'Laura', 'https://m.media-amazon.com/images/P/1501171348.01._SCLZZZZZZZ_SX500_.jpg', '13.99', 3, 0),
(4, 'The Body Keeps the Score: Brain, Mind, and Body', 'Laura', 'https://m.media-amazon.com/images/I/41T-XHe8-EL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg', '10.99', 4, 1),
(6, 'Workbook for The Body Keeps The Score', 'Harun', 'https://m.media-amazon.com/images/I/4172OieY0hS._SY291_BO1,204,203,200_QL40_FMwebp_.jpg', '14.05', 4, 1),
(8, 'American Psychological Association', 'Psychological Association', 'https://m.media-amazon.com/images/I/41pbe4-oNpL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg', '12.00', 3, 0),
(10, 'Test Book', 'Bk', 'https://m.media-amazon.com/images/I/51RYHlz+7OL._SY344_BO1,204,203,200_.jpg', '22.00', 5, 1),
(12, 'My Book', 'Murad', 'https://m.media-amazon.com/images/I/41NpozEU8nL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg', '12.00', 4, 1),
(13, 'The 48 Laws of Power', 'Murad', 'https://m.media-amazon.com/images/I/41KY-NORo9L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg', '31.00', 3, 0),
(14, 'Fahrenheit 451 Paperback', 'Ray Bradbury', 'https://m.media-amazon.com/images/I/41oWDDRb2cL._SX324_BO1,204,203,200_.jpg', '12.00', 4, 1),
(15, 'Study Guide: Fahrenheit 451', 'Ray Bradbury', 'https://m.media-amazon.com/images/I/41MhZ+aj5QL._SX331_BO1,204,203,200_.jpg', '22.00', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
