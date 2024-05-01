-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2024 at 02:51 PM
-- Server version: 8.0.36
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beritacoding`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` varchar(32) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `slug` varchar(128) NOT NULL,
  `content` text,
  `draft` enum('true','false') NOT NULL DEFAULT 'true',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `slug`, `content`, `draft`, `created_at`) VALUES
('662358ec4807e9.74206511', 'Hello World!', 'hello-world-662358ec4807e9.74206511', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In commodo, ex at venenatis facilisis, urna lacus blandit lacus, id fermentum libero lacus vel felis. Quisque convallis sed sem ac iaculis. Curabitur facilisis suscipit orci hendrerit cursus. Duis eget metus sit amet dui ullamcorper porta at a ipsum. Sed lobortis, dolor eget suscipit dignissim, dui nibh pellentesque tortor, et accumsan erat sapien a justo. Ut sollicitudin purus urna, eu malesuada dui gravida id. Curabitur mauris sapien, tincidunt vel facilisis ac, posuere at justo. Proin pellentesque porttitor nisi, egestas auctor urna. Duis fermentum dolor est, fringilla suscipit mauris ultricies sit amet. Nullam sapien felis, suscipit vel dapibus quis, sollicitudin eu elit. Suspendisse potenti. Aenean eget dui diam. Sed eget nunc ornare magna dictum mollis ac nec ex. Etiam ipsum urna, imperdiet sed libero ut, aliquet venenatis lorem. Aliquam malesuada consequat dictum. Aliquam id urna eu nibh cursus eleifend.', 'false', '2024-04-20 12:55:56'),
('6631e42f546bc8.13363621', 'Masakan Terenak di dunia', 'masakan-terenak-di-dunia-6631e42f546bc8.13363621', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lobortis nisl eget arcu interdum, sit amet dignissim elit varius. Sed auctor enim dui, ut rhoncus velit hendrerit quis. Integer non odio nec lorem vulputate ornare id ut neque. Proin vitae sapien eleifend, porta ante ac, dictum nibh. Vivamus egestas commodo turpis sit amet venenatis. Donec vehicula lacus non scelerisque vehicula. Pellentesque scelerisque mattis leo, quis bibendum risus. Sed eleifend felis non ligula laoreet, at porttitor massa euismod. Aliquam maximus, arcu id vestibulum condimentum, tellus massa pellentesque dolor, vel molestie est risus a lorem. Mauris facilisis quam et leo commodo, sed commodo augue volutpat.</p>', 'false', '2024-05-01 13:41:51'),
('66325424efd534.71142110', 'Test', 'test-66325424efd534.71142110', '<p><span style=\"background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet luctus posuere. Phasellus ac erat sit amet nibh auctor dictum eget sed turpis. Nam leo justo, convallis nec nisi id, facilisis ultricies erat. Suspendisse in eros sit amet dui eleifend finibus sit amet nec justo. Mauris faucibus leo at massa hendrerit porttitor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse suscipit iaculis varius.</span></p>', 'false', '2024-05-01 21:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(32) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `password_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `avatar`, `created_at`, `last_login`, `password_updated_at`) VALUES
('6118b2a943acc2.78631959', 'Admin', 'admin@admin.com', 'admin', '$2y$10$ms96iR4XhKWj.884oM4/rO2gCPuqrVcQItrx//I0XkpKXYw1BD9hG', '6118b2a943acc278631959.jpg', '2021-08-14 23:22:33', '2024-05-01 07:45:10', '2024-04-27 08:31:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
