-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 08:47 AM
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
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
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
  `status` varchar(255) NOT NULL DEFAULT 'Typically replies within 10 minutes.',
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `org_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `ac`, `non_ac`, `icu`, `hdu`, `air`, `frezing`, `image`, `status`, `user_name`, `password`) VALUES
(115, 'Alif Ambulanc service', 'alifambulance@gmail.com', '01733632552', 'Sher-e-Bangla Nagar, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka City', 6, 9, 1, 1, 1, 3, 'uploads/ambulance/logo/user_id_115_1665336363.png', 'Typically replies within 15 minutes.', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(116, 'Nova Ambulance Service', 'dfsdgfd@gmail.com', '01733632525', 'Qazi Nuruzzaman Sarak,Panthapath,', 'Dhaka', 'Dhaka', 'Dhaka City', 7, 4, 1, 0, 0, 8, '', ' It is highly recommended to call us directly.', 'nova1', '3bc340da2adeac26295e0d41f3a35b83'),
(117, 'Joynov Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Mawna Chowrasta,Sreepur, Gazipur.', 'Dhaka', 'Gazipur', 'Sreepur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'joynov1', 'c8003d5a0b584858db9196eb7718ad43'),
(118, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Mirpur-12', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'miftahul1', '6a957ce33791c6e9cff5352d2755520b'),
(119, 'Anjuman E Mofidul Ambulance Service', 'anisulawal@gmail.com', '01733632552', 'Chittagong', 'Chittagong', 'Chittagong', 'Anwara', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'anjuman1', '6f311c7b41d98abe1fa4e189efe1185d'),
(120, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Dhamrai', 'Dhaka', 'Dhaka', 'Dhamrai', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'jahid1', 'e57599d25b7f692a4f28423d6b6a470d'),
(121, 'Simba Ambulance service', 'bijoykumar@gmail.com', '01733632539', 'Dohar', 'Dhaka', 'Dhaka', 'Dohar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'simba1', 'd9523b29e8c7e30143d00687952ffb1f'),
(122, 'Anika Ambulance Service', 'shanara@gmail.com', '01733632528', 'Keraniganj', 'Dhaka', 'Dhaka', 'Keraniganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'anika1', '56385788cac4b539a61194dbd11a4607'),
(123, 'Maysah Ambulance Service', 'anisulawal@gmail.com', '01733632528', 'Nawabganj', 'Dhaka', 'Dhaka', 'Nawabganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'maysha1', '6788a70143f384bbd76539fdbf815124'),
(124, 'Takiya Ambulance Sevice', 'shanara@gmail.com', '01733632552', 'New market,Savar.', 'Dhaka', 'Dhaka', 'Savar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'takiya1', '565c2d003bffb10d16365aeb1dc44aa9'),
(125, 'Borsha Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Tejgoan', 'Dhaka', 'Dhaka', 'Tejgaon Circle', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'borsha1', 'd2897a4af1c58a30d39c5f8a98fe732b'),
(126, 'Lithi Ambulance Service', 'mansurul@gmail.com', '01733632552', 'amtail', 'Barisal', 'Barguna', 'Amtali', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'lithi1', '6fe53956827cae791282eda3fd262b27'),
(127, 'Jui Ambulance Service', 'shanara@gmail.com', '01733632552', 'Bamna', 'Barisal', 'Barguna', 'Bamna', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'jui1', 'e4ee168006259ad754b0ef4b63a6283c'),
(128, 'Suma Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Barguna Sadar', 'Barisal', 'Barguna', 'Barguna Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'soma1', '621ee7cb158881829cf067ca3da5c648'),
(129, 'Swarna Ambulance Service', 'shanara@gmail.com', '01733632552', 'Betagi', 'Barisal', 'Barguna', 'Betagi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'swarna1', 'cdb54f5bc24077e79a2629b96cc245f7'),
(130, 'Nondita Ambulance Service', 'shanara@gmail.com', '01733632528', 'Pathargata.', 'Barisal', 'Barguna', 'Patharghata', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'nondita1', '8af2bbf42284edaffe2a8c6c31971652'),
(131, 'Jannati Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Taltali', 'Barisal', 'Barguna', 'Taltali', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'jannati1', '8bc2aeb3df4ceb181e8b0f868c99a57f'),
(132, 'Bushra Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Agailjhara', 'Barisal', 'Barisal', 'Agailjhara', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bushra1', '0bee903be09307073e44b867084ffed0'),
(133, 'Samiya Ambulance service', 'shanara@gmail.com', '01733632552', 'Babuganj', 'Barisal', 'Barisal', 'Babuganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'samiya1', '6b6f8d95f9d8fd1eb5095d28c359c5f6'),
(134, 'Lamisha Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Bakerganj', 'Barisal', 'Barisal', 'Bakerganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'lamisha1', '289da2f1c9e823e0e6cc031328daec31'),
(135, 'Sourobi Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Banaripara', 'Barisal', 'Barisal', 'Banaripara', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sourobi1', 'd8c54c3688f8a86033e8ef596cff19a3'),
(136, 'Sormili Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Gourondi', 'Barisal', 'Barisal', 'Gaurnadi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sormili1', '820012c20db04eb0e01cd67bafcf1ae2'),
(137, 'Nahida Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Hizla', 'Barisal', 'Barisal', 'Hizla', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'nahida1', 'f066cbc209f9ebde3728cef5af311058'),
(138, 'Maksuda Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Sadar', 'Barisal', 'Barisal', 'Barishal Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'maksuda1', '6776f93edb7e7715a4818a0cdfb3752b'),
(139, 'Morioum Ambulance Service.', 'mansurul@gmail.com', '01733632525', 'Mehendiganj', 'Barisal', 'Barisal', 'Mehendiganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'moriom1', '355efc5d87341e1817e081a492d641ec'),
(140, 'Afsana Mimi Ambulance Service', 'anisulawal@gmail.com', '01733632525', 'Muladi', 'Barisal', 'Barisal', 'Muladi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'afsana1', 'c3cdbb4e26e0d22424c0cbf85edd87b8'),
(141, 'Rani Khatun Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Wazirpur', 'Barisal', 'Barisal', 'Wazirpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rani1', '7418eea781c0981852d9ce02d1160d34'),
(142, 'Jannatul Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Bhola', 'Bhola Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'jannatul1', 'c99f2f24f757c8e8e8a5edb6f90c3fab'),
(143, 'Sinthiya Ambulance service', 'anisulawal@gmail.com', '01733632552', 'Burhanuddin', 'Barisal', 'Bhola', 'Burhanuddin', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sinthiya1', '2d76202259a3cc11affd530a249efdbb'),
(144, 'Riya Moni Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Char Fassaion', 'Barisal', 'Bhola', 'Char Fasson', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'riya1', '020317fa3cd34dab4312cbb928a1c944'),
(145, 'Antora Ambulance Service', 'shanara@gmail.com', '01733632552', 'Daulatkhan', 'Barisal', 'Bhola', 'Daulatkhan', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'antora1', '26fa6a369d2d0ea7fa1f131b76171816'),
(146, 'Hena Ambulance Service', 'shanara@gmail.com', '01733632525', 'lalmohon', 'Barisal', 'Bhola', 'Lalmohan', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'hena1', '9cd8fb724cc0020df3a2c76501f230c3'),
(147, 'Himu Ambulance Service.', 'anisulawal@gmail.com', '01733632552', 'manpura', 'Barisal', 'Bhola', 'Manpura', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'himu1', '39e56bf4817b7ea87071f4246ec332de'),
(148, 'Mukta Moni Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Tazummuddin', 'Barisal', 'Bhola', 'Tazumuddin', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'mukta1', 'e1f1979d008ecd21fdc065cb8689494a'),
(149, 'Laboni Ambulance Service', 'shanara@gmail.com', '01733632525', 'sadar', 'Barisal', 'Jhalokati', 'Jhalokati Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'laboni1', '90eed326ffee111bd7a7aca2190226d4'),
(150, 'Monira akter Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Kathalia', 'Barisal', 'Jhalokati', 'Kathalia', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'monira1', 'c9139a1a0f12bd1e2f5840a330087930'),
(151, 'Asma Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Nalchity', 'Barisal', 'Jhalokati', 'Nalchity', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'asma1', 'da1b4cea31c27b0e77f2aaf041c8d48e'),
(152, 'Hiramoni Ambulance Service', 'shanara@gmail.com', '01733632525', 'Rajapur', 'Barisal', 'Jhalokati', 'Rajapur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'hiramoni1', '64d258904f0d4292ea5a93d9be6b0926'),
(153, 'Rupali Ambulance Service', 'shanara@gmail.com', '01733632525', 'Bauphal', 'Barisal', 'Patuakhali', 'Bauphal', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rupali1', 'd6ba371495010d6fac2c34ad83c16663'),
(154, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Patuakhali', 'Dashmina', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(155, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Galachipa', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'miftahul1', '6a957ce33791c6e9cff5352d2755520b'),
(156, 'Kona Ambulance Service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Patuakhali', 'Bauphal', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'kona1', 'b69bf4f994cb7dca78ac469ba5c0af36'),
(157, 'Habiba Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Dashmina', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'habiba1', '3beb619e2a8b062468da3ef85d5825cd'),
(158, 'Sohana Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Barisal', 'Patuakhali', 'Galachipa', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sohana1', '1cd7e8a941a26738c6aa1726deaf8c8a'),
(159, 'Mabiya Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Kalapara', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'mabiya1', '7c9279e40a5ef3796b4bd8a045c1a7f2'),
(160, 'Setu Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Mirzaganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'setu1', 'b872a84d6213fdda51a32085e9eac8bf'),
(161, 'Peu Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Patuakhali Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'peu1', '8d9bc5911a655ba455d7cbb2e58a263b'),
(162, 'Rabeya Ambulance Service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Patuakhali', 'Rangabali', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rabeya1', 'b06b94aa0052607e5b717dd2bb1edd5a'),
(163, 'Amena Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Barisal', 'Patuakhali', 'Dumki', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'amena1', '2ba9b434ebdac50a679f5569193bc436'),
(164, 'Rubaiya Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Bhandaria', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rubaiya1', 'b668c2318d69c47f2071b7cb4204cc1b'),
(165, 'Sanjida Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Kawkhali', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sanjida1', '1d5e001a128fab738674968d95417996'),
(166, 'Marjiya Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Mathbaria', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'marjiya1', 'a00704923729dd48871358802656b0b5'),
(167, 'Mim Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Pirojpur Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'mim1', '22a813e3d0aa5c074343526b8a2e21c5'),
(168, 'Esha Ambulance Service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Pirojpur', 'Nesarabad (Swarupkati)', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'esha1', '4c1989803babef2a6895a095e1e0db57'),
(169, 'Sarmin Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Zianagar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sarmin1', '487c7a7b16d3cdf148ac4b6fd145bbed'),
(170, 'Nazma Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Bandarban', 'Ali Kadam', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'nazma1', 'e67761dc670bc83ce6f819b41e700a8c'),
(171, 'Bristi Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Bandarban Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bristi1', 'fdca425da0a301f011c2c0cd281bc5b9'),
(172, 'Fahima Ambulance service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Lama', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'fahima1', 'e2ee5734f5af9730d36dfe37238932bf'),
(173, 'Mitu Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Naikhongchhari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'mitu1', '24d10eedd83a47ea8c7e20d2a43f8d10'),
(174, 'Nasim Ambulance service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Bandarban', 'Rowangchhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'nasim1', '441106b0a3766071bb55894225d79301'),
(175, 'Arafat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Ruma', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'arafat1', 'bf04b8c3011459ffa86db6437b2e49a1'),
(176, 'Imran Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Bandarban', 'Thanchi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'imran1', '48bef11b4bee7f3a2330eb9d691b29ea'),
(177, 'Tutul Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Akhaura', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'tutul1', 'b99457fe0b63ac7d659a342c4e135e83'),
(178, 'Sadek Ambulance Service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Bancharampur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sadek1', 'f41aa67c4c6d11a7a48ede97cdb4f557'),
(179, 'Sabbir Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Kasba', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sabbir1', '496afd89a952492adf3e630ee9eb06f7'),
(180, 'Yeasin Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Nabinagar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'yeasin1', '72410575c9cc6fdc5375ef1796bf08d3'),
(181, 'Rafijit Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Nasirnagar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rafijit1', 'ef4ca876d2378984a01ac4e6a9a872a3'),
(182, 'Emon Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Sarail', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'emon1', '16b93643303ba00d6a913d723b9f4381'),
(183, 'Shuvo Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Sarail', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'shuvo1', '641eaa8d5209c62d8a01556353cfe270'),
(184, 'Robin Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Ashuganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'robin1', '0f05bf0df1c89f6d6f9308275d1cbaa4'),
(185, 'Arif Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'select-message', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'arif1', 'cae104b6e30715b633f86a80b3b7c35e'),
(186, 'Joy Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chandpur', 'Chandpur Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'joy1', '3bd969bc315df0a058e58c6efad83a32'),
(187, 'Mahfuj Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Faridganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'mahfuj1', '9b15b4eb5b5a6e8ebd777a4dda97c8f6'),
(188, 'Siyam Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Haimchar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'siyam1', 'ab83703b79cf2d839bcaf0c15a02aa28'),
(189, 'Sohag Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Haziganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sohag1', '3117aabf73a29090339c4f344ca7a6ee'),
(190, 'Rabbi Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Kachua', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rabbi1', '4b04c0079db9ba3de8b45a159832fb6b'),
(191, 'Minhaj Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chandpur', 'Matlab Dakshin', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'minhaj1', 'c96be51390d4cc1a4f401bde42746d81'),
(192, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chandpur', 'Matlab Uttar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(193, 'Nova Ambulance Service', 'anisulawal@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Shahrasti', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(194, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Anwara', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(195, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Banshkhali', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(196, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Boalkhali', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(197, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Chandanaish', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(198, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Fatikchhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(199, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Chittagong', 'Hathazari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(200, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Karnaphuli', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(201, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Karnaphuli', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(202, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Lohagara', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(203, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Mirsharai', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(204, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Patiya', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(205, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Rangunia', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(206, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Raozan', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(207, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Chittagong', 'Sandwip', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '1', 'c4ca4238a0b923820dcc509a6f75849b'),
(208, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Satkania', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '2', 'c81e728d9d4c2f636f067f89cc14862c'),
(209, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Sitakunda', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
(210, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Bandar Thana', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
(211, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Chandgaon Thana', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '4', 'a87ff679a2f3e71d9181a67b7542122c'),
(212, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Double Mooring Thana', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '5', 'e4da3b7fbbce2345d7772b0674a318d5'),
(213, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Kotwali Thana', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '6', '1679091c5a880faf6fb5e6087eb1b2dc'),
(214, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Sadar', 'Chittagong', 'Chittagong', 'Pahartali Thana', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '7', '8f14e45fceea167a5a36dedd4bea2543'),
(215, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Pahartali Thana', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '8', 'c9f0f895fb98ab9159f51fd0297e236d'),
(216, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Panchlaish Thana', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '9', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(217, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Bhujpur Thana', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '10', 'd3d9446802a44259755d38e6d163e820'),
(218, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Barura', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '11', '6512bd43d9caa6e02c990b0a82652dca'),
(219, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Brahmanpara', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '12', 'c20ad4d76fe97759aa27a0c99bff6710'),
(220, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Burichang', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '13', 'c51ce410c124a10e0db5e4b97fc2af39'),
(221, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Chandina', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '14', 'aab3238922bcc25a6f606eb525ffdc56'),
(222, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Sher-e-Bangla Nagar, Dhaka', 'Chittagong', 'Comilla', 'Chauddagram', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '15', '9bf31c7ff062936a96d3c8bd1f8f2ff3'),
(223, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Daudkandi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '16', 'c74d97b01eae257e44aa9d5bade97baf'),
(224, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Debidwar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '17', '70efdf2ec9b086079795c442636b55fb'),
(225, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Homna', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '18', '6f4922f45568161a8cdf4ad2299f6d23'),
(226, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Bir Uttam Qazi Nuruzzaman Sarak,Panthapath.Dhaka.', 'Chittagong', 'Comilla', 'Laksam', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '19', '1f0e3dad99908345f7439f8ffabdffc4'),
(227, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Laksam', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '20', '98f13708210194c475687be6106a3b84'),
(228, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Comilla', 'Muradnagar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '21', '3c59dc048e8850243be8079a5c74d079'),
(229, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Nangalkot', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '21', '3c59dc048e8850243be8079a5c74d079'),
(230, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Comilla', 'Cumilla Adarsha Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '22', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(231, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Comilla', 'Meghna', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '23', 'c81e728d9d4c2f636f067f89cc14862c'),
(232, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Comilla', 'Titas', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '24', '1ff1de774005f8da13f42943881c655f'),
(233, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '25', '8e296a067a37563370ded05f5a3bf3ec'),
(234, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Feni', 'Chhagalnaiya', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '28', '33e75ff09dd601bbe69f351039152189'),
(235, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Daganbhuiyan', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '29', '6ea9ab1baa0efb9e19094440c317e21b'),
(236, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Feni', 'Daganbhuiyan', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '30', '34173cb38f07f89ddbebc2ac9128303f'),
(237, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Feni Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '31', 'c16a5320fa475530d9583c34fd356ef5'),
(238, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Feni', 'Parshuram', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
(239, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Sonagazi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
(240, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Fulgazi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '34', 'e369853df766fa44e1ed0ff613f563bd'),
(241, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Dighinala', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '35', '1c383cd30b7c298ab50293adfecb7b18'),
(242, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Khagrachhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '36', '19ca14e7ea6328a42e0eb13d585e4c22'),
(243, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Lakshmichhari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '37', 'a5bfc9e07964f8dddeb95fc584cd965d'),
(244, 'Joynov Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Mahalchhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '38', 'a5771bce93e200c36f7cd9dfd0e5deaa'),
(245, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Manikchhari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '39', 'd67d8ab4f4c10bf22aa353e27879133c'),
(246, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Manikchhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '39', 'd67d8ab4f4c10bf22aa353e27879133c'),
(247, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Matiranga', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '40', 'd645920e395fedad7bbbed0eca3fe2e0'),
(248, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Panchhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '41', '3416a75f4cea9109507cacd8e2f2aefc'),
(249, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Ramgarh', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '42', 'a1d0c6e83f027327d8461063f4ac58a6'),
(250, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '43', '17e62166fc8586dfa4d1bc0e1742c08b'),
(251, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Raipur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '44', 'f7177163c833dff4b38fc8d2872f1ec6'),
(252, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632528', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Raipur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '45', '6c8349cc7260ae62e3b1396831a8398f'),
(253, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Ramganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '46', 'd9d4f495e875a2e075a1a4a6e1b9770f'),
(254, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Ramgati', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '47', '67c6a1e7ce56d3d6fa748ab6d9af3fd7'),
(255, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Kamalnagar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '48', '642e92efb79421734881b53e1e1b18b6'),
(256, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Begumganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '49', 'f457c545a9ded88f18ecee47145a72c0'),
(257, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '50', 'c0c7c76d30bd3dcaefc96f40275bdc0a'),
(258, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Chatkhil', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '51', '2838023a778dfaecdc212708f721b788'),
(259, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Companiganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '52', '9a1158154dfa42caddbd0694a4e9bdc8'),
(260, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Noakhali', 'Hatiya', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '53', 'd82c8d1619ad8176d665453cfb2e55f0'),
(261, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Senbagh', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '54', 'a684eceee76fc522773286a895bc8436'),
(262, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Noakhali', 'Sonaimuri', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '55', 'b53b3a3d6ab90ce0268229151c9bde11'),
(263, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Noakhali', 'Subarnachar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '56', '9f61408e3afb633e50cdf1b20de6f466'),
(264, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632528', 'Baniarchala', 'Chittagong', 'Noakhali', 'Subarnachar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '57', '72b32a1f754ba1c09b3695e0cb6cde7f'),
(265, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Noakhali', 'Kabirhat', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '57', '72b32a1f754ba1c09b3695e0cb6cde7f'),
(266, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Rangamati', 'Bagaichhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '58', '66f041e16a60928b05a7e228a89c3799'),
(267, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Rangamati', 'Barkal', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '59', '093f65e080a295f8076b1c5722a46aa2'),
(268, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Kawkhali (Betbunia)', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '60', '072b030ba126b2f4b2374f342be9ed44'),
(269, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Rangamati', 'Belaichhari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '61', '7f39f8317fbdb1988ef4c628eba02591'),
(270, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Kaptai', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '62', '44f683a84163b3523afe57c2e008bc8c'),
(271, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Rangamati', 'Juraichhari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '63', '03afdbd66e7929b125f8597834fa83a4'),
(272, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Langadu', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '65', 'fc490ca45c00b1249bbe3554a4fdf6fb'),
(273, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Rangamati', 'Naniyachar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '66', '3295c76acbf4caaed33c36b1b5fc2cb1'),
(274, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Rangamati', 'Rajasthali', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '67', '735b90b4568125ed6c3f678819b6e058'),
(275, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Rangamati Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '68', 'a3f390d88e4c41f2747bfa2f1b5f87db'),
(276, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Faridpur', 'Alfadanga', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '70', '7cbbc409ec990f19c78c75bd1e06f215'),
(277, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Bhanga', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '71', 'e2c420d928d4bf8ce0ff2ec19b371514'),
(278, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Bhanga', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '72', '32bb90e8976aab5298d5da10fe66f21d'),
(279, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Faridpur', 'Boalmari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '73', 'd2ddea18f00665ce8623e36bd4e3c7c5'),
(280, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Charbhadrasan', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '75', 'd09bf41544a3365a46c9077ebb5e35c3'),
(281, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Faridpur Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '74', 'ad61ab143223efbc24c7d2583be69251'),
(282, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Faridpur', 'Madhukhali', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '75', 'd09bf41544a3365a46c9077ebb5e35c3'),
(283, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Faridpur', 'Nagarkanda', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '76', 'fbd7939d674997cdb4692d34de8633c4'),
(284, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Sadarpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '77', '28dd2c7955ce926456240b2ff0100bde'),
(285, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Saltha', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '78', '35f4a8d465e6e1edc05f3d8ab658c551'),
(286, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '79', 'd1fe173d08e959397adf34b1d77e88d7'),
(287, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kaliakair', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '80', 'f033ab37c30201f73f142449d037028d'),
(288, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kaliganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '81', '43ec517d68b6edd3015b3edc9a11367b'),
(289, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kapasia', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '82', '9778d5d219c5080b9a6a17bef029331c'),
(290, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kapasia', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '83', 'fe9fc289c3ff0af142b6d3bead98a923'),
(291, 'Joynov Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gazipur', 'Sreepur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '84', '68d30a9594728bc39aa24be94b319d21'),
(292, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Gopalganj Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '85', '3ef815416f775098fe977004015c6193'),
(293, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Kashiani', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '86', '93db85ed909c13838ff95ccfa94cebd9'),
(294, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Kotalipara', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '88', '2a38a4a9316c49e5a833517c45d31070'),
(295, 'Jahid Ambulance Service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Muksudpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '89', '7647966b7343c29048673252e490f736'),
(296, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Tungipara', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '90', '8613985ec49eb8f757ae6439e879bb2a'),
(297, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Tungipara', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '91', '54229abfcfa5649e7003b83dd4755294'),
(298, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Austagram', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '92', '92cc227532d17e56e07902b254dfad10'),
(299, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Bajitpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '93', '98dce83da57b0395e163467c9dae521b'),
(300, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Bhairab', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '94', 'f4b9ec30ad9f68f89b29639786cb62ef'),
(301, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Hossainpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '95', '812b4ba287f5ee0bc9d43bbf5bbe87fb'),
(302, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Hossainpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '96', '26657d5ff9020d2abefe558796b99584'),
(303, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Itna', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '97', 'e2ef524fbf3d9fe611d5a8e90fefdc9c'),
(304, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Karimganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '98', 'ed3d2c21991e3bef5e069713af9fa6ca'),
(305, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Katiadi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '99', 'ac627ab1ccbdb62ec96e702f07f6425b'),
(306, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Kishoreganj Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '100', 'f899139df5e1059396431415e770c6dd'),
(307, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Kuliarchar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '101', '38b3eff8baf56627478ec76a704e9b52'),
(308, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Nikli', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '102', 'ec8956637a99787bd197eacd77acce5e'),
(309, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Pakundia', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '103', '6974ce5ac660610b44d9b9fed0ff9548'),
(310, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Madaripur', 'Rajoir', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '105', '65b9eea6e1cc6bb9f0cd2a47751a186f'),
(311, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Madaripur', 'Madaripur Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '106', 'f0935e4cd5920aa6c7c996a5ee53a70f'),
(312, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Madaripur', 'Kalkini', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '107', 'a97da629b098b75c294dffdc3e463904'),
(313, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Madaripur', 'Shibchar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '108', 'a3c65c2974270fd093ee8a9bf8ae7d0b'),
(314, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Manikganj', 'Daulatpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '110', '5f93f983524def3dca464469d2cf9f3e'),
(315, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Manikganj', 'Ghior', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '111', '698d51a19d8a121ce581499d7b701668'),
(316, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Manikganj', 'Harirampur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '112', '7f6ffaa6bb0b408017b62254211691b5'),
(317, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Manikganj', 'Manikgonj Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '113', '73278a4a86960eeb576a8fd4c9ec6997'),
(318, 'Joynov Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Manikganj', 'Saturia', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '114', '5fd0b37cd7dbbb00f97ba6ce92bf5add'),
(319, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Manikganj', 'Shivalaya', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '115', '2b44928ae11fb9384c4cf38708677c48'),
(320, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Manikganj', 'Singair', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '116', 'c45147dee729311ef5b5c3003946c48f'),
(321, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Manikganj', 'Singair', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '117', 'eb160de1de89d9058fcb0b968dbbbd68'),
(322, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Gazaria', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '118', '5ef059938ba799aaa845e1c2e8a762bd'),
(323, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Lohajang', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '119', '07e1cd7dca89a1678042477183b7ac3f');
INSERT INTO `ambulance` (`id`, `org_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `ac`, `non_ac`, `icu`, `hdu`, `air`, `frezing`, `image`, `status`, `user_name`, `password`) VALUES
(324, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Munshiganj Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '120', 'da4fb5c6e93e74d3df8527599fa62642'),
(325, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Sirajdikhan', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '121', '4c56ff4ce4aaf9573aa5dff913df997a'),
(326, 'Alif Ambulanc service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Sreenagar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '123', '202cb962ac59075b964b07152d234b70'),
(327, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Sreenagar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '125', '3def184ad8f4755ff269862ea77393dd'),
(328, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Araihazar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '126', '069059b7ef840f0c74a814ec9237b6ec'),
(329, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Bandar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2'),
(330, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Narayanganj Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '128', '76dc611d6ebaafc66cc0879c71b5db5c'),
(331, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Rupganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2'),
(332, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Rupganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '129', 'd1f491a404d6854880943e5c3cd9ca25'),
(333, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Sonargaon', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '130', '9b8619251a19057cff70779273e95aa6'),
(334, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Sonargaon', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '131', '1afa34a7f984eeabdbb0a7d494132ee5'),
(335, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Sonargaon', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '126', '069059b7ef840f0c74a814ec9237b6ec'),
(336, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Narsingdi Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '130', '9b8619251a19057cff70779273e95aa6'),
(337, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Belabo', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '131', '1afa34a7f984eeabdbb0a7d494132ee5'),
(338, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Monohardi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '145', '2b24d495052a8ce66358eb576b8912c8'),
(339, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Palash', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '146', 'a5e00132373a7031000fd987a3c9f87b'),
(340, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Raipura', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '147', '8d5e957f297893487bd98fa830fa6413'),
(341, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Shibpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '150', '7ef605fc8dba5425d6965fbd4c8fbe1f'),
(342, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Rajbari', 'Baliakandi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '151', 'a8f15eda80c50adb0e71943adc8015cf'),
(343, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Rajbari', 'Goalandaghat', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '152', '37a749d808e46495a8da1e5352d03cae'),
(344, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Rajbari', 'Pangsha', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '158', '06409663226af2f3114485aa4e0a23b4'),
(345, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Rajbari', 'Rajbari Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '159', '140f6969d5213fd0ece03148e62e461e'),
(346, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Rajbari', 'Kalukhali', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '159', '140f6969d5213fd0ece03148e62e461e'),
(347, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Bhedarganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '160', 'b73ce398c39f506af761d2277d853a92'),
(348, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Damudya', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '161', 'bd4c9ab730f5513206b999ec0d90d1fb'),
(349, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Gosairhat', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '161', 'bd4c9ab730f5513206b999ec0d90d1fb'),
(350, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Naria', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '162', '82aa4b0af34c2313a562076992e50aa3'),
(351, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shariatpur Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '163', '0777d5c17d4066b82ab86dff8a46af6f'),
(352, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Zajira', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '168', '006f52e9102a8d3be2fe5614f42ba989'),
(353, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shariatpur Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '170', '149e9677a5989fd342ae44213df68868'),
(354, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Zajira', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '171', 'a4a042cf4fd6bfb47701cbc8a1653ada'),
(355, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shakhipur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '172', '1ff8a7b5dc7a7d1f0ed65aaa29c04b1e'),
(356, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shakhipur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '176', '38af86134b65d0f10fe33d30dd76442e'),
(357, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Gopalpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '170', '149e9677a5989fd342ae44213df68868'),
(358, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Basail', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '180', '045117b0e0a11a242b9765e79cbf113f'),
(359, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Bhuapur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '182', '4c5bde74a8f110656874902f07378009'),
(360, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Bhuapur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '183', 'cedebb6e872f539bef8c3f919874e9d7'),
(361, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Delduar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '186', '9872ed9fc22fc182d371c3e9ed316094'),
(362, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Delduar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '189', 'a2557a7b2e94197ff767970b67041697'),
(363, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Ghatail', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '190', 'cfecdb276f634854f3ef915e2e980c31'),
(364, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Kalihati', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '191', '0aa1883c6411f7873cb83dacb17b0afc'),
(365, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Madhupur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '192', '58a2fc6ed39fd083f55d4182bf88826d'),
(366, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Tangail', 'Mirzapur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '193', 'bd686fd640be98efaae0091fa301e613'),
(367, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Mirzapur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '194', 'a597e50502f5ff68e3e25b9114205d4a'),
(368, 'Jahid Ambulance Service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Nagarpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '195', '0336dcbab05b9d5ad24f4333c7658a0e'),
(369, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Tangail', 'Sakhipur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '196', '084b6fbb10729ed4da8c3d3f5a3ae7c9'),
(370, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Dhanbari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', '197', '85d8ce590ad8981ca2c8286f79f59954'),
(371, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Tangail Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', '198', '0e65972dce68dad4d52d063967f0a705'),
(372, 'Ikram Ambulance Service', 'sbmc@info.com', '01654375284', 'Rd#11 H#2 Bagerhat Sadar', 'Khulna', 'Bagerhat', 'Bagerhat Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aaa1', '81dc9bdb52d04dc20036dbd8313ed055'),
(373, 'Akram Ambulance Service', 'mansurul@gmail.com', '01866649721', 'Rd#11 H#2 Morrelganj, Bagerhat', 'Khulna', 'Bagerhat', 'Morrelganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'aaa2', '81dc9bdb52d04dc20036dbd8313ed055'),
(374, 'Hasib Ambulance Service', 'hasib@gmail.com', '01866649721', 'Rd#11 H#2 Rampal, Bagerhat', 'Khulna', 'Bagerhat', 'Rampal', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aaa3', '81dc9bdb52d04dc20036dbd8313ed055'),
(375, 'Hasan Ambulance Service', 'hasan@gmail.com', '01812432453', 'Rd#11 H#2 Sarankhola, Bagerhat', 'Khulna', 'Bagerhat', 'Sarankhola', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'aaa4', '81dc9bdb52d04dc20036dbd8313ed055'),
(376, 'Rakib Ambulance Service', 'rakib@gmail.com', '01654375284', 'Rd#11 H#2 Sarankhola, Bagerhat', 'Khulna', 'Bagerhat', 'Sarankhola', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aaa6', '81dc9bdb52d04dc20036dbd8313ed055'),
(377, 'Rony Ambulance Service', 'rony@gmail.com', '01866649721', 'Kawkhali Rd-3', 'Khulna', 'Jessore', 'Abhaynagar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss1', '81dc9bdb52d04dc20036dbd8313ed055'),
(378, 'Ikram Ambulance Service', 'sbmc@info.com', '01866649721', 'Rd#11 H#2 Atgharia', 'Khulna', 'Jessore', 'Keshabpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss2', '81dc9bdb52d04dc20036dbd8313ed055'),
(379, 'Akram Ambulance Service', 'sbmc@info.com', '01866649721', 'Bamna, hospital Rd-3', 'Khulna', 'Jessore', 'Jashore Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss3', '81dc9bdb52d04dc20036dbd8313ed055'),
(380, 'Hasib Ambulance Service', 'hasib@gmail.com', '01654375284', 'Rd#11 H#2 Sharsha, Jessore', 'Khulna', 'Jessore', 'Sharsha', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss4', '81dc9bdb52d04dc20036dbd8313ed055'),
(381, 'Mitu Ambulance Service', 'mitu@info.com', '01654375284', 'Rd#11 H#2 Harinakunda', 'Khulna', 'Jhenaidah', 'Harinakunda', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss5', '81dc9bdb52d04dc20036dbd8313ed055'),
(382, 'Nitu Ambulance Service', 'nitu@gmail.com', '01654375284', 'Rd#11 H#2 Jhenaidah Sadar', 'Khulna', 'Jhenaidah', 'Jhenaidah Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss6', '81dc9bdb52d04dc20036dbd8313ed055'),
(383, 'Shaikupa  Ambulance Service', 'Shaikupa@gmail.com', '01654375284', 'Rd#15 H#4 Shailkupa', 'Khulna', 'Jhenaidah', 'Shailkupa', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss7', '1bb63cc47675612d932982727648691a'),
(384, 'Batiaghata Ambulance Service', 'batiaghata@gmail.com', '01866649721', 'Batiaghata Rd-3', 'Khulna', 'Khulna', 'Batiaghata', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss10', '81dc9bdb52d04dc20036dbd8313ed055'),
(385, 'Decope Ambulance Service', 'decope@gmail.com', '01812432453', 'Sadar Road-12,H#15', 'Khulna', 'Khulna', 'Dacope', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss11', '81dc9bdb52d04dc20036dbd8313ed055'),
(386, 'Ikram Ambulance Service', 'ikram@info.com', '01812432453', 'Rd#11 H#2 Atgharia', 'Khulna', 'Khulna', 'Dumuria', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss12', '25f652c681d105a537a7ccd8f635af48'),
(387, 'Hasib Ambulance Service', 'hasib@gmail.com', '01866649721', 'Bamna, hospital Rd', 'Khulna', 'Khulna', 'Terokhada', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss13', '25f652c681d105a537a7ccd8f635af48'),
(388, 'Akram Ambulance Service', 'akram@gmail.com', '01866649721', 'Rd#13 H#2 Terokhada', 'Khulna', 'Khulna', 'Terokhada', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss14', '25f652c681d105a537a7ccd8f635af48'),
(389, 'Hasan Ambulance Service', 'hasan@gmail.com', '01654375284', 'Rd#11 H#2 Daulatpur thana', 'Khulna', 'Khulna', 'Daulatpur Thana', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss16', '25f652c681d105a537a7ccd8f635af48'),
(390, 'Rakib Ambulance Service', 'rakib@gmail.com', '01654375284', 'Bheramara Rd#3', 'Khulna', 'Kushtia', 'Bheramara', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss17', '25f652c681d105a537a7ccd8f635af48'),
(391, 'Rony Ambulance Service', 'rony@gmail.com', '01866649721', 'Rd#11 H#2 Daulatpur', 'Khulna', 'Kushtia', 'Daulatpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss18', '25f652c681d105a537a7ccd8f635af48'),
(392, 'Ritu Ambulance Service', 'ritu@gmail.com', '01866649721', 'Rd#11 H#2 Khoksa', 'Khulna', 'Kushtia', 'Khoksa', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss19', '25f652c681d105a537a7ccd8f635af48'),
(393, 'Mitu Ambulance Service', 'mitu@info.com', '01654375284', 'Kumarkhali Rd#3', 'Khulna', 'Kushtia', 'Kumarkhali', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss20', '25f652c681d105a537a7ccd8f635af48'),
(394, 'Nitu Ambulance Service', 'nitu@gmail.com', '01654375284', 'Sadar Road-12,H#15', 'Khulna', 'Kushtia', 'Kushtia Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'sss21', '25f652c681d105a537a7ccd8f635af48'),
(395, 'Aziz Ambulance Service', 'aziz@info.com', '01866649721', 'Rd#11 H#2 baksiganj', 'Mymensingh', 'Jamalpur', 'Baksiganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'sss23', '25f652c681d105a537a7ccd8f635af48'),
(396, 'Jahid Ambulance Service', 'jahid@gmail.com', '01812432453', 'Rd#11 H#2 Dewanganj', 'Mymensingh', 'Jamalpur', 'Dewanganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'ss24', '25f652c681d105a537a7ccd8f635af48'),
(397, 'Islam Ambulance Service', 'islam@gmail.com', '01812432453', 'Islampur Road-12,H-3', 'Mymensingh', 'Jamalpur', 'Islampur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'aa1', '81dc9bdb52d04dc20036dbd8313ed055'),
(398, 'Jamal Ambulance Service', 'jamal@gmail.com', '01654375284', 'Sadar Road-12,H#15, Jamalpur', 'Mymensingh', 'Jamalpur', 'Jamalpur Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aa2', '25f652c681d105a537a7ccd8f635af48'),
(399, 'Jahid Ambulance Service', 'jahid@gmail.com', '01812432453', 'Rd#12 H#6 Sarishabari', 'Mymensingh', 'Jamalpur', 'Sarishabari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'aa4', '25f652c681d105a537a7ccd8f635af48'),
(400, 'Hasan Ambulance Service', 'hasan@gmail.com', '01654375284', 'Gauripur Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Gauripur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aa3', '25f652c681d105a537a7ccd8f635af48'),
(401, 'Halim Ambulance Service', 'halim@gmail.com', '01654375284', 'Haluaghat Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Haluaghat', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'aa5', '25f652c681d105a537a7ccd8f635af48'),
(402, 'Ikram Ambulance Service', 'ikram@info.com', '01654375284', 'Islampur Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Ishwarganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aa6', '25f652c681d105a537a7ccd8f635af48'),
(403, 'Akram Ambulance Service', 'akram@gmail.com', '01866649721', 'Sadar Road-12,H#15, Mymensingh', 'Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'aa8', '25f652c681d105a537a7ccd8f635af48'),
(404, 'Hasib Ambulance Service', 'hasan@gmail.com', '01866649721', 'Muktagachha Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Muktagachha', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'aa10', '25f652c681d105a537a7ccd8f635af48'),
(405, 'Hasan Ambulance Service', 'hasib@gmail.com', '01866649721', 'Rd#11 H#2 Atpara', 'Mymensingh', 'Netrakona', 'Atpara', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq1', '25f652c681d105a537a7ccd8f635af48'),
(406, 'Rakib Ambulance Service', 'rakib@gmail.com', '01822276543', 'Rd#11 H#2 Barhatta', 'Mymensingh', 'Netrakona', 'Barhatta', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq2', '25f652c681d105a537a7ccd8f635af48'),
(407, 'Santa Ambulance Service', 'santa@gmail.com', '01866649721', 'Rd#11 H#2 Durgapur', 'Mymensingh', 'Netrakona', 'Durgapur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq3', '25f652c681d105a537a7ccd8f635af48'),
(408, 'Kalam Ambulance Service', 'kalam@gmail.com', '01812432453', 'Kawkhali Rd-3', 'Mymensingh', 'Netrakona', 'Kalmakanda', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq4', '25f652c681d105a537a7ccd8f635af48'),
(409, 'Mehedi Ambulance Service', 'mehedi@gmail.com', '01812432453', 'Sadar Road-12,H#15, Netrokona', 'Mymensingh', 'Netrakona', 'Netrokona Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq5', 'b59c67bf196a4758191e42f76670ceba'),
(410, 'Jamal Ambulance Service', 'jamal@gmail.com', '01557645320', 'Jhenaigati Rd#3', 'Mymensingh', 'Sherpur', 'Jhenaigati', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq7', '25f652c681d105a537a7ccd8f635af48'),
(411, 'Mitu Ambulance Service', 'mitu@info.com', '01812432453', 'Rd#11 H#2 ,Nakla ,Sherpur', 'Mymensingh', 'Sherpur', 'Nakla', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq6', '25f652c681d105a537a7ccd8f635af48'),
(412, 'Nitu Ambulance Service', 'nitu@gmail.com', '01654375284', 'Islampur Road-12,H-3', 'Mymensingh', 'Sherpur', 'Nalitabari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq8', '25f652c681d105a537a7ccd8f635af48'),
(413, 'Rakib Ambulance Service', 'sandani@gmail.com', '01654375284', 'Sadar Road-12,H#15', 'Mymensingh', 'Sherpur', 'Sherpur Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq10', '25f652c681d105a537a7ccd8f635af48'),
(414, 'Salam Ambulance Service', 'salam@info.com', '01557645320', 'Sreebardi Rd#11 h#1', 'Mymensingh', 'Sherpur', 'Sreebardi', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq11', '25f652c681d105a537a7ccd8f635af48'),
(415, 'Sharif Ambulance Service', 'sharif@gmail.com', '01812432453', 'Rd#11 H#2 Adamdighi,Bogra', 'Rajshahi', 'Bogra', 'Adamdighi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq12', '25f652c681d105a537a7ccd8f635af48'),
(416, 'Belal Ambulance Service', 'belal@gmail.com', '01812432453', 'Rd#11 H#2 Bogura Sadar', 'Rajshahi', 'Bogra', 'Bogura Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq13', '25f652c681d105a537a7ccd8f635af48'),
(417, 'Ghazi Ambulance Service', 'ghazi@gmail.com', '01557645320', 'Rd#11 H#2 ,Gabtali, Bogra', 'Rajshahi', 'Bogra', 'Gabtali', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq14', '25f652c681d105a537a7ccd8f635af48'),
(418, 'kadir Ambulance Service', 'kadir@gmail.com', '01654375284', 'Rd#11 H#2 ,Kahaloo, Bogra', 'Rajshahi', 'Bogra', 'Kahaloo', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'qqq15', '25f652c681d105a537a7ccd8f635af48'),
(419, 'Nandini Ambulance Service', 'nandini@gmail.com', '01812432453', 'Rd#11 H#2 Nandigram,Bogra', 'Rajshahi', 'Bogra', 'Nandigram', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'qqq17', '25f652c681d105a537a7ccd8f635af48'),
(420, 'Bablu Ambulance Service', 'bablu@info.com', '01812432453', 'Rd#11 H#2 Bholahat, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Bholahat', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www1', '25f652c681d105a537a7ccd8f635af48'),
(421, 'Gopal Ambulance Service', 'gopal@info.com', '01654375284', 'Rd#11 H#2 Gomastapur, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Gomastapur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www2', '25f652c681d105a537a7ccd8f635af48'),
(422, 'Nadim Ambulance Service', 'nadim@gmail.com', '01654375284', 'Rd#11 H#2 NaChole,Bogra', 'Rajshahi', 'Chapainawabganj', 'Nachole', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www3', '25f652c681d105a537a7ccd8f635af48'),
(423, 'Najim Ambulance Service', 'najim@gmail.com', '01866649721', 'Rd#11 H#2 Nawabganj sadar, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Nawabganj Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www4', '25f652c681d105a537a7ccd8f635af48'),
(424, 'Shanjida Ambulance Service', 'sanjida@info.com', '01866649721', 'Rd#11 H#2 Shibganj, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Shibganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www5', '25f652c681d105a537a7ccd8f635af48'),
(425, 'Arif Ambulance Service', 'arif@info.com', '01866649721', 'Rd#11 H#2 Akkelpur, Joypurhat', 'Rajshahi', 'Joypurhat', 'Akkelpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www6', '25f652c681d105a537a7ccd8f635af48'),
(426, 'Jonayed Ambulance Service', 'jonayed@gmail.com', '01866649721', 'Rd#11 H#2 Joypurhar sadar, Joypurhat', 'Rajshahi', 'Joypurhat', 'Joypurhat Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www7', '25f652c681d105a537a7ccd8f635af48'),
(427, 'Kobir Ambulance Service', 'kobir@gmail.com', '01654375284', 'Rd#11 H#2 Kalai, Joypurhat', 'Rajshahi', 'Joypurhat', 'Kalai', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www9', '25f652c681d105a537a7ccd8f635af48'),
(428, 'KhaherAmbulance Service', 'khaher@gmail.com', '01654375284', 'Rd#11 H#2 Khetlal, Joypurhat', 'Rajshahi', 'Joypurhat', 'Khetlal', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www10', '25f652c681d105a537a7ccd8f635af48'),
(429, 'Payel Ambulance Service', 'payel@info.com', '01557645320', 'Rd#11 H#2 Panchbibi, Joypurhat', 'Rajshahi', 'Joypurhat', 'Panchbibi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www11', '25f652c681d105a537a7ccd8f635af48'),
(430, 'Atik Ambulance Service', 'atik@info.com', '01866649721', 'Rd#11 H#2 Atrai, Naogaon', 'Rajshahi', 'Naogaon', 'Atrai', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www13', '25f652c681d105a537a7ccd8f635af48'),
(431, 'Nabi Ambulance Service', 'nabi@gmail.com', '01866649721', 'Rd#11 H#2 Naogaon sadar', 'Rajshahi', 'Naogaon', 'Naogaon Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www12', '25f652c681d105a537a7ccd8f635af48'),
(432, 'Akram Ambulance Service', 'akram@gmail.com', '01654375284', 'Rd#11 H#2 Niamatpur, Naogaon', 'Rajshahi', 'Naogaon', 'Niamatpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www15', '25f652c681d105a537a7ccd8f635af48'),
(433, 'Halim Ambulance Service', 'halim@gmail.com', '01866649721', 'Rd#11 H#2 Atgharia,Pabna', 'Rajshahi', 'Pabna', 'Atgharia', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'www16', '25f652c681d105a537a7ccd8f635af48'),
(434, 'Ekbal Ambulance Service', 'ekbal@gmail.com', '01812432453', 'Rd#11 H#2 Faridpur,Pabna', 'Rajshahi', 'Pabna', 'Faridpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'www17', '25f652c681d105a537a7ccd8f635af48'),
(435, 'Ismail Ambulance Service', 'ismail.@gmail.com', '01557645320', 'Rd#11 H#2 Ishwardi', 'Rajshahi', 'Pabna', 'Ishwardi', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee1', '25f652c681d105a537a7ccd8f635af48'),
(436, 'Ikram Ambulance Service', 'ikram@info.com', '01812432453', 'Rd#11 H#2 Pabna Sadar,Pabna', 'Rajshahi', 'Pabna', 'Pabna Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee2', '25f652c681d105a537a7ccd8f635af48'),
(437, 'Sujan Ambulance Service', 'sujan@gmail.com', '01654375284', 'Rd#11 H#2 Sujanagar', 'Rajshahi', 'Pabna', 'Sujanagar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee3', '25f652c681d105a537a7ccd8f635af48'),
(438, 'Mostafa Ambulance Service', 'mostafa@gmail.com', '01812432453', 'Rd#11 H#2 Birampur', 'Rangpur', 'Dinajpur', 'Birampur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee4', '25f652c681d105a537a7ccd8f635af48'),
(439, 'Ritu Ambulance Service', 'ritu@gmail.com', '01866649721', 'Rd#11 H#2 Hakimpur,Dinajpur', 'Rangpur', 'Dinajpur', 'Hakimpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee5', '25f652c681d105a537a7ccd8f635af48'),
(440, 'Monir Ambulance Service', 'monir@gmail.com', '01557645320', 'Rd#11 H#2 dinajpur Sadar', 'Rangpur', 'Dinajpur', 'Dinajpur Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee6', '25f652c681d105a537a7ccd8f635af48'),
(441, 'Hasib Ambulance Service', 'hasan@gmail.com', '01812432453', 'Rd#11 H#2 Nawabganj,Dinajpur', 'Rangpur', 'Dinajpur', 'Nawabganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee7', '25f652c681d105a537a7ccd8f635af48'),
(442, 'Atik Ambulance Service', 'atik@info.com', '01654375284', 'Rd#11 H#2 Parbatipur,Dinajpur', 'Rangpur', 'Dinajpur', 'Parbatipur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee8', '25f652c681d105a537a7ccd8f635af48'),
(443, 'Nandini Ambulance Service', 'nandini@gmail.com', '01654375284', 'Rd#11 H#2 Parbatipur,Dinajpur', 'Rangpur', 'Dinajpur', 'Parbatipur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee9', '25f652c681d105a537a7ccd8f635af48'),
(444, 'Nabi Ambulance Service', 'nabi@gmail.com', '01812432453', 'Rd#11 H#2 Phulchhari, Gaibandha', 'Rangpur', 'Gaibandha', 'Phulchhari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee10', '25f652c681d105a537a7ccd8f635af48'),
(445, 'kadir Ambulance Service', 'kadir@gmail.com', '01866649721', 'Rd#11 H#2  Gaibandha Sadar', 'Rangpur', 'Gaibandha', 'Gaibandha Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee11', '25f652c681d105a537a7ccd8f635af48'),
(446, 'Kalam Ambulance Service', 'kalam@gmail.com', '01812432453', 'Rd#11 H#2 Sughatta, Gaibandha', 'Rangpur', 'Gaibandha', 'Sughatta', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee12', '25f652c681d105a537a7ccd8f635af48'),
(447, 'Khaher Ambulance Service', 'khaher@gmail.com', '01866649721', 'Rd#11 H#2 Sundarganj, Gaibandha', 'Rangpur', 'Gaibandha', 'Sundarganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee13', '25f652c681d105a537a7ccd8f635af48'),
(448, 'Kobir Ambulance Service', 'kobir@gmail.com', '01866649721', 'Rd#11 H#2 Bhurungamari, Kurigram', 'Rangpur', 'Kurigram', 'Bhurungamari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee14', '25f652c681d105a537a7ccd8f635af48'),
(449, 'Islam Ambulance Service', 'islam@gmail.com', '01866649721', 'Rd#11 H#2  Phulbari, Kurigram', 'Rangpur', 'Kurigram', 'Phulbari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee15', '25f652c681d105a537a7ccd8f635af48'),
(450, 'Ismail Ambulance Service', 'ismail.@gmail.com', '01654375284', 'Rd#11 H#2 Sadar, Kurigram', 'Rangpur', 'Kurigram', 'Kurigram Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee17', '25f652c681d105a537a7ccd8f635af48'),
(451, 'Rakib Ambulance Service', 'rakib@gmail.com', '01866649721', 'Rd#11 H#2 Nageshwari, Kurigram', 'Rangpur', 'Kurigram', 'Nageshwari', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee18', '25f652c681d105a537a7ccd8f635af48'),
(452, 'Ritu Ambulance Service', 'ritu@gmail.com', '01866649721', 'Rd#11 H#2 Aditmari, Lalmonirhat', 'Rangpur', 'Lalmonirhat', 'Aditmari', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee19', '25f652c681d105a537a7ccd8f635af48'),
(453, 'Rony Ambulance Service', 'rony@gmail.com', '01866649721', 'Rd#11 H#2 Lalmonirhat Sadar', 'Rangpur', 'Lalmonirhat', 'Lalmonirhat Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee20', '25f652c681d105a537a7ccd8f635af48'),
(454, 'Tomal Ambulance Service', 'tomal@gmail.com', '01866649721', 'Rd#11 H#2 Patgram, Lalmonirhat', 'Rangpur', 'Lalmonirhat', 'Patgram', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee21', '25f652c681d105a537a7ccd8f635af48'),
(455, 'Onupam Ambulance Service', 'onupam@gmai.com', '01654375284', 'Rd#11 H#2 Dimla, Nilphamari', 'Rangpur', 'Nilphamari', 'Dimla', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee22', '25f652c681d105a537a7ccd8f635af48'),
(456, 'Salam Ambulance Service', 'salam@info.com', '01866649721', 'Rd#11 H#2 Nilphamari Sadar', 'Rangpur', 'Nilphamari', 'Nilphamari Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'eee23', '25f652c681d105a537a7ccd8f635af48'),
(457, 'Santa Ambulance Service', 'santa@gmail.com', '01654375284', 'Rd#11 H#2 Saidpur, Nilphamari', 'Rangpur', 'Nilphamari', 'Saidpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee24', '25f652c681d105a537a7ccd8f635af48'),
(458, 'Shaikupa  Ambulance Service', 'Shaikupa@gmail.com', '01866649721', 'Rd#11 H#2 AJMAIRIGANJ,Habiganj', 'Sylhet', 'Habiganj', 'Ajmiriganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr1', '25f652c681d105a537a7ccd8f635af48'),
(459, 'Sharif Ambulance Service', 'sharif@gmail.com', '01654375284', 'Rd#11 H#2 Bahubal ,Habiganj', 'Sylhet', 'Habiganj', 'Bahubal', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rrr2', '25f652c681d105a537a7ccd8f635af48'),
(460, 'Shanjida Ambulance Service', 'shanjida@gmail.com', '01866649721', 'Rd#11 H#2,Habiganj Sadar', 'Sylhet', 'Habiganj', 'Habiganj Sadar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr3', '25f652c681d105a537a7ccd8f635af48'),
(461, 'Dilipkumar Ambulance Service', 'dilipkumar@gmail.com', '01866649721', 'Rd#11 H#2 Madhabpur,Habiganj', 'Sylhet', 'Habiganj', 'Madhabpur', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rrr4', '25f652c681d105a537a7ccd8f635af48'),
(462, 'Fahim Ambulance Service', 'fahim@info.com', '01866649721', 'Rd#11 H#2 Nabiganj,Habiganj', 'Sylhet', 'Habiganj', 'Nabiganj', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr5', '25f652c681d105a537a7ccd8f635af48'),
(463, 'Ghazi Ambulance Service', 'ghazi@gmail.com', '01812432453', 'Rd#11 H#2 Barlekha, Moulvibazar', 'Sylhet', 'Moulvibazar', 'Barlekha', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'eee6', '25f652c681d105a537a7ccd8f635af48'),
(464, 'Gopal Ambulance Service', 'gopal@info.com', '01812432453', 'Rd#11 H#2 Kulaura, Moulvibazar', 'Sylhet', 'Moulvibazar', 'Kulaura', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr7', '25f652c681d105a537a7ccd8f635af48'),
(465, 'Hasib Ambulance Service', 'hasan@gmail.com', '01866649721', 'Rd#11 H#2  Moulvibazar Sadar', 'Sylhet', 'Moulvibazar', 'Moulvibazar Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rrr8', '25f652c681d105a537a7ccd8f635af48'),
(466, 'Hasan Ambulance Service', 'hasan@gmail.com', '01654375284', 'Rd#11 H#2 Bishwamvarpur, Sunamganj', 'Sylhet', 'Sunamganj', 'Bishwamvarpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr9', '25f652c681d105a537a7ccd8f635af48'),
(467, 'Halim Ambulance Service', 'halim@gmail.com', '01654375284', 'Rd#11 H#2 Chhatak, Sunamganj', 'Sylhet', 'Sunamganj', 'Chhatak', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rrr10', '25f652c681d105a537a7ccd8f635af48'),
(468, 'Jahid Ambulance Service', 'jahid@gmail.com', '01866649721', 'Rd#11 H#2 Dharamapasha, Sunamganj', 'Sylhet', 'Sunamganj', 'Dharamapasha', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr11', '25f652c681d105a537a7ccd8f635af48'),
(469, 'Jamal Ambulance Service', 'jamal@gmail.com', '01654375284', 'Rd#11 H#2  Sunamganj Sadar', 'Sylhet', 'Sunamganj', 'Sunamganj Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'rrr12', '25f652c681d105a537a7ccd8f635af48'),
(470, 'Taher Ambulance Service', 'taher@gmail.com', '01654375284', 'Rd#11 H#2 Tahirpur, Sunamganj', 'Sylhet', 'Sunamganj', 'Tahirpur', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'rrr15', '25f652c681d105a537a7ccd8f635af48'),
(471, 'Lamiya Ambulance Service', 'lamiya@gmail.com', '01866649721', 'Rd#11 H#2 Beanibajar, Sylhet', 'Sylhet', 'Sylhet', 'Beanibazar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'iii1', '25f652c681d105a537a7ccd8f635af48'),
(472, 'Tarek Ambulance Service', 'tarek@info.com', '01866649721', 'Rd#11 H#2 Bishwanath, Sylhet', 'Sylhet', 'Sylhet', 'Bishwanath', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'iii2', '25f652c681d105a537a7ccd8f635af48'),
(473, 'Tanvir Ambulance Service', 'tanvir@gmailcom', '01866649721', 'Rd#11 H#2 Golapganj, Sylhet', 'Sylhet', 'Sylhet', 'Golapganj', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'iii3', '25f652c681d105a537a7ccd8f635af48'),
(474, 'Numan Ambulance Service', 'numan@gmail.com', '01866649721', 'Rd#11 H#2 Osmani Nagar, Sylhet', 'Sylhet', 'Sylhet', 'Osmani Nagar', 2, 4, 1, 0, 0, 2, '', ' It is highly recommended to call us directly.', 'iii4', '25f652c681d105a537a7ccd8f635af48'),
(475, 'Asik Ambulance Service', 'asik@info.com', '01866649721', 'Rd#11 H#2 Sylhet Sadar', 'Sylhet', 'Sylhet', 'Sylhet Sadar', 2, 4, 1, 0, 0, 2, '', 'Typically replies within 15 minutes.', 'iii5', '25f652c681d105a537a7ccd8f635af48');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_booking`
--

CREATE TABLE `ambulance_booking` (
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
-- Dumping data for table `ambulance_booking`
--

INSERT INTO `ambulance_booking` (`id`, `ambulance_type`, `departing_date`, `source_address`, `destination_address`, `customer_name`, `contact_number`, `ambulance_id`) VALUES
(7, 'Non AC', '12/09/2022', 'Mirpur', 'Uttara', 'Jahid Hasan', '01733632536', 115),
(8, 'Air', '11/10/2022', 'Bonani', 'Cumill, Kotbari', 'Kamruzman Maruf', '019834784231', 115);

-- --------------------------------------------------------

--
-- Table structure for table `blood_application`
--

CREATE TABLE `blood_application` (
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
-- Dumping data for table `blood_application`
--

INSERT INTO `blood_application` (`id`, `applicant_name`, `contact_number`, `blood_group`, `requird_unit`, `date_of_donation`, `hospital_name`, `hospital_address`, `bank_id`) VALUES
(1, 'Aziz', '01923823', 'A+', 2, 'friday', 'Prime', 'Noakhali', 1),
(2, 'Aziz', '01923823', 'A+', 2, 'friday', 'Prime', 'Noakhali', 5),
(5, 'Abdul Aziz', 'Maruf', 'A+', 2, '22/33/23', 'xyz', 'Dhanmondi', 5),
(6, 'Abdul Aziz', '01842605509', 'A+', 3, '21/09', 'Prime Hospital', 'Hospital Road ,Majide', 1),
(7, 'Abdul Aziz', '01842605509', 'A+', 2, '11/02', 'Prime Hospital', 'Dhanmondi', 2);

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
  `status` varchar(255) NOT NULL DEFAULT 'Typically replies within 10 minutes.',
  `image` varchar(255) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `bank_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `aviable_a_positive`, `aviable_a_negative`, `aviable_b_positive`, `aviable_b_negative`, `aviable_ab_positive`, `aviable_ab_negative`, `aviable_o_positive`, `aviable_o_negative`, `status`, `image`, `user_name`, `password`) VALUES
(1, 'Noakhali Blood Bank', 'abdulaziz@gmail.com', '8129381932', 'New P. O Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 2, 0, 3, 0, 1, 4, 0, 0, 'It is highly recommended to call us directly.', '', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb'),
(2, 'BD Red Crescent Blood Bank', 'bdredcresent.bloodbank@email.org', '+88029139940', 'Aurongzeb Road, Mohammadpur', 'Dhaka', 'Dhaka', 'Dhaka City', 4, 2, 1, 2, 0, 1, 3, 2, 'It is highly recommended to call us directly.', 'uploads/bbank/logo/user_id_2_1665250157.png', 'redcresent123', 'dcdf32bbb38384b7d1db5c3fe612ce0f'),
(3, 'Quantum Blood Bank', 'info@quantummethod.org.bd', '+8801714010869', 'Shantinagar', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 1, 1, 0, 1, 1, 0, 1, 'Typically replies within 15 minutes.', '', 'quantum123', '827a971acba790e3ddae2216b8f3656e'),
(5, 'B_Bank', 'ba@a.com', '099738643846', 'adadss', 'Khulna', 'Kushtia', 'Kumarkhali', 2, 0, 2, 0, 3, 1, 0, 1, '', '', 'bbank', 'ff0b398632b6081fafaaedebb5a82f93'),
(6, 'SBMC Blood Bank', 'sbmc@info.com', '+8801928482429', 'amtali Rd- 7', 'Barisal', 'Barguna', 'Amtali', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sbmc1', '7ecb0089d1f7d4a6505768e3dd918707'),
(7, 'Barisal Blood Doners Club', 'bbdc@gmail.com', '01812432453', 'Bamna, hospital Rd', 'Barisal', 'Barguna', 'Bamna', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bbdc1', '8ff0e3c17f4009119308b2394f9d98fb'),
(8, 'Sandhani, Medical College Unit', 'smcu@info.com', '01654375284', 'kaunia bazar, Road, 8730', 'Barisal', 'Barguna', 'Barguna Sadar', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'smcu1', 'c3cac9afbdadaf5cc33e543175988de2'),
(9, 'Angikar Blood Bank', 'abds@gmail.con', '01523537986', 'Bogar Bari Road,Gonopara', 'Barisal', 'Barguna', 'Betagi', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'abds1', 'e5734cdb75b368fb6c5d21f6e664c848'),
(10, 'Dutch-Bangla Bank Ltd. Agent Banking Patharghata.', 'dbblabp@gmail.com', '01754687325', '2XVC+CQQ, Patharghata', 'Barisal', 'Barguna', 'Patharghata', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dbblabp1', '97b202dba750d6b3a3049376dd94fded'),
(11, 'Tatali Blood Donation Group', 'tbdg@info.com', '01921436576', 'X3PQ+983, Taltali', 'Barisal', 'Barguna', 'Taltali', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tbdg1', 'c7b23464bac105cf03e1082acc8c3a47'),
(12, 'Agailjhara Blood Doners Bank', 'agailjharablood@gmail.som', '01557645320', 'X594+385,Agailjhara', 'Barisal', 'Barisal', 'Agailjhara', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'agailjharablood1', 'dc3ea3c7990cfa23c89c91120a19d592'),
(13, 'sandani Donor Club', 'sandanidonorclib@gmail.com', '01886509786', 'P964+R27,barisal babuganj', 'Barisal', 'Barisal', 'Babuganj', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sandani1', '5afcb50cfb429cebfde62f63b3a99c1b'),
(14, 'Bakerganj Barisal Blood Donors Club', 'bakerganjbdc@info.com', '01775634532', 'Bakerganj, Rd 2', 'Barisal', 'Barisal', 'Bakerganj', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bakerganj1', '78dc1e5dc53cabbdc4c3d6f37282818d'),
(15, 'Blood Donors Club Banaripara, Barisal', 'bdcb@gmail.com', '01777546392', 'P924+V5J,Banaripara, Barisal', 'Barisal', 'Barisal', 'Banaripara', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bdcb4', '15be3d2592d8cc68fc5d65de62d62ded'),
(16, 'Gaurinadi Blood  Bank Club', 'gaurinadi@info.com', '01664576103', 'X6FC+3X,gaurinadi', 'Barisal', 'Barisal', 'Gaurnadi', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'gaurinadi1', '18ef37eafdccbb941f0d7f892f3409da'),
(17, 'Praner tane Blood Donate', 'pranertane@gmail.com', '01866649721', 'Hizla Rd 5', 'Barisal', 'Barisal', 'Hizla', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'pranertane1', '0bfbe8a224c6faffc213daf256da4982'),
(18, 'Barisal Blood Doners Bank', 'bbdb@info.com', '01811123456', 'Barishal Sadar Rd, 8', 'Barisal', 'Barisal', 'Barishal Sadar', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bbdb1', '619c5ba191d95ef99f89e1dcd75e036a'),
(19, 'BMBDC Head office', 'bmbdc@gmail.com', '01822276543', 'P924+V5J,Barisal', 'Barisal', 'Barisal', 'Mehendiganj', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bmbdc1', '75419bb3126776fbcd4f61f9c8a17840'),
(20, 'Muladi College Blood Donors', 'mcbd@info.com', '01611156180', 'WC75+6R muladi', 'Barisal', 'Barisal', 'Muladi', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mcbd1', 'ada7bbf680bae44bd1c31e248089a7b2'),
(21, 'Uzirpur Secondary Girls School Blood Donors Club', 'uzirpur@gmail.com', '01777734556', 'R6CV+2X9, Dak Banglow Rd, Uzirpur', 'Barisal', 'Barisal', 'Wazirpur', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'uzirpur1', 'daf8a75aa0651f1e04264ea934ec19ab'),
(22, 'Janata Blood Bank', 'janata@gmail.com', '01765434576', 'MMF4+656, Bhola-Charfashan Highway, Borhanuddin', 'Barisal', 'Bhola', 'Bhola Sadar', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'janata1', '4d92a58f79549287e23f0c9994c8eb5a'),
(23, 'Sonali Blood Bank', 'sonalo@info.com', '01654398778', 'MMF4+656, Bhola-Charfashan Highway, Borhanuddin', 'Barisal', 'Bhola', 'Burhanuddin', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sonali1', 'd65b352d2e04d42d073c466ad5d84216'),
(24, 'Police Blood Bank', 'police@gmail.com', '01844673209', 'MMF4+656, Bhola-Charfasson', 'Barisal', 'Bhola', 'Char Fasson', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'police1', '5cfee4bf96bc45c81de6a0b385dbdf5f'),
(25, 'Agrani Blood Bank', 'abb@info.com', '01345678765', 'HPXW+GH9, Daulatkhan', 'Barisal', 'Bhola', 'Daulatkhan', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'abb1', 'ba0643e6709bf48fad2c7f4d90469b8e'),
(26, 'Rupali Blood Bank', 'rupali@gmail.com', '01354769878', '8PRM+3WQ, Burhanuddin - Lalmohon Rd, lalmohan', 'Barisal', 'Bhola', 'Lalmohan', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rupali1', 'd6ba371495010d6fac2c34ad83c16663'),
(27, 'Sonali Blood Bank Limited, Manpura Branch, Bhola.', 'manpura@info.com', '01`454326789', '7X59+H79 Sonali bank, Manpura 8360', 'Barisal', 'Bhola', 'Manpura', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'manpura1', '5187058eec2ff9ab7fd420dee304e805'),
(28, 'Uttara Blood Bank', 'ubb@info.com', '01866649721', 'Tazumuddin, Bhola-8350,', 'Barisal', 'Bhola', 'Tazumuddin', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ubb1', 'd3cfde16d7fe0fefdee19bf5619e1917'),
(29, 'Islami Bload Bank Bangladesh Ltd:', 'ibbbl@gmail.com', '01557645320', 'J5RV+MFQ, Road, Jhalokati', 'Barisal', 'Jhalokati', 'Jhalokati Sadar', 2, 0, 2, 0, 3, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ibbbl1', 'fe902eb4c04fa3fac06eabf5f247df8b'),
(30, 'Kathalia Upazila Blood Bank Complex', 'kubbc@info.com', '01866649721', '932J+R35, Kathalia', 'Barisal', 'Jhalokati', 'Kathalia', 2, 0, 0, 0, 0, 0, 0, 0, 'Typically replies within 10 minutes.', '', 'kubbc1', '40a917850d15bc2abc64b47841126afd'),
(31, 'Angikar blood donors club', 'angikar@info.com', '01567432513', 'Nalchity Rd', 'Barisal', 'Jhalokati', 'Nalchity', 2, 0, 0, 0, 0, 0, 0, 0, 'Typically replies within 10 minutes.', '', 'angikar1', '29b0ebe11b0c2233b631751bfaf9b4b8'),
(32, 'Pubali Blood Bank', 'pbb@info.com', '01543978646', 'H4CR+7GQ, Rajapur Bazar Rd, রাজাপুর', 'Barisal', 'Jhalokati', 'Rajapur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'pbb1', 'd1dc5017c573b6cdb5bc336eff1ed0f4'),
(33, 'SAVE, A Blood Donor Club', 'save@gmail.com', '01822276543', '986W+777, Bauphal Upazila, Patuakhali', 'Barisal', 'Patuakhali', 'Bauphal', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'save1', '1b1b544584e65a8e6e9debfdfddbe358'),
(34, 'Dashmina Upazila Blood Bank', 'dubb@info.com', '01654786534', '7HM7+2R6, Dashmina', 'Barisal', 'Patuakhali', 'Dashmina', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dubb1', '59c7db7bb217a29919e3f6b45d2eddb5'),
(35, 'SBMC Blood Bank', 'sbb@info.com', '01765432342', 'Galachipa Rd,2', 'Barisal', 'Patuakhali', 'Galachipa', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sbb1', 'f2de6416d5ddfa9354070f55af20cb9a'),
(36, 'Islami Blood Foundation Bangladesh Central Office', 'ibfbco@gmail.com', '01654375284', 'Kalapara Rood, Patuakhali', 'Barisal', 'Patuakhali', 'Kalapara', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ibfbco1', '007a1287d0a5a8d9a3e3b3c14893afcf'),
(37, 'Mirzaganj Blood Donation Club', 'mirzaganj@gmail.com', '01645322376', 'Mirzaganj Rd , 7', 'Barisal', 'Patuakhali', 'Mirzaganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mirzaganj1', '811faed46cd2f16e2df663d84bffb16f'),
(38, 'Bangladesh Krishi Blood Bank', 'bkbb@info.com', '01823432546', '9952+58H,Patuakhali sadar', 'Barisal', 'Patuakhali', 'Patuakhali Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bkbb1', '51620e223dde1bbf098c077be0165dad'),
(39, 'Rangabali Blood bank', 'rangabali@gmail.com', '01843652987', 'Rangabali, hospital Rd', 'Barisal', 'Patuakhali', 'Rangabali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rangabali1', '50b64ff347e46fe580fc560799bba81c'),
(40, 'Dumki Blood Bank', 'dumki@info.com', '01854768953', 'Dumki Rd-2', 'Barisal', 'Patuakhali', 'Dumki', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dumki1', '255da208f2a33e51be2d46962f0a5017'),
(41, 'Roktokona Group', 'roktokona@gmail.com', '01876543234', 'HXCG+4WF, Pirojpur', 'Barisal', 'Pirojpur', 'Bhandaria', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'roktokona1', '3cfe1001dfc293242cc5aef0d85ccd8b'),
(42, 'Janata Blood Bank', 'jbb@info.com', '01654323231', 'Kawkhali Rd-3', 'Barisal', 'Pirojpur', 'Kawkhali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jbb1', '75ae64072049023c590b2b2b3f9a8346'),
(43, 'Sandani Donor Club', 'sandani@gmail.com', '01867543798', 'Mathbaria Rd- 7', 'Barisal', 'Pirojpur', 'Mathbaria', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mathbaria1', '3cfe1001dfc293242cc5aef0d85ccd8b'),
(44, 'Dutch-Bangla Blood Bank', 'dbbb@gmail.com', '01777766552', '2XVC+CQQ,Nazirpur', 'Barisal', 'Pirojpur', 'Nazirpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dbbb1', 'ecbbc6e4e3dce08a55aab66b6365e70c'),
(45, 'Sonali Blood Bank', 'sonalibloodbank@gmail.com', '01754343621', '7HM7+2R6,Pirojpue Sadar', 'Barisal', 'Pirojpur', 'Pirojpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sonalibloodbank1', 'f472e43c705261b98eee09c3a80f021c'),
(46, 'Nesarabad Blood Group', 'nbg@info.com', '01398765434', 'P4W3+HQC, Nesarabad Road', 'Barisal', 'Pirojpur', 'Nesarabad (Swarupkati)', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'nbg1', '093cc6a0652f66c30e95d8c29389b863'),
(47, 'Rokter Bondhon jubo Songothon', 'rbjs@info.com', '01856433420', 'HXPC+2JV, Zianagar', 'Barisal', 'Pirojpur', 'Zianagar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rbjs1', '73a22d43ae720b89f6cbfb3dd6f812ff'),
(48, 'SBMC Blood Bank', 'sbmc@info.com', '01866649721', 'Baniarchala, Ali Kadam , Bandarban', 'Chittagong', 'Bandarban', 'Ali Kadam', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sbmc2', '7ecb0089d1f7d4a6505768e3dd918707'),
(49, 'Angikar blood donors club', 'angikar@info.com', '01654375284', 'Baniarchala, Bandarban Sadar , Bandarban', 'Chittagong', 'Bandarban', 'Bandarban Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'angikar2', '29b0ebe11b0c2233b631751bfaf9b4b8'),
(50, 'Janata Blood Bank', 'janata@gmail.com', '01557645320', 'Baniarchala, Lama , Bandarban', 'Chittagong', 'Bandarban', 'Lama', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'janata1', '4d92a58f79549287e23f0c9994c8eb5a'),
(51, 'Sonali Blood Bank', 'sonali@info.com', '01822276543', 'Baniarchala, Naikhongchhari , Bandarban', 'Chittagong', 'Bandarban', 'Naikhongchhari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sonali1', 'd65b352d2e04d42d073c466ad5d84216'),
(52, 'Dumki Blood Bank', 'dumki@info.com', '+8801928482429', 'Baniarchala, Rowangchhari , Bandarban', 'Chittagong', 'Bandarban', 'Rowangchhari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dumki2', '255da208f2a33e51be2d46962f0a5017'),
(53, 'Dutch-Bangla Blood Bank', 'dbbb@gmail.com', '01812432453', 'Baniarchala, Ruma , Bandarban', 'Chittagong', 'Bandarban', 'Ruma', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dbbb2', 'a448fe65d97e6ce4e383bfd866a500b0'),
(54, 'sandani Donor Club', 'sandani@gmail.com', '01423456783', 'Baniarchala, Thanchi , Bandarban', 'Chittagong', 'Bandarban', 'Thanchi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sandani2', '5afcb50cfb429cebfde62f63b3a99c1b'),
(55, 'SAVE, A Blood Donor Club', 'sabdc@info.com', '01812432453', 'Baniarchala, Akhaura , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Akhaura', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sabdc1', '58736501318fbe110e6a7c3a67df4333'),
(56, 'Sandhani, Medical College Blood Donors Group', 'smcbdg@gmail.com', '01866649721', 'Baniarchala, Bancharampur , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Bancharampur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'smcbdg1', 'bf889e1e11b3e8396f136978eaa4c8ef'),
(57, 'Brahmandaria Sadar Blood Donars Bank', 'Sadar@gmail.com', '01866649721', 'Brahmandaria Sadar Road-3', 'Chittagong', 'Brahmanbaria', 'Brahmanbaria Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sadar1', 'dfc5fcb18a5a7883c71d536e0300ed76'),
(58, 'Brahmandaria Blood Donars Bank', 'Brahmandaria@gmail.com', '01866649721', 'Baniarchala, Kasba , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Kasba', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Brahmandaria1', 'cfd981314fa4dbcf112426509405783f'),
(59, 'Angikar blood donors club', 'angikar@info.com', '01512432453', 'Baniarchala, Nabinagar , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Nabinagar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'angikar3', '29b0ebe11b0c2233b631751bfaf9b4b8'),
(60, 'Baniarchala Nasirnagar Blood Bank', 'Nasirnagar@gmail.com', '01557645320', 'Baniarchala, Nasirnagar , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Nasirnagar', 1, 0, 0, 0, 0, 0, 0, 0, 'Typically replies within 10 minutes.', '', 'Nasirnagar1', 'd8d9111fe50f40cf9384716ae61d5689'),
(61, 'Sarail Blood Bank', 'sarali@info.com', '01557645320', 'Baniarchala, Sarail , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Sarail', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sarali1', '763fbd347909d283d8cafbc81a3d229d'),
(62, 'Agrani Blood Bank', 'angikar@info.com', '01822276543', 'Baniarchala, Ashuganj , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Ashuganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'angikar4', '29b0ebe11b0c2233b631751bfaf9b4b8'),
(63, 'Bijoynagar Blood Bank', 'bijoynagar@gmail.com', '01754343621', 'Bijoynagar , Brahmanbaria', 'Chittagong', 'Brahmanbaria', 'Bijoynagar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Bijoynagar1', '45424f1ea3a30422306138be564f1ed1'),
(64, 'Chandpur Blood Donor Bank', 'chandpur@gmail.com', '01754687325', 'Chandpur Sadar Rd-4', 'Chittagong', 'Chandpur', 'Chandpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'chandpur1', '62351ee81179bcdf719579ef1b23f530'),
(65, 'Agailjhara Blood Doners ', 'agailjharablood@gmail.som', '01765432342', 'Faridganj , Chandpur', 'Chittagong', 'Chandpur', 'Faridganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'agailjharablood2', 'dc3ea3c7990cfa23c89c91120a19d592'),
(66, 'Janata Blood Bank', 'janata@gmail.com', '01765434576', 'Haimchar , Chandpur', 'Chittagong', 'Chandpur', 'Haimchar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'janata2', '4d92a58f79549287e23f0c9994c8eb5a'),
(67, 'Haziganj Upazila Blood Bank Complex', 'haziganj@info.com', '01765434576', 'Haziganj , Chandpur', 'Chittagong', 'Chandpur', 'Haziganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'haziganj1', '71f6851da8b618a759c36ab8224c26da'),
(68, 'Kachua Blood bank', 'kachua@info.com', '01775634532', 'Kachua , Chandpur', 'Chittagong', 'Chandpur', 'Kachua', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'kachua1', 'a1b6f610fd72f47d45d04bacaaab35e7'),
(69, 'Matlab Dakshin Blood Bank, Chandpur', 'matlabdakshin@gmail.com', '01775634532', 'Matlab Dakshin , Chandpur', 'Chittagong', 'Chandpur', 'Matlab Dakshin', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'matlabdakshin1', 'ea87d64810b8fc2705487333d2aa7071'),
(70, 'Matlab Uttar Blood Bank , Chandpur', 'mubbc@info.com', '01777546392', 'Matlab Uttar , Chandpur', 'Chittagong', 'Chandpur', 'Matlab Uttar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mubbc1', 'abf2ccd69bc8e53b892618f264144794'),
(71, 'Shahrasti Blood Bank , Chandpur', 'shahrati@gmail.com', '01654375284', 'shahrati Rd-5', 'Chittagong', 'Chandpur', 'Shahrasti', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'shahrati1', 'a2c2c1e19f04b92f88cdee6e20650aaf'),
(72, 'Anawara Bload Bank', 'anawara@gmail.com', '01733632552', 'Chittagong, Anwara , Chittagong', 'Chittagong', 'Chittagong', 'Anwara', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'anawara1', 'cd3375fd45b5dd4261aabd8b410ef3f1'),
(73, 'Sonali Blood Bank', 'anisulawal@gmail.com', '01733632525', 'Baniarchala, Anwara , Chittagong', 'Chittagong', 'Chittagong', 'Anwara', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'anisulawal1', 'e1ccb8d56c7197d2edecc816771b60d3'),
(74, 'sandani Donor Club', 'bijoykumar@gmail.com', '01611156180', 'Baniarchala, Banshkhali , Chittagong', 'Chittagong', 'Chittagong', 'Banshkhali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bijoykumar1', 'be6aff3fd8d105f7e295259f4a659703'),
(75, 'Boalkhali Bload Bank, Chittagong', 'boalkhali@gmail.com', '01645322376', 'Baniarchala, Boalkhali , Chittagong', 'Chittagong', 'Chittagong', 'Boalkhali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'boalkhali1', '4b7437740275506969b0e7aa07181b06'),
(76, 'Rupali Blood Bank', 'rupali@gmail.com', '01654375284', 'Baniarchala, Chandanaish , Chittagong', 'Chittagong', 'Chittagong', 'Chandanaish', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rupali1', 'd6ba371495010d6fac2c34ad83c16663'),
(77, 'Fatikchhari Blood Bank , Chittagong', 'salahuddinhaider@gmail.com', '01822276543', 'Fatikchhari , Chittagong', 'Chittagong', 'Chittagong', 'Fatikchhari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'salahuddinhaider1', '5ce5edd0a8eec7d17f81757f990d766f'),
(78, 'Hathazari Blood Bank', 'hathazari@gmail.com', '01775634532', 'Baniarchala, Hathazari , Chittagong', 'Chittagong', 'Chittagong', 'Hathazari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'hathazari1', 'b14872fb59a6fb16cb2d3cb5c6c8b952'),
(79, 'Kotwali Blood Bank', 'angikar@info.com', '01557645320', 'Kotwali Thana , Chittagong', 'Chittagong', 'Chittagong', 'Kotwali Thana', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ikram1', 'a03f3bc80a99b02e422c3ed820c367c6'),
(80, 'Barura Blood Bank', 'akram@gmail.com', '01557645320', 'Barura , Comilla', 'Chittagong', 'Comilla', 'Barura', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ikram2', 'a03f3bc80a99b02e422c3ed820c367c6'),
(81, 'Chandina Blood Bank', 'sbmc@info.com', '01812432453', 'Chandina, Comilla', 'Chittagong', 'Comilla', 'Chandina', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ikram3', 'a03f3bc80a99b02e422c3ed820c367c6'),
(82, 'Ikram Blood Bank', 'ikram@info.com', '01654375284', 'Chauddagram', 'Chittagong', 'Comilla', 'Chauddagram', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bbdc2', '8ff0e3c17f4009119308b2394f9d98fb'),
(83, 'Laksam Blood Bank', 'Laksam@gmail.com', '01866649721', 'Laksam, Comilla', 'Chittagong', 'Comilla', 'Laksam', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid139', '98fb1c8e80ee4c84e9287016b7838708'),
(84, 'Angikar blood donors club', 'angikar@info.com', '01775634532', 'Nangalkot, Comilla', 'Chittagong', 'Comilla', 'Nangalkot', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bbdc3', '8ff0e3c17f4009119308b2394f9d98fb'),
(85, 'Janata Blood Bank', 'janata@gmail.com', '01354769878', 'Comilla Adarsha Sadar Rd-3', 'Chittagong', 'Comilla', 'Cumilla Adarsha Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ikram4', '7e5a32fc10adcf08c0fbb9b5fea3554a'),
(86, 'Sonali Blood Bank', 'sonali@info.com', '01654786534', 'Comilla Sadar Dakshin Rd-2', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid1', 'e57599d25b7f692a4f28423d6b6a470d'),
(87, 'Angikar blood donors club', 'angikar@info.com', '01866649721', 'Chakaria', 'Chittagong', 'Cox`s Bazar', 'Chakaria', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid2', 'e57599d25b7f692a4f28423d6b6a470d'),
(88, 'Janata Blood Bank', 'janata@gmail.com', '01822276543', 'Cox`s Bazar Sadar Road,Comilla', 'Chittagong', 'Cox`s Bazar', 'Cox`s Bazar Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid3', 'e57599d25b7f692a4f28423d6b6a470d'),
(89, 'Sonali Blood Bank', 'sonalibloodbank@gmail.com', '01654375284', 'Kutubdia, Cox`s Bazar', 'Chittagong', 'Cox`s Bazar', 'Kutubdia', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid4', 'e57599d25b7f692a4f28423d6b6a470d'),
(90, 'sandani Donor Club', 'sandani@gmail.com', '01775634532', 'Maheshkhali Rd-7', 'Chittagong', 'Cox`s Bazar', 'Maheshkhali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid5', 'e57599d25b7f692a4f28423d6b6a470d'),
(91, 'Ramu Blood Bank', 'ramu@info.com', '01775634532', 'Ramu Rd-1', 'Chittagong', 'Cox`s Bazar', 'Ramu', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid6', 'e57599d25b7f692a4f28423d6b6a470d'),
(92, 'Anawara Bload Bank', 'anawara@gmail.com', '01812432453', 'Chhagalnaiya, Feni', 'Chittagong', 'Feni', 'Chhagalnaiya', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid7', 'e57599d25b7f692a4f28423d6b6a470d'),
(93, 'Agailjhara Blood Doners Club', 'agailjharablood@gmail.som', '01423456783', 'Dagandhuiyan, Feni', 'Chittagong', 'Feni', 'Daganbhuiyan', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid8', 'e57599d25b7f692a4f28423d6b6a470d'),
(94, 'SAVE, A Blood Donor Club', 'sabdc@info.com', '01664576103', 'Feni Sadar', 'Chittagong', 'Feni', 'Feni Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid9', 'e57599d25b7f692a4f28423d6b6a470d'),
(95, 'Rupali Blood Bank', 'rupali@gmail.com', '01866649721', 'Sonagazi, Feni', 'Chittagong', 'Feni', 'Sonagazi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid10', 'e57599d25b7f692a4f28423d6b6a470d'),
(96, 'Fulgazi Blood Bank', 'fulgazi@gmail.com', '01765432342', 'Fulgazi, Feni', 'Chittagong', 'Feni', 'Fulgazi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'aziz1', 'e57599d25b7f692a4f28423d6b6a470d'),
(97, 'Lakshmipur Blood bank', 'lakshmipur@gmail.com', '01775634532', 'Lakshmipur Sadar, Lakshmipur', 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'aziz2', 'e57599d25b7f692a4f28423d6b6a470d'),
(98, 'sandani Donor Club', 'sandani@gmail.com', '01812432453', 'Raipur, Lakshmipur', 'Chittagong', 'Lakshmipur', 'Raipur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid11', 'e57599d25b7f692a4f28423d6b6a470d'),
(99, 'Ramaganj Blood Bank', 'ramaganj@info.com', '01866649721', 'Ramaganj, Lakshmipur', 'Chittagong', 'Lakshmipur', 'Ramganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid12', 'e57599d25b7f692a4f28423d6b6a470d'),
(100, 'Ramgati Blood Bank', 'ramgati@info.com', '01822276543', 'Ramgati, Lakshmipur', 'Chittagong', 'Lakshmipur', 'Ramgati', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid13', 'e57599d25b7f692a4f28423d6b6a470d'),
(101, 'Praner tane Blood Donate', 'pranertane@gmail.com', '01654375284', 'Begumganj', 'Chittagong', 'Noakhali', 'Begumganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid14', 'e57599d25b7f692a4f28423d6b6a470d'),
(102, 'Sonali Blood Bank', 'sonali@info.com', '01866649721', 'Sadar, Noakhali', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid15', 'e57599d25b7f692a4f28423d6b6a470d'),
(103, 'Janata Blood Bank', 'janata@gmail.com', '01557645320', 'Chatkhli, Noakhali', 'Chittagong', 'Noakhali', 'Chatkhil', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid16', 'e57599d25b7f692a4f28423d6b6a470d'),
(104, 'Angikar blood donors club', 'angikar@info.com', '01654375284', 'Senbagh, Noakhali', 'Chittagong', 'Noakhali', 'Senbagh', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid17', 'e57599d25b7f692a4f28423d6b6a470d'),
(105, 'Sonaimuri Blood Bank', 'sonaimuri@gmail.com', '01866649721', 'Sonaimuri, Noakhali', 'Chittagong', 'Noakhali', 'Sonaimuri', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid18', 'e57599d25b7f692a4f28423d6b6a470d'),
(106, 'sandani Donor Club', 'sandani@gmail.com', '01812432453', 'Subarnachar, Noakhali', 'Chittagong', 'Noakhali', 'Subarnachar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid19', 'e57599d25b7f692a4f28423d6b6a470d'),
(107, 'sandani Donor Club', 'sandani@gmail.com', '01654375284', 'Sadar,Rangamati', 'Chittagong', 'Rangamati', 'Rangamati Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid20', 'e57599d25b7f692a4f28423d6b6a470d'),
(108, 'SBMC Blood Bank', 'sbmc@info.com', '01812432453', 'Bagaichhari, Rangamati', 'Chittagong', 'Rangamati', 'Bagaichhari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid111', 'e57599d25b7f692a4f28423d6b6a470d'),
(109, 'Pubali Blood Bank', 'pbb@info.com', '01822276543', 'Barkal, Rangamati', 'Chittagong', 'Rangamati', 'Barkal', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid112', 'e57599d25b7f692a4f28423d6b6a470d'),
(110, 'Agailjhara Blood Doners Club', 'agailjharablood@gmail.som', '01775634532', 'Kawkhali Rd-3', 'Chittagong', 'Rangamati', 'Kawkhali (Betbunia)', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid113', 'e57599d25b7f692a4f28423d6b6a470d'),
(111, 'Police Blood Bank', 'police@gmail.com', '01523537986', 'Belaichhari Rd-8', 'Chittagong', 'Rangamati', 'Belaichhari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid114', 'e57599d25b7f692a4f28423d6b6a470d'),
(112, 'Praner tane Blood Donate', 'pranertane@gmail.com', '01664576103', 'Kaptai, Rangamati', 'Chittagong', 'Rangamati', 'Kaptai', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid115', 'e57599d25b7f692a4f28423d6b6a470d'),
(113, 'Sonali Blood Bank', 'sonali@info.com', '01654375284', 'Rajasthali', 'Chittagong', 'Rangamati', 'Rajasthali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid116', 'e57599d25b7f692a4f28423d6b6a470d'),
(114, 'Sonali Blood Bank', 'sonali@info.com', '01866649721', 'Dhaka City Rd-4', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid117', 'e57599d25b7f692a4f28423d6b6a470d'),
(115, 'Janata Blood Bank', 'janata@gmail.com', '01654375284', 'Dhamrai, Dhaka', 'Dhaka', 'Dhaka', 'Dhamrai', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid118', 'e57599d25b7f692a4f28423d6b6a470d'),
(116, 'Angikar blood donors club', 'agailjharablood@gmail.som', '01557645320', 'Dohar, Dhaka', 'Dhaka', 'Dhaka', 'Dohar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid119', 'e57599d25b7f692a4f28423d6b6a470d'),
(117, 'sandani Donor Club', 'sandani@gmail.com', '01812432453', 'Keraniganj, Dhaka', 'Dhaka', 'Dhaka', 'Keraniganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid110', 'e57599d25b7f692a4f28423d6b6a470d'),
(118, 'SBMC Blood Bank', 'sbmc@info.com', '01775634532', 'Nawabganj, Dhaka', 'Dhaka', 'Dhaka', 'Nawabganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid120', 'e57599d25b7f692a4f28423d6b6a470d'),
(119, 'Agailjhara Blood Doners Club', 'agailjharablood@gmail.som', '01822276543', 'Savar, Dhaka', 'Dhaka', 'Dhaka', 'Savar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid121', 'e57599d25b7f692a4f28423d6b6a470d'),
(120, 'Pubali Blood Bank', 'pbb@info.com', '01398765434', 'Tejgaon , Dhaka', 'Dhaka', 'Dhaka', 'Tejgaon Circle', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid122', 'e57599d25b7f692a4f28423d6b6a470d'),
(121, 'Sonali Blood Bank', 'sonali@info.com', '01866649721', 'Gopalpur, Tangail', 'Dhaka', 'Tangail', 'Gopalpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid123', 'e57599d25b7f692a4f28423d6b6a470d'),
(122, 'Janata Blood Bank', 'janata@gmail.com', '01654375284', 'Bhanga, Faridpur', 'Dhaka', 'Faridpur', 'Bhanga', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid124', 'e57599d25b7f692a4f28423d6b6a470d'),
(123, 'Angikar blood donors club', 'angikar@info.com', '01557645320', 'Boalmari, Faridpur', 'Dhaka', 'Faridpur', 'Boalmari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid125', 'e57599d25b7f692a4f28423d6b6a470d'),
(124, 'sandani Donor Club', 'sandani@gmail.com', '01812432453', 'Charbhadrasan, faridpur', 'Dhaka', 'Faridpur', 'Charbhadrasan', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid126', 'e57599d25b7f692a4f28423d6b6a470d'),
(125, 'SBMC Blood Bank', 'sbmc@info.com', '01775634532', 'Sadar, Faridpur', 'Dhaka', 'Faridpur', 'Faridpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid127', 'e57599d25b7f692a4f28423d6b6a470d'),
(126, 'Agailjhara Blood Doners Club', 'agailjharablood@gmail.som', '01822276543', 'Saltha, Faridpur', 'Dhaka', 'Faridpur', 'Saltha', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid128', 'e57599d25b7f692a4f28423d6b6a470d'),
(127, 'DHAKA BLOOD BANK', 'dhaka@gmail.com', '01866649721', 'Q92P+9P3, Green Road, Dhaka 1205', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid129', 'e57599d25b7f692a4f28423d6b6a470d'),
(128, 'RAJDHANI BLOOD BANK TRANSFUSIONS & CENTER', 'rajdhani@gmail.com', '01654375284', 'MuktiJoddha Tower 1 Mohammadpur Dhaka Bangladesh Mirpur road College Gate, 1207', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid130', 'e57599d25b7f692a4f28423d6b6a470d'),
(129, 'Dhanmondi Blood Bank', 'sbmc@info.com', '01557645320', 'Panthpath, Dhaka 1205', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid131', 'e57599d25b7f692a4f28423d6b6a470d'),
(130, 'Lab One Blood Bank', 'sbmc@info.com', '01922-117676', 'House No – 08, Road no. 12, Dhaka 1230', 'Dhaka', 'Dhaka', 'Dhaka City', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid132', 'e57599d25b7f692a4f28423d6b6a470d'),
(131, 'Pathway Blood Care', 'sbmc@info.com', '01728-888053', 'House 2, Road 6 Senpara Parvata Goli, Dhaka 1216', 'Dhaka', 'Dhaka', 'Dhamrai', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid133', 'e57599d25b7f692a4f28423d6b6a470d'),
(132, 'Quantum Blood Lab', 'quantum@info.com', '01714-010869', '31/V Shilpacharya Zainul Abedin Sarak, Shantinagar, 1217', 'Dhaka', 'Dhaka', 'Dhamrai', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid134', 'e57599d25b7f692a4f28423d6b6a470d'),
(133, 'Blood Bank - Bangladesh Red Crescent Society', 'blood@info.com', '01812432453', '7, 5 Aurangzeb Road, Dhaka', 'Dhaka', 'Dhaka', 'Dohar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid135', 'e57599d25b7f692a4f28423d6b6a470d'),
(134, 'Bangladesh Blood Bank and Transfusion Center', 'sbmc@info.com', '01775634532', '12, 22 Babar Road, Dhaka', 'Dhaka', 'Dhaka', 'Dohar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid136', 'e57599d25b7f692a4f28423d6b6a470d'),
(135, 'Shadhin Blood Bank & Transfusion Centre.', 'sandani@gmail.com', '01812432453', 'Keranjganj Rd-12, Dhaka', 'Dhaka', 'Dhaka', 'Keraniganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid137', 'e57599d25b7f692a4f28423d6b6a470d'),
(136, 'Imargency BLOOD Donation Model Thana,Keraniganj,Dhaka', 'imargency@gmail.com', '01812432453', 'Thana Road, Keraniganj, Dhaka-1310, Dhaka, Bangladesh', 'Dhaka', 'Dhaka', 'Keraniganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jahid138', 'e57599d25b7f692a4f28423d6b6a470d'),
(137, 'Save Life Blood Bank', 'savelife@info.com', '01654375284', 'Rd#12 H#16 nawab bazar', 'Dhaka', 'Dhaka', 'Nawabganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'savelife123', '81dc9bdb52d04dc20036dbd8313ed055'),
(138, 'Life Blood Bank', 'lifebank@gmail.com', '01812432453', 'Rd#10 H#18 Savar , Dhaka', 'Dhaka', 'Dhaka', 'Savar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'lifebank1', 'f59985d8f2acdf0c798f39b9a0f02768'),
(139, 'Quantum Blood Bank', 'shilpacharya@gmail.com', '01775634532', '31/V Shilpacharya Zainul Abedin Sarak, Saver, Dhaka', 'Dhaka', 'Dhaka', 'Savar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'shilpacharya1', '4e062a30162f9de527c895c7d70f2370'),
(140, 'Bangladesh Red Crescent Blood Bank', 'bangladeshRed@info.com', '01557645320', '7/5, Aurangzeb Road, Saver, Dhaka.', 'Dhaka', 'Dhaka', 'Savar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'bangladesh1', 'ae9f5ccc6762fe10ac1132383b9c3d39'),
(141, 'Alif Blood Bank', 'alif@info.com', '01654375284', '44/11, West Tejgaon(2nd Floor), Opposite of Shamrita Hospital, Dhaka', 'Dhaka', 'Dhaka', 'Tejgaon Circle', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(142, 'Badhan Blood Bank', 'badhan@gmail.com', '01557645320', 'Central Office, T.C(Ground Floor), Tejgaon, Dhaka', 'Dhaka', 'Dhaka', 'Tejgaon Circle', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'badhan12', 'eb95f8a73de237d488f5b733aa5cc061'),
(143, 'Thalassemia Blood Bank', 'thalassemia@gmail.com', '01654375284', 'Rd#1 H#4 Aifadanga , Faridpur', 'Dhaka', 'Faridpur', 'Alfadanga', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Thalassemia1', 'ac4163d82ad2e07723e806c3e36bb794'),
(144, 'Oriental Blood bank', 'oriental@info.com', '01557645320', 'Rd#23H#10 Aifadanga , Faridpur', 'Dhaka', 'Faridpur', 'Alfadanga', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'oriental1', 'df43ec09594ca0584fa1711cf9f42cd8'),
(145, 'Mukti Blood Bank', 'mukti@gmail.com', '01866649721', '54 (1st Floor), Shafiullah Road,Bhanga,Faridpur', 'Dhaka', 'Faridpur', 'Bhanga', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mukti1', '50637a5f8e83b7e9f3109111e1b956da'),
(146, 'Islami Bank Hospital Blood Bank', 'islamibank@gmail.com', '01775634532', 'Gaji Road,Bhanga,Faridpur', 'Dhaka', 'Faridpur', 'Bhanga', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'islamibank1', '5fef0092990465671c46a57d9be29e10'),
(147, 'MALIHA BLOOD BANK', 'maliha@info.com', '01866649721', '2/13, Humayan Road, Boalmari,Faridpur', 'Dhaka', 'Faridpur', 'Boalmari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'maliha1', 'f5ac0c69359139f3b715cd6a9c996755'),
(148, 'NEW  BLOOD BANK', 'nbb@gmai.com', '01812432453', 'House-69,Road-9/A,Charbhadrasan,Faridpur', 'Dhaka', 'Faridpur', 'Charbhadrasan', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'nbb1', '7b849942e8e5ba0abfb29fa35311b73f'),
(149, 'Ikram Blood Bank', 'ikram@info.com', '01654375284', 'Sadar Road-2,Faridpur Sadar.Faridpur', 'Dhaka', 'Faridpur', 'Faridpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ikram121', 'c275e487c2d929e5d5f5106abe8630ca'),
(150, 'Aziz Blood Bank', 'aziz@info.com', '01866649721', 'Salta Bazar,Salra, Faridpur', 'Dhaka', 'Faridpur', 'Saltha', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'aziz121', 'c53ed6cd5c9c6eeda8611ecd110a78e8'),
(151, 'Akram Blood Bank', 'akram@gmail.com', '01812432453', 'Sadar Road-2,Gazipur Sadar.Gazipur', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'akram12', 'e17ef77e62abddcf24efe591c13467b8'),
(152, 'Tanvir Blood Bank', 'tanvir@gmailcom', '01775634532', 'Sadar Road-12,H#15,Gazipur Sadar.Gazipur', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tanvid1', '4d9dcf1b57a68c53692f6fbda7c469a7'),
(153, 'Asik Blood Bank', 'asik@info.com', '01654375284', 'Road-12,H#15,Kaliakair.Gazipur', 'Dhaka', 'Gazipur', 'Kaliakair', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'asik1', 'c0b192b3eed23966125b6209b27333fb'),
(154, 'Foysal Blood bank', 'foysal@gmail.com', '01866649721', 'Rd-1,H#15,Gazipur Kaliakair.Gazipur', 'Dhaka', 'Gazipur', 'Kaliakair', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'foysal1', 'f73f88f26042ff1cac82fbe0e4b2b344'),
(155, 'Dumki Blood Bank', 'dumki@info.com', '01654375284', 'Rd-1,H#15,Gazipur Kaliganj.Gazipur', 'Dhaka', 'Gazipur', 'Kaliganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dumki2', 'c653f192130b02113bfc84df82d1b505'),
(156, 'Dashmina  Blood Bank', 'dashmina@gmail.com', '01812432453', 'Rd#12 H#16 Kaliganj bazar , Gazipur', 'Dhaka', 'Gazipur', 'Kaliganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dashmina11', '745d5491bfbb275f05d798ed179cd984'),
(157, 'Thalassemia Blood Bank', 'thalassemia@gmail.com', '01654375284', 'Rd-1,H#15,Gazipur Kapasia.Gazipur', 'Dhaka', 'Gazipur', 'Kapasia', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'thalassemia11', 'f77406e4807c55034df8ae7629877b9f'),
(158, 'Sonali Blood Bank', 'sonali@info.com', '01557645320', 'Sreepur, hospital Rd', 'Dhaka', 'Gazipur', 'Sreepur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'aziz1234', '99d376b012806c65ce25d4a28381f5d2'),
(159, 'Quantum Blood Bank', 'ikram@info.com', '01654375284', 'Sadar Road-2,Baderhat Sadar.Khulna', 'Khulna', 'Bagerhat', 'Bagerhat Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Quantum', '81dc9bdb52d04dc20036dbd8313ed055'),
(160, 'Red Crescent Blood Bank', 'rcbb@gmail.com', '01866649721', 'Morrelganj bazar, Road-12,H#4', 'Khulna', 'Bagerhat', 'Morrelganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rcbb1', 'dc0c58b17ef353d75083234e24027af0'),
(161, 'Rampal Blood Bank', 'rampal@gmail.com', '01812432453', 'R#12 H#,Rampal,Bagerhat', 'Khulna', 'Bagerhat', 'Rampal', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rampal1', '8c1ded9f7f64b765a0a6e6d320e94ebe'),
(162, 'Sarankhola Bload Bank', 'sarankhola@gmail.com', '01654375284', 'Sarankhola bazar Road', 'Khulna', 'Bagerhat', 'Sarankhola', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Sarankhola1', 'd3c7800ddc9eaa95124d0750798104e9'),
(163, 'Save Life Blood Bank', 'savelife@info.com', '01557645320', 'Abhaynadar Rd-3,Jessor', 'Khulna', 'Jessore', 'Abhaynagar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Abhaynadar1', '2eaaccfe743d69bdf6cc829b197c6dbd'),
(164, 'Thalassemia Blood Bank', 'janata@gmail.com', '01822276543', 'Rd#12 H#16 Keshabpur bazar', 'Khulna', 'Jessore', 'Keshabpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'janata12', '110ae1903b5498a38c4ceac083a55586'),
(165, 'Sadar Blood Bank', 'Sadar@gmail.com', '01866649721', 'Sadar Road-12,H#15,Jashore Sadar,Jessore', 'Khulna', 'Jessore', 'Jashore Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sadar2', '1a119a854e12a8f3f2db61a90289dc72'),
(166, 'Sharsa Blood Bank', 'sharsa@gmail.com', '01866649721', 'Rd#1 H#4 Sharsha, Jessor', 'Khulna', 'Jessore', 'Sharsha', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sharsa', '140bf53d98ef8a56af476f5eb0f59abc'),
(167, 'Alif Blood Bank', 'alif@info.com', '01866649721', 'Harinakunda bazar,JHENAIDAH', 'Khulna', 'Jhenaidah', 'Harinakunda', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'alif12', '74551dc07f65cf730db7791af22f9350'),
(168, 'Jhenaidah Blood Bank', 'jhenaidah@gmai.com', '01654375284', 'Sadar Road-12,H#15,Jhenaidah Sadar,Jhenaidah', 'Khulna', 'Jhenaidah', 'Jhenaidah Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Jhenaidah', 'c482cb2640fa7e8bfd2bc9c53cda8200'),
(169, 'Shaikupa Blood Bank', 'shailkupa@gmail.com', '01654375284', 'Rd#10 H#18 Shailkupa , Dhaka', 'Khulna', 'Jhenaidah', 'Shailkupa', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'shailkupa1', 'cb9966b79ca125e0374a83c9d2cf498f'),
(170, 'CREATIVE BLOOD BANK', 'creative@gmail.com', '01866649721', 'Rd#12 H#16 Baksiganj, Jmalpur', 'Mymensingh', 'Jamalpur', 'Baksiganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'creative1', 'a7d48d996fab9b8daa69e6d39c29a3ad'),
(171, 'Dewanganj Blood Bank', 'sbmc@info.com', '01866649721', 'Rd#1 H#4 Dewanganj , Faridpur', 'Mymensingh', 'Jamalpur', 'Dewanganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dewanganj1', '26f22a8718422e189edbf1e3f4ea4d38'),
(172, 'Islampur Blood Bank', 'islampur@gmail.com', '01866649721', 'Islampur Road-12,H-3', 'Mymensingh', 'Jamalpur', 'Islampur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'islampur1', 'd15de3b18190075569df72c4cfc7dc5c'),
(173, 'Jamalpur Blood Bank', 'jamalpur@info.com', '01866649721', 'Sadar Road-12,H#15,jamalpur Sadar,Jamqqalpur', 'Mymensingh', 'Jamalpur', 'Jamalpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jamalpur1', 'abb5516ee77c27769d7edb0b0f8d9909'),
(174, 'Sonali Blood Bank', 'sonali@info.com', '01654375284', 'Kawkhali Rd-3,Sarishabari,Jamalpur', 'Mymensingh', 'Jamalpur', 'Sarishabari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'jamalpur1', 'abb5516ee77c27769d7edb0b0f8d9909'),
(175, 'Janata Blood Bank', 'janata@gmail.com', '01866649721', 'Rd#1 H#12 Gauripur, Mymensingh', 'Mymensingh', 'Mymensingh', 'Gauripur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'gauripur1', '40baabf1f6c3b081533c2f7b088126f8'),
(176, 'sandani Donor Bank', 'sandani@gmail.com', '01654375284', 'Rd#2 H#2 Haluaghat, Mymensinh', 'Mymensingh', 'Mymensingh', 'Haluaghat', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'haluaghat1', 'd96304b52c712e2fe7d45ee83c176bb3'),
(177, 'Ishwarganj Blood bank', 'sbmc@info.com', '01866649721', 'Rd#3 H#2 Islhwarganj, Mymensingh', 'Mymensingh', 'Mymensingh', 'Ishwarganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Islhwarganj1', '174fbda113f4bee3038d32f2eed00099'),
(178, 'Sadar Blood Bank', 'Sadar@gmail.com', '01812432453', 'Sadar Road-12,H#15,Mymensing Sadar,Mymensingh', 'Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sadar3', '79eb07407e94e3a5186a6d161d4452d9'),
(179, 'Angikar blood donors club', 'angikar@info.com', '01866649721', 'Rd#4 H4 Muktagachha,Mymensing', 'Mymensingh', 'Mymensingh', 'Muktagachha', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'muktagachha1', 'edac6fec4b1862a228d7e26766596408'),
(180, 'Anawara Blood Bank', 'anawara@gmail.com', '01866649721', 'Rd#1 H#3 Atpara,Netrakona', 'Mymensingh', 'Netrakona', 'Atpara', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'atpara1', '2b1f3b24a2d9c9ad09f98ea40b9f5dec'),
(181, 'Rupali Blood Bank', 'janata@gmail.com', '01866649721', 'Ramu Rd-1', 'Khulna', 'Khulna', 'Batiaghata', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'rupali123', 'ebe775d6b27e9d1ec1856b155d28a30f'),
(182, 'Dacope Blood Bank', 'sandani@gmail.com', '01812432453', 'Rd#1 H#3 Dacope, Khulna', 'Khulna', 'Khulna', 'Dacope', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'khulna1', 'a90d2dea77f2eedce11ceb84581b21bc'),
(183, 'Dumuria Blood Bank', 'Dumuria@gmail.com', '01866649721', 'MMF4+656, Khulna-Charfashan Highway, Borhanuddin', 'Khulna', 'Khulna', 'Dumuria', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Dumuria1', 'e35fe714749e194d8ed1d66d52b01cd2'),
(184, 'Terokhada Blood Bank', 'Terokhada@info.com', '01654375284', 'amtali Rd- 7', 'Khulna', 'Khulna', 'Terokhada', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Terokhada1', 'f7d9be26b947ed281bdc43fa3320f263'),
(185, 'Daulatpur Thana Blood Bank', 'dtbb@info.com', '01866649721', 'Bamna, hospital Rd', 'Khulna', 'Khulna', 'Daulatpur Thana', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dtbb1', 'a4fc4e4d769c0a01ddbc44f6c785d9a6'),
(186, 'Sonali Blood Bank', 'sonali@info.com', '01866649721', 'amtali Rd- 7 ,Bheramara', 'Khulna', 'Kushtia', 'Bheramara', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sonali11', '53d3f2c567af92947fa037ae34079b32'),
(187, 'Daulatpur Blood Bank', 'sbmc@info.com', '01812432453', 'Dumki Rd-2,Daulatpur', 'Khulna', 'Kushtia', 'Daulatpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sbmc11', '9a1f0a74938800fd1d7b5a8db1b88bb0'),
(188, 'Angikar blood donors club', 'angikar@info.com', '01812432453', 'Kawkhali Rd-3', 'Khulna', 'Kushtia', 'Khoksa', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'qwe1', 'a51c008b213c7a0462e49895df164b50'),
(189, 'Janata Blood Bank', 'janata@gmail.com', '01654375284', 'Ramu Rd-1,kumarkhali', 'Khulna', 'Kushtia', 'Kumarkhali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'janata11', '0efdbfd0477145ca772b4138b170c9ff'),
(190, 'sandani Donor Club', 'sandani@gmail.com', '01812432453', 'Islampur Road-12,H-3', 'Khulna', 'Kushtia', 'Kushtia Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'ikram122', '11a3695129270ee28ff5a5f65dbc5311'),
(191, 'Dumki Blood Bank', 'dumki@info.com', '01654375284', 'Rd#1 H#3 Barhatta,Netrakona', 'Mymensingh', 'Netrakona', 'Barhatta', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'dumki11', 'b31f11b94bf819b4761c94be6971de08'),
(192, 'Durgapur Blood Bank', 'Durgapur@gmail.com', '01866649721', 'Rd#1 H#3 Durgapur,Netrakona', 'Mymensingh', 'Netrakona', 'Durgapur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Durgapur1', '0893d415196668f1b11a1310905ade57'),
(193, 'Kalmakanda Blood Bank', 'kalmakanda@info.com', '01557645320', 'Rd#1 H#3 Kalmakanda,Netrakona', 'Mymensingh', 'Netrakona', 'Kalmakanda', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Kalmakanda1', '273c1d37b902a63f848493d3f67e36a0'),
(194, 'Sadar Blood Bank', 'Sadar@gmail.com', '01557645320', 'Rd#1 H#3 Netrakona Sadar ,Netrakona', 'Mymensingh', 'Netrakona', 'Netrokona Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sadar11', 'aa4b16d6c81f404da8bcee5a69ad57c1'),
(195, 'Jhenaigati Blood Bank', 'Jhenaigati@gmail.com', '01812432453', 'Rd#1 H#5 Jhenaigati,Sherpur', 'Mymensingh', 'Sherpur', 'Jhenaigati', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'Jhenaigati1', 'dd85dba1f269cb55321faeafc0ff6f83'),
(196, 'sandani Donor Club', 'sandani@gmail.com', '01866649721', 'Rd#1 H#3 Nakla, Sherpur', 'Mymensingh', 'Sherpur', 'Nakla', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sandani1111', 'd78a1ba9a46241c145a52ef21e80f093'),
(197, 'Jamalpur Blood Bank', 'jamalpur@info.com', '01775634532', 'Bamna, hospital Rd', 'Mymensingh', 'Sherpur', 'Nalitabari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara1', 'c5925a9742c5b8677bcf90f7d11cdfd4'),
(198, 'Sadar Blood Bank', 'Sadar@gmail.com', '01812432453', 'Rd#11 H#2 Sadar,Sherpur', 'Mymensingh', 'Sherpur', 'Sherpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara2', 'b9483384e830615b865234eb169c4c9b'),
(199, 'Thalassemia Blood Bank', 'thalassemia@gmail.com', '01866649721', 'Rd#11 H#2 Sreebardi,Sherpur', 'Mymensingh', 'Sherpur', 'Sreebardi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara3', '0f6ebfc65c1838ee4f5f3b8917f04288'),
(200, 'Sonali Blood Bank', 'sonali@info.com', '01812432453', 'Rd#11 H#2 Adamdighi,Bogra', 'Rajshahi', 'Bogra', 'Adamdighi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara4', '81dc9bdb52d04dc20036dbd8313ed055'),
(201, 'Ikram Blood Bank', 'ikram@info.com', '01812432453', 'Rd#11 H#2 Bogra Sadar,Bogra', 'Rajshahi', 'Bogra', 'Bogura Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara5', '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `blood_bank` (`id`, `bank_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `aviable_a_positive`, `aviable_a_negative`, `aviable_b_positive`, `aviable_b_negative`, `aviable_ab_positive`, `aviable_ab_negative`, `aviable_o_positive`, `aviable_o_negative`, `status`, `image`, `user_name`, `password`) VALUES
(202, 'Gabtali Blood Bank', 'gabtali@gmail.com', '01812432453', 'Rd#11 H#2 Gabtali,Bogra', 'Rajshahi', 'Bogra', 'Gabtali', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara6', '81dc9bdb52d04dc20036dbd8313ed055'),
(203, 'Kachua Blood bank', 'kachua@info.com', '01654375284', 'Rd#11 H#2 Kahaloo,Bogra', 'Rajshahi', 'Bogra', 'Kahaloo', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara7', '81dc9bdb52d04dc20036dbd8313ed055'),
(204, 'NEW  BLOOD BANK', 'nbb@gmai.com', '01654375284', 'Rd#11 H#2 Nandigram,Bogra', 'Rajshahi', 'Bogra', 'Nandigram', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara8', '81dc9bdb52d04dc20036dbd8313ed055'),
(205, 'Anawara Bload Bank', 'anawara@gmail.com', '01654375284', 'Rd#11 H#2 Bholahat, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Bholahat', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara9', '81dc9bdb52d04dc20036dbd8313ed055'),
(206, 'Sonali Blood Bank', 'sonali@info.com', '01557645320', 'Rd#11 H#2 Gomastapur, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Gomastapur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara10', '81dc9bdb52d04dc20036dbd8313ed055'),
(207, 'Nesarabad Blood Group', 'Nasirnagar@gmail.com', '01775634532', 'Rd#11 H#2 Nachole, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Nachole', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara11', '81dc9bdb52d04dc20036dbd8313ed055'),
(208, 'Nawab Blood Bank', 'nawab@gmali.com', '01654375284', 'Rd#11 H#2 Nawabganj sadar, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Nawabganj Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara12', '81dc9bdb52d04dc20036dbd8313ed055'),
(209, 'Agailjhara Blood Doners Club', 'angikar@info.com', '01557645320', 'Rd#11 H#2 Shibganj, Chapainawabganj', 'Rajshahi', 'Chapainawabganj', 'Shibganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara13', '81dc9bdb52d04dc20036dbd8313ed055'),
(210, 'Agrani Blood Bank', 'agailjharablood@gmail.som', '01654375284', 'Rd#11 H#2 Akkelpur, Joypurhat', 'Rajshahi', 'Joypurhat', 'Akkelpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara14', '81dc9bdb52d04dc20036dbd8313ed055'),
(211, 'Jamalpur Blood Bank', 'jamalpur@info.com', '01775634532', 'Rd#11 H#2 Joypurhar sadar, Joypurhat', 'Rajshahi', 'Joypurhat', 'Joypurhat Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara15', '81dc9bdb52d04dc20036dbd8313ed055'),
(212, 'Kalai Blood Bank', 'kalai@gmail.com', '01822276543', 'Rd#11 H#2 Kalai, Joypurhat', 'Rajshahi', 'Joypurhat', 'Kalai', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara16', '81dc9bdb52d04dc20036dbd8313ed055'),
(213, 'Kachua Blood bank', 'sandani@gmail.com', '01775634532', 'Rd#11 H#2 Khetlal, Joypurhat', 'Rajshahi', 'Joypurhat', 'Khetlal', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara17', '81dc9bdb52d04dc20036dbd8313ed055'),
(214, 'SAVE, A Blood Donor Club', 'save@gmail.com', '01812432453', 'Rd#11 H#2 Panchbibi, Joypurhat', 'Rajshahi', 'Joypurhat', 'Panchbibi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara18', '81dc9bdb52d04dc20036dbd8313ed055'),
(215, 'Atrai Blood Bank', 'atria@gmail.com', '01557645320', 'Rd#11 H#2 Atrai, Naogaon', 'Rajshahi', 'Naogaon', 'Atrai', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara20', '81dc9bdb52d04dc20036dbd8313ed055'),
(216, 'Save Life Blood Bank', 'savelife@info.com', '01557645320', 'Rd#11 H#2, Naogaon sadar', 'Rajshahi', 'Naogaon', 'Naogaon Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara21', '81dc9bdb52d04dc20036dbd8313ed055'),
(217, 'Janata Blood Bank', 'janata@gmail.com', '01866649721', 'Rd#11 H#2 Niamatpur, Naogaon', 'Rajshahi', 'Naogaon', 'Niamatpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tara22', '81dc9bdb52d04dc20036dbd8313ed055'),
(218, 'Pabna Blood Bank', 'Bank@gmail.com', '01654375284', 'Rd#11 H#2 Atgharia,Pabna', 'Rajshahi', 'Pabna', 'Atgharia', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tata1', '81dc9bdb52d04dc20036dbd8313ed055'),
(219, 'SBMC Blood Bank', 'sbmc@info.com', '01654375284', 'Rd#11 H#2 Faridpur,Pabna', 'Rajshahi', 'Pabna', 'Faridpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tata2', '81dc9bdb52d04dc20036dbd8313ed055'),
(220, 'Angikar blood donors club', 'sbmc@info.com', '01654375284', 'Rd#11 H#2 Atgharia,Pabna', 'Rajshahi', 'Pabna', 'Ishwardi', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tata3', '81dc9bdb52d04dc20036dbd8313ed055'),
(221, 'Sonali Blood Bank', 'sonali@info.com', '01866649721', 'Rd#11 H#2 Pabna Sadar,Pabna', 'Rajshahi', 'Pabna', 'Pabna Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tata4', '81dc9bdb52d04dc20036dbd8313ed055'),
(222, 'Janata Blood Bank', 'janata@gmail.com', '01654375284', 'Rd#11 H#2 Atgharia,Pabna', 'Rajshahi', 'Pabna', 'Sujanagar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'tata6', '81dc9bdb52d04dc20036dbd8313ed055'),
(223, 'Angikar blood donors club', 'angikar@info.com', '01866649721', 'Rd#11 H#2 Atgharia,Dinajpur', 'Rangpur', 'Dinajpur', 'Birampur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara1', '81dc9bdb52d04dc20036dbd8313ed055'),
(224, 'sandani Donor Club', 'sandani@gmail.com', '01654375284', 'Rd#11 H#2 Atgharia,Dinajpur', 'Rangpur', 'Dinajpur', 'Hakimpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara2', '81dc9bdb52d04dc20036dbd8313ed055'),
(225, 'SBMC Blood Bank', 'sbmc@info.com', '01654375284', 'Rd#11 H#2 Atgharia,Dinajpur', 'Rangpur', 'Dinajpur', 'Dinajpur Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara3', '81dc9bdb52d04dc20036dbd8313ed055'),
(226, 'Agailjhara Blood Doners Club', 'agailjharablood@gmail.som', '01557645320', 'Rd#11 H#2 Atgharia,Dinajpur', 'Rangpur', 'Dinajpur', 'Nawabganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara4', '81dc9bdb52d04dc20036dbd8313ed055'),
(227, 'Angikar blood donors club', 'angikar@info.com', '01557645320', 'Rd#11 H#2 Atgharia,Dinajpur', 'Rangpur', 'Dinajpur', 'Parbatipur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara5', '81dc9bdb52d04dc20036dbd8313ed055'),
(228, 'Agailjhara Blood Doners Club', 'agailjharablood@gmail.som', '01812432453', 'Rd#11 H#2 Phulchhari, Gaibandha', 'Rangpur', 'Gaibandha', 'Phulchhari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara6', '81dc9bdb52d04dc20036dbd8313ed055'),
(229, 'Agrani Blood Bank', 'agrani@gmail.com', '01654375284', 'Rd#11 H#2 , Gaibandha Sadar', 'Rangpur', 'Gaibandha', 'Gaibandha Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara7', '81dc9bdb52d04dc20036dbd8313ed055'),
(230, 'Anawara Bload Bank', 'anawara@gmail.com', '01812432453', 'Rd#11 H#2 Phulchhari, Gaibandha', 'Rangpur', 'Gaibandha', 'Sughatta', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara8', '81dc9bdb52d04dc20036dbd8313ed055'),
(231, 'Akram Blood Bank', 'akram@gmail.com', '01557645320', 'Rd#11 H#2 Phulchhari, Gaibandha', 'Rangpur', 'Gaibandha', 'Sundarganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara9', '81dc9bdb52d04dc20036dbd8313ed055'),
(232, 'Alif Blood Bank', 'alif@info.com', '01812432453', 'Rd#11 H#2 Phulchhari, Kurigram', 'Rangpur', 'Kurigram', 'Bhurungamari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara10', '81dc9bdb52d04dc20036dbd8313ed055'),
(233, 'Sonali Blood Bank', 'sonali@info.com', '01812432453', 'Rd#11 H#2 Phulchhari, Kurigram', 'Rangpur', 'Kurigram', 'Phulbari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara11', '81dc9bdb52d04dc20036dbd8313ed055'),
(234, 'sandani Donor Club', 'sandani@gmail.com', '01557645320', 'Rd#11 H#2  Kurigram Sadar', 'Rangpur', 'Kurigram', 'Kurigram Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara12', '81dc9bdb52d04dc20036dbd8313ed055'),
(235, 'SBMC Blood Bank', 'sbmc@info.com', '01866649721', 'Rd#11 H#2 Phulchhari, Kurigram', 'Rangpur', 'Kurigram', 'Nageshwari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara14', '81dc9bdb52d04dc20036dbd8313ed055'),
(236, 'New Blood Bank', 'nawab@gmali.com', '01812432453', 'Rd#11 H#2 Aditmari, Lalmonirhat', 'Rangpur', 'Lalmonirhat', 'Aditmari', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara15', '81dc9bdb52d04dc20036dbd8313ed055'),
(237, 'Sadar Blood Bank', 'Sadar@gmail.com', '01557645320', 'Rd#11 H#2 Lalmonirhat Sadar', 'Rangpur', 'Lalmonirhat', 'Lalmonirhat Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara16', '81dc9bdb52d04dc20036dbd8313ed055'),
(238, 'SAVE, A Blood Donor Club', 'sbmc@info.com', '01775634532', 'Rd#11 H#2 Patgram', 'Rangpur', 'Lalmonirhat', 'Patgram', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara17', '81dc9bdb52d04dc20036dbd8313ed055'),
(239, 'Save Life Blood Bank', 'savelife@info.com', '01775634532', 'Rd#11 H#2 Dimla, Nilphamari', 'Rangpur', 'Nilphamari', 'Dimla', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara188', '81dc9bdb52d04dc20036dbd8313ed055'),
(240, 'Dumki Blood Bank', 'dumki@info.com', '01654375284', 'Rd#11 H#2  Nilphamari Sadar', 'Rangpur', 'Nilphamari', 'Nilphamari Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara199', '81dc9bdb52d04dc20036dbd8313ed055'),
(241, 'Dutch-Bangla Blood Bank', 'dbbb@gmail.com', '01812432453', 'Rd#11 H#2 Dimla, Nilphamari', 'Rangpur', 'Nilphamari', 'Saidpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'sara200', '81dc9bdb52d04dc20036dbd8313ed055'),
(242, 'Dacope Blood Bank', 'dbbb@gmail.com', '01812432453', 'Rd#11 H#2 AJMAIRIGANJ,Habiganj', 'Sylhet', 'Habiganj', 'Ajmiriganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala1', '81dc9bdb52d04dc20036dbd8313ed055'),
(243, 'Dashmina  Blood Bank', 'dbbb@gmail.com', '01557645320', 'Rd#11 H#2 Bahubal,Habiganj', 'Sylhet', 'Habiganj', 'Bahubal', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala2', '81dc9bdb52d04dc20036dbd8313ed055'),
(244, 'Daulatpur Blood Bank', 'dbbb@gmail.com', '01812432453', 'Rd#11 H#2 ,Habiganj Sadar', 'Sylhet', 'Habiganj', 'Habiganj Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala3', '81dc9bdb52d04dc20036dbd8313ed055'),
(245, 'Foysal Blood bank', 'foysal@gmail.com', '01866649721', 'Rd#11 H#2 ,Madhabpur, Habiganj', 'Sylhet', 'Habiganj', 'Madhabpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala4', '81dc9bdb52d04dc20036dbd8313ed055'),
(246, 'Fulgazi Blood Bank', 'sandani@gmail.com', '01775634532', 'Rd#11 H#2 Nabiganj ,Habiganj', 'Sylhet', 'Habiganj', 'Nabiganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala5', '81dc9bdb52d04dc20036dbd8313ed055'),
(247, 'Gabtali Blood Bank', 'gabtali@gmail.com', '01654375284', 'Rd#11 H#2 ,Barlekha, Moulvidazar', 'Sylhet', 'Moulvibazar', 'Barlekha', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala6', '81dc9bdb52d04dc20036dbd8313ed055'),
(248, 'Gaurinadi Blood  Bank Club', 'gaurinadi@info.com', '01557645320', 'Rd#11 H#2 ,Kulaura, Moulvidazar', 'Sylhet', 'Moulvibazar', 'Kulaura', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala7', '81dc9bdb52d04dc20036dbd8313ed055'),
(249, 'Hathazari Blood Bank', 'hathazari@gmail.com', '01654375284', 'Rd#11 H#2 ,Moulvidazar Sadar', 'Sylhet', 'Moulvibazar', 'Moulvibazar Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala8', '81dc9bdb52d04dc20036dbd8313ed055'),
(250, 'Janata Blood Bank', 'janata@gmail.com', '01557645320', 'Rd#11 H#2 ,Bishwamvarpur, Sunamganj', 'Sylhet', 'Sunamganj', 'Bishwamvarpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala9', '81dc9bdb52d04dc20036dbd8313ed055'),
(251, 'Jamalpur Blood Bank', 'sbmc@info.com', '01866649721', 'Rd#11 H#2 ,Bishwamvarpur, Sunamganj', 'Sylhet', 'Sunamganj', 'Chhatak', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala10', '81dc9bdb52d04dc20036dbd8313ed055'),
(252, 'Kachua Blood bank', 'kachua@info.com', '01812432453', 'Rd#11 H#2 ,Bishwamvarpur, Sunamganj', 'Sylhet', 'Sunamganj', 'Dharamapasha', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala11', '81dc9bdb52d04dc20036dbd8313ed055'),
(253, 'Kalai Blood Bank', 'kalai@gmail.com', '01557645320', 'Rd#11 H#2 , Sunamganj Sadar', 'Sylhet', 'Sunamganj', 'Sunamganj Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala12', '81dc9bdb52d04dc20036dbd8313ed055'),
(254, 'Lab One Blood Bank', 'lab@info.com', '01557645320', 'Rd#11 H#2 ,Bishwamvarpur, Sunamganj', 'Sylhet', 'Sunamganj', 'Tahirpur', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala13', '81dc9bdb52d04dc20036dbd8313ed055'),
(255, 'Laksam Blood Bank', 'Laksam@gmail.com', '01812432453', 'Rd#11 H#2 ,Beanibazar, Sunamganj', 'Sylhet', 'Sylhet', 'Beanibazar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala14', '81dc9bdb52d04dc20036dbd8313ed055'),
(256, 'Lakshmipur Blood bank', 'lakshmipur@gmail.com', '01812432453', 'Rd#11 H#2 ,Bishwanth,Sylhet', 'Sylhet', 'Sylhet', 'Bishwanath', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala16', '81dc9bdb52d04dc20036dbd8313ed055'),
(257, 'Life Blood Bank', 'lifebank@gmail.com', '01775634532', 'Rd#11 H#2 ,Bishwanth,Sylhet', 'Sylhet', 'Sylhet', 'Golapganj', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala17', '81dc9bdb52d04dc20036dbd8313ed055'),
(258, 'Quantum Blood Bank', 'quantum@info.com', '01866649721', 'Rd#11 H#2 ,Bishwanth,Sylhet', 'Sylhet', 'Sylhet', 'Osmani Nagar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala20', '81dc9bdb52d04dc20036dbd8313ed055'),
(259, 'Ramaganj Blood Bank', 'ramaganj@info.com', '01812432453', 'Rd#11 H#2 ,Sylhet Sadar', 'Sylhet', 'Sylhet', 'Sylhet Sadar', 2, 2, 2, 1, 4, 1, 0, 1, 'Typically replies within 10 minutes.', '', 'mala21', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation_request`
--

CREATE TABLE `blood_donation_request` (
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
-- Dumping data for table `blood_donation_request`
--

INSERT INTO `blood_donation_request` (`id`, `patient_name`, `blood_group`, `required_unit`, `gender`, `age`, `date_of_donation`, `hospital_name`, `hospital_address`, `division`, `city`, `upazila`, `contact_person`, `contact_number`, `patient_history`) VALUES
(8, 'Rahim', 'A+', '2', 'male', 25, 'Argent', 'Popular Hospital', 'Dhanmondi', 'Dhaka', 'Dhaka', 'Dhaka City', 'Rahim', '01842605509', 'Accident'),
(9, 'Ikram', 'O+', '2', 'male', 28, '11/10/2022', 'Prime Hospital', 'Hospital Road ,Majide', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 'Jemmy Akter', '018426055092', 'Blood Infection.'),
(10, 'Sajib Chakribatti', 'A+', '2', 'male', 28, '11/10/2022', 'Labid Hospital', 'Dhanmondi', 'Dhaka', 'Dhaka', 'Dhaka City', 'Karim', '01842605509', 'Open Heart Sergery'),
(11, 'Amina Rahman', 'A+', '1', 'flmale', 23, '10/10/2022', 'Labid Hospital', 'Dhanmondi', 'Dhaka', 'Dhaka', 'Dhaka City', 'Amina', '01845682910', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donors`
--

CREATE TABLE `blood_donors` (
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
-- Dumping data for table `blood_donors`
--

INSERT INTO `blood_donors` (`id`, `frist_name`, `last_name`, `blood_group`, `gender`, `age`, `weight`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `last_donation`, `user_name`, `password`, `image`) VALUES
(2, 'Abdul', 'Aziz', 'O+', 'Male', 25, 60, 'abdulaziz1k99@gmail.com', '+8801842605509', 'Joynogor, Shout Fakirpur', 'Chittagong', 'Noakhali', 'Noakhali Sadar', '25/8/2021', 'aziz1k99', '4891743c6dbd7d9bbe73a77d348a9abb', 'uploads/bdonners/profile-picture/user_id_2_1665227213.jpg'),
(4, 'Jahid', 'Hasan', 'A+', 'Male', 25, 55, 'jahid123@gmail.com', '01983384329', 'Safari park', 'Dhaka', 'Dhaka', 'Dhaka City', '09/02/22', 'jahid123', '98fb1c8e80ee4c84e9287016b7838708', 'uploads/bdonners/profile-picture/user_id_4_1665225948.jpeg'),
(7, '', '', 'A+', 'male', 0, 0, '', '', '', 'select-message', 'select-message', 'select-message', NULL, '', 'd41d8cd98f00b204e9800998ecf8427e', '');

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
(8, 'Siddikbazar Fire Station', '01730002210', 'fssiddikbazar@gmail.gov.bd', 'Siddikbazar', 'Dhaka', 'Dhaka', 'Dhaka City'),
(9, 'Sodorghat Fire Station', '01730002214', 'fssadarghat@gmail.gov.bd', 'Sadarghat', 'Dhaka', 'Dhaka', 'Dhaka City'),
(10, 'Shadharghat River Fire Station', '01317370301', 'fssriver@gmail.gov.bd', 'Sadarghat', 'Dhaka', 'Dhaka', 'Dhaka City'),
(11, 'Postogola Fire Station', '01730002216', 'fspostogola@gmail.gov.bd', 'Postogola', 'Dhaka', 'Dhaka', 'Keraniganj'),
(12, 'Lalbagh Fire Station', '01730002218', 'fslalbag@gmail.gov.bd', 'lalbag', 'Dhaka', 'Dhaka', 'Dhaka City'),
(13, 'Polashi Barak Fire Station', '01730002219', 'fspolashi@gmai.gov.bd', 'Polashi', 'Dhaka', 'Dhaka', 'Dhaka City'),
(14, 'Khilgoan Fire Station', '01730002225', 'fskhilgoan@gmail.gov.bd', 'Khilgoan', 'Dhaka', 'Dhaka', 'Dhaka City'),
(15, 'Tejgaon Fire Station', '01730002226', 'fstejgaon@gmail.gov.bd', 'Tejgaon', 'Dhaka', 'Dhaka', 'Dhaka City'),
(16, 'Mohammadpur Fire Station', '01730002227', 'fsmohammadpur@gmail.gov.bd', 'Mohammadpur', 'Dhaka', 'Dhaka', 'Dhaka City'),
(17, 'Mirpur Fire Station', '01730002229', 'fsmirpur@gmail.gov.bd', 'Mirpur', 'Dhaka', 'Dhaka', 'Dhaka City'),
(18, 'Siddikbazar Fire Station', '01866649721', 'fssiddikbazar@gmail.gov.bd', 'Dagandhuiyan', 'Barisal', 'Barguna', 'Amtali'),
(19, 'Sodorghat Fire Station', '01775634532', 'fssadarghat@gmail.gov.bd', 'Bamna, hospital Rd', 'Barisal', 'Barguna', 'Bamna'),
(20, 'Shadharghat River Fire Station', '01775634532', 'fssriver@gmail.gov.bd', 'Sadar Road-12,H#15', 'Barisal', 'Barguna', 'Barguna Sadar'),
(21, 'Lalbagh Fire Station', '01812432453', 'fslalbag@gmail.gov.bd', 'Islampur Road-12,H-3', 'Barisal', 'Barguna', 'Betagi'),
(22, 'SIDDIQUE BAZAR FIRE  STATION', '01775634532', 'sbmc@info.com', 'Simson Rd, Sadarghat,', 'Barisal', 'Barguna', 'Patharghata'),
(23, 'SADARGHAT NODI FIRE  STATION', '01557645320', 'sandani@gmail.com', 'Shyampur', 'Barisal', 'Barisal', 'Agailjhara'),
(24, 'SADARGHAT FIRE  STATION', '01775634532', 'janata@gmail.com', '36, 48 Kazi Alauddin Rd', 'Barisal', 'Barisal', 'Babuganj'),
(25, 'POSTOGOLA FIRE  STATION', '01775634532', 'angikar@info.com', 'M C Rd, Postogola,', 'Barisal', 'Barisal', 'Bakerganj'),
(26, 'LALBAGH FIRE  STATION', '01822276543', 'sonali@info.com', '22/1 Nur Fattah Lane', 'Barisal', 'Barisal', 'Banaripara'),
(27, 'POLASHI BRACK FIRE STATION', '01775634532', 'agailjharablood@gmail.som', 'Dhakeshwari Rd', 'Barisal', 'Barisal', 'Banaripara'),
(28, 'KHILGAON FIRE SERVICE  STATION', '01557645320', 'khilgaon@gmail.com', 'Shantipur Rd 02', 'Barisal', 'Barisal', 'Gaurnadi'),
(29, 'TEJGAON FIRE SERVICE STATION', '01812432453', 'anawara@gmail.com', 'Shaheed Tajuddin Ahmed Ave', 'Barisal', 'Bhola', 'Bhola Sadar'),
(30, 'MOHAMMADPUR FIRE SERVICE STATION', '01822276543', 'sbmc@info.com', 'Rd#11 H#2 Atgharia', 'Barisal', 'Bhola', 'Burhanuddin'),
(31, 'MIRPUR FIRE SERVICE  STATION', '01775634532', 'sandani@gmail.com', 'Kawkhali Rd-3', 'Barisal', 'Bhola', 'Char Fasson'),
(32, 'KURMITOLA FIRE SERVICE  STATION', '01775634532', 'fssadarghat@gmail.gov.bd', 'Sadarghat', 'Barisal', 'Bhola', 'Daulatkhan'),
(33, 'UTTARA FIRE SERVICE STATION', '01866649721', 'fssiddikbazar@gmail.gov.bd', 'Islampur Road-12,H-3', 'Barisal', 'Bhola', 'Lalmohan'),
(34, 'Jhalokhati Sadar FIRE SERVICE  STATION', '01822276543', 'bijoykumar@gmail.com', 'Baniarchala', 'Barisal', 'Jhalokati', 'Jhalokati Sadar'),
(35, 'Khatalia Fire Station', '01822276543', 'shanara@gmail.com', 'Baniarchala', 'Barisal', 'Jhalokati', 'Kathalia'),
(36, 'Nalchity Fire Station', '01775634532', 'anisulawal@gmail.com', 'Baniarchala', 'Barisal', 'Jhalokati', 'Nalchity'),
(37, 'Rajapur Fire Station', '01822276543', 'bijoykumar@gmail.com', 'Banaripara', 'Barisal', 'Jhalokati', 'Rajapur'),
(38, 'Bauphal FIRE SERVICE  STATION', '01812432453', 'shanara@gmail.com', 'Banaripara', 'Barisal', 'Patuakhali', 'Bauphal'),
(39, 'Dashmina Fire Station', '01822276543', 'sandani@gmail.com', 'anisulawa', 'Barisal', 'Patuakhali', 'Dashmina'),
(40, 'Galachipa FIRE SERVICE  STATION', '01775634532', 'anisulawal@gmail.com', 'Baniarchala', 'Barisal', 'Patuakhali', 'Galachipa'),
(41, 'Kalapara FIRE SERVICE  STATION', '01775634532', 'sonali@info.com', 'Kawkhali Rd-3', 'Barisal', 'Patuakhali', 'Kalapara'),
(42, 'SADARGHAT FIRE SERVICE  STATION', '01557645320', 'angikar@info.com', 'Islampur Road-12,H-3', 'Barisal', 'Patuakhali', 'Mirzaganj'),
(43, 'SADARGHAT FIRE SERVICE  STATION', '01775634532', 'sandani@gmail.com', 'Kawkhali Rd-3', 'Barisal', 'Pirojpur', 'Bhandaria'),
(44, 'Kawkhali FIRE SERVICE  STATION', '01557645320', 'janata@gmail.com', 'Bamna, hospital Rd', 'Barisal', 'Pirojpur', 'Kawkhali'),
(45, 'Mathbaria  FIRE SERVICE  STATION', '01654375284', 'dashmina@gmail.com', 'Rd#11 H#2 Atgharia', 'Barisal', 'Pirojpur', 'Mathbaria'),
(46, 'Nazirpur Fire Station', '01775634532', 'savelife@info.com', 'Islampur Road-12,H-3', 'Barisal', 'Pirojpur', 'Nazirpur'),
(47, 'Pirujpur Sadar Fire Station', '01812432453', 'Sadar@gmail.com', 'Kawkhali Rd-3', 'Barisal', 'Pirojpur', 'Pirojpur Sadar'),
(48, 'Alikdam FIRE SERVICE  STATION', '01654375284', 'savelife@info.com', 'Rd#11 H#2 Atgharia', 'Chittagong', 'Bandarban', 'Ali Kadam'),
(49, 'Bandarban Sadar Fire Station', '01557645320', 'dumki@info.com', 'Bamna, hospital Rd', 'Chittagong', 'Bandarban', 'Bandarban Sadar'),
(50, 'SADARGHAT FIRE SERVICE  STATION', '01812432453', 'savelife@info.com', 'Rd#11 H#2 Atgharia', 'Chittagong', 'Bandarban', 'Naikhongchhari'),
(51, 'SIDDIQUE BAZAR FIER STATION', '01557645320', 'angikar@info.com', 'Islampur Road-12,H-3', 'Chittagong', 'Bandarban', 'Rowangchhari'),
(52, 'Siddikbazar Fire Station', '01775634532', 'dashmina@gmail.com', 'Kawkhali Rd-3', 'Chittagong', 'Bandarban', 'Rowangchhari'),
(53, 'Sodorghat Fire Station', '01654375284', 'sonali@info.com', 'Bamna, hospital Rd', 'Chittagong', 'Bandarban', 'Ruma'),
(54, 'Sodorghat Fire Station', '01557645320', 'angikar@info.com', 'Rd#11 H#2 Atgharia', 'Chittagong', 'Brahmanbaria', 'Akhaura'),
(55, 'Shadharghat River Fire Station', '01812432453', 'savelife@info.com', 'Islampur Road-12,H-3', 'Chittagong', 'Brahmanbaria', 'Bancharampur'),
(56, 'Lalbagh Fire Station', '01775634532', 'akram@gmail.com', 'Kawkhali Rd-3', 'Chittagong', 'Brahmanbaria', 'Brahmanbaria Sadar'),
(57, 'Alikdam FIRE SERVICE  STATION', '01812432453', 'savelife@info.com', 'Bamna, hospital Rd', 'Chittagong', 'Brahmanbaria', 'Brahmanbaria Sadar'),
(58, 'Dashmina Fire Station', '01775634532', 'dashmina@gmail.com', 'Rd#11 H#2 Alipur', 'Chittagong', 'Brahmanbaria', 'Bijoynagar'),
(59, 'SADARGHAT FIRE SERVICE  STATION', '01812432453', 'sandani@gmail.com', 'Islampur Road-12,H-3', 'Chittagong', 'Chandpur', 'Chandpur Sadar'),
(60, 'Sodorghat Fire Station', '01557645320', 'anawara@gmail.com', 'Kawkhali Rd-3', 'Chittagong', 'Chandpur', 'Faridganj'),
(61, 'SIDDIQUE BAZAR FIER STATION', '01866649721', 'sonali@info.com', 'SIDDIQUE BAZAR', 'Chittagong', 'Chandpur', 'Haimchar'),
(62, 'Siddikbazar Fire Station', '01812432453', 'Siddikbazar@gmail.com', 'Rd#11 H#2 Siddikbazar', 'Chittagong', 'Chandpur', 'Haziganj'),
(63, 'Shadharghat River Fire Station', '01557645320', 'savelife@info.com', 'Shadharghat', 'Chittagong', 'Chittagong', 'Anwara'),
(64, 'Alikdam FIRE SERVICE  STATION', '01557645320', 'alif@info.com', 'Rd#11 H#2 Alikdam', 'Chittagong', 'Chittagong', 'Fatikchhari'),
(65, 'Hathazari Fire Station', '01557645320', 'hathazari@gmail.com', 'Rd#11 H#2', 'Chittagong', 'Chittagong', 'Hathazari'),
(66, 'Shadharghat River Fire Station', '01775634532', 'sonali@info.com', 'Islampur Road-12,H-3', 'Chittagong', 'Chittagong', 'Kotwali Thana'),
(67, 'Barura Fire Station', '01557645320', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Chittagong', 'Comilla', 'Barura'),
(68, 'Chandina Fire Service Station', '01812432453', 'angikar@info.com', 'Akbar Ali Road-12,H-3', 'Chittagong', 'Comilla', 'Chandina'),
(69, 'Chauddagram Fire Service Station', '01557645320', 'janata@gmail.com', 'Akbar Ali Road-12,H-3', 'Chittagong', 'Comilla', 'Chauddagram'),
(70, 'Alimiya Fire Service Station', '01557645320', 'anisulawal@gmail.com', 'Rd#11 H#2 Atgharia', 'Chittagong', 'Comilla', 'Laksam'),
(71, 'Kabir Fire Service Station', '01654375284', 'sonali@info.com', 'Kabirpur', 'Chittagong', 'Comilla', 'Laksam'),
(72, 'Alikdam FIRE SERVICE  STATION', '01822276543', 'angikar@info.com', 'Islampur Road-12,H-3', 'Chittagong', 'Comilla', 'Nangalkot'),
(73, 'Adabor Fire Service Station', '01557645320', 'ocadabor@dmp.gov.bd', 'House#105/A', 'Dhaka', 'Dhaka', 'Dhamrai'),
(74, 'Badda Fire Service Station', '01775634532', 'ocbadda@dmp.gov.bd', 'H-12/A,R-17,DIT Project', 'Dhaka', 'Dhaka', 'Dohar'),
(75, 'Bangshal Fire Service Station', '01557645320', 'sonali@info.com', 'Rd#11 H#2 Atgharia', 'Dhaka', 'Dhaka', 'Keraniganj'),
(76, 'Bimanbondor Fire Service Station', '01557645320', 'ocbimanbondor@dmp.gov.bd', '1st Floor Rab(HQ)', 'Dhaka', 'Dhaka', 'Nawabganj'),
(77, 'Cantonment Fire Service Station', '01775634532', 'occantonment@dmp.gov.bd', 'MES jia Koloni,Cantonment', 'Dhaka', 'Faridpur', 'Alfadanga'),
(78, 'Chalkbazar Fire Service Station', '01557645320', 'occhalkbazar.dmp@gmail.com', 'Bakshi Bazar Road', 'Dhaka', 'Faridpur', 'Bhanga'),
(79, 'Dakshinkhan Fire Service Station', '01866649721', 'ocdhakshinkhan.dmp@gmail.com', 'Bidurbari Road, Thana More', 'Dhaka', 'Faridpur', 'Boalmari'),
(80, 'Darus-Salam Fire Service Station', '01812432453', 'ocdsalam@dmp.gov.bd', '100 Golertek', 'Dhaka', 'Faridpur', 'Charbhadrasan'),
(81, 'Demra Fire Service Station', '01866649721', 'ocdemra@dmp.gov.bd', 'Bowni Jute mills, Demra', 'Dhaka', 'Faridpur', 'Faridpur Sadar'),
(82, 'Gazipur Sadar Fire Service Station', '01812432453', 'savelife@info.com', 'Islampur Road-12,H-3', 'Dhaka', 'Gazipur', 'Gazipur Sadar'),
(83, 'Kaliakair Fire Service Station', '01775634532', 'decope@gmail.com', 'Kawkhali Rd-3', 'Dhaka', 'Gazipur', 'Kaliakair'),
(84, 'Kaliganj Fire Service Station', '01866649721', 'angikar@info.com', 'Rd#11 H#2 Atgharia', 'Dhaka', 'Gazipur', 'Kaliganj'),
(85, 'Kapasia Fire Service Station', '01557645320', 'sonali@info.com', 'Bamna, hospital Rd', 'Dhaka', 'Gazipur', 'Kapasia'),
(86, 'Kapasia Fire Service Station', '01775634532', 'shanara@gmail.com', 'Rd#11 H#2 Atgharia', 'Dhaka', 'Gazipur', 'Kapasia'),
(87, 'Sreepur Fire Service Station', '01812432453', 'angikar@info.com', 'Islampur Road-12,H-3', 'Dhaka', 'Gazipur', 'Sreepur'),
(88, 'Austragram Fire Service Station', '01812432453', 'sonali@info.com', 'Kawkhali Rd-3', 'Dhaka', 'Gopalganj', 'Gopalganj Sadar'),
(89, 'Kashiani Fire Service Station', '01775634532', 'anisulawal@gmail.com', 'Kawkhali Rd-3', 'Dhaka', 'Gopalganj', 'Kashiani'),
(90, 'Alikdam FIRE SERVICE  STATION', '01654375284', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Dhaka', 'Gopalganj', 'Kotalipara'),
(91, 'SADARGHAT FIRE SERVICE  STATION', '01654375284', 'sandani@gmail.com', 'Islampur Road-12,H-3', 'Dhaka', 'Gopalganj', 'Muksudpur'),
(92, 'Shadharghat River Fire Station', '01557645320', 'savelife@info.com', 'Kawkhali Rd-3', 'Dhaka', 'Gopalganj', 'Tungipara'),
(93, 'Sodorghat Fire Station', '01654375284', 'janata@gmail.com', 'Rd#11 H#2 Atgharia', 'Dhaka', 'Kishoreganj', 'Austagram'),
(94, 'Siddikbazar Fire Station', '01557645320', 'angikar@info.com', 'Islampur Road-12,H-3', 'Dhaka', 'Kishoreganj', 'Itna'),
(95, 'SIDDIQUE BAZAR FIER STATION', '01557645320', 'sonali@info.com', 'Kawkhali Rd-3', 'Dhaka', 'Kishoreganj', 'Karimganj'),
(96, 'SADARGHAT FIRE  STATION', '01557645320', 'angikar@info.com', 'Akbar Ali Road-12,H-3', 'Dhaka', 'Kishoreganj', 'Katiadi'),
(97, 'Alikdam FIRE SERVICE  STATION', '01654375284', 'savelife@info.com', 'anisulawa', 'Dhaka', 'Kishoreganj', 'Katiadi'),
(98, 'Adabor Fire Service Station', '01775634532', 'savelife@info.com', 'Sadar Road-12,H#15', 'Dhaka', 'Kishoreganj', 'Kishoreganj Sadar'),
(99, 'Alimiya Fire Service Station', '01557645320', 'savelife@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Bagerhat', 'Bagerhat Sadar'),
(100, 'Austragram Fire Service Station', '01775634532', 'savelife@info.com', 'Kawkhali Rd-3', 'Khulna', 'Bagerhat', 'Morrelganj'),
(101, 'Sodorghat Fire Station', '01654375284', 'savelife@info.com', 'Kawkhali Rd-3', 'Khulna', 'Bagerhat', 'Rampal'),
(102, 'SADARGHAT FIRE SERVICE  STATION', '01557645320', 'savelife@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Bagerhat', 'Sarankhola'),
(103, 'Sodorghat Fire Station', '01812432453', 'savelife@info.com', 'Bamna, hospital Rd', 'Khulna', 'Bagerhat', 'Sarankhola'),
(104, 'Sodorghat Fire Station', '01557645320', 'janata@gmail.com', 'Rd#11 H#2 Atgharia', 'Khulna', 'Jessore', 'Abhaynagar'),
(105, 'Alikdam FIRE SERVICE  STATION', '01654375284', 'sonali@info.com', 'Abhaynadar Rd-3,', 'Khulna', 'Jessore', 'Keshabpur'),
(106, 'Shadharghat River Fire Station', '01654375284', 'sandani@gmail.com', 'Islampur Road-12,H-3', 'Khulna', 'Jessore', 'Jashore Sadar'),
(107, 'SIDDIQUE BAZAR FIER STATION', '01654375284', 'savelife@info.com', 'Rd#11 H#2 Atgharia', 'Khulna', 'Jessore', 'Sharsha'),
(108, 'Dashmina Fire Station', '01557645320', 'angikar@info.com', 'Sadar Road-12,H#15', 'Khulna', 'Jhenaidah', 'Jhenaidah Sadar'),
(109, 'Dakshinkhan Fire Service Station', '01775634532', 'angikar@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Jhenaidah', 'Harinakunda'),
(110, 'Darus-Salam Fire Service Station', '01557645320', 'savelife@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Jhenaidah', 'Shailkupa'),
(111, 'Demra Fire Service Station', '01557645320', 'savelife@info.com', 'Bamna, hospital Rd', 'Khulna', 'Khulna', 'Batiaghata'),
(112, 'Rajapur Fire Station', '01654375284', 'savelife@info.com', 'Rd#11 H#2', 'Khulna', 'Khulna', 'Dacope'),
(113, 'Hathazari Fire Station', '01557645320', 'dumki@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Khulna', 'Dumuria'),
(114, 'Galachipa FIRE SERVICE  STATION', '01557645320', 'janata@gmail.com', 'Rd#11 H#2 Alipur', 'Khulna', 'Khulna', 'Dumuria'),
(115, 'Daulatpu Fire Station', '01775634532', 'Daulatpu@gmail.com', 'Rd#11 H#2', 'Khulna', 'Khulna', 'Daulatpur Thana'),
(116, 'Bheramara Fire Service Station', '01812432453', 'savelife@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Kushtia', 'Bheramara'),
(117, 'Daulatpur Fire Service Station', '01775634532', 'shanara@gmail.com', 'Islampur Road-12,H-3', 'Khulna', 'Kushtia', 'Daulatpur'),
(118, 'Khoksa Fire Service Station', '01557645320', 'savelife@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Kushtia', 'Khoksa'),
(119, 'Kumarkhali Fire Service Station', '01557645320', 'sonali@info.com', 'Islampur Road-12,H-3', 'Khulna', 'Kushtia', 'Kumarkhali'),
(120, 'SADARGHAT FIRE SERVICE  STATION', '01557645320', 'anisulawal@gmail.com', 'Anisulawal Road-16,H-6', 'Khulna', 'Kushtia', 'Kushtia Sadar'),
(121, 'Baksiganj  Fire Service Station', '01812432453', 'savelife@info.com', 'Anisulawal Road-16,H-6', 'Mymensingh', 'Jamalpur', 'Baksiganj'),
(122, 'Dewanganj Fire Service Station', '01866649721', 'sandani@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Jamalpur', 'Dewanganj'),
(123, 'Islampur Fire Service Station', '01775634532', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Jamalpur', 'Islampur'),
(124, 'Jamalpur Sadar Fire Service Station', '01557645320', 'savelife@info.com', 'Jamalpur Road-12,H-3', 'Mymensingh', 'Jamalpur', 'Jamalpur Sadar'),
(125, 'SADARGHAT FIRE SERVICE  STATION', '01557645320', 'sonali@info.com', 'Kawkhali Rd-3', 'Mymensingh', 'Jamalpur', 'Sarishabari'),
(126, 'Gauripur Fire Service Station', '01654375284', 'anisulawal@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Gauripur'),
(127, 'Sodorghat Fire Station', '01775634532', 'sandani@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Haluaghat'),
(128, 'Alikdam FIRE SERVICE  STATION', '01812432453', 'savelife@info.com', 'Rd#11 H#2 Atgharia', 'Mymensingh', 'Mymensingh', 'Ishwarganj'),
(129, 'Mymensingh Sadar Fire Service Station', '01812432453', 'angikar@info.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Mymensingh', 'Mymensingh Sadar'),
(130, 'Cantonment Fire Service Station', '01812432453', 'sonali@info.com', 'Central Office, T.C(Ground Floor)', 'Mymensingh', 'Mymensingh', 'Muktagachha'),
(131, 'Atpara  Fire Service Station', '01557645320', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Netrakona', 'Atpara'),
(132, 'Barhatta Fire Service Station', '01812432453', 'angikar@info.com', 'Kawkhali Rd-3', 'Mymensingh', 'Netrakona', 'Barhatta'),
(133, 'Durgapur Fire Service Station', '01866649721', 'sandani@gmail.com', 'Rd#11 H#2 Atgharia', 'Mymensingh', 'Netrakona', 'Durgapur'),
(134, 'Kalmakanda Fire Service Station', '01812432453', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Netrakona', 'Kalmakanda'),
(135, 'Dashmina Fire Station', '01557645320', 'savelife@info.com', 'Sadar Road-12,H#15', 'Mymensingh', 'Netrakona', 'Netrokona Sadar'),
(136, 'Jhenaigati Fire Service Station', '01812432453', 'Jhenaigati@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Sherpur', 'Jhenaigati'),
(137, 'Nakla Fire Service Station', '01557645320', 'nakla@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Sherpur', 'Nakla'),
(138, 'Nalitabari Fire Service Station', '01822276543', 'nalitabari@gmail.com', 'Islampur Road-12,H-3', 'Mymensingh', 'Sherpur', 'Nalitabari'),
(139, 'Sherpur Sadar Fire Service Station', '01557645320', 'sandani@gmail.com', 'Sadar Road-12,H#15', 'Mymensingh', 'Sherpur', 'Sherpur Sadar'),
(140, 'Sodorghat Fire Station', '01557645320', 'angikar@info.com', 'Bamna, hospital Rd', 'Mymensingh', 'Sherpur', 'Sreebardi'),
(141, 'Adamdighi Fire Service Station', '01812432453', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Rajshahi', 'Bogra', 'Adamdighi'),
(142, 'Bogura Sadar Fire Service Station', '01557645320', 'shanara@gmail.com', 'Sadar Road-12,H#15', 'Rajshahi', 'Bogra', 'Bogura Sadar'),
(143, 'SADARGHAT FIRE SERVICE  STATION', '01866649721', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Rajshahi', 'Bogra', 'Gabtali'),
(144, 'SADARGHAT FIRE SERVICE  STATION', '01654375284', 'janata@gmail.com', 'Islampur Road-12,H-3', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(145, 'Sodorghat Fire Station', '01812432453', 'angikar@info.com', 'Sadar Road-12,H#15', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(146, 'Alikdam FIRE SERVICE  STATION', '01812432453', 'savelife@info.com', 'Bamna, hospital Rd', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(147, 'Shadharghat River Fire Station', '01557645320', 'sandani@gmail.com', 'Road-12,H-3 Azizpur', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(148, 'Adabor Fire Service Station', '01557645320', 'anisulawal@gmail.com', 'Rd#11 H#2 ,Bishwanth', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(149, 'Alimiya Fire Service Station', '01775634532', 'anawara@gmail.com', 'Rd#11 H#2 Alikdam', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(150, 'Austragram Fire Service Station', '01812432453', 'ocbadda@dmp.gov.bd', 'Kawkhali Rd-3', 'Chittagong', 'Noakhali', 'Noakhali Sadar');

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
  `password` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `email`, `phone`, `type`, `address`, `division`, `city`, `upazila`, `user_name`, `password`, `image`) VALUES
(4, 'Bangabandhu Sheikh Mujib Medical University Hospital', 'bsmmu@gmail.com', '01733632563', 'General Medicine & Surgery', 'B block.BSMMU,Dhaka 1205,Bangladesh.', 'Dhaka', 'Dhaka', 'Dhaka City', 'bsmmu1', 'b3885497becd7cce48b0b0757bcc4f80', 'uploads/hospital/logo/user_id_4_1665339479.png'),
(5, 'Dhaka Medical Collage Hospital', 'dmcs@gmail.com', '01713373180', 'General Medicine & Surgery', 'Secretariat Rd, Dhaka 1000.', 'Dhaka', 'Dhaka', 'Dhaka City', 'dmcs1', '8520ff07802b3432cd8c05ae4941614f', ''),
(6, 'Kurmitola General Hospital', 'kgh@gmail.com', '01713373181', 'General Medicine & Surgery', 'Kurmitola, Dhaka-1206', 'Dhaka', 'Dhaka', 'Dhaka City', 'kgs1', '5a7022c97a8a2451f02f002fc1f63341', ''),
(7, 'National Institute Of Neurosciences & Hospital', 'ninh@gmail.com', '01713373126', 'General Medicine & Surgery', 'Sher-e-Bangla Nagar, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka City', 'ninh1', 'abf9beb51dd9c13484930bac9c566f89', ''),
(8, 'Shaheed Suhrawardy Medical College and Hospital', 'ssmch@gmail.com', '01713373181', 'General Medicine & Surgery', 'Sher-e-Bangla Nagar, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka City', 'ssmch1', '2f4fc7fd01e8a42c0727cb65902f2e57', ''),
(9, 'Chattogram Medical College Hospital', 'cmch@gmail.com', '01713373180', 'General Medicine & Surgery', 'Fazlul Kader Rd, Chattogram', 'Chittagong', 'Chittagong', 'Anwara', 'cmch1', '71d27443563ef593ca4b698fef0eb6b0', ''),
(10, 'Sher-e-bangla medical College hospital', 'sbmch@gmail.com', '01713373181', 'General Medicine & Surgery', 'Bando Road, Barishal', 'Barisal', 'Barisal', 'Barishal Sadar', 'sbmch1', '7ecb0089d1f7d4a6505768e3dd918707', ''),
(11, 'National Institute of Ear, Nose And Throat', 'nie@gmail.com', '01713373136', 'Specialized Hospital', 'Love Road, Tejgaon, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka City', 'nie1', '615ecc6939eb4ebf5becee0099f4ae7a', ''),
(13, 'National Kidney Institute and Hospital', 'nkis@gmail.com', '01713373171', 'Specialized Hospital', 'Sher-e Bangla Nagar', 'Dhaka', 'Dhaka', 'Dhaka City', 'nkis1', 'b47f1d15f8682ee43785811d9e9ed984', ''),
(14, 'Bangladesh Shishu Hospital and Institute', 'bshi@gmail.com', '01733632557', 'Child Hospital', 'Sher-e-Bangla Nagar, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka City', 'bshi1', 'a96a8e315319ef80e269153da471843c', ''),
(15, 'Square Hospitals Ltd', 'info@squarehospital.com', '01313718687', 'General Surgery & Medicine.', 'Bir Uttam Qazi Nuruzzaman Sarak,Panthapath.Dhaka.', 'Dhaka', 'Dhaka', 'Dhaka City', 'square1', '0d1387a428cab14bb109f2a2d1833870', ''),
(16, 'Sheikh Fazilatunnessa Mujib Memorial KPJ Specialized Hospital & Nursing College.', 'info@sfmmkpjsh.com', '01810008080', 'General Surgery & Medicine.', 'Tetuibari,Kasimpur,GAZIPUR,bANGLADESH.', 'Dhaka', 'Gazipur', 'Kaliganj', 'sheikh1', 'ca162c9abdac55983abc7bf406ffada7', ''),
(17, 'Popular Diagnostic Center ltd.', 'info@populardiagonstic.com', '09613787801', 'General Surgery & Medicine.', 'Road#2, Dhanmondi R/A, Dhaka-1205,Bangladesh.', 'Dhaka', 'Dhaka', 'Dhaka City', 'popular1', 'a3de4078e2a12eb8545340137a91b1b7', ''),
(18, 'Labaid Hospital ltd.', 'info@labaid.com', '01733632536', 'General Surgery & Medicine.', 'House#06,Road#04, Dhanmondi Dhaka 1205,Bangladesh.', 'Dhaka', 'Dhaka', 'Dhaka City', 'labaid1', 'edfa3dbcab9059bd0d04ac1229481e13', ''),
(19, 'Asgar Ali Hospital', 'info@asgaralihospital.com', '01787683333', 'General Surgery & Medicine.', '111/1/A Distillery Road, Gandaria, Dhaka-1204.', 'Dhaka', 'Dhaka', 'Dhaka City', 'asgar1', '1c4fd74edd868071706d23fa35e3b73d', ''),
(20, 'Ibn Sina Specialized Hospital', 'info@ibnsinatrust.com', '09610010615', 'General Surgery & Medicine.', 'House#48, Road#9/A, Dhanmondi, Dhaka 1209.', 'Dhaka', 'Dhaka', 'Dhaka City', 'ibn1', '08747156db19da60ff6048f612fbf4b5', ''),
(21, 'United Hospital', 'info@unitedhospital.com', '01914001234', 'General Surgery & Medicine.', 'Road#5, Dhanmondi R/A, Dhaka-1205,Bangladesh.', 'Dhaka', 'Dhaka', 'Dhaka City', 'united1', '5e0d4e8365b47f6c1d91541d49cc606b', ''),
(22, 'Harun Eye Foundation Hospital', 'info@hefhbd.com', '01531210502', 'General Surgery & Medicine.', 'House#12/A, Road 05, Mirpur Main road, Dhanmondi, Dhaka-1215.', 'Dhaka', 'Dhaka', 'Dhaka City', 'harun1', '7a397f94594808f2acd1ddcd73cbab78', ''),
(23, 'Evercare Hospital', 'info@evercare.com', '01733632536', 'General Surgery & Medicine.', 'Bashundhara residential Area, Dhaka.', 'Dhaka', 'Dhaka', 'Dhaka City', 'evercare1', '39a8fb73f3567f536d2fafd62fa070c4', ''),
(24, 'BIRDEM Hospital', 'info@birdem.com', '01733632525', 'General Surgery & Medicine.', 'Shahbag Mor,Dhaka.', 'Dhaka', 'Dhaka', 'Dhaka City', 'birdem1', 'fc6dd8f6457896ee86b5c5a1d4f57478', ''),
(25, 'Kazi Hospital Ltd.', 'info@kazihospital.com', '01733632525', 'General Surgery & Medicine.', 'Bagherbazar,Gazipur Sadar, Gazipur.', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'kazi1', '390e0f15dd68de54430dc634a1353a17', ''),
(26, 'Al-Hera Hospital.', 'info@alherahospitall.com', '01733632525', 'General Surgery & Medicine.', 'Mawna Chowrasta,Sreepur, Gazipur.', 'Dhaka', 'Gazipur', 'Sreepur', 'alhera1', '26e0d8b439ef40fb5fd84e79191b43da', ''),
(27, 'Moon Hospital', 'info@moonhospital.com', '01733632525', 'General Surgery & Medicine.', 'Jautola,Cumilla.', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', 'moon1', 'eeac7f42e6fe8b0bf424734bb7d3c05d', ''),
(28, 'Cumilla Tower Hospital.', 'info@tower.com', '01733632525', 'General Surgery & Medicine.', 'Kandirpar,Cumilla.', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', 'tower1', '79835ea3522d3f99a86de822097693ca', ''),
(29, 'Shamim Eye Hospital', 'info@shamim.com', '01733632552', 'Eye Hospital', 'Mawna Chowrasta,Sreepur, Gazipur.', 'Dhaka', 'Gazipur', 'Sreepur', 'shamim1', 'bf7eeff09f75cd141169e6ed6207977e', ''),
(30, 'Trisha Clinick', 'mansurul@gmail.com', '01733632525', 'General Surgery & Medicine.', 'Madrasa More.', 'Rajshahi', 'Natore', 'Natore Sadar', '2000', '08f90c1a417155361a5c4b8d297e0d78', ''),
(31, 'Adhunik Sadar Hospital', 'salahuddinhaider@gmail.com', '01733632536', 'General Surgery & Medicine.', 'Shibganj', 'Rangpur', 'Thakurgaon', 'Thakurgaon Sadar', '2001', 'd0fb963ff976f9c37fc81fe03c21ea7b', ''),
(32, 'Shiram Clinic', 'salahuddinhaider@gmail.com', '01733632552', 'Child Hospital', 'Charpara More', 'Mymensingh', 'Mymensingh', 'Mymensingh Sadar', '2003', 'a591024321c5e2bdbd23ed35f0574dde', ''),
(33, 'Moon Specialized Hospital', 'moonsph@gmail.com', '01733632525', 'General Surgery & Medicine.', 'Thana Moor', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', '2010', 'd7a84628c025d30f7b2c52c958767e76', ''),
(34, 'Aleya Hospital', 'aleya@gmail.com', '01733632539', 'General Surgery & Medicine.', 'Mawna Chowrasta', 'Dhaka', 'Gazipur', 'Sreepur', '2011', 'c8758b517083196f05ac29810b924aca', ''),
(35, 'Khairul Hospital ltd.', 'khairul@gmail.com', '01733632525', 'General Surgery & Medicine.', 'Bagher bazar', 'Dhaka', 'Gazipur', 'Gazipur Sadar', '2012', '253614bbac999b38b5b60cae531c4969', '');

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
(11, 'Dr. Farid Uddin', 'MBBS,MD.', 'Endrocrinologist', 'Friday-Sun [10 AM - 8 PM]', 'fariduddin@gmail.com', '01713373171', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 4),
(12, 'Dr. Gopen Kumar Kundu', 'MBBS,MD.', 'Neurologist', 'Friday-Sun [10 AM - 8 PM]', 'gopen@gmail.com', '01713373171', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 4),
(13, 'Dr. S A Khan', 'MBBS,MU.', 'Eurologist', 'Friday-Sun [12 PM - 8 PM]', 'sakhan@gmail.com', '01713373181', 'uploads/doctors/image/user_id_4_1665339891.png', 3, 4),
(14, 'Dr. A K Ahmedullah', 'MBBS,MD.', 'Rheumatologist', 'Friday-Sun [11 AM - 5 PM]', 'akahmedullah@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 4, 4),
(15, 'Dr. Sayeba Akhter', 'MBBS,MD.', 'Obstetrician and Gynecologist', 'Friday-Sun [1 PM - 8 PM]', 'sayeba@gmail.com', '01713373181', 'uploads/doctors/image/user_id_4_1665339891.png', 5, 4),
(16, 'Dr. Pran Gopal Datta', 'MBBS,MD.', 'E.N.T', 'Friday-Sun [11 AM - 5 PM]', 'prangopal@gmail.com', '01713373171', 'uploads/doctors/image/user_id_4_1665339891.png', 6, 4),
(17, 'Dr. Afiqul Islam', 'MBBS,MD.', 'Pediatrician', 'Friday-Sun [11 AM - 5 PM]', 'ariful@gmail.com', '01733632563', 'uploads/doctors/image/user_id_4_1665339891.png', 6, 4),
(18, 'Dr. Akm Anwarul  Islam', 'MBBS,MU.', 'Urologist', 'Friday-Sun [12 PM - 8 PM]', 'anwarul@gmail.com', '01733632563', 'uploads/doctors/image/user_id_4_1665339891.png', 7, 4),
(19, 'Dr. Sheikh Hasanur Rahman', 'MBBS,MU.', 'E.N.T', 'Friday-Sun [1 PM - 8 PM]', 'hasanurrahman@gmail.com', '01733632563', 'uploads/doctors/image/user_id_4_1665339891.png', 8, 4),
(20, 'Dr. Harasit Kumar Paul', 'MBBBS', 'Dermatologist', 'Friday-Sun [11 AM - 5 PM]', 'harasit@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 9, 4),
(21, 'Dr. Abdul Wahab', 'MBBS,MD.', 'Dermatologist', 'Friday-Sun [12 PM - 8 PM]', 'abdulwahab@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 10123, 4),
(22, 'Prof. Dr. M. N. Huda', 'MBBS, DDV, FCPS.', 'Dermatologist,Sexologist.', 'Saturday-Tuesday [11 AM - 5 PM]', 'mnhuda@gmail.com', '01713373181', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 5),
(23, 'Prof. Dr. Salma Sultana', 'MBBS,FCPS,MS', 'Breast surgery Specialist', 'Friday-Sun [12 PM - 8 PM]', 'salmasultana@gmail.com', '01713373171', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 5),
(24, 'Prof. Dr. Md. Kamrul Islam', 'MBBS,FCPS,MS,FRCS', 'Urology, Kidney Transplant Specialist.', 'Saturday-Tuesday [11 AM - 5 PM]', 'kamrulislam@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 3, 5),
(25, 'Prof. Dr. Md. Hafizur Rahman', 'MBBS,DEM, MD, MACE', 'Diabetes Specialist', 'Saturday-Tuesday [11 AM - 5 PM]', 'hafizurrahman@gmail.com', '01713373136', 'uploads/doctors/image/user_id_4_1665339891.png', 4, 5),
(26, 'Prof. Dr. Khan Abul Kalam Azad', 'MBBS,FCPS,MS,FRCS', 'Medicine Specialist', 'Friday-Monday [11 AM - 5 PM]', 'abulkalamazad@gmail.com', '01713373136', 'uploads/doctors/image/user_id_4_1665339891.png', 5, 5),
(27, 'Dr. Rebeka Sultana', 'MBBS,BCS,DDV,FCPS', 'Skin,Allergy,Leprosy Specialist', 'Friday-Sun [10 AM - 8 PM]', 'rebeka@gmail.com', '01713373171', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 6),
(28, 'Dr. Zebun Nessa', 'MBBS,MCPS,FCPS,BCS', 'Gynecology & Obsterics Specialist', 'Friday-Sun [1 PM - 8 PM]', 'zebunnessa@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 6),
(29, 'Dr. Md Jahangir Kobir', 'MBBS,MD,BCS.', 'Liver & Medicine Specialist.', 'Saturday-Tuesday [11 AM - 5 PM]', 'jahangirkabir@gmail.com', '01713373181', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 7),
(30, 'Dr. Maimuna Sultana', 'MBBS,BCS,FCPS,MD,CCD', 'Medicne,Cardiology & Diabetes Specialist.', 'Friday-Sun [10 AM - 8 PM]', 'maimunasultana@gmail.com', '01713373136', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 7),
(31, 'Prof. Dr. Tahmina Hossain', 'MBBS,FCPS.', 'Gynecology & Obsterics Specialist', 'Friday-Sun [12 PM - 8 PM]', 'tahminahossain@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 8),
(32, 'Dr. Md. Zahid Ferdous', 'MBBS,MS.', 'Orthopedic Surgeon', 'Friday-Sun [12 PM - 8 PM]', 'zahidferduos@gmail.com', '01713373181', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 8),
(33, 'Dr. Shahnaz Sigma', 'MBBS,FCPS.', 'Gynecology & Obsterics Specialist', 'Friday-Sun [1 PM - 8 PM]', 'shahnazsigma@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 9),
(34, 'Dr. Asma Rumanaz Shahid', 'MBBS,DGO,MCPS,MS', 'Gynecology & Obsterics Specialist', 'Friday-Sun [1 PM - 8 PM]', 'asmarumanazshahid@gmail.com', '01713373180', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 9),
(35, 'Dr. Salahuddin Mohammed Ali Haider', 'MBBS,FCPS,MD', 'Liver Diseases Specialist.', 'Friday-Tuesday[10 Am-5 PM]', 'salahuddinhaider@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 9),
(36, 'Dr. Bijoy Kumar Dutta', 'MBBS, BCS, MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'bijoykumar@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 9),
(37, 'Prof Dr. Mansurul Alam', 'MBBS, BCS, MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mansurul@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 10),
(38, 'Md. Anisul Awal', 'MBBS, BCS, MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'anisulawal@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 10),
(39, 'Prof. Dr. Shahanara Chowdhury', 'MBBS,FCPS,DMED', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'shanara@gmail.com', '01733632528', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 11),
(40, 'Dr. Chandan Kumar Das', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'chandankumar@gmail.com', '01733632587', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 11),
(41, 'Prof. Dr. Basana Muhuri', 'MBBS,FCPS.', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'basana@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 14),
(42, 'Dr. Saroj Kanti Chowdhury', 'MBBS,FCPS,DMED', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'sarojkanti@gmail.com', '01256+56521', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 14),
(43, 'Dr. Shiuly Majumdar', 'MBBS,FCPS,MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'shiuly@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 13),
(44, 'Dr. Samira jamal', 'MBBS, BCS, MD', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'samirajamal@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 13),
(45, 'Dr. Ershad Uddin Ahmed', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'ershad@gmail.com', '01733632528', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 15),
(46, 'Dr. Fahmida Islam Chowdhury', 'MBBS,FCPS.', 'Gynecology', 'Friday-Tuesday[11 Am-8 PM]', 'fahmida@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 15),
(47, 'Prof. Dr. Sahena Akhter', 'MBBS,FCPS,DGO.', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'sahena@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 16),
(48, 'Dr. Pradip Kumar Kayasthagir', 'MBBS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'pradipkumar@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 16),
(49, 'Dr. Abdus Salam', 'MBBS, BCS, MS.', 'Urologist.', 'Friday-Tuesday[11 Am-8 PM]', 'abdussalam@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 17),
(50, 'Dr. S.M. Tareq Uddin Ahmed.', 'MBBS,FCPS.', 'Throat Specialist.', 'Friday-Tuesday[11 Am-8 PM]', 'tarequddin@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 17),
(51, 'Dr. Ashish Dey', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'asishdey@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 18),
(52, 'Dr. Masihuzzaman Alpha', 'MBBS,MCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'mashuzzaman@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 18),
(53, 'Prof. Dr. Badrul Alam.', 'MBBS,FCPS.', 'Child Specialist.', 'Friday-Tuesday[10 Am-5 PM]', 'badrulalam@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 19),
(54, 'Prof. Dr. M. Kamal Uddin', 'MBBS,MS', 'Brain Surgeon', 'Friday-Tuesday[11 Am-8 PM]', 'kamaluddin@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 19),
(55, 'Dr. Prabir Kumar Das', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'prabirkumardas@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 20),
(56, 'Dr. Nitai Prasad Dutta', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'nitaiprosaddutta@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 20),
(57, 'Dr. Satyajit Mallick', 'MBBS, BCS, MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'satyajitmallick@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 21),
(58, 'Dr. Sakera Ahmed', 'MBBS, BCS, FCPS', 'Breast Surgeon.', 'Friday-Tuesday[10 Am-5 PM]', 'sakera@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 21),
(59, 'Dr. Taslima Begum', 'MBBS,FCPS,DMED', 'Eye Speciallist.', 'Friday-Tuesday[10 Am-5 PM]', 'taslimabegum@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 22),
(60, 'Prof. Dr. Md. Nurul Huda', 'MBBS,FCPS,DMED', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'nurulhuda@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 22),
(61, 'Dr. Ali Asgar Chowdhury', 'MBBS,FCPS,DMED', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'aliasgar@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 23),
(62, 'Dr. Mohiuddin A. Sikder', 'MBBS,FCPS.', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mohiuddinsikder@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 23),
(63, 'Dr. Najma Mahboob', 'MBBS, BCS, MD', 'Breast Surgeon.', 'Friday-Tuesday[10 Am-5 PM]', 'nazmamahboob@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 24),
(64, 'Dr. Shagorika Sharmeen', 'MBBS,FCPS,DMED', 'Neurology Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'shagorikasharmin@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 24),
(65, 'Dr. Muhammad Taiyeb', 'MBBS, BCS, MD', 'Brain Surgeon', 'Friday-Tuesday[10 Am-5 PM]', 'muhammadtayeb@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 25),
(66, 'Dr. Barnali Barua', 'MBBS,MD', 'Breast Surgeon.', 'Friday-Tuesday[11 Am-8 PM]', 'barnalibarua@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 25),
(67, 'Dr. Mostafa Noor Mohsin', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mostafa@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 26),
(68, 'Dr. Mohammad Masud Karim', 'MBBS,FCPS,DMED', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mohammadmasud@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 26),
(69, 'Dr. Md. Anwarul Kibria', 'MBBS, BCS, MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'anwarul@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 27),
(70, 'Prof. Dr. Habibur Rahman', 'MBBS, BCS, MD', 'Skin Diseases Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'habibur@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 27),
(71, 'Prof. Dr. Khokon Kanti Das', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'khokon@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 28),
(72, 'Dr. Shimul Kumar Bhowmik', 'MBBS,FCPS.', 'Brain Surgeon', 'Friday-Tuesday[10 Am-5 PM]', 'shimul@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 28),
(73, 'Dr. Zaman Ahammed', 'MBBS,FCPS,MD', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'zaman@gmail.com', '01733632528', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 29),
(74, 'Dr. Binoy Paul', 'MBBS, BCS, MD', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'binoypaul@gmail.com', '01733632528', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 29),
(75, 'Shirajum Monir Niloy', 'MBBS,FCPS.', 'Eye Speciallist.', 'Friday-Tuesday[10 Am-5 PM]', 'shanara@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 30),
(76, 'Sammam Hasin', 'MBBS,FCPS,DMED', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'salahuddinhaider@gmail.com', '01733632528', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 30),
(77, 'Sammam Hasin', 'MBBS,FCPS.', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mansurul@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 31),
(78, 'Asharful Islam', 'MBBS,FCPS,DMED', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'bijoykumar@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 31),
(79, 'Prince Yeasin Chowdhury', 'MBBS,FCPS.', 'Gynecology', 'Friday-Tuesday[11 Am-8 PM]', 'mansurul@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 32),
(80, 'Alamin Hossain', 'MBBS,FCPS,DMED', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'shanara@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 32),
(81, 'Dr. Bijoy Kumar Dutta', 'MBBS,FCPS,DMED', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'shanara@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 33),
(82, 'Dr. Salahuddin Mohammed Ali Haider', 'MBBS,FCPS,MD', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'bijoykumar@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 33),
(83, 'Prof Dr. Mansurul Alam', 'MBBS, BCS, MD', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'shanara@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 33),
(84, 'Sammam Hasin', 'MBBS, BCS, MD', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'bijoykumar@gmail.com', '01733632536', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 34),
(85, 'Dr. Bijoy Kumar Dutta', 'MBBS,FCPS,DMED', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'mansurul@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 34),
(86, 'Dr. Salahuddin Mohammed Ali Haider', 'MBBS,FCPS,MD', 'Brain Surgeon', 'Friday-Tuesday[10 Am-5 PM]', 'shanara@gmail.com', '01733632525', 'uploads/doctors/image/user_id_4_1665339891.png', 1, 35),
(87, 'Sammam Hasin', 'MBBS,FCPS.', 'Gynecology', 'Friday-Tuesday[11 Am-8 PM]', 'bijoykumar@gmail.com', '01733632539', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 35),
(88, 'Dr. Bijoy Kumar Dutta', 'MBBS,FCPS,DMED', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'bijoykumar@gmail.com', '01733632552', 'uploads/doctors/image/user_id_4_1665339891.png', 2, 35),
(89, 'Dr. Jahid Hasan', 'MBBS, FCPS', 'Medicin', '7 PM - 8 PM  [sat-fri]', 'jahid@mail.com', '01842605509', 'uploads/doctors/image/user_id_4_1665339891.png', 2147483647, 4);

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
(19, 'Adabor Police Station', '01713373183', 'ocadabor@dmp.gov.bd', 'House#105/A,Ring  road', 'Dhaka', 'Dhaka', 'Dhaka City'),
(20, 'Badda Police Station', '01713373173', 'ocbadda@dmp.gov.bd', 'H-12/A,R-17,DIT Project,Marul Badda.', 'Dhaka', 'Dhaka', 'Dhaka City'),
(21, 'Banani Police Station', '01713373153', 'ocbanani@dmp.gov.bd', 'R-7,H-37,Banani', 'Dhaka', 'Dhaka', 'Dhaka City'),
(22, 'Bangshal Police Station', '01713373136', 'ocbangshal@dmp.gov.bd', 'English Road,Fazlul Comunity', 'Dhaka', 'Dhaka', 'Dhaka City'),
(23, 'Bimanbondor  Police Station', '01733632162', 'ocbimanbondor@dmp.gov.bd', '1st Floor Rab(HQ),Uttara', 'Dhaka', 'Dhaka', 'Dhaka City'),
(24, 'Cantonment Police Station', '01713373172', 'occantonment@dmp.gov.bd', 'MES jia Koloni,Cantonment', 'Dhaka', 'Dhaka', 'Dhaka City'),
(25, 'Chalkbazar Police Station', '01733632537', 'occhalkbazar.dmp@gmail.com', 'Bakshi Bazar Road', 'Dhaka', 'Dhaka', 'Dhaka City'),
(26, 'Dakshinkhan Police Station', '01733632165', 'ocdhakshinkhan.dmp@gmail.com', 'Bidurbari Road, Thana More', 'Dhaka', 'Dhaka', 'Dhaka City'),
(27, 'Darus-Salam Police Station', '01713373334', 'ocdsalam@dmp.gov.bd', '100 Golertek,Mirpur', 'Dhaka', 'Dhaka', 'Dhaka City'),
(28, 'Demra Police Station', '01713373144', 'ocdemra@dmp.gov.bd', 'Bowni Jute mills, Demra', 'Dhaka', 'Dhaka', 'Dhaka City'),
(29, 'Dhanmondi Police Station', '01713373126', 'ocdhanmondi@dmp.gov.bd', 'R#6,H#21,Dhanmondi', 'Dhaka', 'Dhaka', 'Dhaka City'),
(30, 'Gandaria Police Station', '01713373331', 'ocgandaria@dmp.gov.bd', 'Keshab Benarjee rd.', 'Dhaka', 'Dhaka', 'Dhaka City'),
(31, 'Gulshan Police Station', '01713373171', 'ocgulshan@dmp.gov.bd', 'H-32,115 Gulshan Avenue,Gulsham-2.', 'Dhaka', 'Dhaka', 'Dhaka City'),
(32, 'Hazaribagh Police Station', '01713373136', 'ochazaribag@dmp.gov.bd', '98/2 Gojmohal,Hazaribag.', 'Dhaka', 'Dhaka', 'Dhaka City'),
(33, 'Sut', '01713373181', 'ocsutrapur@dmp.gov.bd', 'Plot 440,Tejgoan Industrial Area.', 'Dhaka', 'Dhaka', 'Tejgaon Circle'),
(34, 'Tejgaon  Police Station', '01713373180', 'octejgaon@dmp.gov.bd', '56 Tejkunipara,Framgate.', 'Dhaka', 'Dhaka', 'Tejgaon Circle'),
(37, 'Agailjhara Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Barisal', 'Barisal', 'Agailjhara'),
(38, 'Babuganj Police Station', '01733632536', 'bijoykumar@gmail.com', 'Bhabanipur', 'Barisal', 'Barisal', 'Babuganj'),
(39, 'Bakerganj Police Station', '01733632525', 'anisulawal@gmail.com', 'Baniarchala', 'Barisal', 'Barisal', 'Bakerganj'),
(40, 'Banaripara Police Station', '01733632536', 'anisulawal@gmail.com', 'Boyunbazar', 'Barisal', 'Barisal', 'Banaripara'),
(41, 'Gaurandi Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Barisal', 'Barisal', 'Gaurnadi'),
(42, 'Amtali Police Staion', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Barisal', 'Barguna', 'Amtali'),
(43, 'Bamna Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Barisal', 'Barguna', 'Barguna Sadar'),
(44, 'Sadar Police Station', '01733632525', 'shanara@gmail.com', 'Mawna', 'Barisal', 'Barguna', 'Barguna Sadar'),
(45, 'Betagi Police Station', '01733632552', 'anisulawal@gmail.com', 'Baniarchala', 'Barisal', 'Barguna', 'Betagi'),
(46, 'Bhola Sadar Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Barisal', 'Bhola', 'Bhola Sadar'),
(47, 'Burhanuddin Police Station', '01733632536', 'mansurul@gmail.com', 'Baniarchala', 'Barisal', 'Bhola', 'Burhanuddin'),
(48, 'Char Fassion Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Barisal', 'Bhola', 'Char Fasson'),
(49, 'Daulatkhan Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Barisal', 'Bhola', 'Daulatkhan'),
(50, 'Jhalokhati Sadar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Barisal', 'Jhalokati', 'Jhalokati Sadar'),
(51, 'Khatalia Police Station', '01733632536', 'shanara@gmail.com', 'Baniarchala', 'Barisal', 'Jhalokati', 'Kathalia'),
(52, 'Nalchity Police Station', '01733632539', 'anisulawal@gmail.com', 'Baniarchala', 'Barisal', 'Jhalokati', 'Nalchity'),
(53, 'Rajapur Police Station', '01733632528', 'bijoykumar@gmail.com', 'Banaripara', 'Barisal', 'Jhalokati', 'Rajapur'),
(54, 'Bauphal Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Barisal', 'Patuakhali', 'Bauphal'),
(55, 'Dashmina Police Station', '01733632525', 'anisulawal@gmail.com', 'Banaripara', 'Barisal', 'Patuakhali', 'Dashmina'),
(56, 'Galachipa Police Station', '01733632552', 'anisulawal@gmail.com', 'Baniarchala', 'Barisal', 'Patuakhali', 'Galachipa'),
(57, 'Kalapara Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Bhabanipur', 'Barisal', 'Patuakhali', 'Kalapara'),
(58, 'Mirzaganj Police station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Barisal', 'Patuakhali', 'Mirzaganj'),
(59, 'Bhandria Police station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Barisal', 'Pirojpur', 'Bhandaria'),
(60, 'Kawkhali Police Station', '01733632528', 'bijoykumar@gmail.com', 'Baniarchala', 'Barisal', 'Pirojpur', 'Kawkhali'),
(61, 'Nazirpur Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Barisal', 'Pirojpur', 'Nazirpur'),
(62, 'Mathbaria police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Barisal', 'Pirojpur', 'Mathbaria'),
(63, 'Pirujpur Sadar Police Station', '01733632536', 'anisulawal@gmail.com', 'Bhabanipur', 'Barisal', 'Pirojpur', 'Pirojpur Sadar'),
(64, 'Alikdam Police Station', '01733632536', 'mansurul@gmail.com', 'Baraipara', 'Chittagong', 'Bandarban', 'Ali Kadam'),
(65, 'Bandarban Sadar Police Station', '01733632536', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Bandarban', 'Bandarban Sadar'),
(66, 'Lama Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baraipara', 'Chittagong', 'Bandarban', 'Lama'),
(67, 'Ruma Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Chittagong', 'Bandarban', 'Ruma'),
(68, 'Akhaura Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Akhaura'),
(69, 'Bancharampur Ploice Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Brahmanbaria', 'Bancharampur'),
(70, 'Brahman Baria Sadar Police Station', '01733632536', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Brahmanbaria', 'Brahmanbaria Sadar'),
(71, 'Kasba Police Station', '01733632539', 'mansurul@gmail.com', 'Banaripara', 'Chittagong', 'Brahmanbaria', 'Kasba'),
(72, 'Nabinagar Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Nabinagar'),
(73, 'Chandpur Sadar Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Chittagong', 'Chandpur', 'Chandpur Sadar'),
(74, 'Faridganj Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Chandpur', 'Haimchar'),
(75, 'Himchar Police Station', '01733632525', 'anisulawal@gmail.com', 'Banaripara', 'Chittagong', 'Chandpur', 'Haimchar'),
(76, 'Haziganj Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Chandpur', 'Kachua'),
(77, 'Anwara Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Chittagong', 'Anwara'),
(78, 'Banshkhali  Police Station', '01733632536', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Chittagong', 'Banshkhali'),
(79, 'Boalkhali Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Chittagong', 'Boalkhali'),
(80, 'Fatikchhari Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Chittagong', 'Fatikchhari'),
(81, 'Hathazari Police Station', '01733632552', 'mansurul@gmail.com', 'Baniarchala', 'Chittagong', 'Chittagong', 'Hathazari'),
(82, 'Karnaphuli Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Chittagong', 'Karnaphuli'),
(83, 'Barura Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Chittagong', 'Comilla', 'Barura'),
(84, 'Brahmanpara Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Comilla', 'Brahmanpara'),
(85, 'Burichang Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Comilla', 'Burichang'),
(86, 'Chandina Police Station', '01733632536', 'mansurul@gmail.com', 'Bisshas', 'Chittagong', 'Comilla', 'Chandina'),
(87, 'Chauddagram Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Chittagong', 'Comilla', 'Chauddagram'),
(88, 'Daudkandi Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Comilla', 'Daudkandi'),
(89, 'Debidwer Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Comilla', 'Debidwar'),
(90, 'Chhagalnaiya Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Chittagong', 'Feni', 'Chhagalnaiya'),
(91, 'Daganbhuiya Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Chittagong', 'Feni', 'Daganbhuiyan'),
(92, 'Feni Sadar Police Station', '01733632552', 'anisulawal@gmail.com', 'Baniarchala', 'Chittagong', 'Feni', 'Feni Sadar'),
(93, 'Parshuram Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Feni', 'Parshuram'),
(94, 'Dighinala Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Dighinala'),
(95, 'Khagrachari Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Khagrachhari', 'Khagrachhari'),
(96, 'Lakshmichhari Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Lakshmichhari'),
(97, 'Mahalchari Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Mahalchhari'),
(98, 'Manikchhari Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Chittagong', 'Khagrachhari', 'Manikchhari'),
(99, 'Lakshmipur sadar Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar'),
(100, 'Raipur Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Raipur'),
(101, 'ramganj  Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Lakshmipur', 'Ramganj'),
(102, 'Ramgati  Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Ramgati'),
(103, 'Begumganj police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Chittagong', 'Noakhali', 'Begumganj'),
(104, 'Noakhali Sadar  Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Noakhali', 'Noakhali Sadar'),
(105, 'Chatkhil Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Noakhali', 'Chatkhil'),
(106, 'Companiganj Police Station', '01733632539', 'bijoykumar@gmail.com', 'Banaripara', 'Chittagong', 'Noakhali', 'Companiganj'),
(107, 'Hatiya Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Noakhali', 'Hatiya'),
(108, 'Senbagh  Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Chittagong', 'Noakhali', 'Senbagh'),
(109, 'Bagaichhari  Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Rangamati', 'Bagaichhari'),
(110, 'Barkal  Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Chittagong', 'Rangamati', 'Barkal'),
(111, 'Kawkhali  Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Chittagong', 'Rangamati', 'Kawkhali (Betbunia)'),
(112, 'Belaichhari  Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Chittagong', 'Rangamati', 'Belaichhari'),
(113, 'Kaptai  Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Chittagong', 'Rangamati', 'Kaptai'),
(114, 'Juraicchari  Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Chittagong', 'Rangamati', 'Juraichhari'),
(115, 'Langadu  Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Chittagong', 'Rangamati', 'Langadu'),
(116, 'Alfadanga Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Faridpur', 'Alfadanga'),
(117, 'Bhanga Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Faridpur', 'Bhanga'),
(118, 'Boalmari Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Faridpur', 'Boalmari'),
(119, 'Charbhadrasan Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Faridpur', 'Charbhadrasan'),
(120, 'Faridpur Sadar Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Faridpur', 'Faridpur Sadar'),
(121, 'Madhukhali Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Faridpur', 'Madhukhali'),
(122, 'Gazipur Sadar Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Gazipur', 'Gazipur Sadar'),
(123, 'Kaliakair Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Gazipur', 'Kaliakair'),
(124, 'Kaliganj Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kaliganj'),
(125, 'Kapasia Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kapasia'),
(126, 'Sreepur Police Station', '01733632525', 'mansurul@gmail.com', 'Baniarchala', 'Dhaka', 'Gazipur', 'Sreepur'),
(127, 'Gopalganj Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Gopalganj Sadar'),
(128, 'Kashiani Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Kashiani'),
(129, 'Kotalipara Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Kotalipara'),
(130, 'Muksudpur Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Muksudpur'),
(131, 'Austragram Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Kishoreganj', 'Austagram'),
(132, 'Bajitpur Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Kishoreganj', 'Bajitpur'),
(133, 'Bhairab Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Kishoreganj', 'Bhairab'),
(134, 'Hosssainpur Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Hossainpur'),
(135, 'Itna Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Kishoreganj', 'Itna'),
(136, 'Karimganj Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Karimganj'),
(137, 'Rajoir Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Madaripur', 'Rajoir'),
(138, 'Madaripur Sadar Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Madaripur', 'Madaripur Sadar'),
(139, 'Kalkini Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Madaripur', 'Kalkini'),
(140, 'Shibchar Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Madaripur', 'Shibchar'),
(141, 'daulatpur Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Manikganj', 'Daulatpur'),
(142, 'Ghior police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Manikganj', 'Ghior'),
(143, 'Harirampur Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Manikganj', 'Harirampur'),
(144, 'Manikgonj Sadar', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Manikganj', 'Manikgonj Sadar'),
(145, 'Saturia Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Manikganj', 'Saturia'),
(146, 'Gozaria Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Gazaria'),
(147, 'Lohajang Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Lohajang'),
(148, 'Munshiganj Sadar Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Munshiganj', 'Munshiganj Sadar'),
(149, 'Sirajdikhan Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Munshiganj', 'Sirajdikhan'),
(150, 'Araihazar Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Narayanganj', 'Araihazar'),
(151, 'Bandar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Narayanganj', 'Bandar'),
(152, 'Narayanganj Sadar Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Narayanganj Sadar'),
(153, 'Rupgonj Police Station', '01733632528', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Narayanganj', 'Rupganj'),
(154, 'Baliakandi Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Rajbari', 'Baliakandi'),
(155, 'Goalandaghat Police Station', '01733632525', 'mansurul@gmail.com', 'Banaripara', 'Dhaka', 'Rajbari', 'Goalandaghat'),
(156, 'Pangsha Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Dhaka', 'Rajbari', 'Pangsha'),
(157, 'Rajbari Sadar Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Rajbari', 'Rajbari Sadar'),
(158, 'Bhedarganj Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Shariatpur', 'Bhedarganj'),
(159, 'Damudya Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Shariatpur', 'Damudya'),
(160, 'Gosairhat Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Shariatpur', 'Gosairhat'),
(161, 'Gopalpur Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Tangail', 'Gopalpur'),
(162, 'Basail Police Station', '01733632536', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Tangail', 'Basail'),
(163, 'Tangail Sadar Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Dhaka', 'Tangail', 'Tangail Sadar'),
(164, 'Bahupur Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Tangail', 'Bhuapur'),
(165, 'Delduar Police Station', '01733632536', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Tangail', 'Delduar'),
(166, 'Bagherhat Sadar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Bagerhat', 'Bagerhat Sadar'),
(167, 'Chitalmari Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Bagerhat', 'Chitalmari'),
(168, 'Fakirhat Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Khulna', 'Bagerhat', 'Fakirhat'),
(169, 'Kachua Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Khulna', 'Bagerhat', 'Kachua'),
(170, 'Alamdanga Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Chuadanga', 'Alamdanga'),
(171, 'Chuadanga Sadar Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Khulna', 'Chuadanga', 'Chuadanga Sadar'),
(172, 'Damurhuda Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Khulna', 'Chuadanga', 'Damurhuda'),
(173, 'Abhaynagar Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Jessore', 'Abhaynagar'),
(174, 'Bagherpara Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Khulna', 'Jessore', 'Bagherpara'),
(175, 'Chaugachha Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Khulna', 'Jessore', 'Chaugachha'),
(176, 'Jhikargachha Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Khulna', 'Jessore', 'Jhikargachha'),
(177, 'Harinakunda Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Jhenaidah', 'Harinakunda'),
(178, 'Jenaidah Sadar Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Khulna', 'Jhenaidah', 'Jhenaidah Sadar'),
(179, 'Kaliganj Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Jhenaidah', 'Kaliganj'),
(180, 'Batiaghata Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Khulna', 'Khulna', 'Batiaghata'),
(181, 'Dacope Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Khulna', 'Khulna', 'Dacope'),
(182, 'Dumuria Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Khulna', 'Dumuria'),
(183, 'Dighalia Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Khulna', 'Dighalia'),
(184, 'Koyra Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Khulna', 'Koyra'),
(185, 'Bheramara Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Khulna', 'Kushtia', 'Bheramara'),
(186, 'Daulatpur Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Khulna', 'Kushtia', 'Daulatpur'),
(187, 'Khoksa Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Khulna', 'Kushtia', 'Khoksa'),
(188, 'Kumarkhali Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Kushtia', 'Kumarkhali'),
(189, 'Magura Sadar Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Khulna', 'Magura', 'Magura Sadar'),
(190, 'Mohammadpur Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Khulna', 'Magura', 'Mohammadpur'),
(191, 'Shailkha Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Khulna', 'Magura', 'Shalikha'),
(192, 'Gangni Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Meherpur', 'Gangni'),
(193, 'Meherpur Sadar Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Khulna', 'Meherpur', 'Meherpur Sadar'),
(194, 'Mujibnagar Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Khulna', 'Meherpur', 'Mujibnagar'),
(195, 'Kalia Police Station', '01733632539', 'mansurul@gmail.com', 'Banaripara', 'Khulna', 'Narail', 'Kalia'),
(196, 'Lohagara Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Khulna', 'Narail', 'Lohagara'),
(197, 'Narail Sadar Police Station', '01733632536', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Narail', 'Narail Sadar'),
(198, 'Assasuni Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Khulna', 'Satkhira', 'Assasuni'),
(199, 'Debhata Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Khulna', 'Satkhira', 'Debhata'),
(200, 'Kalaroa Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Khulna', 'Satkhira', 'Kalaroa'),
(201, 'Kaliganj Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Khulna', 'Satkhira', 'Kaliganj'),
(202, 'Baksiganj Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Mymensingh', 'Jamalpur', 'Baksiganj'),
(203, 'Dewanganj Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Mymensingh', 'Jamalpur', 'Dewanganj'),
(204, 'Islampur Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Mymensingh', 'Jamalpur', 'Islampur'),
(205, 'Jamalpur Sadar Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Mymensingh', 'Jamalpur', 'Jamalpur Sadar'),
(206, 'Trishal Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Sher-e-Bangla Nagar, Dhaka', 'Mymensingh', 'Mymensingh', 'Trishal'),
(207, 'Dhobaura Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Mymensingh', 'Mymensingh', 'Dhobaura'),
(208, 'Fulbaria Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Mymensingh', 'Mymensingh', 'Fulbaria'),
(209, 'Gaffargaon Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Mymensingh', 'Mymensingh', 'Gaffargaon'),
(210, 'Gauripur Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Mymensingh', 'Mymensingh', 'Gauripur'),
(211, 'Mymensingh Sadar Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Mymensingh', 'Mymensingh', 'Mymensingh Sadar'),
(212, 'Atpara Police Station', '01733632539', 'mansurul@gmail.com', 'Baniarchala', 'Mymensingh', 'Netrakona', 'Atpara'),
(213, 'Barhatta Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Mymensingh', 'Netrakona', 'Barhatta'),
(214, 'Durgapur Police Station', '01733632536', 'salahuddinhaider@gmail.com', 'Banaripara', 'Mymensingh', 'Netrakona', 'Durgapur'),
(215, 'Khalaijuri Police Station', '01733632539', 'bijoykumar@gmail.com', 'Banaripara', 'Mymensingh', 'Netrakona', 'Khaliajuri'),
(216, 'Kalmakanda Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Mymensingh', 'Netrakona', 'Kalmakanda'),
(217, 'Jhenaigati Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Mymensingh', 'Sherpur', 'Jhenaigati'),
(218, 'Nakla Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Mymensingh', 'Sherpur', 'Nakla'),
(219, 'Nalitabari Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Mymensingh', 'Sherpur', 'Nalitabari'),
(220, 'Sherpur Sadar Police Station', '01733632539', 'mansurul@gmail.com', 'Baniarchala', 'Mymensingh', 'Sherpur', 'Sherpur Sadar'),
(221, 'Adamdighi Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Bogra', 'Adamdighi'),
(222, 'Bogura Sadar Police Station', '01733632536', 'salahuddinhaider@gmail.com', 'Banaripara', 'Rajshahi', 'Bogra', 'Bogura Sadar'),
(223, 'Dhunat Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Bogra', 'Dhunat'),
(224, 'Dhupchancia Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Bogra', 'Dhupchanchia'),
(225, 'gabtali Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Bogra', 'Gabtali'),
(226, 'Kahaloo Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Rajshahi', 'Bogra', 'Kahaloo'),
(227, 'Bholahat Police Station', '01733632539', 'mansurul@gmail.com', 'Baniarchala', 'Rajshahi', 'Chapainawabganj', 'Bholahat'),
(228, 'Gomastapur Police Station', '01733632536', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Chapainawabganj', 'Gomastapur'),
(229, 'Nachole Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Chapainawabganj', 'Nachole'),
(230, 'Nawabganj Sadar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Chapainawabganj', 'Nawabganj Sadar'),
(231, 'Akkelpur Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Joypurhat', 'Akkelpur'),
(232, 'Joypurhat Sadar Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Joypurhat', 'Joypurhat Sadar'),
(233, 'Kalai Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Joypurhat', 'Kalai'),
(234, 'Khetlal Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Joypurhat', 'Khetlal'),
(235, 'Atrai Police Station', '01733632539', 'bijoykumar@gmail.com', 'Banaripara', 'Rajshahi', 'Naogaon', 'Atrai'),
(236, 'Badalgachhi Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Naogaon', 'Badalgachhi'),
(237, 'Manda Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Naogaon', 'Manda'),
(238, 'Dhamoirhat', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Rajshahi', 'Naogaon', 'Dhamoirhat'),
(239, 'Mohadevpur Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Naogaon', 'Mohadevpur'),
(240, 'naogaon Sadar Police Station', '01733632539', 'mansurul@gmail.com', 'Banaripara', 'Rajshahi', 'Naogaon', 'Naogaon Sadar'),
(241, 'Bagatipara Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Natore', 'Bagatipara'),
(242, 'Baraigram Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Natore', 'Baraigram'),
(243, 'Gurudaspur Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Natore', 'Gurudaspur'),
(244, 'lalpur Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Natore', 'Lalpur'),
(245, 'Natore Sadar Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Rajshahi', 'Natore', 'Natore Sadar'),
(246, 'Atgharia Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Pabna', 'Atgharia'),
(247, 'Bera Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Pabna', 'Bera'),
(248, 'Bhanguraq Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Rajshahi', 'Pabna', 'Bhangura'),
(249, 'Chatmohar Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Rajshahi', 'Pabna', 'Chatmohar'),
(250, 'Faridpur Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Pabna', 'Faridpur'),
(251, 'Pabna Sadar Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Pabna', 'Pabna Sadar'),
(252, 'Bagha Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Rajshahi', 'Bagha'),
(253, 'Bagmara Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Rajshahi', 'Rajshahi', 'Bagmara'),
(254, 'Charghat Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Rajshahi', 'Charghat'),
(255, 'Charghat Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Rajshahi', 'Charghat'),
(256, 'Durgapur Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Banaripara', 'Rajshahi', 'Rajshahi', 'Durgapur'),
(257, 'Godagari Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Rajshahi', 'Godagari'),
(258, 'Belkuchi Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Sirajganj', 'Belkuchi'),
(259, 'Chauhali Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rajshahi', 'Sirajganj', 'Chauhali'),
(260, 'Kamarkhanda Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Sirajganj', 'Kamarkhanda'),
(261, 'Kazipur Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rajshahi', 'Sirajganj', 'Kazipur'),
(262, 'Raiganj Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rajshahi', 'Sirajganj', 'Raiganj'),
(263, 'Sirajganj Sadar Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Rajshahi', 'Sirajganj', 'Sirajganj Sadar'),
(264, 'Birampur Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rangpur', 'Dinajpur', 'Birampur'),
(265, 'Birganj Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Rangpur', 'Dinajpur', 'Birganj'),
(266, 'Biral Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rangpur', 'Dinajpur', 'Biral'),
(267, 'Bochaganj Police Station', '01733632552', 'shanara@gmail.com', 'Banaripara', 'Rangpur', 'Dinajpur', 'Bochaganj'),
(268, 'Chirirbandar Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rangpur', 'Dinajpur', 'Chirirbandar'),
(269, 'Phulchhari Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Rangpur', 'Gaibandha', 'Phulchhari'),
(270, 'Gaibandha Sadar Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rangpur', 'Gaibandha', 'Gaibandha Sadar'),
(271, 'Gobindaganj Police Station', '01733632536', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Gaibandha', 'Gobindaganj'),
(272, 'Palashbari Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Rangpur', 'Gaibandha', 'Palashbari'),
(273, 'Bhurungamari Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rangpur', 'Kurigram', 'Bhurungamari'),
(274, 'Char Rajibpur Police Station', '01733632539', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Kurigram', 'Char Rajibpur'),
(275, 'Chilmari Police Station', '01733632536', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Kurigram', 'Chilmari'),
(276, 'Phulbari Police Station', '01733632536', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Kurigram', 'Phulbari'),
(277, 'Aditmari Police Station', '01733632525', 'bijoykumar@gmail.com', 'Baniarchala', 'Rangpur', 'Lalmonirhat', 'Aditmari'),
(278, 'Hatibandha Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Rangpur', 'Lalmonirhat', 'Hatibandha'),
(279, 'Kaliganj Police Station', '01733632552', 'anisulawal@gmail.com', 'Baniarchala', 'Rangpur', 'Lalmonirhat', 'Kaliganj'),
(280, 'Lalmonirhat Sadar Police Station', '01733632525', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Lalmonirhat', 'Lalmonirhat Sadar'),
(281, 'Dimla Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Banaripara', 'Rangpur', 'Nilphamari', 'Dimla'),
(282, 'Domar Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Rangpur', 'Nilphamari', 'Domar'),
(283, 'Jaldhaka Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Rangpur', 'Nilphamari', 'Jaldhaka'),
(284, 'Kishoreganj Police Station', '01733632525', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Nilphamari', 'Kishoreganj'),
(285, 'Atwari Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Rangpur', 'Panchagarh', 'Atwari'),
(286, 'Boda Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Rangpur', 'Panchagarh', 'Boda'),
(287, 'Debiganj Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Rangpur', 'Panchagarh', 'Debiganj'),
(288, 'Panchagarh Sadar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Rangpur', 'Panchagarh', 'Panchagarh Sadar'),
(289, 'Badarganj Police Station', '01733632536', 'mansurul@gmail.com', 'Baniarchala', 'Rangpur', 'Rangpur', 'Badarganj'),
(290, 'Gangachhara Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Rangpur', 'Rangpur', 'Gangachhara'),
(291, 'Kaunia Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rangpur', 'Rangpur', 'Kaunia'),
(292, 'Rangpur Sadar Police Station', '01733632525', 'anisulawal@gmail.com', 'Baniarchala', 'Rangpur', 'Rangpur', 'Rangpur Sadar'),
(293, 'Mithapukur Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Rangpur', 'Rangpur', 'Mithapukur'),
(294, 'Balaidangi Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Rangpur', 'Thakurgaon', 'Baliadangi'),
(295, 'Haripur Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Rangpur', 'Thakurgaon', 'Haripur'),
(296, 'Pirganj Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Rangpur', 'Thakurgaon', 'Pirganj'),
(297, 'Ranisankail Police Station', '01733632525', 'shanara@gmail.com', 'Banaripara', 'Rangpur', 'Thakurgaon', 'Ranisankail'),
(298, 'Ajmiriganj Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Sylhet', 'Habiganj', 'Ajmiriganj'),
(299, 'Bahubal Police Station', '01733632539', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Sylhet', 'Habiganj', 'Bahubal'),
(300, 'Baniyachong Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Sylhet', 'Habiganj', 'Baniyachong'),
(301, 'Chunarughat Police Station', '01733632525', 'shanara@gmail.com', 'Baniarchala', 'Sylhet', 'Habiganj', 'Chunarughat'),
(302, 'Habiganj Sadar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Baniarchala', 'Sylhet', 'Habiganj', 'Habiganj Sadar'),
(303, 'Barlekha Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Sylhet', 'Moulvibazar', 'Barlekha'),
(304, 'Juri Police Station', '01733632539', 'mansurul@gmail.com', 'Banaripara', 'Sylhet', 'Moulvibazar', 'Juri'),
(305, 'Kamalganj Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Sylhet', 'Moulvibazar', 'Kamalganj'),
(306, 'Kulaura Police Station', '01733632552', 'anisulawal@gmail.com', 'Banaripara', 'Sylhet', 'Moulvibazar', 'Kulaura'),
(307, 'Moulvibazar Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Sylhet', 'Moulvibazar', 'Moulvibazar Sadar'),
(308, 'Bishwamvarpur Police Station', '01733632525', 'bijoykumar@gmail.com', 'Banaripara', 'Sylhet', 'Sunamganj', 'Bishwamvarpur'),
(309, 'Chhatak Police Station', '01733632552', 'shanara@gmail.com', 'Baniarchala', 'Sylhet', 'Sunamganj', 'Chhatak'),
(310, 'Dakshin Sunamganj Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Sylhet', 'Sunamganj', 'Dakshin Sunamganj'),
(311, 'Derai Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Banaripara', 'Sylhet', 'Sunamganj', 'Derai'),
(312, 'Dharamapasha Police Station', '01733632552', 'mansurul@gmail.com', 'Banaripara', 'Sylhet', 'Sunamganj', 'Dharamapasha'),
(313, 'Balaganj Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Sylhet', 'Sylhet', 'Balaganj'),
(314, 'Beanibazar Police Station', '01733632536', 'salahuddinhaider@gmail.com', 'Banaripara', 'Sylhet', 'Sylhet', 'Beanibazar'),
(315, 'Bishwanath Police Station', '01733632539', 'shanara@gmail.com', 'Banaripara', 'Sylhet', 'Sylhet', 'Bishwanath'),
(316, 'Companigonj Police Station', '01733632539', 'bijoykumar@gmail.com', 'Baniarchala', 'Sylhet', 'Sylhet', 'Companigonj'),
(317, 'Dakshin Surma Police Station', '01733632525', 'mansurul@gmail.com', 'Banaripara', 'Sylhet', 'Sylhet', 'Dakshin Surma'),
(318, 'Fenchuganj Police Station', '01733632525', 'salahuddinhaider@gmail.com', 'Baniarchala', 'Sylhet', 'Sylhet', 'Fenchuganj'),
(319, 'Narshingdi Sadar Police Station', '01733632552', 'bijoykumar@gmail.com', 'Banaripara', 'Dhaka', 'Narsingdi', 'Narsingdi Sadar'),
(320, 'Belabo Police Station', '01733632552', 'salahuddinhaider@gmail.com', 'Banaripara', 'Dhaka', 'Narsingdi', 'Belabo'),
(321, 'Monohordi Police Station', '01733632539', 'shanara@gmail.com', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Monohardi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance_booking`
--
ALTER TABLE `ambulance_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_application`
--
ALTER TABLE `blood_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donation_request`
--
ALTER TABLE `blood_donation_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donors`
--
ALTER TABLE `blood_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_services`
--
ALTER TABLE `fire_services`
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
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `ambulance_booking`
--
ALTER TABLE `ambulance_booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_application`
--
ALTER TABLE `blood_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `blood_donation_request`
--
ALTER TABLE `blood_donation_request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blood_donors`
--
ALTER TABLE `blood_donors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fire_services`
--
ALTER TABLE `fire_services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hospital_doctors`
--
ALTER TABLE `hospital_doctors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
