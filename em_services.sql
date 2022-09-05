-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 06:08 PM
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
  `total_ambulance` int(32) NOT NULL,
  `avaiable_ambulance` int(32) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulance_registration`
--

INSERT INTO `ambulance_registration` (`id`, `org_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `total_ambulance`, `avaiable_ambulance`, `user_name`, `password`) VALUES
(1, 'Ma Ambulance', 'maambulance@email.info', '0199922323223', 'Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 0, 0, 'maabulance', '2e82b8f1c50de14f898663b915f5a250'),
(2, 'MA Amulance', 'maamb@email.com', '01310803551', 'Mohammadpur and Gazipur', 'Dhaka', 'Dhaka', 'Dhaka City', 0, 0, 'jahid123', '98fb1c8e80ee4c84e9287016b7838708'),
(114, 'Ambulance BD', 'ambd@email.com', '0182334672367', 'Dhanmondi', 'Dhaka', 'Dhaka', 'Dhaka City', 0, 0, 'ambd', 'af28edb70b2b75d47d218877703e76fe');

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

--
-- Dumping data for table `ambulance_request`
--

INSERT INTO `ambulance_request` (`id`, `ambulance_type`, `departing_date`, `source_address`, `destination_address`, `customer_name`, `contact_number`, `ambulance_id`) VALUES
(1, 'AC', '23/08/2022', 'Dhaka', 'Noakhali', 'Abdul Aziz', '01842605509', 1),
(4, 'AC', 'Argent', 'Dhanmondi', 'Puran Dhaka', 'Maria', '01558934832948', 2),
(5, 'ICU', 'Argent', 'Dhanmondi', 'Gazipur', 'Sharmin Akter', '01715173241', 2),
(6, 'CCU', 'Argent', 'Dhanmondi', 'Airport', 'Kamal', '01333388991', 2);

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
  `user_name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `bank_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `aviable_a_positive`, `aviable_a_negative`, `aviable_b_positive`, `aviable_b_negative`, `aviable_ab_positive`, `aviable_ab_negative`, `aviable_o_positive`, `aviable_o_negative`, `status`, `user_name`, `password`) VALUES
(1, 'Noakhali Blood Bank', 'abdulaziz@gmail.com', '8129381932', 'New P. O Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 2, 2, 1, 1, 1, 0, 4, 0, '', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb'),
(2, 'BD Red Crescent Blood Bank', 'bdredcresent.bloodbank@email.org', '+88029139940', 'Aurongzeb Road, Mohammadpur', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 4, 2, 0, 0, 6, 2, '', 'redcresent123', 'dcdf32bbb38384b7d1db5c3fe612ce0f'),
(3, 'Quantum Blood Bank', 'info@quantummethod.org.bd', '+8801714010869', 'Shantinagar', 'Dhaka', 'Dhaka', 'Dhaka City', 1, 2, 3, 2, 0, 1, 1, 0, '', 'quantum123', '827a971acba790e3ddae2216b8f3656e'),
(4, 'xyz', 'xyz@some.com', '123', '232', 'Rangpur', 'Thakurgaon', 'Ranisankail', 0, 0, 0, 0, 0, 0, 0, 0, '', 'dxcdcd', 'f1b99d7cee95ddaecc375aa4c260dfbe'),
(5, 'B_Bank', 'ba@a.com', '099738643846', 'adadss', 'Khulna', 'Kushtia', 'Kumarkhali', 0, 0, 0, 0, 0, 0, 0, 0, '', 'bbank', 'ff0b398632b6081fafaaedebb5a82f93');

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

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`id`, `patient_name`, `blood_group`, `required_unit`, `gender`, `age`, `date_of_donation`, `hospital_name`, `hospital_address`, `division`, `city`, `upazila`, `contact_person`, `contact_number`, `patient_history`) VALUES
(6, 'Rahim', 'O+', '6', 'male', 60, '30/08/2022', 'Labid Hospital', 'Dhanmondi', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'Karim', '01845682910', 'Blood Cancer');

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
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(255) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `chamber_time` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `doctor_reg_no` varchar(32) NOT NULL,
  `hospital_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `doctor_name`, `qualifications`, `chamber_time`, `specialty`, `doctor_reg_no`, `hospital_id`) VALUES
(1, 'Abdullah', 'MBBS', 'FRI 5 PM - 9 PM', 'General Physician', '23238', 1),
(2, 'Maria', '', '', '', '', 1),
(3, 'Maria', '', '', '', '', 2),
(4, 'Maria', '', '', '', '', 0),
(5, 'Khan', '', '', '', '', 0);

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
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors_registration`
--

INSERT INTO `donors_registration` (`id`, `frist_name`, `last_name`, `blood_group`, `gender`, `age`, `weight`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `last_donation`, `user_name`, `password`) VALUES
(2, 'Abdul', 'Aziz', 'O+', 'Male', 25, 60, 'abdulaziz1k99@gmail.com', '+8801842605509', 'Joynogor, Shout Fakirpur', 'Chittagong', 'Noakhali', 'Noakhali Sadar', '25/8/2021', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb'),
(3, 'Anisul', 'Haque', 'B+', 'Male', 55, 70, 'anis190@gmail.com', '+8801323456432', 'Kortbari', 'Chittagong', 'Comilla', '<option value=', '21/48/22', 'ikram123', '874a73a699b654417c5c621257cba097'),
(4, 'Jahid', 'Hasan', 'O+', 'Male', 25, 55, 'jahid123@gmail.com', '01983384329', 'Safari park', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'Naver', 'jahid123', '98fb1c8e80ee4c84e9287016b7838708'),
(5, 'Anisul', 'Haque', 'B+', 'Male', 55, 70, 'anis190@gmail.com', '+8801323456432', 'Kortbari', 'Chittagong', 'Comilla', '<option value=', '21/48/22', 'aziz123', '77f96d74d75182a5a4fa205443bbc7e0'),
(6, 'Anisul', 'Haque', 'B+', 'Male', 55, 70, 'anis190@gmail.com', '+8801323456432', 'Kortbari', 'Chittagong', 'Comilla', '<option value=', '21/48/22', 'anis123', '432574eb722f0b57f568e4f99eedd4fd');

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
(1, 'Mirpur Fire Service Station', '0173002229', 'mirpur.fireservice@info.com', 'Poradoha Mirpur Rd', 'Dhaka', 'Dhaka', 'Dhaka City');

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
(1, 'BSMMU Hospital', 'bsmmu@info.com', '+9922526', 'General Medicine & Surgery', 'Shahbag, Dhaka-1000', 'Dhaka', 'Dhaka', 'Dhaka City', 'bsmmu', '5e36bd7582c3a4287a9ffd2ae53250b8');

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
(1, 'Adabor Police Station:', '3434', 'nk@email.com', 'asas', 'Dhaka', 'Dhaka', 'Dhaka City');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
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
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fire_service_registration`
--
ALTER TABLE `fire_service_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
