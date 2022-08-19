-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 10:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `em_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` int(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `division` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `upazila` varchar(32) NOT NULL,
  `aviable_a_positive` int(5) NOT NULL,
  `aviable_a_negative` int(5) NOT NULL,
  `aviable_b_positive` int(5) NOT NULL,
  `aviable_b_negative` int(5) NOT NULL,
  `aviable_ab_positive` int(5) NOT NULL,
  `aviable_ab_negative` int(5) NOT NULL,
  `aviable_o_positive` int(5) NOT NULL,
  `aviable_o_negative` int(5) NOT NULL,
  `status` varchar(255) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `bank_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `aviable_a_positive`, `aviable_a_negative`, `aviable_b_positive`, `aviable_b_negative`, `aviable_ab_positive`, `aviable_ab_negative`, `aviable_o_positive`, `aviable_o_negative`, `status`, `username`, `password`) VALUES
(1, 'Noakhali Blood Bank', 'abdulaziz@gmail.com', '8129381932', 'New P. O Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 2, 2, 1, 1, 1, 0, 4, 0, '', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb');

-- --------------------------------------------------------

--
-- Table structure for table `blood_request`
--

CREATE TABLE `blood_request` (
  `id` int(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `required_unit` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `date_of_donation` varchar(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `upazila` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `patient_history` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`id`, `patient_name`, `blood_group`, `required_unit`, `gender`, `age`, `date_of_donation`, `hospital_name`, `hospital_address`, `division`, `city`, `upazila`, `contact_person`, `contact_number`, `patient_history`) VALUES
(1, 'Maria', 'A-Positive', '2', 'flmale', 22, 'Friday', 'Noakhali General Hospital', 'Hospital Road,Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 'Abdul Aziz', '02913i2938', 'Accident'),
(2, 'Maria', 'O+', '2', 'male', 55, 'friday', 'Noakhali General Hospital', 'Hospital Road,Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 'Aziz', '03293248230282', 'Accident'),
(3, 'Maria', 'B+', '1', 'male', 43, '22/8/2022', 'Cumilla woman Hospital', 'Hospital Road,candina', 'Chittagong', 'Comilla', 'Chandina', 'ikram Hossain', '019329323232', 'Accident');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donors_registration`
--

CREATE TABLE `donors_registration` (
  `id` int(255) NOT NULL,
  `frist_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `blood_group` varchar(6) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `division` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `upazila` varchar(20) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors_registration`
--

INSERT INTO `donors_registration` (`id`, `frist_name`, `last_name`, `blood_group`, `gender`, `age`, `weight`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `user_name`, `password`) VALUES
(2, 'Abdul', 'Aziz', 'O+', 'male', 25, 55, 'abdulaziz1k99@gmail.com', '01842605509', 'Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb'),
(3, 'Ikram', 'Hossain', 'B+', 'male', 26, 80, 'ikram@gamil.com', '01999922211', 'xyz', 'Chittagong', 'Comilla', 'Chandina', 'ikram123', '874a73a699b654417c5c621257cba097');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_request`
--
ALTER TABLE `blood_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors_registration`
--
ALTER TABLE `donors_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_request`
--
ALTER TABLE `blood_request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donors_registration`
--
ALTER TABLE `donors_registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
