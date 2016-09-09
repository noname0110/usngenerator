-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2016 at 11:44 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usngenerator`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', '$2a$10$2RNrCn8xbHT0nyxCY2E0D.laFgDmT0T2KJYLdqgz63jbAPo0bfKzG'),
('root', '$2a$10$sddNWvuEAMVo.QqCUa4uWem6wFSJ5YnuM1XOsC2o8pa2kc6NoOpcC'),
('user', '$2a$10$IRuQoGN.E9a1ZSz58U9cP.TRLNMwVc9bQivEq22Ywu1TvGC5HrFLm');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sequence` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`sequence`),
  ADD KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_ibfk_1` FOREIGN KEY (`username`) REFERENCES `admins` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
