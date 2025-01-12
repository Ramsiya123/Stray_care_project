-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 09:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `straycare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adopt_request_tb`
--

CREATE TABLE `adopt_request_tb` (
  `request_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'requested',
  `send_date` date NOT NULL,
  `reply_date` date NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `adopted_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adopt_request_tb`
--

INSERT INTO `adopt_request_tb` (`request_id`, `animal_id`, `sender_id`, `status`, `send_date`, `reply_date`, `recipient_id`, `adopted_date`) VALUES
(1, 6, 1, 'requested', '2023-02-03', '0000-00-00', 1, '0000-00-00'),
(2, 3, 3, 'completed', '2023-07-10', '2023-07-11', 1, '2023-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `animal_tb`
--

CREATE TABLE `animal_tb` (
  `animal_id` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal_tb`
--

INSERT INTO `animal_tb` (`animal_id`, `description`, `gender`, `type`, `color`, `breed`, `image`) VALUES
(1, '', '', '', '', '', ''),
(2, 'gjhgjkkjnbbnb', 'male', 'cat', '', '', ''),
(3, 'dzzdcs', 'male', 'cat', 'white', 'djfdns ', 'b.png.jpeg'),
(4, 'dzzdcs', 'male', 'cat', 'white', 'djfdns ', 'b.png.jpeg'),
(5, '$description', '$gender', '$animal_type', '$animal_color', '$breed', '$img'),
(6, 'dzzdcs', 'male', 'cat', 'white', 'djfdns ', 'b.png.jpeg'),
(7, 'h yxcyh u', 'male', 'dog', 'brown', 'ccvvcc', 'Sparkle-Backgrounds2.jpg'),
(8, ' fn f j.h', 'male', 'cow', 'brown n white', 'ghmgcnu', 'c6.png');

-- --------------------------------------------------------

--
-- Table structure for table `authority_login_tb`
--

CREATE TABLE `authority_login_tb` (
  `log_id` int(11) NOT NULL,
  `code` varchar(8) NOT NULL,
  `password` varchar(50) NOT NULL,
  `authority_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authority_login_tb`
--

INSERT INTO `authority_login_tb` (`log_id`, `code`, `password`, `authority_type`) VALUES
(1, 'OFCpmna1', '123123123', 'office'),
(2, 'OFCpkd11', '123123123', 'office'),
(3, 'police55', '100100100', 'police'),
(4, 'LSG00999', '000555000', 'lsg'),
(6, 'ABCvet99', '123123123', 'vet'),
(7, 'abcdefzz', '123123123', 'forest');

-- --------------------------------------------------------

--
-- Table structure for table `collected_tb`
--

CREATE TABLE `collected_tb` (
  `collect_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `collect_from` varchar(50) NOT NULL,
  `collected_on` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'fostering',
  `died_on` date NOT NULL,
  `reason` varchar(20) NOT NULL,
  `adopted_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collected_tb`
--

INSERT INTO `collected_tb` (`collect_id`, `animal_id`, `office_id`, `collect_from`, `collected_on`, `status`, `died_on`, `reason`, `adopted_on`) VALUES
(1, 3, 1, 'Veterinary', '2023-01-05', 'fostering', '0000-00-00', '', '0000-00-00'),
(2, 4, 1, 'Stray', '2023-05-28', 'dead', '2023-07-06', 'abc disease', '0000-00-00'),
(3, 6, 1, 'Stray', '2023-06-09', 'dead', '2023-07-12', 'skin diseasr', '0000-00-00'),
(4, 7, 1, 'Veterinary', '2023-06-08', 'fostering', '0000-00-00', '', '0000-00-00'),
(5, 8, 2, 'Veterinary', '2023-07-04', 'fostering', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `donation_tb`
--

CREATE TABLE `donation_tb` (
  `donate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pay_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation_tb`
--

INSERT INTO `donation_tb` (`donate_id`, `user_id`, `amount`, `type`, `pay_date`) VALUES
(1, 0, 0, '', '2023-06-21'),
(2, 1, 2000, 'Google Pay', '2023-06-21'),
(3, 1, 5000, 'Other', '2023-06-21'),
(4, 13, 1000, 'Paytm', '2023-06-21'),
(5, 1, 1000, 'PhonePe', '2023-06-21'),
(6, 2, 2500, 'Google Pay', '2023-06-21'),
(7, 4, 2500, 'Other', '2023-06-21'),
(8, 1, 2500, 'PhonePe', '2023-06-21'),
(9, 1, 2500, 'PhonePe', '2023-06-21'),
(10, 3, 500, 'PhonePe', '2023-06-21'),
(11, 1, 500, 'PhonePe', '2023-06-21'),
(12, 1, 1000, 'Google Pay', '2023-06-21'),
(13, 13, 200, 'Paytm', '2023-06-21'),
(14, 1, 200, 'Paytm', '2023-06-21'),
(15, 3, 200, 'Paytm', '2023-06-21'),
(16, 2, 200, 'Paytm', '2023-06-21'),
(17, 4, 100, 'Google Pay', '2023-06-21'),
(18, 4, 200, 'Paytm', '2023-06-21'),
(19, 13, 750, 'Google Pay', '2023-06-21'),
(20, 2, 50, 'PhonePe', '2023-06-21'),
(21, 14, 200, 'Other', '2023-07-22'),
(22, 13, 200, 'PhonePe', '2023-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `forest_tb`
--

CREATE TABLE `forest_tb` (
  `forest_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forest_tb`
--

INSERT INTO `forest_tb` (`forest_id`, `login_id`, `email`, `location`, `ph_no`) VALUES
(1, 0, '', '', ''),
(2, 7, 'asdad@gmail.comddddd', 'adfaddddddd', '8545632166');

-- --------------------------------------------------------

--
-- Table structure for table `local_govt_tb`
--

CREATE TABLE `local_govt_tb` (
  `lsg_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `lsg_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `local_govt_tb`
--

INSERT INTO `local_govt_tb` (`lsg_id`, `log_id`, `lsg_name`, `type`, `location`, `email`, `ph_no`) VALUES
(1, 0, '', '', '', '', ''),
(2, 4, 'XYZ', 'Malabar', 'Nilambur', 'xyz@gmail.com', '7856232199');

-- --------------------------------------------------------

--
-- Table structure for table `missing_tb`
--

CREATE TABLE `missing_tb` (
  `missing_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `animal_type` varchar(50) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `health_cond` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `lastseen_on` date NOT NULL,
  `report_date` date NOT NULL,
  `image` longtext NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'missing',
  `mob_no` bigint(10) NOT NULL,
  `lastseen_at` varchar(152) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `missing_tb`
--

INSERT INTO `missing_tb` (`missing_id`, `user_id`, `animal_type`, `breed`, `name`, `health_cond`, `color`, `lastseen_on`, `report_date`, `image`, `status`, `mob_no`, `lastseen_at`) VALUES
(1, 3, 'Cat', 'fgvfg', 'abc', 'fracture in left leg', 'brown', '2023-06-01', '0000-00-00', 'cat1.jpg', 'found', 7856945454, 'palakkad,near golden mall'),
(2, 1, 'Dog', 'good cxvxv', 'milo', 'normal', 'white', '2023-06-01', '2023-06-17', 'dog2.jpg', 'found', 8768973422, 'calicut,near the bepur beach road'),
(3, 1, 'Dog', 'vxvxvc', 'jimmy', 'fdfdsfv', 'black', '2023-06-03', '2023-06-17', 'dog1.jpg', 'found', 8565895211, 'calicut,near stadium road'),
(4, 2, 'Cat', 'chj i', 'tom oub', 'normal ', 'white', '2023-06-05', '2023-06-20', 'cat2.jpg', 'missing', 9874562510, 'manjeri,near court road'),
(5, 2, 'Other', 'ughunu', 'uvy u ', 'h vu u ', 'white', '2023-06-07', '2023-06-20', 'rabbit1.jpg', 'missing', 8790908791, 'attapadi road ,near the checkpost'),
(6, 0, 'Cat', 'yfjvvjb', 'zilo', 'normal', 'white', '2023-06-06', '2023-07-07', 'images (10).jpg', 'missing', 9087675676, 'vighcvj');

-- --------------------------------------------------------

--
-- Table structure for table `office_tb`
--

CREATE TABLE `office_tb` (
  `office_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `ph_no` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `office_tb`
--

INSERT INTO `office_tb` (`office_id`, `login_id`, `email`, `location`, `ph_no`) VALUES
(1, 1, 'pmnaOfc123@gmail.com', 'Perinthalmanna', 9854101200),
(2, 2, 'OFCplkd100@gmail.com', 'Palakkad', 9856231010);

-- --------------------------------------------------------

--
-- Table structure for table `police_tb`
--

CREATE TABLE `police_tb` (
  `police_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `station` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police_tb`
--

INSERT INTO `police_tb` (`police_id`, `login_id`, `station`, `email`, `ph_no`) VALUES
(2, 3, 'Calicut', 'calicut100@gmail.com', '9874563222');

-- --------------------------------------------------------

--
-- Table structure for table `registration_tb`
--

CREATE TABLE `registration_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_tb`
--

INSERT INTO `registration_tb` (`id`, `name`, `image`, `place`, `phone`, `log_id`) VALUES
(9, 'fdfdsf', '', 'fdfd', 9845211154, 1),
(10, 'fdfdsf1', '', 'fdfd4', 7856564511, 2),
(11, 'fdfdsf1', '', 'fdfd4', 8545214710, 3),
(12, 'ghj', '', 'tbj', 9045112020, 4),
(15, 'Mohan', '', 'Manjeri', 9864571190, 13),
(16, 'hhjh', '', 'njj', 234567923, 14);

-- --------------------------------------------------------

--
-- Table structure for table `report_tb`
--

CREATE TABLE `report_tb` (
  `report_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `location` varchar(250) NOT NULL,
  `lati` varchar(100) NOT NULL,
  `longi` varchar(100) NOT NULL,
  `reported_date` datetime(6) NOT NULL,
  `image` text NOT NULL,
  `case_type` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_tb`
--

INSERT INTO `report_tb` (`report_id`, `description`, `location`, `lati`, `longi`, `reported_date`, `image`, `case_type`, `user_id`) VALUES
(1, '', '', '', '', '0000-00-00 00:00:00.000000', '', '', 0),
(2, 'stray example testingdjndkcdjc jdnadjas csadn', 'Mountain View,1600 Amphitheatre Pkwy,,Santa Clara County', '37.4219983', '-122.084', '2023-06-20 11:19:01.661528', '', '', 1),
(3, 'testing postman', 'perinthalmanna', '10.976036', '76.225441', '2023-06-09 00:00:00.000000', 'ab_monkey.jpg', 'stray', 1),
(4, 'testing postman', 'perinthalmanna', '10.976036', '76.225441', '2023-06-09 00:00:00.000000', 'b.png.jpeg', 'stray', 1),
(5, 'testing postman', 'perinthalmanna', '10.976036', '76.225441', '2023-06-09 00:00:00.000000', 'b.png.jpeg', 'stray', 1),
(6, 'testing postman', 'perinthalmanna', '10.976036', '76.225441', '2023-06-09 00:00:00.000000', 'b.png.jpeg', 'stray', 1),
(7, 'testing postman 2', 'kozhikode', '11.258753', '75.780411', '2023-06-09 00:00:00.000000', 'ab_monkey.jpg', 'abuse', 1),
(8, 'fv iu k', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779652', '76.2026099', '2023-06-20 14:32:52.837484', 'ab_monkey.jpg', 'stray', 1),
(9, 'hxh mfim ', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779686', '76.2026094', '2023-06-20 14:34:30.173432', 'ab_monkey.jpg', 'injured', 1),
(10, 'bzgdjgk', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779682', '76.2026098', '2023-06-20 14:34:54.786048', 'agg_dog1.jpg', 'aggressive', 1),
(11, 'bzgdjgk', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779682', '76.2026098', '2023-06-20 14:34:55.725544', 'agg_dog2.jpg', 'aggressive', 1),
(12, 'xgdjvmglgk', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779688', '76.2026118', '2023-06-20 14:35:28.122744', 'dog.jpg', 'wild', 1),
(13, 'vzhdnvmgk', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779679', '76.20261', '2023-06-20 14:35:51.240647', 'ab_monkey.jpg', 'wild', 1),
(14, '', '', '', '', '2023-06-20 17:10:00.788614', 'IMG-20230618-WA0008.jpg', '', 1),
(15, '', '', '', '', '2023-06-20 23:11:51.835952', 'IMG-20230618-WA0008.jpg', '', 2),
(16, 'yvunnuj..i', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779989', '76.202604', '2023-07-07 10:21:56.541200', 'blesk_brilliantov.jpg', 'stray', 1),
(17, 'yvunnuj..i', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779989', '76.202604', '2023-07-07 10:21:49.392106', 'blesk_brilliantov.jpg', 'stray', 1),
(18, 'testing', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.978001', '76.2026062', '2023-07-07 10:53:34.963457', 'images (9).jpg', 'wild', 13),
(19, 'dhdhbdncm', 'Angadipuram,X6H3+52P,Chanthully Paadam,', '10.9779989', '76.202604', '2023-07-07 12:26:42.285175', 'blesk_brilliantov.jpg', 'stray', 13),
(20, 'hghn', 'Baish,9G8M+JWC,,Baysh', '17.3664016', '42.5352632', '2023-07-22 12:26:40.909382', 'IMG-20200707-WA0009.jpg', 'stray', 14),
(21, '', 'Manjeri,44CG+GP4,Collegekunnu,', '11.1217252', '76.1268998', '2023-08-07 13:41:21.718261', 'IMG-20230807-WA0025.jpg', 'stray', 14),
(22, '', 'Manjeri,44CG+GP4,Collegekunnu,', '11.1217252', '76.1268998', '2023-08-07 13:41:22.781813', 'IMG-20230807-WA0025.jpg', 'stray', 14),
(23, '', 'Manjeri,44CG+GP4,Collegekunnu,', '11.1217252', '76.1268998', '2023-08-07 13:41:23.464353', 'IMG-20230807-WA0025.jpg', 'stray', 14),
(24, '', 'Manjeri,44CG+GP4,Collegekunnu,', '11.1217252', '76.1268998', '2023-08-07 13:41:23.629611', 'IMG-20230807-WA0025.jpg', 'stray', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `log_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`log_id`, `email`, `password`) VALUES
(1, 'mmm@gmail.com', '100100'),
(2, 'sdfdsf2', 'dfsdff6'),
(3, 'sdfdsf2', 'dfsdff6'),
(4, 'fathi@gmail.com ', 'fathi123'),
(13, 'mohan@gmail.com', '123123'),
(14, 'asd@gmail.com', 'ghg');

-- --------------------------------------------------------

--
-- Table structure for table `veterinary_tb`
--

CREATE TABLE `veterinary_tb` (
  `vet_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `center` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veterinary_tb`
--

INSERT INTO `veterinary_tb` (`vet_id`, `login_id`, `center`, `location`, `email`, `ph_no`) VALUES
(3, 6, 'ABC Veterinary', 'Melatur', 'ABC@gmail.com', '8569851099');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `adopt_request_tb`
--
ALTER TABLE `adopt_request_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `animal_tb`
--
ALTER TABLE `animal_tb`
  ADD PRIMARY KEY (`animal_id`);

--
-- Indexes for table `authority_login_tb`
--
ALTER TABLE `authority_login_tb`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `collected_tb`
--
ALTER TABLE `collected_tb`
  ADD PRIMARY KEY (`collect_id`);

--
-- Indexes for table `donation_tb`
--
ALTER TABLE `donation_tb`
  ADD PRIMARY KEY (`donate_id`);

--
-- Indexes for table `forest_tb`
--
ALTER TABLE `forest_tb`
  ADD PRIMARY KEY (`forest_id`);

--
-- Indexes for table `local_govt_tb`
--
ALTER TABLE `local_govt_tb`
  ADD PRIMARY KEY (`lsg_id`);

--
-- Indexes for table `missing_tb`
--
ALTER TABLE `missing_tb`
  ADD PRIMARY KEY (`missing_id`);

--
-- Indexes for table `office_tb`
--
ALTER TABLE `office_tb`
  ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `police_tb`
--
ALTER TABLE `police_tb`
  ADD PRIMARY KEY (`police_id`);

--
-- Indexes for table `registration_tb`
--
ALTER TABLE `registration_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_tb`
--
ALTER TABLE `report_tb`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `veterinary_tb`
--
ALTER TABLE `veterinary_tb`
  ADD PRIMARY KEY (`vet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adopt_request_tb`
--
ALTER TABLE `adopt_request_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `animal_tb`
--
ALTER TABLE `animal_tb`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `authority_login_tb`
--
ALTER TABLE `authority_login_tb`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `collected_tb`
--
ALTER TABLE `collected_tb`
  MODIFY `collect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donation_tb`
--
ALTER TABLE `donation_tb`
  MODIFY `donate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `forest_tb`
--
ALTER TABLE `forest_tb`
  MODIFY `forest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `local_govt_tb`
--
ALTER TABLE `local_govt_tb`
  MODIFY `lsg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `missing_tb`
--
ALTER TABLE `missing_tb`
  MODIFY `missing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `office_tb`
--
ALTER TABLE `office_tb`
  MODIFY `office_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `police_tb`
--
ALTER TABLE `police_tb`
  MODIFY `police_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration_tb`
--
ALTER TABLE `registration_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `report_tb`
--
ALTER TABLE `report_tb`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `veterinary_tb`
--
ALTER TABLE `veterinary_tb`
  MODIFY `vet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
