-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 12:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearnpayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `user_id`, `title`, `description`, `image`, `amount`, `course_id`, `date`, `status`) VALUES
(9, '3', 'JAVA', 'Java', 'java.png', '150', '1646997719', '2022-03-11', 'Seen'),
(10, '8', 'PYTHON', 'Python', 'python.jpg', '150', '1646999072', '2022-03-11', 'Seen'),
(11, '8', 'PHP', 'Php', 'php.jfif', '100', '1647001004', '2022-03-11', 'Seen'),
(12, '8', 'MYSQL', 'MYSql', 'mysql.png', '50', '1647001076', '2022-03-11', 'Seen'),
(13, '8', 'JAVA', 'Java is good', 'java.png', '200', '1647001117', '2022-03-11', 'Seen'),
(14, '8', 'HTML', 'HTML', 'html.png', '40', '1647001185', '2022-03-11', 'Seen'),
(15, '3', 'POWER POINT', 'Power point\r\n', 'powerpoint.jpg', '25', '1647248251', '2022-03-14', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fn` varchar(30) NOT NULL,
  `ln` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pn` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `ms` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `level` varchar(7) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `picture` text NOT NULL,
  `last_login` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fn`, `ln`, `email`, `pn`, `password`, `country`, `ms`, `date`, `level`, `sex`, `picture`, `last_login`, `status`) VALUES
(1, 'Favour', 'Nwokamma', 'Favourehio2019@gmail.com', '09097048450', 'loverboy', 'Nigeria', 'Single', '2022-01-17', 'Student', 'Male', '3.png', '2022-03-14', 'Active'),
(2, 'Kelly', 'Kelly', 'Kelly@gmail.com', '010215486', 'kelly123', 'Nigeria', 'Married', '2022-01-17', 'Admin', 'Male', 'Acura_NSX_TypeR.jpg', '2022-03-31', 'Active'),
(3, 'Precious', 'Victor', 'precious@gmail.com', '10101010', 'manman', 'Anguilla', 'Single', '2022-01-17', 'Teacher', 'Female', '', '2022-03-14', 'Active'),
(4, 'Lucky', 'Chukwuma', 'lucky@gmail.com', '124579654', 'manman', 'Argentina', 'Single', '2022-01-17', 'Student', 'Male', '30.jpg', '2022-01-18', 'Active'),
(5, 'Comfort', 'Douglas', 'comfort@gmail.com', '4152632563', 'manman', 'Algeria', 'Single', '2022-01-17', 'Teacher', 'Female', '', '2022-01-18', 'Active'),
(6, 'Awo', 'John', 'awo@gmail.com', '1234567890', 'manman', 'Benin', 'Single', '2022-01-18', 'Student', 'Male', '', '2022-01-18', 'Active'),
(8, 'Elder', 'Chuks', 'asasas@gmail.com', '1457854', '123456', 'Bahamas', 'Married', '2022-03-10', 'Teacher', 'Married', '', '2022-03-11', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
