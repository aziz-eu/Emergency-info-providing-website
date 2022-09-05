-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 04:15 PM
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
-- Database: `emergency_info_providing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `user_name`, `password`) VALUES
(1, 'Abdul Aziz', 'abdulaziz1k99@gmail.com', '01842605509', 'aziz1k99', 'aziz1k99');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_registration`
--

CREATE TABLE `ambulance_registration` (
  `id` int(11) NOT NULL,
  `org_name` varchar(50) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `division` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `upazila` varchar(32) NOT NULL,
  `ac` int(10) NOT NULL,
  `non_ac` int(10) NOT NULL,
  `icu` int(10) NOT NULL,
  `hdu` int(10) NOT NULL,
  `air` int(10) NOT NULL,
  `frezing` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_request`
--

CREATE TABLE `ambulance_request` (
  `id` int(255) NOT NULL,
  `ambulance_type` varchar(32) NOT NULL,
  `departing_date` varchar(32) NOT NULL,
  `source_address` varchar(100) NOT NULL,
  `destination_address` varchar(100) NOT NULL,
  `customer_name` varchar(32) NOT NULL,
  `contact_number` varchar(32) NOT NULL,
  `ambulance_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `image` varchar(255) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `bank_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `aviable_a_positive`, `aviable_a_negative`, `aviable_b_positive`, `aviable_b_negative`, `aviable_ab_positive`, `aviable_ab_negative`, `aviable_o_positive`, `aviable_o_negative`, `status`, `image`, `user_name`, `password`) VALUES
(1, 'Noakhali Blood Bank', 'abdulaziz@gmail.com', '8129381932', 'New P. O Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 2, 2, 1, 1, 1, 0, 4, 0, '', '', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb'),
(2, 'BD Red Crescent Blood Bank', 'bdredcresent.bloodbank@email.org', '+88029139940', 'Aurongzeb Road, Mohammadpur', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 4, 2, 0, 0, 6, 2, '', '', 'redcresent123', 'dcdf32bbb38384b7d1db5c3fe612ce0f'),
(3, 'Quantum Blood Bank', 'info@quantummethod.org.bd', '+8801714010869', 'Shantinagar', 'Dhaka', 'Dhaka', 'Dhaka City', 1, 2, 3, 2, 0, 1, 1, 0, '', '', 'quantum123', '827a971acba790e3ddae2216b8f3656e'),
(5, 'B_Bank', 'ba@a.com', '099738643846', 'adadss', 'Khulna', 'Kushtia', 'Kumarkhali', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 'bbank', 'ff0b398632b6081fafaaedebb5a82f93');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank_application`
--

CREATE TABLE `blood_bank_application` (
  `id` int(11) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `contact_number` varchar(32) NOT NULL,
  `blood_group` varchar(6) NOT NULL,
  `requird_unit` int(10) NOT NULL,
  `date_of_donation` varchar(32) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_address` varchar(255) NOT NULL,
  `bank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank_application`
--

INSERT INTO `blood_bank_application` (`id`, `applicant_name`, `contact_number`, `blood_group`, `requird_unit`, `date_of_donation`, `hospital_name`, `hospital_address`, `bank_id`) VALUES
(1, 'Aziz', '01923823', 'A+', 2, 'friday', 'Prime', 'Noakhali', 1),
(2, 'Aziz', '01923823', 'A+', 2, 'friday', 'Prime', 'Noakhali', 5),
(3, 'Abdul Aziz', 'Maruf', 'A+', 3, '22', 'dfe', 'eret', 2),
(4, 'Abdul Aziz', '01842605509', 'A+', 2, '22/33/23', 'xyz', 'Dhanmondi', 2),
(5, 'Abdul Aziz', 'Maruf', 'A+', 2, '22/33/23', 'xyz', 'Dhanmondi', 5),
(6, 'Abdul Aziz', '01842605509', 'A+', 3, '21/09', 'Prime Hospital', 'Hospital Road ,Majide', 1),
(7, 'Abdul Aziz', '01842605509', 'A+', 2, '11/02', 'Prime Hospital', 'Dhanmondi', 2),
(8, 'Abdul Aziz', '01842605509', 'A+', 3, 'friday', 'Labid Hospital', 'Dhanmondi', 2);

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
  `last_donation` varchar(255) DEFAULT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors_registration`
--

INSERT INTO `donors_registration` (`id`, `frist_name`, `last_name`, `blood_group`, `gender`, `age`, `weight`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `last_donation`, `user_name`, `password`, `image`) VALUES
(2, 'Abdul', 'Aziz', 'O+', 'Male', 25, 60, 'abdulaziz1k99@gmail.com', '+8801842605509', 'Joynogor, Shout Fakirpur', 'Chittagong', 'Noakhali', 'Noakhali Sadar', '25/8/2021', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb', ''),
(4, 'Jahid', 'Hasan', 'O+', 'Male', 25, 55, 'jahid123@gmail.com', '01983384329', 'Safari park', 'Dhaka', 'Gazipur', 'Gazipur Sadar', '09/02/22', 'jahid123', '98fb1c8e80ee4c84e9287016b7838708', 'uploads/bdonners/profile-picture/user_id_4_1662217808.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fire_services`
--

CREATE TABLE `fire_services` (
  `id` int(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `location` varchar(255) NOT NULL,
  `division` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `upazila` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire_services`
--

INSERT INTO `fire_services` (`id`, `branch_name`, `phone`, `email`, `location`, `division`, `city`, `upazila`) VALUES
(7, 'aa', 'aa', 'aziz1k99@gamil.com', 'aa', 'Rangpur', 'Gaibandha', 'Palashbari');

-- --------------------------------------------------------

--
-- Table structure for table `fire_service_registration`
--

CREATE TABLE `fire_service_registration` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `address` varchar(100) NOT NULL,
  `division` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `upazila` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire_service_registration`
--

INSERT INTO `fire_service_registration` (`id`, `branch_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `username`, `password`) VALUES
(1, 'Noakhali Sadar Fire Service', 'nk@email.com', '', 'majdi', 'Ctg', 'Noakhali', 'Sadar', 'nk123', 'nk123'),
(2, 'Cumiila Sadar FS', 'xyz@e.com', '01842605509', 'abdullahput', 'Rajshahi', 'Joypurhat', 'Joypurhat Sadar', 'jahid123', '98fb1c8e80ee4c84e9287016b7838708');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `division` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `upazila` varchar(32) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `email`, `phone`, `type`, `address`, `division`, `city`, `upazila`, `user_name`, `password`) VALUES
(1, 'BSMMU Hospital', 'bsmmu@info.com', '+9922526', 'General Medicine & Surgery', 'Shahbag, Dhaka-1000', 'Dhaka', 'Dhaka', 'Dhaka City', 'bsmmu', '5e36bd7582c3a4287a9ffd2ae53250b8'),
(2, 'Prime Hospital', 'prime@info.com.bd', '01999922211', 'General Medicine and Surgery', 'Hospital Rd, Mejide', 'Dhaka', 'Dhaka', 'Dhaka City', 'prime123', 'be56667604b897f244ee00877f803eba');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_doctors`
--

CREATE TABLE `hospital_doctors` (
  `id` int(255) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `qulification` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `chambering_time` varchar(255) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `doctor_registration_no` int(255) NOT NULL,
  `hospital_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_doctors`
--

INSERT INTO `hospital_doctors` (`id`, `doctor_name`, `qulification`, `department`, `chambering_time`, `email`, `phone`, `picture`, `doctor_registration_no`, `hospital_id`) VALUES
(8, 'Abdul Aziz', 'a', 'zz', 'a', 'abdulaziz@gmail.com', 'a', 'uploads/doctors/image/user_id_2_1662382976.jpg', 123, 2),
(9, 'xyzaaaaaaaaaaa', 'MBBS; FCPS (Medicine)', 'Medicine', 'Friday [9:00am - 08:00pm]', 'abdulaziz@gmail.com', '123', '', 123000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `location` varchar(255) NOT NULL,
  `division` varchar(255) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `upazila` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `branch_name`, `phone`, `email`, `location`, `division`, `city`, `upazila`) VALUES
(2, 'Adabor Police Station', '+8801713373183', 'ocadabor@dmp.gov.bd', 'House#105/A, Ring road, Shamoli,', 'Rangpur', 'Dhaka', 'Dhaka City');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance_registration`
--
ALTER TABLE `ambulance_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance_request`
--
ALTER TABLE `ambulance_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bank_application`
--
ALTER TABLE `blood_bank_application`
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
-- Indexes for table `fire_services`
--
ALTER TABLE `fire_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_service_registration`
--
ALTER TABLE `fire_service_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_doctors`
--
ALTER TABLE `hospital_doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ambulance_registration`
--
ALTER TABLE `ambulance_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ambulance_request`
--
ALTER TABLE `ambulance_request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blood_bank_application`
--
ALTER TABLE `blood_bank_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_request`
--
ALTER TABLE `blood_request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donors_registration`
--
ALTER TABLE `donors_registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fire_services`
--
ALTER TABLE `fire_services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fire_service_registration`
--
ALTER TABLE `fire_service_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital_doctors`
--
ALTER TABLE `hospital_doctors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
