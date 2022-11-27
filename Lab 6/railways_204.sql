-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 07:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railways_204`
--
CREATE DATABASE IF NOT EXISTS `railways_204` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `railways_204`;

-- --------------------------------------------------------

--
-- Table structure for table `compartment_204`
--

DROP TABLE IF EXISTS `compartment_204`;
CREATE TABLE `compartment_204` (
  `compartment_no` varchar(10) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `availability` int(11) DEFAULT NULL,
  `train_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compartment_204`
--

INSERT INTO `compartment_204` (`compartment_no`, `type`, `capacity`, `availability`, `train_number`) VALUES
('F01', 'I Class', 16, 0, 25260),
('F01', 'I Class', 16, 0, 25261),
('F01', 'I Class', 16, 4, 58450),
('F01', 'I Class', 16, 5, 58451),
('F01', 'I Class', 16, 15, 62620),
('F01', 'I Class', 16, 6, 62621),
('F02', 'I Class', 16, 0, 62620),
('G01', 'III Class', 60, 33, 25261),
('G01', 'III Class', 60, 2, 58450),
('G01', 'III Class', 60, 40, 58451),
('G01', 'III Class', 60, 10, 62621),
('G02', 'III Class', 60, 45, 25261),
('G02', 'III Class', 60, 12, 62621),
('S01', 'II Class', 30, 15, 25260),
('S01', 'II Class', 30, 15, 25261),
('S01', 'II Class', 30, 5, 58450),
('S01', 'II Class', 30, 4, 62621),
('S02', 'II Class', 30, 17, 25260),
('S02', 'II Class', 30, 3, 58450),
('S02', 'II Class', 30, 6, 62621);

-- --------------------------------------------------------

--
-- Stand-in structure for view `compute_price_204`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `compute_price_204`;
CREATE TABLE `compute_price_204` (
`PNR` varchar(10)
,`Train_No` int(11)
,`departure` time
,`arrival` time
,`distance` int(11)
,`fare_per_km` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `fare_204`
--

DROP TABLE IF EXISTS `fare_204`;
CREATE TABLE `fare_204` (
  `train_type` varchar(10) NOT NULL,
  `compartment_type` varchar(20) NOT NULL,
  `fare_per_km` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fare_204`
--

INSERT INTO `fare_204` (`train_type`, `compartment_type`, `fare_per_km`) VALUES
('Fast', 'I Class', '3.30'),
('Fast', 'II Class', '1.92'),
('Fast', 'III Class', '1.32'),
('Mail', 'I Class', '2.75'),
('Mail', 'II Class', '1.60'),
('Mail', 'III Class', '1.10'),
('Superfast', 'I Class', '2.30'),
('Superfast', 'II Class', '1.35'),
('Superfast', 'III Class', '0.95');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_204`
--

DROP TABLE IF EXISTS `passenger_204`;
CREATE TABLE `passenger_204` (
  `User_ID` varchar(20) NOT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `street_number` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_204`
--

INSERT INTO `passenger_204` (`User_ID`, `Firstname`, `Lastname`, `age`, `DOB`, `pincode`, `user_type`, `street_number`) VALUES
('ADM_001', 'Narendra ', 'Modi', 33, '1989-04-14', '600047', 'ADMIN', 'Old Jail Road'),
('ADM_002', 'Droupadi', 'Murmu', 32, '1990-04-14', '640012', 'ADMIN', 'High Street'),
('ADM_003', 'Manmohan ', 'Singh', 31, '1991-04-08', '575003', 'ADMIN', 'Pumpwell Road'),
('USR_001', 'Ajit', 'Ullal', 51, '1971-01-01', '560001', 'PSGR', '10, Janpath'),
('USR_002', 'Muhammed', 'Ali', 21, '2000-10-09', '560003', 'PSGR', '10, Downing'),
('USR_003', 'Sai Deepak', 'Reddy', 25, '1996-12-12', '600001', 'PSGR', '14, Kailsh Marg'),
('USR_004', 'Rudra', 'Agarwal', 25, '1996-12-13', '600042', 'PSGR', '5, Lohia Garden'),
('USR_005', 'Rahul', 'Khanna', 24, '1997-12-14', '600067', 'PSGR', '1, Pink Street'),
('USR_006', 'Nirmala', 'Seturaman', 23, '1998-12-15', '560105', 'PSGR', '3, Blue Avenue'),
('USR_007', 'Smriti', 'Irani', 22, '1999-12-16', '575014', 'PSGR', '4, Banyan Avenie'),
('USR_008', 'Ajit', 'Sethi', 56, '1966-04-14', '575001', 'PSGR', '6, Poes Garden'),
('USR_009', 'Arjun', 'Allu', 55, '1967-04-08', '575020', 'PSGR', '7, Dhamaka street'),
('USR_010', 'Samanta', 'Prabhu', 54, '1968-04-14', '600042', 'PSGR', '8, Clone Colony'),
('USR_011', 'Kiran ', 'Bedi', 53, '1969-04-14', '560003', 'PSGR', '56, Brigade Road'),
('USR_012', 'Rahul ', 'Gandhi', 52, '1970-04-08', '475001', 'PSGR', 'Mirza road'),
('USR_013', 'Rashkit ', 'Shetty', 51, '1971-04-14', '560009', 'PSGR', 'JC Road'),
('USR_014', 'Rishi', 'Sunak', 50, '1972-04-14', '600034', 'PSGR', 'Anna Sali'),
('USR_015', 'Vedavalli', 'Srinath', 49, '1973-04-14', '560054', 'PSGR', 'Church Street, Bangalore'),
('USR_016', 'Subbu', 'Saravana', 48, '1974-04-14', '600043', 'PSGR', 'American Street'),
('USR_017', 'Sheela', 'Dixit', 47, '1975-04-08', '560048', 'PSGR', 'Kasturba Road'),
('USR_018', 'Margaret', 'Alva', 46, '1976-04-14', '560008', 'PSGR', 'New BEL Road'),
('USR_019', 'Arun', 'Kumar', 45, '1977-04-14', '600046', 'PSGR', 'Mint Street'),
('USR_020', 'Anshu', 'Bhardwaj', 44, '1978-04-14', '575001', 'PSGR', 'KSR Road'),
('USR_021', 'Suma', 'Sampat', 43, '1979-04-08', '560012', 'PSGR', 'Old Airport Road, Bangalore'),
('USR_022', 'Srihari', 'Udupa', 42, '1980-04-14', '560015', 'PSGR', 'Suranjan Das Road'),
('USR_023', 'Satish', 'Kotian', 41, '1981-04-14', '600044', 'PSGR', 'T Nagar'),
('USR_024', 'Shradha', 'Nayar', 40, '1982-04-08', '560006', 'PSGR', 'M G Road, Bangalore'),
('USR_025', 'Manisha', 'Solanki', 39, '1983-04-08', '575030', 'PSGR', 'M G Road'),
('USR_026', 'Bharti', 'Devgan', 38, '1984-04-14', '560059', 'PSGR', 'NAL Wind Tunnel Road'),
('USR_027', 'Roopa', 'Ram', 37, '1985-04-14', '575023', 'PSGR', 'Bunder Road'),
('USR_028', 'Pallavi', 'Ram', 36, '1986-04-08', '560044', 'PSGR', 'Lavelle Road'),
('USR_029', 'Ravi', 'Naik', 35, '1987-04-14', '600045', 'PSGR', 'Thiru V ka Salai'),
('USR_030', 'Virat', 'Murthy', 34, '1988-04-14', '575011', 'PSGR', 'Bejai New Road');

-- --------------------------------------------------------

--
-- Stand-in structure for view `passenger_num_204`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `passenger_num_204`;
CREATE TABLE `passenger_num_204` (
`PNR` varchar(10)
,`numbers` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info_204`
--

DROP TABLE IF EXISTS `payment_info_204`;
CREATE TABLE `payment_info_204` (
  `Transaction_no` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `PNR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_info_204`
--

INSERT INTO `payment_info_204` (`Transaction_no`, `price`, `card_no`, `bank`, `PNR`) VALUES
(146445, '967.68', '1234330000000000', 'HDFC', 'PNR006'),
(243535, '640.20', '2436470000000000', 'UNION BANK', 'PNR012'),
(342344, '1665.20', '5623570000000000', 'IOB', 'PNR001'),
(354364, '352.00', '5768790000000000', 'CANARA BANK', 'PNR014'),
(531343, '1539.20', '8953270000000000', 'SBI', 'PNR004'),
(576768, '392.85', '7563560000000000', 'ICICI', 'PNR007'),
(676756, '1660.60', '7367560000000000', 'CANARA BANK', 'PNR002'),
(746745, '667.00', '2545640000000000', 'KOTAK', 'PNR008'),
(758900, '208.00', '2432660000000000', 'UNION BANK', 'PNR015'),
(867546, '419.20', '4657690000000000', 'UNION BANK', 'PNR010'),
(867547, '393.00', '7466350000000000', 'SBI', 'PNR011'),
(978776, '1058.20', '154978597435874', 'UNION BANK', 'PNR003');

-- --------------------------------------------------------

--
-- Stand-in structure for view `q4`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `q4`;
CREATE TABLE `q4` (
`Train_no` int(11)
,`Train_name` varchar(20)
,`compartment_No` varchar(10)
,`number_comps` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `route_info_204`
--

DROP TABLE IF EXISTS `route_info_204`;
CREATE TABLE `route_info_204` (
  `from_station_no` int(11) NOT NULL,
  `to_station_no` int(11) NOT NULL,
  `from_station_name` varchar(20) DEFAULT NULL,
  `to_station_name` varchar(20) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `Train_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route_info_204`
--

INSERT INTO `route_info_204` (`from_station_no`, `to_station_no`, `from_station_name`, `to_station_name`, `distance`, `Train_No`) VALUES
(1, 2, 'Mangaluru', 'Kannur', 131, 25260),
(1, 2, 'Chennai', 'Palakkad', 130, 25261),
(1, 2, 'Mangaluru', 'Subramanya', 195, 58450),
(1, 2, 'Bengaluru', 'Mysore', 139, 58451),
(1, 2, 'Chennai', 'Sholingur', 90, 62620),
(1, 2, 'Bengaluru', 'Bangarpet', 71, 62621),
(1, 3, 'Mangaluru', 'Palakkad', 351, 25260),
(1, 3, 'Chennai', 'Kannur', 350, 25261),
(1, 3, 'Mangaluru', 'Mysore', 365, 58450),
(1, 3, 'Bengaluru', 'Subramanya', 309, 58451),
(1, 3, 'Chennai', 'Katpadi', 129, 62620),
(1, 3, 'Bengaluru', 'Katpadi', 232, 62621),
(1, 4, 'Mangaluru', 'Chennai', 481, 25260),
(1, 4, 'Chennai', 'Mangaluru', 481, 25261),
(1, 4, 'Mangaluru', 'Bengaluru', 504, 58450),
(1, 4, 'Bengaluru', 'Mangaluru', 503, 58451),
(1, 4, 'Chennai', 'Bangarpet', 290, 62620),
(1, 4, 'Bengaluru', 'Sholigur', 272, 62621),
(1, 5, 'Chennai', 'Bengaluru', 361, 62620),
(1, 5, 'Bengaluru', 'Chennai', 362, 62621),
(2, 3, 'Kannur ', 'Palakkad', 220, 25260),
(2, 3, 'Palakkad', 'Kannur', 220, 25261),
(2, 3, 'Subramanya', 'Mysore', 170, 58450),
(2, 3, 'Mysore', 'Subramanya', 170, 58451),
(2, 3, 'Sholingur', 'Katpadi', 39, 62620),
(2, 3, 'Bangarpet', 'Katpadi', 161, 62621),
(2, 4, 'Kannur ', 'Chennai', 350, 25260),
(2, 4, 'Palakkad', 'Mangaluru', 351, 25261),
(2, 4, 'Subramanya', 'Bengaluru', 309, 58450),
(2, 4, 'Mysore', 'Mangaluru', 364, 58451),
(2, 4, 'Sholingur', 'Bangarpet', 200, 62620),
(2, 4, 'Bangarpet', 'Sholigur', 201, 62621),
(2, 5, 'Sholingur', 'Chennai', 271, 62620),
(2, 5, 'Bangarpet', 'Chennai', 291, 62621),
(3, 4, 'Kannur ', 'Mangaluru', 131, 25261),
(3, 4, 'Mysore', 'Bengaluru', 139, 58450),
(3, 4, 'Subramanya', 'Mangaluru', 194, 58451),
(3, 4, 'Katpadi', 'Bangarpet', 161, 62620),
(3, 4, 'Katpadi', 'Sholigur', 40, 62621),
(3, 5, 'Katpadi', 'Chennai', 232, 62620),
(3, 5, 'Katpadi', 'Chennai', 130, 62621),
(4, 4, 'Palakkad', 'Chennai', 130, 25260),
(4, 5, 'Bangarpet', 'Bengaluru', 71, 62620),
(4, 5, 'Sholingur', 'Chennai', 90, 62621);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_204`
--

DROP TABLE IF EXISTS `ticket_204`;
CREATE TABLE `ticket_204` (
  `PNR` varchar(10) NOT NULL,
  `Train_No` int(11) DEFAULT NULL,
  `Travel_date` date DEFAULT NULL,
  `Passenger_id` varchar(20) DEFAULT NULL,
  `departure` time DEFAULT NULL,
  `Train_Type` varchar(20) DEFAULT NULL,
  `compartment_type` varchar(10) DEFAULT NULL,
  `compartment_No` varchar(10) DEFAULT NULL,
  `arrival` time NOT NULL,
  `departure_place` varchar(20) NOT NULL,
  `arrival_place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_204`
--

INSERT INTO `ticket_204` (`PNR`, `Train_No`, `Travel_date`, `Passenger_id`, `departure`, `Train_Type`, `compartment_type`, `compartment_No`, `arrival`, `departure_place`, `arrival_place`) VALUES
('PNR001', 62621, '2022-08-07', 'ADM_001', '16:00:00', 'Superfast', 'I Class', 'F01', '20:30:00', 'Bengaluru', 'Chennai'),
('PNR002', 62620, '2022-08-14', 'ADM_001', '08:00:00', 'Superfast', 'I Class', 'F02', '12:25:00', 'Chennai', 'Bengaluru'),
('PNR003', 25261, '2022-08-01', 'ADM_003', '18:00:00', 'Mail', 'III Class', 'G02', '07:30:00', 'Chennai', 'Mangaluru'),
('PNR004', 25260, '2022-08-15', 'ADM_003', '19:15:00', 'Mail', 'II Class', 'S02', '08:00:00', 'Mangaluru', 'Chennai'),
('PNR005', 58451, '2022-08-03', 'USR_002', '06:00:00', 'Fast', 'III Class', 'G01', '14:00:00', 'Bengaluru', 'Mangaluru'),
('PNR006', 58450, '2033-08-04', 'USR_002', '08:00:00', 'Fast', 'II Class', 'S01', '10:15:00', 'Mangaluru', 'Bengaluru'),
('PNR007', 62621, '2022-08-07', 'ADM_002', '18:00:00', 'Superfast', 'II Class', 'S01', '20:30:00', 'Bangarpet', 'Chennai'),
('PNR008', 62620, '2022-08-02', 'ADM_002', '08:00:00', 'Superfast', 'I Class', 'F01', '09:00:00', 'Chennai', 'Bangarpet'),
('PNR010', 25260, '2022-08-19', 'USR_007', '19:15:00', 'Mail', 'II Class', 'S01', '23:15:00', 'Mangaluru', 'Kannur'),
('PNR011', 62621, '2022-08-22', 'USR_008', '19:00:00', 'Superfast', 'I Class', 'F01', '20:30:00', 'Katapadi', 'Chennai'),
('PNR012', 58451, '2022-08-11', 'USR_009', '11:00:00', 'Fast', 'I Class', 'F01', '14:00:00', 'Subramanya', 'Mangaluru'),
('PNR014', 25260, '2022-08-17', 'USR_010', '23:15:00', 'Mail', 'II Class', 'S01', '04:30:00', 'Kannur', 'Palakkad'),
('PNR015', 25260, '2022-08-05', 'USR_012', '04:30:00', 'Mail', 'II Class', 'S01', '08:00:00', 'Palakkad', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_passenger_204`
--

DROP TABLE IF EXISTS `ticket_passenger_204`;
CREATE TABLE `ticket_passenger_204` (
  `seat_No` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `PNR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_passenger_204`
--

INSERT INTO `ticket_passenger_204` (`seat_No`, `Name`, `age`, `PNR`) VALUES
('F01-3', 'Saideepak Reddy', 27, 'PNR001'),
('F01-4', 'Sheela Reddy', 25, 'PNR001'),
('F02-11', 'SaiDeepak Reddy', 27, 'PNR002'),
('F02-12', 'Sheela Reddy', 25, 'PNR002'),
('G01-50', 'Anwar Hussein', 32, 'PNR003'),
('G01-51', 'Karishma Husein', 12, 'PNR003'),
('G02-31', 'Anwar Hussein', 32, 'PNR004'),
('G02-32', 'Karishma Husein', 12, 'PNR004'),
('S01-10', 'Hema Ullal', 27, 'PNR005'),
('S01-11', 'Hima Ullal', 28, 'PNR005'),
('S01-12', 'Asha Ullal', 21, 'PNR005'),
('S01-9', 'Ajit Ullal', 31, 'PNR005'),
('S01-35', 'Smriti Irani', 40, 'PNR006'),
('S01-14', 'Christon D Souza', 27, 'PNR007'),
('F01-8', 'Christon D Souza', 27, 'PNR008'),
('S01-25', 'Samanta Prabhu', 21, 'PNR010'),
('S01-26', 'Rakshita Prabhu', 21, 'PNR010'),
('F01-7', 'Sheela Seth', 33, 'PNR011'),
('F01-13', 'Ramya R', 45, 'PNR012'),
('S01-2', 'Shradha Nayar', 20, 'PNR014'),
('S01-29', 'Khushi Jha', 18, 'PNR015');

-- --------------------------------------------------------

--
-- Table structure for table `train_204`
--

DROP TABLE IF EXISTS `train_204`;
CREATE TABLE `train_204` (
  `Train_no` int(11) NOT NULL,
  `Train_name` varchar(20) DEFAULT NULL,
  `Train_Type` varchar(10) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `availability` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_204`
--

INSERT INTO `train_204` (`Train_no`, `Train_name`, `Train_Type`, `source`, `destination`, `availability`) VALUES
(25260, 'Chennai Mail', 'Mail', 'Mangaluru', 'Chennai', 'Yes'),
(25261, 'Managaluru Mail', 'Mail', 'Chennai ', 'Mangaluru', 'Yes'),
(58450, 'MAN-BEN Express', 'Fast', 'Mangaluru', 'Bengaluru', 'yes'),
(58451, 'BEN-MAN Express', 'Fast', 'Bengaluru', 'Mangaluru', 'yes'),
(62620, 'CHE-BEN Shatabdi', 'Superfast', 'Chennai', 'Bengaluru', 'No'),
(62621, 'BEN-CHE Shatabdi', 'Superfast', 'Bengaluru', 'Chennai', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_phone_204`
--

DROP TABLE IF EXISTS `user_phone_204`;
CREATE TABLE `user_phone_204` (
  `User_ID` varchar(20) NOT NULL,
  `Phone_No` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_phone_204`
--

INSERT INTO `user_phone_204` (`User_ID`, `Phone_No`) VALUES
('ADM_001', '9845012345'),
('ADM_001', '9900123456'),
('ADM_002', '9845012345'),
('ADM_002', '9900123456'),
('ADM_003', '9845012345'),
('ADM_003', '9900123456'),
('USR_001', '9845012345'),
('USR_001', '9900123456'),
('USR_002', '9845012345'),
('USR_002', '9900123456'),
('USR_003', '9845012345'),
('USR_003', '9900123456'),
('USR_004', '9845012345'),
('USR_004', '9900123456'),
('USR_005', '9845012345'),
('USR_005', '9900123456'),
('USR_006', '9845012345'),
('USR_006', '9900123456'),
('USR_007', '9845012345'),
('USR_007', '9900123456'),
('USR_008', '9845012345'),
('USR_008', '9900123456'),
('USR_009', '9845012345'),
('USR_009', '9900123456'),
('USR_010', '9845012345'),
('USR_010', '9900123456'),
('USR_011', '9845012345'),
('USR_011', '9900123456'),
('USR_012', '9845012345'),
('USR_012', '9900123456'),
('USR_013', '9845012345'),
('USR_013', '9900123456'),
('USR_014', '9845012345'),
('USR_014', '9900123456'),
('USR_015', '9845012345'),
('USR_015', '9900123456'),
('USR_016', '9845012345'),
('USR_016', '9900123456'),
('USR_017', '9845012345'),
('USR_017', '9900123456'),
('USR_018', '9845012345'),
('USR_018', '9900123456'),
('USR_019', '9845012345'),
('USR_019', '9900123456'),
('USR_020', '9845012345'),
('USR_020', '9900123456'),
('USR_021', '9845012345'),
('USR_021', '9900123456'),
('USR_022', '9845012345'),
('USR_022', '9900123456'),
('USR_023', '9845012345'),
('USR_023', '9900123456'),
('USR_024', '9845012345'),
('USR_024', '9900123456'),
('USR_025', '9845012345'),
('USR_025', '9900123456'),
('USR_026', '9845012345'),
('USR_026', '9900123456'),
('USR_027', '9845012345'),
('USR_027', '9900123456'),
('USR_028', '9845012345'),
('USR_028', '9900123456'),
('USR_029', '9845012345'),
('USR_029', '9900123456'),
('USR_030', '9845012345'),
('USR_030', '9900123456');

-- --------------------------------------------------------

--
-- Table structure for table `user_train_204`
--

DROP TABLE IF EXISTS `user_train_204`;
CREATE TABLE `user_train_204` (
  `user_id` varchar(10) NOT NULL,
  `Train_id` int(11) NOT NULL,
  `date_time_stamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_train_204`
--

INSERT INTO `user_train_204` (`user_id`, `Train_id`, `date_time_stamp`) VALUES
('ADM_001', 25261, '2022-07-22 08:08:48'),
('ADM_001', 25261, '2022-07-22 08:08:54'),
('ADM_001', 25261, '2022-07-22 08:09:09'),
('ADM_001', 58450, '2022-07-22 08:09:00'),
('ADM_001', 58451, '2022-07-22 08:09:03'),
('ADM_001', 58451, '2022-07-22 08:09:12'),
('ADM_001', 62620, '2022-07-22 08:08:51'),
('ADM_001', 62620, '2022-07-22 08:08:57'),
('ADM_001', 62621, '2022-07-22 08:09:06'),
('ADM_002', 25261, '2022-07-22 08:09:10'),
('ADM_002', 58450, '2022-07-22 08:08:52'),
('ADM_002', 58450, '2022-07-22 08:08:58'),
('ADM_002', 58450, '2022-07-22 08:09:01'),
('ADM_002', 58451, '2022-07-22 08:09:04'),
('ADM_002', 58451, '2022-07-22 08:09:07'),
('ADM_002', 62620, '2022-07-22 08:08:46'),
('ADM_002', 62620, '2022-07-22 08:09:13'),
('ADM_002', 62621, '2022-07-22 08:08:49'),
('ADM_002', 62621, '2022-07-22 08:08:55'),
('ADM_003', 25261, '2022-07-22 08:08:53'),
('ADM_003', 25261, '2022-07-22 08:08:59'),
('ADM_003', 58450, '2022-07-22 08:08:47'),
('ADM_003', 58450, '2022-07-22 08:09:02'),
('ADM_003', 58450, '2022-07-22 08:09:14'),
('ADM_003', 58451, '2022-07-22 08:08:50'),
('ADM_003', 58451, '2022-07-22 08:08:56'),
('ADM_003', 58451, '2022-07-22 08:09:05'),
('ADM_003', 62620, '2022-07-22 08:09:08'),
('ADM_003', 62621, '2022-07-22 08:09:11'),
('USR_001', 58451, '2022-07-22 08:09:15'),
('USR_002', 58451, '2022-07-22 08:09:16'),
('USR_003', 58450, '2022-07-22 08:10:01'),
('USR_003', 58450, '2022-07-22 08:10:04'),
('USR_003', 58451, '2022-07-22 08:09:18'),
('USR_003', 62620, '2022-07-22 08:10:03'),
('USR_003', 62620, '2022-07-22 08:10:11'),
('USR_003', 62621, '2022-07-22 08:09:17'),
('USR_004', 25261, '2022-07-22 08:10:15'),
('USR_004', 58450, '2022-07-22 08:09:20'),
('USR_004', 62620, '2022-07-22 08:09:19'),
('USR_004', 62620, '2022-07-22 08:10:18'),
('USR_005', 25261, '2022-07-22 08:10:20'),
('USR_005', 58451, '2022-07-22 08:09:21'),
('USR_005', 62620, '2022-07-22 08:09:22'),
('USR_005', 62620, '2022-07-22 08:10:24'),
('USR_005', 62621, '2022-07-22 08:10:22'),
('USR_006', 58450, '2022-07-22 08:09:23'),
('USR_006', 58451, '2022-07-22 08:09:24'),
('USR_006', 62621, '2022-07-22 08:10:16'),
('USR_007', 58451, '2022-07-22 08:09:25'),
('USR_007', 62621, '2022-07-22 08:09:26'),
('USR_007', 62621, '2022-07-22 08:10:07'),
('USR_008', 58451, '2022-07-22 08:09:27'),
('USR_008', 62621, '2022-07-22 08:09:28'),
('USR_008', 62621, '2022-07-22 08:10:09'),
('USR_009', 25261, '2022-07-22 08:10:21'),
('USR_009', 58451, '2022-07-22 08:09:29'),
('USR_009', 62620, '2022-07-22 08:09:30'),
('USR_010', 58450, '2022-07-22 08:09:31'),
('USR_010', 58451, '2022-07-22 08:09:32'),
('USR_011', 58451, '2022-07-22 08:09:33'),
('USR_011', 62621, '2022-07-22 08:09:34'),
('USR_012', 58450, '2022-07-22 08:09:36'),
('USR_012', 58451, '2022-07-22 08:09:35'),
('USR_012', 58451, '2022-07-22 08:10:02'),
('USR_013', 58451, '2022-07-22 08:09:37'),
('USR_013', 58451, '2022-07-22 08:10:05'),
('USR_013', 58451, '2022-07-22 08:10:06'),
('USR_014', 58450, '2022-07-22 08:09:39'),
('USR_014', 58451, '2022-07-22 08:09:40'),
('USR_014', 58451, '2022-07-22 08:10:08'),
('USR_015', 25261, '2022-07-22 08:10:26'),
('USR_015', 58451, '2022-07-22 08:09:41'),
('USR_015', 58451, '2022-07-22 08:10:10'),
('USR_015', 62621, '2022-07-22 08:09:42'),
('USR_016', 58451, '2022-07-22 08:09:43'),
('USR_016', 62621, '2022-07-22 08:09:44'),
('USR_017', 58451, '2022-07-22 08:09:45'),
('USR_017', 62620, '2022-07-22 08:09:46'),
('USR_018', 58450, '2022-07-22 08:09:47'),
('USR_018', 58451, '2022-07-22 08:09:48'),
('USR_019', 58450, '2022-07-22 08:10:25'),
('USR_019', 58451, '2022-07-22 08:09:49'),
('USR_020', 58450, '2022-07-22 08:10:27'),
('USR_020', 58451, '2022-07-22 08:09:50'),
('USR_021', 58450, '2022-07-22 08:10:12'),
('USR_021', 62621, '2022-07-22 08:09:51'),
('USR_022', 58450, '2022-07-22 08:10:14'),
('USR_022', 58451, '2022-07-22 08:09:52'),
('USR_022', 58451, '2022-07-22 08:10:23'),
('USR_023', 58450, '2022-07-22 08:10:19'),
('USR_023', 62621, '2022-07-22 08:09:53'),
('USR_024', 58451, '2022-07-22 08:09:54'),
('USR_025', 62620, '2022-07-22 08:09:55'),
('USR_026', 58450, '2022-07-22 08:09:56'),
('USR_026', 58451, '2022-07-22 08:10:13'),
('USR_027', 58451, '2022-07-22 08:09:57'),
('USR_027', 58451, '2022-07-22 08:10:17'),
('USR_028', 58451, '2022-07-22 08:09:58'),
('USR_029', 62621, '2022-07-22 08:09:59'),
('USR_030', 58451, '2022-07-22 08:10:00');

-- --------------------------------------------------------

--
-- Structure for view `compute_price_204`
--
DROP TABLE IF EXISTS `compute_price_204`;

DROP VIEW IF EXISTS `compute_price_204`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `compute_price_204`  AS SELECT `ticket_204`.`PNR` AS `PNR`, `ticket_204`.`Train_No` AS `Train_No`, `ticket_204`.`departure` AS `departure`, `ticket_204`.`arrival` AS `arrival`, `route_info_204`.`distance` AS `distance`, `fare_204`.`fare_per_km` AS `fare_per_km` FROM ((`ticket_204` join `route_info_204`) join `fare_204`) WHERE `ticket_204`.`Train_No` = `route_info_204`.`Train_No` AND `ticket_204`.`departure_place` = `route_info_204`.`from_station_name` AND `ticket_204`.`arrival_place` = `route_info_204`.`to_station_name` AND `fare_204`.`train_type` = `ticket_204`.`Train_Type` AND `fare_204`.`compartment_type` = `ticket_204`.`compartment_type``compartment_type`  ;

-- --------------------------------------------------------

--
-- Structure for view `passenger_num_204`
--
DROP TABLE IF EXISTS `passenger_num_204`;

DROP VIEW IF EXISTS `passenger_num_204`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `passenger_num_204`  AS SELECT `ticket_passenger_204`.`PNR` AS `PNR`, count(`ticket_passenger_204`.`PNR`) AS `numbers` FROM `ticket_passenger_204` GROUP BY `ticket_passenger_204`.`PNR``PNR`  ;

-- --------------------------------------------------------

--
-- Structure for view `q4`
--
DROP TABLE IF EXISTS `q4`;

DROP VIEW IF EXISTS `q4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q4`  AS SELECT `train_204`.`Train_no` AS `Train_no`, `train_204`.`Train_name` AS `Train_name`, `ticket_204`.`compartment_No` AS `compartment_No`, count(`ticket_204`.`compartment_No`) AS `number_comps` FROM (`train_204` join `ticket_204`) WHERE `ticket_204`.`Train_No` = `train_204`.`Train_no` GROUP BY `train_204`.`Train_no``Train_no`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compartment_204`
--
ALTER TABLE `compartment_204`
  ADD PRIMARY KEY (`compartment_no`,`train_number`),
  ADD KEY `train_number` (`train_number`);

--
-- Indexes for table `fare_204`
--
ALTER TABLE `fare_204`
  ADD PRIMARY KEY (`train_type`,`compartment_type`);

--
-- Indexes for table `passenger_204`
--
ALTER TABLE `passenger_204`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `payment_info_204`
--
ALTER TABLE `payment_info_204`
  ADD PRIMARY KEY (`Transaction_no`),
  ADD KEY `PNR` (`PNR`);

--
-- Indexes for table `route_info_204`
--
ALTER TABLE `route_info_204`
  ADD PRIMARY KEY (`from_station_no`,`to_station_no`,`Train_No`),
  ADD KEY `Route_info_229_ibfk_1` (`Train_No`);

--
-- Indexes for table `ticket_204`
--
ALTER TABLE `ticket_204`
  ADD PRIMARY KEY (`PNR`),
  ADD KEY `Passenger_id` (`Passenger_id`),
  ADD KEY `compartment_No` (`compartment_No`,`Train_No`);

--
-- Indexes for table `ticket_passenger_204`
--
ALTER TABLE `ticket_passenger_204`
  ADD PRIMARY KEY (`PNR`,`seat_No`);

--
-- Indexes for table `train_204`
--
ALTER TABLE `train_204`
  ADD PRIMARY KEY (`Train_no`),
  ADD UNIQUE KEY `Train_name` (`Train_name`);

--
-- Indexes for table `user_phone_204`
--
ALTER TABLE `user_phone_204`
  ADD PRIMARY KEY (`User_ID`,`Phone_No`);

--
-- Indexes for table `user_train_204`
--
ALTER TABLE `user_train_204`
  ADD PRIMARY KEY (`user_id`,`Train_id`,`date_time_stamp`),
  ADD KEY `Train_id` (`Train_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `compartment_204`
--
ALTER TABLE `compartment_204`
  ADD CONSTRAINT `compartment_204_ibfk_1` FOREIGN KEY (`train_number`) REFERENCES `train_204` (`Train_no`);

--
-- Constraints for table `payment_info_204`
--
ALTER TABLE `payment_info_204`
  ADD CONSTRAINT `Payment_info_229_ibfk_1` FOREIGN KEY (`PNR`) REFERENCES `ticket_204` (`PNR`);

--
-- Constraints for table `route_info_204`
--
ALTER TABLE `route_info_204`
  ADD CONSTRAINT `Route_info_229_ibfk_1` FOREIGN KEY (`Train_No`) REFERENCES `train_204` (`Train_no`);

--
-- Constraints for table `ticket_204`
--
ALTER TABLE `ticket_204`
  ADD CONSTRAINT `Ticket_229_ibfk_1` FOREIGN KEY (`Passenger_id`) REFERENCES `passenger_204` (`User_ID`),
  ADD CONSTRAINT `Ticket_229_ibfk_2` FOREIGN KEY (`compartment_No`,`Train_No`) REFERENCES `compartment_204` (`compartment_no`, `train_number`);

--
-- Constraints for table `ticket_passenger_204`
--
ALTER TABLE `ticket_passenger_204`
  ADD CONSTRAINT `Ticket_passenger_229_ibfk_1` FOREIGN KEY (`PNR`) REFERENCES `ticket_204` (`PNR`);

--
-- Constraints for table `user_train_204`
--
ALTER TABLE `user_train_204`
  ADD CONSTRAINT `user_train_204_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `passenger_204` (`User_ID`),
  ADD CONSTRAINT `user_train_204_ibfk_2` FOREIGN KEY (`Train_id`) REFERENCES `train_204` (`Train_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
