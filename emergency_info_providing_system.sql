-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2022 at 07:33 PM
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
  `status` varchar(255) NOT NULL DEFAULT 'Typically replies within 10 minutes.',
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulance_registration`
--

INSERT INTO `ambulance_registration` (`id`, `org_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `ac`, `non_ac`, `icu`, `hdu`, `air`, `frezing`, `image`, `status`, `user_name`, `password`) VALUES
(115, 'Alif Ambulanc service', 'alifambulance@gmail.com', '01733632552', 'Sher-e-Bangla Nagar, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka City', 3, 15, 1, 0, 0, 2, '', '', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(116, 'Nova Ambulance Service', 'dfsdgfd@gmail.com', '01733632525', 'Bir Uttam Qazi Nuruzzaman Sarak,Panthapath.Dhaka.', 'Dhaka', 'Dhaka', 'Dhaka City', 0, 0, 0, 0, 0, 0, '', '', 'nova1', '3bc340da2adeac26295e0d41f3a35b83'),
(117, 'Joynov Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Mawna Chowrasta,Sreepur, Gazipur.', 'Dhaka', 'Gazipur', 'Sreepur', 0, 0, 0, 0, 0, 0, '', '', 'joynov1', 'c8003d5a0b584858db9196eb7718ad43'),
(118, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Mirpur-12', 'Dhaka', 'Dhaka', 'Dhaka City', 0, 0, 0, 0, 0, 0, '', '', 'miftahul1', '6a957ce33791c6e9cff5352d2755520b'),
(119, 'Anjuman E Mofidul Ambulance Service', 'anisulawal@gmail.com', '01733632552', 'Chittagong', 'Chittagong', 'Chittagong', 'Anwara', 0, 0, 0, 0, 0, 0, '', '', 'anjuman1', '6f311c7b41d98abe1fa4e189efe1185d'),
(120, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Dhamrai', 'Dhaka', 'Dhaka', 'Dhamrai', 0, 0, 0, 0, 0, 0, '', '', 'jahid1', 'e57599d25b7f692a4f28423d6b6a470d'),
(121, 'Simba Ambulance service', 'bijoykumar@gmail.com', '01733632539', 'Dohar', 'Dhaka', 'Dhaka', 'Dohar', 0, 0, 0, 0, 0, 0, '', '', 'simba1', 'd9523b29e8c7e30143d00687952ffb1f'),
(122, 'Anika Ambulance Service', 'shanara@gmail.com', '01733632528', 'Keraniganj', 'Dhaka', 'Dhaka', 'Keraniganj', 0, 0, 0, 0, 0, 0, '', '', 'anika1', '56385788cac4b539a61194dbd11a4607'),
(123, 'Maysah Ambulance Service', 'anisulawal@gmail.com', '01733632528', 'Nawabganj', 'Dhaka', 'Dhaka', 'Nawabganj', 0, 0, 0, 0, 0, 0, '', '', 'maysha1', '6788a70143f384bbd76539fdbf815124'),
(124, 'Takiya Ambulance Sevice', 'shanara@gmail.com', '01733632552', 'New market,Savar.', 'Dhaka', 'Dhaka', 'Savar', 0, 0, 0, 0, 0, 0, '', '', 'takiya1', '565c2d003bffb10d16365aeb1dc44aa9'),
(125, 'Borsha Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Tejgoan', 'Dhaka', 'Dhaka', 'Tejgaon Circle', 0, 0, 0, 0, 0, 0, '', '', 'borsha1', 'd2897a4af1c58a30d39c5f8a98fe732b'),
(126, 'Lithi Ambulance Service', 'mansurul@gmail.com', '01733632552', 'amtail', 'Barisal', 'Barguna', 'Amtali', 0, 0, 0, 0, 0, 0, '', '', 'lithi1', '6fe53956827cae791282eda3fd262b27'),
(127, 'Jui Ambulance Service', 'shanara@gmail.com', '01733632552', 'Bamna', 'Barisal', 'Barguna', 'Bamna', 0, 0, 0, 0, 0, 0, '', '', 'jui1', 'e4ee168006259ad754b0ef4b63a6283c'),
(128, 'Suma Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Barguna Sadar', 'Barisal', 'Barguna', 'Barguna Sadar', 0, 0, 0, 0, 0, 0, '', '', 'soma1', '621ee7cb158881829cf067ca3da5c648'),
(129, 'Swarna Ambulance Service', 'shanara@gmail.com', '01733632552', 'Betagi', 'Barisal', 'Barguna', 'Betagi', 0, 0, 0, 0, 0, 0, '', '', 'swarna1', 'cdb54f5bc24077e79a2629b96cc245f7'),
(130, 'Nondita Ambulance Service', 'shanara@gmail.com', '01733632528', 'Pathargata.', 'Barisal', 'Barguna', 'Patharghata', 0, 0, 0, 0, 0, 0, '', '', 'nondita1', '8af2bbf42284edaffe2a8c6c31971652'),
(131, 'Jannati Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Taltali', 'Barisal', 'Barguna', 'Taltali', 0, 0, 0, 0, 0, 0, '', '', 'jannati1', '8bc2aeb3df4ceb181e8b0f868c99a57f'),
(132, 'Bushra Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Agailjhara', 'Barisal', 'Barisal', 'Agailjhara', 0, 0, 0, 0, 0, 0, '', '', 'bushra1', '0bee903be09307073e44b867084ffed0'),
(133, 'Samiya Ambulance service', 'shanara@gmail.com', '01733632552', 'Babuganj', 'Barisal', 'Barisal', 'Babuganj', 0, 0, 0, 0, 0, 0, '', '', 'samiya1', '6b6f8d95f9d8fd1eb5095d28c359c5f6'),
(134, 'Lamisha Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Bakerganj', 'Barisal', 'Barisal', 'Bakerganj', 0, 0, 0, 0, 0, 0, '', '', 'lamisha1', '289da2f1c9e823e0e6cc031328daec31'),
(135, 'Sourobi Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Banaripara', 'Barisal', 'Barisal', 'Banaripara', 0, 0, 0, 0, 0, 0, '', '', 'sourobi1', 'd8c54c3688f8a86033e8ef596cff19a3'),
(136, 'Sormili Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Gourondi', 'Barisal', 'Barisal', 'Gaurnadi', 0, 0, 0, 0, 0, 0, '', '', 'sormili1', '820012c20db04eb0e01cd67bafcf1ae2'),
(137, 'Nahida Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Hizla', 'Barisal', 'Barisal', 'Hizla', 0, 0, 0, 0, 0, 0, '', '', 'nahida1', 'f066cbc209f9ebde3728cef5af311058'),
(138, 'Maksuda Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Sadar', 'Barisal', 'Barisal', 'Barishal Sadar', 0, 0, 0, 0, 0, 0, '', '', 'maksuda1', '6776f93edb7e7715a4818a0cdfb3752b'),
(139, 'Morioum Ambulance Service.', 'mansurul@gmail.com', '01733632525', 'Mehendiganj', 'Barisal', 'Barisal', 'Mehendiganj', 0, 0, 0, 0, 0, 0, '', '', 'moriom1', '355efc5d87341e1817e081a492d641ec'),
(140, 'Afsana Mimi Ambulance Service', 'anisulawal@gmail.com', '01733632525', 'Muladi', 'Barisal', 'Barisal', 'Muladi', 0, 0, 0, 0, 0, 0, '', '', 'afsana1', 'c3cdbb4e26e0d22424c0cbf85edd87b8'),
(141, 'Rani Khatun Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Wazirpur', 'Barisal', 'Barisal', 'Wazirpur', 0, 0, 0, 0, 0, 0, '', '', 'rani1', '7418eea781c0981852d9ce02d1160d34'),
(142, 'Jannatul Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Bhola', 'Bhola Sadar', 0, 0, 0, 0, 0, 0, '', '', 'jannatul1', 'c99f2f24f757c8e8e8a5edb6f90c3fab'),
(143, 'Sinthiya Ambulance service', 'anisulawal@gmail.com', '01733632552', 'Burhanuddin', 'Barisal', 'Bhola', 'Burhanuddin', 0, 0, 0, 0, 0, 0, '', '', 'sinthiya1', '2d76202259a3cc11affd530a249efdbb'),
(144, 'Riya Moni Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Char Fassaion', 'Barisal', 'Bhola', 'Char Fasson', 0, 0, 0, 0, 0, 0, '', '', 'riya1', '020317fa3cd34dab4312cbb928a1c944'),
(145, 'Antora Ambulance Service', 'shanara@gmail.com', '01733632552', 'Daulatkhan', 'Barisal', 'Bhola', 'Daulatkhan', 0, 0, 0, 0, 0, 0, '', '', 'antora1', '26fa6a369d2d0ea7fa1f131b76171816'),
(146, 'Hena Ambulance Service', 'shanara@gmail.com', '01733632525', 'lalmohon', 'Barisal', 'Bhola', 'Lalmohan', 0, 0, 0, 0, 0, 0, '', '', 'hena1', '9cd8fb724cc0020df3a2c76501f230c3'),
(147, 'Himu Ambulance Service.', 'anisulawal@gmail.com', '01733632552', 'manpura', 'Barisal', 'Bhola', 'Manpura', 0, 0, 0, 0, 0, 0, '', '', 'himu1', '39e56bf4817b7ea87071f4246ec332de'),
(148, 'Mukta Moni Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Tazummuddin', 'Barisal', 'Bhola', 'Tazumuddin', 0, 0, 0, 0, 0, 0, '', '', 'mukta1', 'e1f1979d008ecd21fdc065cb8689494a'),
(149, 'Laboni Ambulance Service', 'shanara@gmail.com', '01733632525', 'sadar', 'Barisal', 'Jhalokati', 'Jhalokati Sadar', 0, 0, 0, 0, 0, 0, '', '', 'laboni1', '90eed326ffee111bd7a7aca2190226d4'),
(150, 'Monira akter Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Kathalia', 'Barisal', 'Jhalokati', 'Kathalia', 0, 0, 0, 0, 0, 0, '', '', 'monira1', 'c9139a1a0f12bd1e2f5840a330087930'),
(151, 'Asma Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Nalchity', 'Barisal', 'Jhalokati', 'Nalchity', 0, 0, 0, 0, 0, 0, '', '', 'asma1', 'da1b4cea31c27b0e77f2aaf041c8d48e'),
(152, 'Hiramoni Ambulance Service', 'shanara@gmail.com', '01733632525', 'Rajapur', 'Barisal', 'Jhalokati', 'Rajapur', 0, 0, 0, 0, 0, 0, '', '', 'hiramoni1', '64d258904f0d4292ea5a93d9be6b0926'),
(153, 'Rupali Ambulance Service', 'shanara@gmail.com', '01733632525', 'Bauphal', 'Barisal', 'Patuakhali', 'Bauphal', 0, 0, 0, 0, 0, 0, '', '', 'rupali1', 'd6ba371495010d6fac2c34ad83c16663'),
(154, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Patuakhali', 'Dashmina', 0, 0, 0, 0, 0, 0, '', '', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(155, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Galachipa', 0, 0, 0, 0, 0, 0, '', '', 'miftahul1', '6a957ce33791c6e9cff5352d2755520b'),
(156, 'Kona Ambulance Service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Patuakhali', 'Bauphal', 0, 0, 0, 0, 0, 0, '', '', 'kona1', 'b69bf4f994cb7dca78ac469ba5c0af36'),
(157, 'Habiba Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Dashmina', 0, 0, 0, 0, 0, 0, '', '', 'habiba1', '3beb619e2a8b062468da3ef85d5825cd'),
(158, 'Sohana Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Barisal', 'Patuakhali', 'Galachipa', 0, 0, 0, 0, 0, 0, '', '', 'sohana1', '1cd7e8a941a26738c6aa1726deaf8c8a'),
(159, 'Mabiya Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Kalapara', 0, 0, 0, 0, 0, 0, '', '', 'mabiya1', '7c9279e40a5ef3796b4bd8a045c1a7f2'),
(160, 'Setu Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Mirzaganj', 0, 0, 0, 0, 0, 0, '', '', 'setu1', 'b872a84d6213fdda51a32085e9eac8bf'),
(161, 'Peu Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Patuakhali', 'Patuakhali Sadar', 0, 0, 0, 0, 0, 0, '', '', 'peu1', '8d9bc5911a655ba455d7cbb2e58a263b'),
(162, 'Rabeya Ambulance Service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Patuakhali', 'Rangabali', 0, 0, 0, 0, 0, 0, '', '', 'rabeya1', 'b06b94aa0052607e5b717dd2bb1edd5a'),
(163, 'Amena Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Barisal', 'Patuakhali', 'Dumki', 0, 0, 0, 0, 0, 0, '', '', 'amena1', '2ba9b434ebdac50a679f5569193bc436'),
(164, 'Rubaiya Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Bhandaria', 0, 0, 0, 0, 0, 0, '', '', 'rubaiya1', 'b668c2318d69c47f2071b7cb4204cc1b'),
(165, 'Sanjida Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Kawkhali', 0, 0, 0, 0, 0, 0, '', '', 'sanjida1', '1d5e001a128fab738674968d95417996'),
(166, 'Marjiya Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Mathbaria', 0, 0, 0, 0, 0, 0, '', '', 'marjiya1', 'a00704923729dd48871358802656b0b5'),
(167, 'Mim Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Pirojpur Sadar', 0, 0, 0, 0, 0, 0, '', '', 'mim1', '22a813e3d0aa5c074343526b8a2e21c5'),
(168, 'Esha Ambulance Service', 'shanara@gmail.com', '01733632525', 'Sadar', 'Barisal', 'Pirojpur', 'Nesarabad (Swarupkati)', 0, 0, 0, 0, 0, 0, '', '', 'esha1', '4c1989803babef2a6895a095e1e0db57'),
(169, 'Sarmin Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Barisal', 'Pirojpur', 'Zianagar', 0, 0, 0, 0, 0, 0, '', '', 'sarmin1', '487c7a7b16d3cdf148ac4b6fd145bbed'),
(170, 'Nazma Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Bandarban', 'Ali Kadam', 0, 0, 0, 0, 0, 0, '', '', 'nazma1', 'e67761dc670bc83ce6f819b41e700a8c'),
(171, 'Bristi Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Bandarban Sadar', 0, 0, 0, 0, 0, 0, '', '', 'bristi1', 'fdca425da0a301f011c2c0cd281bc5b9'),
(172, 'Fahima Ambulance service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Lama', 0, 0, 0, 0, 0, 0, '', '', 'fahima1', 'e2ee5734f5af9730d36dfe37238932bf'),
(173, 'Mitu Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Naikhongchhari', 0, 0, 0, 0, 0, 0, '', '', 'mitu1', '24d10eedd83a47ea8c7e20d2a43f8d10'),
(174, 'Nasim Ambulance service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Bandarban', 'Rowangchhari', 0, 0, 0, 0, 0, 0, '', '', 'nasim1', '441106b0a3766071bb55894225d79301'),
(175, 'Arafat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Bandarban', 'Ruma', 0, 0, 0, 0, 0, 0, '', '', 'arafat1', 'bf04b8c3011459ffa86db6437b2e49a1'),
(176, 'Imran Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Bandarban', 'Thanchi', 0, 0, 0, 0, 0, 0, '', '', 'imran1', '48bef11b4bee7f3a2330eb9d691b29ea'),
(177, 'Tutul Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Akhaura', 0, 0, 0, 0, 0, 0, '', '', 'tutul1', 'b99457fe0b63ac7d659a342c4e135e83'),
(178, 'Sadek Ambulance Service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Bancharampur', 0, 0, 0, 0, 0, 0, '', '', 'sadek1', 'f41aa67c4c6d11a7a48ede97cdb4f557'),
(179, 'Sabbir Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Kasba', 0, 0, 0, 0, 0, 0, '', '', 'sabbir1', '496afd89a952492adf3e630ee9eb06f7'),
(180, 'Yeasin Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Nabinagar', 0, 0, 0, 0, 0, 0, '', '', 'yeasin1', '72410575c9cc6fdc5375ef1796bf08d3'),
(181, 'Rafijit Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Nasirnagar', 0, 0, 0, 0, 0, 0, '', '', 'rafijit1', 'ef4ca876d2378984a01ac4e6a9a872a3'),
(182, 'Emon Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Sarail', 0, 0, 0, 0, 0, 0, '', '', 'emon1', '16b93643303ba00d6a913d723b9f4381'),
(183, 'Shuvo Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Sarail', 0, 0, 0, 0, 0, 0, '', '', 'shuvo1', '641eaa8d5209c62d8a01556353cfe270'),
(184, 'Robin Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'Ashuganj', 0, 0, 0, 0, 0, 0, '', '', 'robin1', '0f05bf0df1c89f6d6f9308275d1cbaa4'),
(185, 'Arif Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Brahmanbaria', 'select-message', 0, 0, 0, 0, 0, 0, '', '', 'arif1', 'cae104b6e30715b633f86a80b3b7c35e'),
(186, 'Joy Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chandpur', 'Chandpur Sadar', 0, 0, 0, 0, 0, 0, '', '', 'joy1', '3bd969bc315df0a058e58c6efad83a32'),
(187, 'Mahfuj Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Faridganj', 0, 0, 0, 0, 0, 0, '', '', 'mahfuj1', '9b15b4eb5b5a6e8ebd777a4dda97c8f6'),
(188, 'Siyam Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Haimchar', 0, 0, 0, 0, 0, 0, '', '', 'siyam1', 'ab83703b79cf2d839bcaf0c15a02aa28'),
(189, 'Sohag Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Haziganj', 0, 0, 0, 0, 0, 0, '', '', 'sohag1', '3117aabf73a29090339c4f344ca7a6ee'),
(190, 'Rabbi Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Kachua', 0, 0, 0, 0, 0, 0, '', '', 'rabbi1', '4b04c0079db9ba3de8b45a159832fb6b'),
(191, 'Minhaj Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chandpur', 'Matlab Dakshin', 0, 0, 0, 0, 0, 0, '', '', 'minhaj1', 'c96be51390d4cc1a4f401bde42746d81'),
(192, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chandpur', 'Matlab Uttar', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(193, 'Nova Ambulance Service', 'anisulawal@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chandpur', 'Shahrasti', 0, 0, 0, 0, 0, 0, '', '', 'alif1', '6b3f27751e25f61ad68e5883aeca1670'),
(194, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Anwara', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(195, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Banshkhali', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(196, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Boalkhali', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(197, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Chandanaish', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(198, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Fatikchhari', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(199, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Chittagong', 'Hathazari', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(200, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Karnaphuli', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(201, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Karnaphuli', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(202, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Lohagara', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(203, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Mirsharai', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(204, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Patiya', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(205, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Rangunia', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(206, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Raozan', 0, 0, 0, 0, 0, 0, '', '', 'bshi1', 'a96a8e315319ef80e269153da471843c'),
(207, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Chittagong', 'Sandwip', 0, 0, 0, 0, 0, 0, '', '', '1', 'c4ca4238a0b923820dcc509a6f75849b'),
(208, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Chittagong', 'Satkania', 0, 0, 0, 0, 0, 0, '', '', '2', 'c81e728d9d4c2f636f067f89cc14862c'),
(209, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Sitakunda', 0, 0, 0, 0, 0, 0, '', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
(210, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Bandar Thana', 0, 0, 0, 0, 0, 0, '', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
(211, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Chandgaon Thana', 0, 0, 0, 0, 0, 0, '', '', '4', 'a87ff679a2f3e71d9181a67b7542122c'),
(212, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Double Mooring Thana', 0, 0, 0, 0, 0, 0, '', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5'),
(213, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Kotwali Thana', 0, 0, 0, 0, 0, 0, '', '', '6', '1679091c5a880faf6fb5e6087eb1b2dc'),
(214, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Sadar', 'Chittagong', 'Chittagong', 'Pahartali Thana', 0, 0, 0, 0, 0, 0, '', '', '7', '8f14e45fceea167a5a36dedd4bea2543'),
(215, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Chittagong', 'Pahartali Thana', 0, 0, 0, 0, 0, 0, '', '', '8', 'c9f0f895fb98ab9159f51fd0297e236d'),
(216, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Panchlaish Thana', 0, 0, 0, 0, 0, 0, '', '', '9', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(217, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Chittagong', 'Bhujpur Thana', 0, 0, 0, 0, 0, 0, '', '', '10', 'd3d9446802a44259755d38e6d163e820'),
(218, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Barura', 0, 0, 0, 0, 0, 0, '', '', '11', '6512bd43d9caa6e02c990b0a82652dca'),
(219, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Brahmanpara', 0, 0, 0, 0, 0, 0, '', '', '12', 'c20ad4d76fe97759aa27a0c99bff6710'),
(220, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Burichang', 0, 0, 0, 0, 0, 0, '', '', '13', 'c51ce410c124a10e0db5e4b97fc2af39'),
(221, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Chandina', 0, 0, 0, 0, 0, 0, '', '', '14', 'aab3238922bcc25a6f606eb525ffdc56'),
(222, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Sher-e-Bangla Nagar, Dhaka', 'Chittagong', 'Comilla', 'Chauddagram', 0, 0, 0, 0, 0, 0, '', '', '15', '9bf31c7ff062936a96d3c8bd1f8f2ff3'),
(223, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Daudkandi', 0, 0, 0, 0, 0, 0, '', '', '16', 'c74d97b01eae257e44aa9d5bade97baf'),
(224, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Debidwar', 0, 0, 0, 0, 0, 0, '', '', '17', '70efdf2ec9b086079795c442636b55fb'),
(225, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Homna', 0, 0, 0, 0, 0, 0, '', '', '18', '6f4922f45568161a8cdf4ad2299f6d23'),
(226, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Bir Uttam Qazi Nuruzzaman Sarak,Panthapath.Dhaka.', 'Chittagong', 'Comilla', 'Laksam', 0, 0, 0, 0, 0, 0, '', '', '19', '1f0e3dad99908345f7439f8ffabdffc4'),
(227, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Laksam', 0, 0, 0, 0, 0, 0, '', '', '20', '98f13708210194c475687be6106a3b84'),
(228, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Comilla', 'Muradnagar', 0, 0, 0, 0, 0, 0, '', '', '21', '3c59dc048e8850243be8079a5c74d079'),
(229, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Nangalkot', 0, 0, 0, 0, 0, 0, '', '', '21', '3c59dc048e8850243be8079a5c74d079'),
(230, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Comilla', 'Cumilla Adarsha Sadar', 0, 0, 0, 0, 0, 0, '', '', '22', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(231, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Comilla', 'Meghna', 0, 0, 0, 0, 0, 0, '', '', '23', 'c81e728d9d4c2f636f067f89cc14862c'),
(232, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Comilla', 'Titas', 0, 0, 0, 0, 0, 0, '', '', '24', '1ff1de774005f8da13f42943881c655f'),
(233, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', 0, 0, 0, 0, 0, 0, '', '', '25', '8e296a067a37563370ded05f5a3bf3ec'),
(234, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Feni', 'Chhagalnaiya', 0, 0, 0, 0, 0, 0, '', '', '28', '33e75ff09dd601bbe69f351039152189'),
(235, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Daganbhuiyan', 0, 0, 0, 0, 0, 0, '', '', '29', '6ea9ab1baa0efb9e19094440c317e21b'),
(236, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Feni', 'Daganbhuiyan', 0, 0, 0, 0, 0, 0, '', '', '30', '34173cb38f07f89ddbebc2ac9128303f'),
(237, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Feni Sadar', 0, 0, 0, 0, 0, 0, '', '', '31', 'c16a5320fa475530d9583c34fd356ef5'),
(238, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Feni', 'Parshuram', 0, 0, 0, 0, 0, 0, '', '', '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
(239, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Sonagazi', 0, 0, 0, 0, 0, 0, '', '', '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
(240, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Feni', 'Fulgazi', 0, 0, 0, 0, 0, 0, '', '', '34', 'e369853df766fa44e1ed0ff613f563bd'),
(241, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Dighinala', 0, 0, 0, 0, 0, 0, '', '', '35', '1c383cd30b7c298ab50293adfecb7b18'),
(242, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Khagrachhari', 0, 0, 0, 0, 0, 0, '', '', '36', '19ca14e7ea6328a42e0eb13d585e4c22'),
(243, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Lakshmichhari', 0, 0, 0, 0, 0, 0, '', '', '37', 'a5bfc9e07964f8dddeb95fc584cd965d'),
(244, 'Joynov Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Mahalchhari', 0, 0, 0, 0, 0, 0, '', '', '38', 'a5771bce93e200c36f7cd9dfd0e5deaa'),
(245, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Manikchhari', 0, 0, 0, 0, 0, 0, '', '', '39', 'd67d8ab4f4c10bf22aa353e27879133c'),
(246, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Manikchhari', 0, 0, 0, 0, 0, 0, '', '', '39', 'd67d8ab4f4c10bf22aa353e27879133c'),
(247, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Matiranga', 0, 0, 0, 0, 0, 0, '', '', '40', 'd645920e395fedad7bbbed0eca3fe2e0'),
(248, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Panchhari', 0, 0, 0, 0, 0, 0, '', '', '41', '3416a75f4cea9109507cacd8e2f2aefc'),
(249, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Khagrachhari', 'Ramgarh', 0, 0, 0, 0, 0, 0, '', '', '42', 'a1d0c6e83f027327d8461063f4ac58a6'),
(250, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', 0, 0, 0, 0, 0, 0, '', '', '43', '17e62166fc8586dfa4d1bc0e1742c08b'),
(251, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Raipur', 0, 0, 0, 0, 0, 0, '', '', '44', 'f7177163c833dff4b38fc8d2872f1ec6'),
(252, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632528', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Raipur', 0, 0, 0, 0, 0, 0, '', '', '45', '6c8349cc7260ae62e3b1396831a8398f'),
(253, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Ramganj', 0, 0, 0, 0, 0, 0, '', '', '46', 'd9d4f495e875a2e075a1a4a6e1b9770f'),
(254, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Ramgati', 0, 0, 0, 0, 0, 0, '', '', '47', '67c6a1e7ce56d3d6fa748ab6d9af3fd7'),
(255, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Lakshmipur', 'Kamalnagar', 0, 0, 0, 0, 0, 0, '', '', '48', '642e92efb79421734881b53e1e1b18b6'),
(256, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Begumganj', 0, 0, 0, 0, 0, 0, '', '', '49', 'f457c545a9ded88f18ecee47145a72c0'),
(257, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Noakhali', 'Noakhali Sadar', 0, 0, 0, 0, 0, 0, '', '', '50', 'c0c7c76d30bd3dcaefc96f40275bdc0a'),
(258, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Chatkhil', 0, 0, 0, 0, 0, 0, '', '', '51', '2838023a778dfaecdc212708f721b788'),
(259, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Companiganj', 0, 0, 0, 0, 0, 0, '', '', '52', '9a1158154dfa42caddbd0694a4e9bdc8'),
(260, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Noakhali', 'Hatiya', 0, 0, 0, 0, 0, 0, '', '', '53', 'd82c8d1619ad8176d665453cfb2e55f0'),
(261, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Noakhali', 'Senbagh', 0, 0, 0, 0, 0, 0, '', '', '54', 'a684eceee76fc522773286a895bc8436'),
(262, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Noakhali', 'Sonaimuri', 0, 0, 0, 0, 0, 0, '', '', '55', 'b53b3a3d6ab90ce0268229151c9bde11'),
(263, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Noakhali', 'Subarnachar', 0, 0, 0, 0, 0, 0, '', '', '56', '9f61408e3afb633e50cdf1b20de6f466'),
(264, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632528', 'Baniarchala', 'Chittagong', 'Noakhali', 'Subarnachar', 0, 0, 0, 0, 0, 0, '', '', '57', '72b32a1f754ba1c09b3695e0cb6cde7f'),
(265, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Noakhali', 'Kabirhat', 0, 0, 0, 0, 0, 0, '', '', '57', '72b32a1f754ba1c09b3695e0cb6cde7f'),
(266, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Rangamati', 'Bagaichhari', 0, 0, 0, 0, 0, 0, '', '', '58', '66f041e16a60928b05a7e228a89c3799'),
(267, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Rangamati', 'Barkal', 0, 0, 0, 0, 0, 0, '', '', '59', '093f65e080a295f8076b1c5722a46aa2'),
(268, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Kawkhali (Betbunia)', 0, 0, 0, 0, 0, 0, '', '', '60', '072b030ba126b2f4b2374f342be9ed44'),
(269, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Chittagong', 'Rangamati', 'Belaichhari', 0, 0, 0, 0, 0, 0, '', '', '61', '7f39f8317fbdb1988ef4c628eba02591'),
(270, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Kaptai', 0, 0, 0, 0, 0, 0, '', '', '62', '44f683a84163b3523afe57c2e008bc8c'),
(271, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Rangamati', 'Juraichhari', 0, 0, 0, 0, 0, 0, '', '', '63', '03afdbd66e7929b125f8597834fa83a4'),
(272, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Langadu', 0, 0, 0, 0, 0, 0, '', '', '65', 'fc490ca45c00b1249bbe3554a4fdf6fb'),
(273, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Chittagong', 'Rangamati', 'Naniyachar', 0, 0, 0, 0, 0, 0, '', '', '66', '3295c76acbf4caaed33c36b1b5fc2cb1'),
(274, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Chittagong', 'Rangamati', 'Rajasthali', 0, 0, 0, 0, 0, 0, '', '', '67', '735b90b4568125ed6c3f678819b6e058'),
(275, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Chittagong', 'Rangamati', 'Rangamati Sadar', 0, 0, 0, 0, 0, 0, '', '', '68', 'a3f390d88e4c41f2747bfa2f1b5f87db'),
(276, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Faridpur', 'Alfadanga', 0, 0, 0, 0, 0, 0, '', '', '70', '7cbbc409ec990f19c78c75bd1e06f215'),
(277, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Bhanga', 0, 0, 0, 0, 0, 0, '', '', '71', 'e2c420d928d4bf8ce0ff2ec19b371514'),
(278, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Bhanga', 0, 0, 0, 0, 0, 0, '', '', '72', '32bb90e8976aab5298d5da10fe66f21d'),
(279, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Faridpur', 'Boalmari', 0, 0, 0, 0, 0, 0, '', '', '73', 'd2ddea18f00665ce8623e36bd4e3c7c5'),
(280, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Charbhadrasan', 0, 0, 0, 0, 0, 0, '', '', '75', 'd09bf41544a3365a46c9077ebb5e35c3'),
(281, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Faridpur Sadar', 0, 0, 0, 0, 0, 0, '', '', '74', 'ad61ab143223efbc24c7d2583be69251'),
(282, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Faridpur', 'Madhukhali', 0, 0, 0, 0, 0, 0, '', '', '75', 'd09bf41544a3365a46c9077ebb5e35c3'),
(283, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Faridpur', 'Nagarkanda', 0, 0, 0, 0, 0, 0, '', '', '76', 'fbd7939d674997cdb4692d34de8633c4'),
(284, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Sadarpur', 0, 0, 0, 0, 0, 0, '', '', '77', '28dd2c7955ce926456240b2ff0100bde'),
(285, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Faridpur', 'Saltha', 0, 0, 0, 0, 0, 0, '', '', '78', '35f4a8d465e6e1edc05f3d8ab658c551'),
(286, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gazipur', 'Gazipur Sadar', 0, 0, 0, 0, 0, 0, '', '', '79', 'd1fe173d08e959397adf34b1d77e88d7'),
(287, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kaliakair', 0, 0, 0, 0, 0, 0, '', '', '80', 'f033ab37c30201f73f142449d037028d'),
(288, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kaliganj', 0, 0, 0, 0, 0, 0, '', '', '81', '43ec517d68b6edd3015b3edc9a11367b'),
(289, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kapasia', 0, 0, 0, 0, 0, 0, '', '', '82', '9778d5d219c5080b9a6a17bef029331c'),
(290, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gazipur', 'Kapasia', 0, 0, 0, 0, 0, 0, '', '', '83', 'fe9fc289c3ff0af142b6d3bead98a923'),
(291, 'Joynov Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gazipur', 'Sreepur', 0, 0, 0, 0, 0, 0, '', '', '84', '68d30a9594728bc39aa24be94b319d21'),
(292, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Gopalganj Sadar', 0, 0, 0, 0, 0, 0, '', '', '85', '3ef815416f775098fe977004015c6193'),
(293, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Kashiani', 0, 0, 0, 0, 0, 0, '', '', '86', '93db85ed909c13838ff95ccfa94cebd9'),
(294, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Kotalipara', 0, 0, 0, 0, 0, 0, '', '', '88', '2a38a4a9316c49e5a833517c45d31070'),
(295, 'Jahid Ambulance Service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Muksudpur', 0, 0, 0, 0, 0, 0, '', '', '89', '7647966b7343c29048673252e490f736'),
(296, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Tungipara', 0, 0, 0, 0, 0, 0, '', '', '90', '8613985ec49eb8f757ae6439e879bb2a'),
(297, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Gopalganj', 'Tungipara', 0, 0, 0, 0, 0, 0, '', '', '91', '54229abfcfa5649e7003b83dd4755294'),
(298, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Austagram', 0, 0, 0, 0, 0, 0, '', '', '92', '92cc227532d17e56e07902b254dfad10'),
(299, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Bajitpur', 0, 0, 0, 0, 0, 0, '', '', '93', '98dce83da57b0395e163467c9dae521b'),
(300, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Bhairab', 0, 0, 0, 0, 0, 0, '', '', '94', 'f4b9ec30ad9f68f89b29639786cb62ef'),
(301, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Hossainpur', 0, 0, 0, 0, 0, 0, '', '', '95', '812b4ba287f5ee0bc9d43bbf5bbe87fb'),
(302, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Hossainpur', 0, 0, 0, 0, 0, 0, '', '', '96', '26657d5ff9020d2abefe558796b99584'),
(303, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Itna', 0, 0, 0, 0, 0, 0, '', '', '97', 'e2ef524fbf3d9fe611d5a8e90fefdc9c'),
(304, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Karimganj', 0, 0, 0, 0, 0, 0, '', '', '98', 'ed3d2c21991e3bef5e069713af9fa6ca'),
(305, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Katiadi', 0, 0, 0, 0, 0, 0, '', '', '99', 'ac627ab1ccbdb62ec96e702f07f6425b'),
(306, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Kishoreganj Sadar', 0, 0, 0, 0, 0, 0, '', '', '100', 'f899139df5e1059396431415e770c6dd'),
(307, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Kuliarchar', 0, 0, 0, 0, 0, 0, '', '', '101', '38b3eff8baf56627478ec76a704e9b52'),
(308, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Nikli', 0, 0, 0, 0, 0, 0, '', '', '102', 'ec8956637a99787bd197eacd77acce5e'),
(309, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Kishoreganj', 'Pakundia', 0, 0, 0, 0, 0, 0, '', '', '103', '6974ce5ac660610b44d9b9fed0ff9548'),
(310, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Madaripur', 'Rajoir', 0, 0, 0, 0, 0, 0, '', '', '105', '65b9eea6e1cc6bb9f0cd2a47751a186f'),
(311, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Madaripur', 'Madaripur Sadar', 0, 0, 0, 0, 0, 0, '', '', '106', 'f0935e4cd5920aa6c7c996a5ee53a70f'),
(312, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Madaripur', 'Kalkini', 0, 0, 0, 0, 0, 0, '', '', '107', 'a97da629b098b75c294dffdc3e463904'),
(313, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Madaripur', 'Shibchar', 0, 0, 0, 0, 0, 0, '', '', '108', 'a3c65c2974270fd093ee8a9bf8ae7d0b'),
(314, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Manikganj', 'Daulatpur', 0, 0, 0, 0, 0, 0, '', '', '110', '5f93f983524def3dca464469d2cf9f3e'),
(315, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Manikganj', 'Ghior', 0, 0, 0, 0, 0, 0, '', '', '111', '698d51a19d8a121ce581499d7b701668'),
(316, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Manikganj', 'Harirampur', 0, 0, 0, 0, 0, 0, '', '', '112', '7f6ffaa6bb0b408017b62254211691b5'),
(317, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Manikganj', 'Manikgonj Sadar', 0, 0, 0, 0, 0, 0, '', '', '113', '73278a4a86960eeb576a8fd4c9ec6997'),
(318, 'Joynov Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Manikganj', 'Saturia', 0, 0, 0, 0, 0, 0, '', '', '114', '5fd0b37cd7dbbb00f97ba6ce92bf5add'),
(319, 'Alif Ambulanc service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Manikganj', 'Shivalaya', 0, 0, 0, 0, 0, 0, '', '', '115', '2b44928ae11fb9384c4cf38708677c48'),
(320, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Manikganj', 'Singair', 0, 0, 0, 0, 0, 0, '', '', '116', 'c45147dee729311ef5b5c3003946c48f'),
(321, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Manikganj', 'Singair', 0, 0, 0, 0, 0, 0, '', '', '117', 'eb160de1de89d9058fcb0b968dbbbd68'),
(322, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Gazaria', 0, 0, 0, 0, 0, 0, '', '', '118', '5ef059938ba799aaa845e1c2e8a762bd'),
(323, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Lohajang', 0, 0, 0, 0, 0, 0, '', '', '119', '07e1cd7dca89a1678042477183b7ac3f'),
(324, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Munshiganj Sadar', 0, 0, 0, 0, 0, 0, '', '', '120', 'da4fb5c6e93e74d3df8527599fa62642'),
(325, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Sirajdikhan', 0, 0, 0, 0, 0, 0, '', '', '121', '4c56ff4ce4aaf9573aa5dff913df997a'),
(326, 'Alif Ambulanc service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Sreenagar', 0, 0, 0, 0, 0, 0, '', '', '123', '202cb962ac59075b964b07152d234b70'),
(327, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Munshiganj', 'Sreenagar', 0, 0, 0, 0, 0, 0, '', '', '125', '3def184ad8f4755ff269862ea77393dd'),
(328, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Araihazar', 0, 0, 0, 0, 0, 0, '', '', '126', '069059b7ef840f0c74a814ec9237b6ec'),
(329, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Bandar', 0, 0, 0, 0, 0, 0, '', '', '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2'),
(330, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Narayanganj Sadar', 0, 0, 0, 0, 0, 0, '', '', '128', '76dc611d6ebaafc66cc0879c71b5db5c'),
(331, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Rupganj', 0, 0, 0, 0, 0, 0, '', '', '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2'),
(332, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Rupganj', 0, 0, 0, 0, 0, 0, '', '', '129', 'd1f491a404d6854880943e5c3cd9ca25'),
(333, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Sonargaon', 0, 0, 0, 0, 0, 0, '', '', '130', '9b8619251a19057cff70779273e95aa6'),
(334, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Sonargaon', 0, 0, 0, 0, 0, 0, '', '', '131', '1afa34a7f984eeabdbb0a7d494132ee5'),
(335, 'Anjuman E Mofidul Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Narayanganj', 'Sonargaon', 0, 0, 0, 0, 0, 0, '', '', '126', '069059b7ef840f0c74a814ec9237b6ec'),
(336, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Narsingdi Sadar', 0, 0, 0, 0, 0, 0, '', '', '130', '9b8619251a19057cff70779273e95aa6'),
(337, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Belabo', 0, 0, 0, 0, 0, 0, '', '', '131', '1afa34a7f984eeabdbb0a7d494132ee5'),
(338, 'Jahid Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Monohardi', 0, 0, 0, 0, 0, 0, '', '', '145', '2b24d495052a8ce66358eb576b8912c8'),
(339, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Palash', 0, 0, 0, 0, 0, 0, '', '', '146', 'a5e00132373a7031000fd987a3c9f87b'),
(340, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Raipura', 0, 0, 0, 0, 0, 0, '', '', '147', '8d5e957f297893487bd98fa830fa6413'),
(341, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Narsingdi', 'Shibpur', 0, 0, 0, 0, 0, 0, '', '', '150', '7ef605fc8dba5425d6965fbd4c8fbe1f'),
(342, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Rajbari', 'Baliakandi', 0, 0, 0, 0, 0, 0, '', '', '151', 'a8f15eda80c50adb0e71943adc8015cf'),
(343, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Rajbari', 'Goalandaghat', 0, 0, 0, 0, 0, 0, '', '', '152', '37a749d808e46495a8da1e5352d03cae'),
(344, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Rajbari', 'Pangsha', 0, 0, 0, 0, 0, 0, '', '', '158', '06409663226af2f3114485aa4e0a23b4'),
(345, 'Jahid Ambulance Service', 'bijoykumar@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Rajbari', 'Rajbari Sadar', 0, 0, 0, 0, 0, 0, '', '', '159', '140f6969d5213fd0ece03148e62e461e'),
(346, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Rajbari', 'Kalukhali', 0, 0, 0, 0, 0, 0, '', '', '159', '140f6969d5213fd0ece03148e62e461e'),
(347, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Bhedarganj', 0, 0, 0, 0, 0, 0, '', '', '160', 'b73ce398c39f506af761d2277d853a92'),
(348, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Damudya', 0, 0, 0, 0, 0, 0, '', '', '161', 'bd4c9ab730f5513206b999ec0d90d1fb'),
(349, 'Miftahul Jannat Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Gosairhat', 0, 0, 0, 0, 0, 0, '', '', '161', 'bd4c9ab730f5513206b999ec0d90d1fb'),
(350, 'Nova Ambulance Service', 'mansurul@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Naria', 0, 0, 0, 0, 0, 0, '', '', '162', '82aa4b0af34c2313a562076992e50aa3'),
(351, 'Anjuman E Mofidul Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shariatpur Sadar', 0, 0, 0, 0, 0, 0, '', '', '163', '0777d5c17d4066b82ab86dff8a46af6f'),
(352, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Zajira', 0, 0, 0, 0, 0, 0, '', '', '168', '006f52e9102a8d3be2fe5614f42ba989'),
(353, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shariatpur Sadar', 0, 0, 0, 0, 0, 0, '', '', '170', '149e9677a5989fd342ae44213df68868'),
(354, 'Miftahul Jannat Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Zajira', 0, 0, 0, 0, 0, 0, '', '', '171', 'a4a042cf4fd6bfb47701cbc8a1653ada'),
(355, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shakhipur', 0, 0, 0, 0, 0, 0, '', '', '172', '1ff8a7b5dc7a7d1f0ed65aaa29c04b1e'),
(356, 'Miftahul Jannat Ambulance Service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Shariatpur', 'Shakhipur', 0, 0, 0, 0, 0, 0, '', '', '176', '38af86134b65d0f10fe33d30dd76442e'),
(357, 'Alif Ambulanc service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Gopalpur', 0, 0, 0, 0, 0, 0, '', '', '170', '149e9677a5989fd342ae44213df68868'),
(358, 'Jahid Ambulance Service', 'shanara@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Basail', 0, 0, 0, 0, 0, 0, '', '', '180', '045117b0e0a11a242b9765e79cbf113f'),
(359, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Bhuapur', 0, 0, 0, 0, 0, 0, '', '', '182', '4c5bde74a8f110656874902f07378009'),
(360, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Bhuapur', 0, 0, 0, 0, 0, 0, '', '', '183', 'cedebb6e872f539bef8c3f919874e9d7'),
(361, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Delduar', 0, 0, 0, 0, 0, 0, '', '', '186', '9872ed9fc22fc182d371c3e9ed316094'),
(362, 'Jahid Ambulance Service', 'salahuddinhaider@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Delduar', 0, 0, 0, 0, 0, 0, '', '', '189', 'a2557a7b2e94197ff767970b67041697'),
(363, 'Anjuman E Mofidul Ambulance Service', 'mansurul@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Ghatail', 0, 0, 0, 0, 0, 0, '', '', '190', 'cfecdb276f634854f3ef915e2e980c31'),
(364, 'Anjuman E Mofidul Ambulance Service', 'bijoykumar@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Kalihati', 0, 0, 0, 0, 0, 0, '', '', '191', '0aa1883c6411f7873cb83dacb17b0afc'),
(365, 'Nova Ambulance Service', 'salahuddinhaider@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Madhupur', 0, 0, 0, 0, 0, 0, '', '', '192', '58a2fc6ed39fd083f55d4182bf88826d'),
(366, 'Miftahul Jannat Ambulance Service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Tangail', 'Mirzapur', 0, 0, 0, 0, 0, 0, '', '', '193', 'bd686fd640be98efaae0091fa301e613'),
(367, 'Nova Ambulance Service', 'shanara@gmail.com', '01733632552', 'Baniarchala', 'Dhaka', 'Tangail', 'Mirzapur', 0, 0, 0, 0, 0, 0, '', '', '194', 'a597e50502f5ff68e3e25b9114205d4a');
INSERT INTO `ambulance_registration` (`id`, `org_name`, `email`, `phone`, `address`, `division`, `city`, `upazila`, `ac`, `non_ac`, `icu`, `hdu`, `air`, `frezing`, `image`, `status`, `user_name`, `password`) VALUES
(368, 'Jahid Ambulance Service', 'anisulawal@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Nagarpur', 0, 0, 0, 0, 0, 0, '', '', '195', '0336dcbab05b9d5ad24f4333c7658a0e'),
(369, 'Alif Ambulanc service', 'shanara@gmail.com', '01733632536', 'Baniarchala', 'Dhaka', 'Tangail', 'Sakhipur', 0, 0, 0, 0, 0, 0, '', '', '196', '084b6fbb10729ed4da8c3d3f5a3ae7c9'),
(370, 'Nova Ambulance Service', 'bijoykumar@gmail.com', '01733632525', 'Baniarchala', 'Dhaka', 'Tangail', 'Dhanbari', 0, 0, 0, 0, 0, 0, '', '', '197', '85d8ce590ad8981ca2c8286f79f59954'),
(371, 'Alif Ambulanc service', 'mansurul@gmail.com', '01733632539', 'Baniarchala', 'Dhaka', 'Tangail', 'Tangail Sadar', 0, 0, 0, 0, 0, 0, '', '', '198', '0e65972dce68dad4d52d063967f0a705');

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
(7, 'Non AC', '12/09/2022', 'Mirpur', 'Uttara', 'Jahid Hasan', '01733632536', 115);

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

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`id`, `patient_name`, `blood_group`, `required_unit`, `gender`, `age`, `date_of_donation`, `hospital_name`, `hospital_address`, `division`, `city`, `upazila`, `contact_person`, `contact_number`, `patient_history`) VALUES
(8, 'Rahim', 'A+', '2', 'male', 25, 'Argent', 'Popular Hospital', 'Dhanmondi', 'Dhaka', 'Dhaka', 'Dhaka City', 'Rahim', '01842605509', 'Accident');

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
(4, 'Jahid', 'Hasan', 'A+', 'Male', 25, 55, 'jahid123@gmail.com', '01983384329', 'Safari park', 'Dhaka', 'Dhaka', 'Dhaka City', '09/02/22', 'jahid123', '98fb1c8e80ee4c84e9287016b7838708', 'uploads/bdonners/profile-picture/user_id_4_1662217808.jpg');

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
(17, 'Mirpur Fire Station', '01730002229', 'fsmirpur@gmail.gov.bd', 'Mirpur', 'Dhaka', 'Dhaka', 'Dhaka City');

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
  `password` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `email`, `phone`, `type`, `address`, `division`, `city`, `upazila`, `user_name`, `password`, `image`) VALUES
(4, 'Bangabandhu Sheikh Mujib Medical University Hospital', 'bsmmu@gmail.com', '01733632563', 'General Medicine & Surgery', 'B block.BSMMU,Dhaka 1205,Bangladesh.', 'Dhaka', 'Dhaka', 'Dhaka City', 'bsmmu1', 'b3885497becd7cce48b0b0757bcc4f80', ''),
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
(27, 'Moon Hospital', 'info@moonhospital.com', '01733632525', 'General Surgery & Medicine.', 'Jautola,Cumilla.', 'Chittagong', 'Comilla', 'Cumilla Adarsha Sadar', 'moon1', 'eeac7f42e6fe8b0bf424734bb7d3c05d', ''),
(28, 'Cumilla Tower Hospital.', 'info@tower.com', '01733632525', 'General Surgery & Medicine.', 'Kandirpar,Cumilla.', 'Chittagong', 'Comilla', 'Cumilla Sadar Dakshin', 'tower1', '79835ea3522d3f99a86de822097693ca', ''),
(29, 'Shamim Eye Hospital', 'info@shamim.com', '01733632552', 'Eye Hospital', 'Mawna Chowrasta,Sreepur, Gazipur.', 'Dhaka', 'Gazipur', 'Sreepur', 'shamim1', 'bf7eeff09f75cd141169e6ed6207977e', '');

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
(11, 'Dr. Farid Uddin', 'MBBS,MD.', 'Endrocrinologist', 'Friday-Sun [10 AM - 8 PM]', 'fariduddin@gmail.com', '01713373171', '', 1, 4),
(12, 'Dr. Gopen Kumar Kundu', 'MBBS,MD.', 'Neurologist', 'Friday-Sun [10 AM - 8 PM]', 'gopen@gmail.com', '01713373171', '', 2, 4),
(13, 'Dr. S A Khan', 'MBBS,MU.', 'Eurologist', 'Friday-Sun [12 PM - 8 PM]', 'sakhan@gmail.com', '01713373181', '', 3, 4),
(14, 'Dr. A K Ahmedullah', 'MBBS,MD.', 'Rheumatologist', 'Friday-Sun [11 AM - 5 PM]', 'akahmedullah@gmail.com', '01713373180', '', 4, 4),
(15, 'Dr. Sayeba Akhter', 'MBBS,MD.', 'Obstetrician and Gynecologist', 'Friday-Sun [1 PM - 8 PM]', 'sayeba@gmail.com', '01713373181', '', 5, 4),
(16, 'Dr. Pran Gopal Datta', 'MBBS,MD.', 'E.N.T', 'Friday-Sun [11 AM - 5 PM]', 'prangopal@gmail.com', '01713373171', '', 6, 4),
(17, 'Dr. Afiqul Islam', 'MBBS,MD.', 'Pediatrician', 'Friday-Sun [11 AM - 5 PM]', 'ariful@gmail.com', '01733632563', '', 6, 4),
(18, 'Dr. Akm Anwarul  Islam', 'MBBS,MU.', 'Urologist', 'Friday-Sun [12 PM - 8 PM]', 'anwarul@gmail.com', '01733632563', '', 7, 4),
(19, 'Dr. Sheikh Hasanur Rahman', 'MBBS,MU.', 'E. N.T.', 'Friday-Sun [1 PM - 8 PM]', 'hasanurrahman@gmail.com', '01733632563', '', 8, 4),
(20, 'Dr. Harasit Kumar Paul', 'MBBBS', 'Dermatologist', 'Friday-Sun [11 AM - 5 PM]', 'harasit@gmail.com', '01713373180', '', 9, 4),
(21, 'Dr. Abdul Wahab', 'MBBS,MD.', 'Dermatologist', 'Friday-Sun [1 2 PM - 8 PM]', 'abdulwahab@gmail.com', '01713373180', '', 10, 4),
(22, 'Prof. Dr. M. N. Huda', 'MBBS, DDV, FCPS.', 'Dermatologist,Sexologist.', 'Saturday-Tuesday [11 AM - 5 PM]', 'mnhuda@gmail.com', '01713373181', '', 1, 5),
(23, 'Prof. Dr. Salma Sultana', 'MBBS,FCPS,MS', 'Breast surgery Specialist', 'Friday-Sun [12 PM - 8 PM]', 'salmasultana@gmail.com', '01713373171', '', 2, 5),
(24, 'Prof. Dr. Md. Kamrul Islam', 'MBBS,FCPS,MS,FRCS', 'Urology, Kidney Transplant Specialist.', 'Saturday-Tuesday [11 AM - 5 PM]', 'kamrulislam@gmail.com', '01713373180', '', 3, 5),
(25, 'Prof. Dr. Md. Hafizur Rahman', 'MBBS,DEM, MD, MACE', 'Diabetes Specialist', 'Saturday-Tuesday [11 AM - 5 PM]', 'hafizurrahman@gmail.com', '01713373136', '', 4, 5),
(26, 'Prof. Dr. Khan Abul Kalam Azad', 'MBBS,FCPS,MS,FRCS', 'Medicine Specialist', 'Friday-Monday [11 AM - 5 PM]', 'abulkalamazad@gmail.com', '01713373136', '', 5, 5),
(27, 'Dr. Rebeka Sultana', 'MBBS,BCS,DDV,FCPS', 'Skin,Allergy,Leprosy Specialist', 'Friday-Sun [10 AM - 8 PM]', 'rebeka@gmail.com', '01713373171', '', 1, 6),
(28, 'Dr. Zebun Nessa', 'MBBS,MCPS,FCPS,BCS', 'Gynecology & Obsterics Specialist', 'Friday-Sun [1 PM - 8 PM]', 'zebunnessa@gmail.com', '01713373180', '', 2, 6),
(29, 'Dr. Md Jahangir Kobir', 'MBBS,MD,BCS.', 'Liver & Medicine Specialist.', 'Saturday-Tuesday [11 AM - 5 PM]', 'jahangirkabir@gmail.com', '01713373181', '', 1, 7),
(30, 'Dr. Maimuna Sultana', 'MBBS,BCS,FCPS,MD,CCD', 'Medicne,Cardiology & Diabetes Specialist.', 'Friday-Sun [10 AM - 8 PM]', 'maimunasultana@gmail.com', '01713373136', '', 2, 7),
(31, 'Prof. Dr. Tahmina Hossain', 'MBBS,FCPS.', 'Gynecology & Obsterics Specialist', 'Friday-Sun [12 PM - 8 PM]', 'tahminahossain@gmail.com', '01713373180', '', 1, 8),
(32, 'Dr. Md. Zahid Ferdous', 'MBBS,MS.', 'Orthopedic Surgeon', 'Friday-Sun [12 PM - 8 PM]', 'zahidferduos@gmail.com', '01713373181', '', 2, 8),
(33, 'Dr. Shahnaz Sigma', 'MBBS,FCPS.', 'Gynecology & Obsterics Specialist', 'Friday-Sun [1 PM - 8 PM]', 'shahnazsigma@gmail.com', '01713373180', '', 1, 9),
(34, 'Dr. Asma Rumanaz Shahid', 'MBBS,DGO,MCPS,MS', 'Gynecology & Obsterics Specialist', 'Friday-Sun [1 PM - 8 PM]', 'asmarumanazshahid@gmail.com', '01713373180', '', 2, 9),
(35, 'Dr. Salahuddin Mohammed Ali Haider', 'MBBS,FCPS,MD', 'Liver Diseases Specialist.', 'Friday-Tuesday[10 Am-5 PM]', 'salahuddinhaider@gmail.com', '01733632536', '', 1, 9),
(36, 'Dr. Bijoy Kumar Dutta', 'MBBS, BCS, MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'bijoykumar@gmail.com', '01733632552', '', 2, 9),
(37, 'Prof Dr. Mansurul Alam', 'MBBS, BCS, MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mansurul@gmail.com', '01733632525', '', 1, 10),
(38, 'Md. Anisul Awal', 'MBBS, BCS, MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'anisulawal@gmail.com', '01733632539', '', 2, 10),
(39, 'Prof. Dr. Shahanara Chowdhury', 'MBBS,FCPS,DMED', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'shanara@gmail.com', '01733632528', '', 1, 11),
(40, 'Dr. Chandan Kumar Das', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'chandankumar@gmail.com', '01733632587', '', 2, 11),
(41, 'Prof. Dr. Basana Muhuri', 'MBBS,FCPS.', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'basana@gmail.com', '01733632525', '', 1, 14),
(42, 'Dr. Saroj Kanti Chowdhury', 'MBBS,FCPS,DMED', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'sarojkanti@gmail.com', '01256+56521', '', 2, 14),
(43, 'Dr. Shiuly Majumdar', 'MBBS,FCPS,MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'shiuly@gmail.com', '01733632552', '', 1, 13),
(44, 'Dr. Samira jamal', 'MBBS, BCS, MD', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'samirajamal@gmail.com', '01733632552', '', 2, 13),
(45, 'Dr. Ershad Uddin Ahmed', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'ershad@gmail.com', '01733632528', '', 1, 15),
(46, 'Dr. Fahmida Islam Chowdhury', 'MBBS,FCPS.', 'Gynecology', 'Friday-Tuesday[11 Am-8 PM]', 'fahmida@gmail.com', '01733632552', '', 2, 15),
(47, 'Prof. Dr. Sahena Akhter', 'MBBS,FCPS,DGO.', 'Gynecology', 'Friday-Tuesday[10 Am-5 PM]', 'sahena@gmail.com', '01733632552', '', 1, 16),
(48, 'Dr. Pradip Kumar Kayasthagir', 'MBBS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'pradipkumar@gmail.com', '01733632525', '', 2, 16),
(49, 'Dr. Abdus Salam', 'MBBS, BCS, MS.', 'Urologist.', 'Friday-Tuesday[11 Am-8 PM]', 'abdussalam@gmail.com', '01733632525', '', 1, 17),
(50, 'Dr. S.M. Tareq Uddin Ahmed.', 'MBBS,FCPS.', 'Throat Specialist.', 'Friday-Tuesday[11 Am-8 PM]', 'tarequddin@gmail.com', '01733632552', '', 2, 17),
(51, 'Dr. Ashish Dey', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'asishdey@gmail.com', '01733632536', '', 1, 18),
(52, 'Dr. Masihuzzaman Alpha', 'MBBS,MCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'mashuzzaman@gmail.com', '01733632552', '', 2, 18),
(53, 'Prof. Dr. Badrul Alam.', 'MBBS,FCPS.', 'Child Specialist.', 'Friday-Tuesday[10 Am-5 PM]', 'badrulalam@gmail.com', '01733632525', '', 1, 19),
(54, 'Prof. Dr. M. Kamal Uddin', 'MBBS,MS', 'Brain Surgeon', 'Friday-Tuesday[11 Am-8 PM]', 'kamaluddin@gmail.com', '01733632525', '', 2, 19),
(55, 'Dr. Prabir Kumar Das', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'prabirkumardas@gmail.com', '01733632552', '', 1, 20),
(56, 'Dr. Nitai Prasad Dutta', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'nitaiprosaddutta@gmail.com', '01733632552', '', 2, 20),
(57, 'Dr. Satyajit Mallick', 'MBBS, BCS, MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'satyajitmallick@gmail.com', '01733632525', '', 1, 21),
(58, 'Dr. Sakera Ahmed', 'MBBS, BCS, FCPS', 'Breast Surgeon.', 'Friday-Tuesday[10 Am-5 PM]', 'sakera@gmail.com', '01733632539', '', 2, 21),
(59, 'Dr. Taslima Begum', 'MBBS,FCPS,DMED', 'Eye Speciallist.', 'Friday-Tuesday[10 Am-5 PM]', 'taslimabegum@gmail.com', '01733632552', '', 1, 22),
(60, 'Prof. Dr. Md. Nurul Huda', 'MBBS,FCPS,DMED', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'nurulhuda@gmail.com', '01733632552', '', 2, 22),
(61, 'Dr. Ali Asgar Chowdhury', 'MBBS,FCPS,DMED', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'aliasgar@gmail.com', '01733632536', '', 1, 23),
(62, 'Dr. Mohiuddin A. Sikder', 'MBBS,FCPS.', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mohiuddinsikder@gmail.com', '01733632552', '', 2, 23),
(63, 'Dr. Najma Mahboob', 'MBBS, BCS, MD', 'Breast Surgeon.', 'Friday-Tuesday[10 Am-5 PM]', 'nazmamahboob@gmail.com', '01733632525', '', 1, 24),
(64, 'Dr. Shagorika Sharmeen', 'MBBS,FCPS,DMED', 'Neurology Specialist', 'Friday-Tuesday[11 Am-8 PM]', 'shagorikasharmin@gmail.com', '01733632525', '', 2, 24),
(65, 'Dr. Muhammad Taiyeb', 'MBBS, BCS, MD', 'Brain Surgeon', 'Friday-Tuesday[10 Am-5 PM]', 'muhammadtayeb@gmail.com', '01733632536', '', 1, 25),
(66, 'Dr. Barnali Barua', 'MBBS,MD', 'Breast Surgeon.', 'Friday-Tuesday[11 Am-8 PM]', 'barnalibarua@gmail.com', '01733632539', '', 2, 25),
(67, 'Dr. Mostafa Noor Mohsin', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mostafa@gmail.com', '01733632539', '', 1, 26),
(68, 'Dr. Mohammad Masud Karim', 'MBBS,FCPS,DMED', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'mohammadmasud@gmail.com', '01733632525', '', 1, 26),
(69, 'Dr. Md. Anwarul Kibria', 'MBBS, BCS, MD', 'Neurology Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'anwarul@gmail.com', '01733632525', '', 1, 27),
(70, 'Prof. Dr. Habibur Rahman', 'MBBS, BCS, MD', 'Skin Diseases Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'habibur@gmail.com', '01733632536', '', 2, 27),
(71, 'Prof. Dr. Khokon Kanti Das', 'MBBS,FCPS,MD', 'Medicine Specialist', 'Friday-Tuesday[10 Am-5 PM]', 'khokon@gmail.com', '01733632539', '', 1, 28),
(72, 'Dr. Shimul Kumar Bhowmik', 'MBBS,FCPS.', 'Brain Surgeon', 'Friday-Tuesday[10 Am-5 PM]', 'shimul@gmail.com', '01733632539', '', 2, 28),
(73, 'Dr. Zaman Ahammed', 'MBBS,FCPS,MD', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'zaman@gmail.com', '01733632528', '', 1, 29),
(74, 'Dr. Binoy Paul', 'MBBS, BCS, MD', 'Eye Speciallist.', 'Friday-Tuesday[11 Am-8 PM]', 'binoypaul@gmail.com', '01733632528', '', 2, 29);

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
(19, 'Adabor Police Station', '01713373183', 'ocadabor@dmp.gov.bd', 'House#105/A,Ring road,Shamoli.', 'Dhaka', 'Dhaka', 'Dhaka City'),
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
(34, 'Tejgaon  Police Station', '01713373180', 'octejgaon@dmp.gov.bd', '56 Tejkunipara,Framgate.', 'Dhaka', 'Dhaka', 'Tejgaon Circle');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `ambulance_request`
--
ALTER TABLE `ambulance_request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donors_registration`
--
ALTER TABLE `donors_registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fire_services`
--
ALTER TABLE `fire_services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fire_service_registration`
--
ALTER TABLE `fire_service_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hospital_doctors`
--
ALTER TABLE `hospital_doctors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
