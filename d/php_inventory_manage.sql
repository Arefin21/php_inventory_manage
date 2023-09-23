-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 08:49 PM
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
-- Database: `php_inventory_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bought` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `image` varchar(300) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `bought`, `sold`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Chair', 99, 89, '', '2023-09-15 15:27:17', '2023-09-20 15:26:33'),
(2, 'Table', 150, 100, '', '2023-09-13 00:00:00', '2023-09-19 15:49:45'),
(3, 'T-Shirt', 40, 0, 'Uploads/6823540800_1_1_16.jpg', '2023-09-21 11:51:07', '2023-09-21 11:51:07'),
(4, 'Cap', 70, 60, 'Uploads/jpg.jpg', '2023-09-21 12:13:40', '2023-09-21 12:13:40'),
(5, 'Cap', 70, 69, 'Uploads/jpg.jpg', '2023-09-21 12:26:37', '2023-09-21 12:26:37'),
(8, 'Building', 33, 30, 'Uploads/images (1).jpg', '2023-09-21 12:28:08', '2023-09-21 12:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE IF NOT EXISTS `users_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(100) NOT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `name`, `uname`, `email`, `password`, `is_active`, `is_admin`, `avatar`, `last_login_time`, `created_at`) VALUES
(1, 'arefin', 'joy', 'arefinshagor18@gmail.com', '11111111', 1, 0, 'Users/arefin.jpg', '2023-09-23 11:04:31', '2023-09-20 10:11:51'),
(2, 'shagor', 'shagor', 'shagor@gmail.com', '11111111', 0, 0, '', '2023-09-21 11:07:04', '2023-09-21 10:11:51'),
(3, 'Alice', 'Alice', 'alice@gmail.com', '11111111', 1, 1, 'Uploads/alice.jpg', '2023-09-23 10:57:54', '2023-09-22 22:25:31'),
(4, 'T', 't', 't@mail.com', '$2y$10$6C.9F/.gIM7iciQdh.ZZauLoilvhhG70lTNYt4EBoW0TfcEBkuceO', 1, 0, '', '2023-09-23 10:33:01', '2023-09-23 16:33:01'),
(5, 'a', 'a', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 1, 0, '', '2023-09-23 10:56:35', '2023-09-23 16:51:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
