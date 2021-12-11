-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 06:18 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nakodabuses`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(24) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `admin_type` tinyint(1) NOT NULL,
  `admin_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`, `email`, `phone`, `admin_type`, `admin_status`) VALUES
(1, 'Gautam', 'gautam01', 'gautam01', 'sth4131@gmail.com', '9876543210', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `pnr_no` varchar(20) NOT NULL,
  `booking_status` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `fare` int(10) NOT NULL,
  `booking_date` datetime NOT NULL,
  `booking_type` tinyint(1) NOT NULL,
  `journey_date` date NOT NULL,
  `payment` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `bus_id`, `pnr_no`, `booking_status`, `name`, `phone`, `fare`, `booking_date`, `booking_type`, `journey_date`, `payment`) VALUES
(139, 7, '68393237489', 1, 'Fenil', '8320803128', 1398, '2021-06-07 04:05:11', 1, '2021-06-24', 1),
(140, 7, '09024484247', 1, 'Fenil', '8320803128', 1398, '2021-06-07 04:53:40', 1, '2021-06-25', 1),
(144, 7, '87884654991', 1, 'Admin', '9874563252', 1398, '2021-06-08 06:13:27', 1, '2021-07-03', 1),
(145, 10, '17144476935', 0, 'Admin', '8320803128', 998, '2021-06-08 06:58:55', 1, '2021-06-10', 0),
(146, 10, '22718248352', 0, 'Admin', '8320803128', 998, '2021-06-08 06:59:52', 1, '2021-06-10', 0),
(147, 10, '71147518236', 0, 'Admin', '8320803128', 998, '2021-06-08 07:01:00', 1, '2021-06-10', 0),
(148, 7, '42603527784', 1, 'parth', '9567896523', 1398, '2021-06-08 07:02:02', 1, '2021-06-18', 1),
(149, 7, '73744361510', 1, 'Admin', '8320803128', 1398, '2021-06-26 06:06:03', 1, '2021-06-30', 1),
(150, 7, '89094964530', 0, 'memes zindgi', '9874563252', 1398, '2021-06-26 06:07:30', 1, '2021-06-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_dtls`
--

CREATE TABLE `booking_dtls` (
  `booking_dtls_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_dtls`
--

INSERT INTO `booking_dtls` (`booking_dtls_id`, `booking_id`, `seat_number`, `gender`) VALUES
(201, 139, 18, 'Male'),
(202, 139, 24, 'Male'),
(203, 140, 12, 'Male'),
(204, 140, 18, 'Male'),
(211, 144, 24, 'Male'),
(212, 144, 30, 'Male'),
(213, 145, 18, 'Male'),
(214, 145, 30, 'Male'),
(215, 146, 18, 'Male'),
(216, 146, 30, 'Male'),
(217, 147, 18, 'Male'),
(218, 147, 30, 'Male'),
(219, 148, 21, 'Male'),
(220, 148, 28, 'Male'),
(221, 149, 4, 'Male'),
(222, 149, 5, 'Male'),
(223, 150, 17, 'Male'),
(224, 150, 23, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `bus_name` varchar(100) NOT NULL,
  `bus_no` varchar(20) NOT NULL,
  `total_seats` int(3) NOT NULL,
  `departure_time` time DEFAULT NULL,
  `destination_time` time DEFAULT NULL,
  `fare` int(11) NOT NULL,
  `bus_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `route_id`, `bus_name`, `bus_no`, `total_seats`, `departure_time`, `destination_time`, `fare`, `bus_status`) VALUES
(7, 1, 'Ujjain Express Non A/C Sleeper', 'GJ-05-AB-2002', 30, '18:27:00', '15:29:00', 699, 1),
(10, 2, 'Vadodara - Ujjain non A/C Sleeper', 'GJ-05-AB-2003', 24, '13:26:00', '11:26:00', 499, 1),
(11, 26, 'Ujjain Express Non A/C Sleeper', 'GJ-05-AB-2002', 30, '11:28:00', '12:29:00', 699, 1),
(12, 24, 'Vadodara - Ujjain non A/C Sleeper', 'GJ-05-AB-2003', 30, '13:30:00', '11:30:00', 499, 1),
(15, 27, 'Surat-Amreli Express Non A/c Sleeper', 'GJ-05-AB-2211', 33, '21:00:00', '07:00:00', 600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `name`, `phone`) VALUES
(3, 'Gautam', '3216549870');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `image_id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`image_id`, `image`) VALUES
(1, 'nhm-picsart_04-09-07_54_10.jpg'),
(4, 'nhm-picsart_11-19-11_10_12.jpg'),
(5, 'nhm-thumbneil.png');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `signature_hash` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `response_msg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `pickup_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `pickup_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickup_point`
--

INSERT INTO `pickup_point` (`pickup_id`, `route_id`, `place_id`, `pickup_name`) VALUES
(1, 1, 1, 'Private Bus Parking'),
(2, 1, 1, 'kamraj'),
(3, 1, 4, 'Dhakkan wala kua'),
(4, 2, 2, 'Private B1212'),
(5, 2, 4, 'Dhakkan wala kua'),
(6, 24, 2, 'Private B1212'),
(7, 24, 4, 'Dhakkan wala kua'),
(8, 27, 6, 'Amreli Central Bus Stand'),
(9, 27, 6, 'Bus Stand');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`) VALUES
(1, 'Surat'),
(2, 'Vadodara'),
(4, 'Ujjain'),
(5, 'Indore'),
(6, 'Amreli');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `pnr_no` varchar(20) NOT NULL,
  `rating` int(1) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `route_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `source`, `destination`, `route_status`) VALUES
(1, 'Surat', 'Ujjain', 1),
(2, 'Vadodara', 'Ujjain', 1),
(24, 'Ujjain', 'Vadodara', 1),
(26, 'Ujjain', 'Surat', 1),
(27, 'Surat', 'Amreli', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `seat_no` int(3) NOT NULL,
  `seat_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `stop_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `pickup_id` int(11) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`stop_id`, `bus_id`, `pickup_id`, `time`) VALUES
(12, 7, 1, '15:58:00'),
(14, 7, 2, '16:00:00'),
(15, 7, 3, '20:29:00'),
(16, 8, 1, '17:08:00'),
(17, 8, 2, '20:10:00'),
(18, 8, 3, '23:14:00'),
(19, 11, 3, '11:30:00'),
(20, 11, 2, '12:31:00'),
(21, 11, 1, '15:34:00'),
(22, 10, 4, '12:08:00'),
(23, 10, 5, '14:11:00'),
(24, 12, 7, '13:12:00'),
(25, 12, 6, '12:12:00'),
(27, 15, 1, '21:00:00'),
(29, 15, 8, '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `uid` int(255) NOT NULL,
  `fullname` text NOT NULL,
  `emailid` text NOT NULL,
  `contectno` decimal(65,0) DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`uid`, `fullname`, `emailid`, `contectno`, `password`) VALUES
(5, 'Jay Trivedi', 'jay123trivedi@gmail.com', '0', '25d55ad283aa400af464c76d713c07ad'),
(7, 'Ankit Sarvaiya', 'ankitsarvaiya.kbc@gmail.com', '0', '25d55ad283aa400af464c76d713c07ad'),
(8, 'ankit', 'aksarvaiya123@gmail.com', '0', '25d55ad283aa400af464c76d713c07ad'),
(9, 'abcd', 'abcd@gmail.com', '0', '25d55ad283aa400af464c76d713c07ad'),
(10, 'Darshan Prajapati', 'darshan1312@gmail.com', '0', '1bdab868be2671cc442d5921da2356a4'),
(15, 'ak', 'ak@gmail.com', '0', '25d55ad283aa400af464c76d713c07ad'),
(25, 'Admin', 'admin@gmail.com', '9876543222', '0192023a7bbd73250516f069df18b500'),
(26, 'Admin', 'user@gmail.com', NULL, 'cba1f2d695a5ca39ee6f343297a761a4');

-- --------------------------------------------------------

--
-- Table structure for table `user_inquiry`
--

CREATE TABLE `user_inquiry` (
  `inqid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` varchar(500) NOT NULL,
  `reply` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_inquiry`
--

INSERT INTO `user_inquiry` (`inqid`, `fname`, `lname`, `email`, `subject`, `message`, `reply`) VALUES
(2, 'Shivam', 'Tiwari', 'bbtshivam@gmail.com', 'profile approved ?', 'hjtfyh', 1),
(3, 'fenil', 'admin', 'admin@gmail.com', 'Project', 'Good', 0),
(6, 'sangani', 'brother', 'sangani@gmail.com', 'Buses Time', 'What Time of Surat Buses??', 0),
(7, 'Parth', 'Pansuriya', 'parth@gmail.com', 'Project', 'Nice Work...', 0),
(8, 'Sangani', 'Fenil', 'abc@gmail.com', 'BUS Time', 'Amreli Bus Timing??', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `pnr_no` (`pnr_no`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `booking_dtls`
--
ALTER TABLE `booking_dtls`
  ADD PRIMARY KEY (`booking_dtls_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`pickup_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`stop_id`),
  ADD KEY `pickup_id` (`pickup_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_inquiry`
--
ALTER TABLE `user_inquiry`
  ADD PRIMARY KEY (`inqid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `booking_dtls`
--
ALTER TABLE `booking_dtls`
  MODIFY `booking_dtls_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `pickup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `stop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_inquiry`
--
ALTER TABLE `user_inquiry`
  MODIFY `inqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`);

--
-- Constraints for table `booking_dtls`
--
ALTER TABLE `booking_dtls`
  ADD CONSTRAINT `booking_dtls_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD CONSTRAINT `pickup_point_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stops`
--
ALTER TABLE `stops`
  ADD CONSTRAINT `stops_ibfk_2` FOREIGN KEY (`pickup_id`) REFERENCES `pickup_point` (`pickup_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
