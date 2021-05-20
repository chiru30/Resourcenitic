-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 06:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `national`
--

-- --------------------------------------------------------

--
-- Table structure for table `export_import`
--
-- Error reading structure for table national.export_import: #1932 - Table 'national.export_import' doesn't exist in engine
-- Error reading data for table national.export_import: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `national`.`export_import`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `export_import_share`
--

CREATE TABLE `export_import_share` (
  `id` int(11) NOT NULL,
  `Rank` int(11) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Export` varchar(100) DEFAULT NULL,
  `Import` varchar(100) DEFAULT NULL,
  `Total_Trade` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `export_import_share`
--

INSERT INTO `export_import_share` (`id`, `Rank`, `Country`, `Export`, `Import`, `Total_Trade`, `value`) VALUES
(1, 1, 'U S A ', '1,55,544.82', '1,14,655.89', '2,70,200.71', '40,888.93'),
(2, 2, 'CHINA P RP ', '49,414.03', '2,07,994.15', '2,57,408.18', '-1,58,580.13'),
(3, 3, 'U ARAB EMTS ', '88,303.69', '82,150.62', '1,70,454.31', '6,153.07'),
(4, 4, 'SAUDI ARAB ', '15,967.08', '82,006.54', '97,973.62', '-66,039.46'),
(5, 5, 'HONG KONG ', '32,449.92', '49,729.85', '82,179.77', '-17,279.94'),
(6, 6, 'SINGAPORE ', '33,416.96', '45,014.10', '78,431.06', '-11,597.14'),
(7, 7, 'IRAQ ', '5,807.83', '69,466.19', '75,274.02', '-63,658.36'),
(8, 8, 'SWITZERLAND ', '3,793.90', '64,648.20', '68,442.10', '-60,854.29'),
(9, 9, 'GERMANY ', '24,826.03', '41,044.21', '65,870.24', '-16,218.18'),
(10, 10, 'KOREA RP ', '13,337.39', '50,075.34', '63,412.73', '-36,737.95'),
(11, 11, 'INDONESIA ', '11,287.80', '41,825.67', '53,113.47', '-30,537.88'),
(12, 12, 'JAPAN ', '13,683.04', '38,702.30', '52,385.34', '-25,019.26'),
(13, 13, 'MALAYSIA ', '17,847.71', '31,607.12', '49,454.83', '-13,759.41'),
(14, 14, 'U K ', '25,884.44', '21,058.47', '46,942.91', '4,825.97'),
(15, 15, 'BELGIUM ', '16,161.88', '26,361.85', '42,523.73', '-10,199.97'),
(16, 16, 'AUSTRALIA ', '8,408.64', '34,000.48', '42,409.12', '-25,591.83'),
(17, 17, 'NIGERIA ', '9,748.20', '30,847.88', '40,596.08', '-21,099.68'),
(18, 18, 'VIETNAM SOC REP ', '14,255.48', '25,312.29', '39,567.77', '-11,056.82'),
(19, 19, 'NETHERLAND ', '27,934.71', '10,865.65', '38,800.36', '17,069.06'),
(20, 20, 'THAILAND ', '12,389.36', '22,370.77', '34,760.13', '-9,981.41'),
(21, 21, 'SOUTH AFRICA ', '12,150.86', '19,304.48', '31,455.35', '-7,153.62'),
(22, 22, 'FRANCE ', '15,101.99', '15,982.90', '31,084.89', '-880.91'),
(23, 23, 'RUSSIA ', '7,988.59', '21,943.13', '29,931.72', '-13,954.55'),
(24, 24, 'QATAR ', '3,472.59', '25,481.61', '28,954.20', '-22,009.02'),
(25, 25, 'ITALY ', '14,091.20', '14,288.35', '28,379.55', '-197.15');

-- --------------------------------------------------------

--
-- Table structure for table `gdp`
--
-- Error reading structure for table national.gdp: #1932 - Table 'national.gdp' doesn't exist in engine
-- Error reading data for table national.gdp: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `national`.`gdp`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `gdpshare`
--

CREATE TABLE `gdpshare` (
  `id` int(11) NOT NULL,
  `Country_Name` varchar(100) DEFAULT NULL,
  `Gdp` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gdpshare`
--

INSERT INTO `gdpshare` (`id`, `Country_Name`, `Gdp`) VALUES
(1, 'Afghanistan', '3.91'),
(2, 'Angola', '-0.62'),
(3, 'Albania', '2.24'),
(4, 'Andorra', '1.85'),
(5, 'Arab World', '1.49'),
(6, 'United Arab Emirates', '1.68'),
(7, 'Argentina', '-2.09'),
(8, 'Armenia', '7.60'),
(9, 'Australia', '2.16'),
(10, 'Austria', '1.42'),
(11, 'Azerbaijan', '2.22'),
(12, 'Burundi', '1.84'),
(13, 'Belgium', '1.74'),
(14, 'Benin', '6.87'),
(15, 'Burkina Faso', '5.70'),
(16, 'Bangladesh', '8.15'),
(17, 'Bulgaria', '3.69'),
(18, 'Bahrain', '1.82'),
(19, 'Bahamas, The', '1.22'),
(20, 'Bosnia and Herzegovina', '2.68'),
(21, 'Belarus', '1.22'),
(22, 'Belize', '0.27'),
(23, 'Bermuda', '0.46'),
(24, 'Bolivia', '2.22'),
(25, 'Brazil', '1.14'),
(26, 'Barbados', '-0.10'),
(27, 'Brunei Darussalam', '3.87'),
(28, 'Bhutan', '5.46'),
(29, 'Botswana', '2.97'),
(30, 'Central African Republic', '2.97'),
(31, 'Canada', '1.66'),
(32, 'Central Europe and the Baltics', '3.82'),
(33, 'Switzerland', '0.93'),
(34, 'Chile', '1.05'),
(35, 'China', '5.95'),
(36, 'India', '4.18');

-- --------------------------------------------------------

--
-- Table structure for table `nationshare`
--

CREATE TABLE `nationshare` (
  `id` int(11) NOT NULL,
  `statename` varchar(100) DEFAULT NULL,
  `Area` decimal(10,2) DEFAULT NULL,
  `nationalshare` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationshare`
--

INSERT INTO `nationshare` (`id`, `statename`, `Area`, `nationalshare`) VALUES
(1, 'Rajasthan', '342239.00', '10.55'),
(2, 'Madhya Pradesh', '308350.00', '9.37'),
(3, 'Maharashtra', '307713.00', '9.36'),
(4, 'Uttar Pradesh', '240928.00', '7.33'),
(5, 'Gujarat', '196024.00', '5.96'),
(6, 'Karnataka', '191791.00', '5.83'),
(7, 'Andhra Pradesh', '162970.00', '4.87'),
(8, 'Odisha', '155707.00', '4.73'),
(9, 'Chhattisgarh', '135191.00', '4.11'),
(10, 'Tamil Nadu', '130058.00', '3.95'),
(11, 'Telangana', '112077.00', '3.49'),
(12, 'Bihar', '94163.00', '2.86'),
(13, 'West Bengal', '88752.00', '2.70'),
(14, 'Arunachal Pradesh', '83743.00', '2.54'),
(15, 'Jharkhand', '79714.00', '2.42'),
(16, 'Assam', '78438.00', '2.38'),
(17, 'Ladakh', '59146.00', '1.80'),
(18, 'Himachal Pradesh', '55673.00', '1.70'),
(19, 'Uttarakhand', '53483.00', '1.62'),
(20, 'Punjab', '50362.00', '1.53'),
(21, 'Haryana', '44212.00', '1.34'),
(22, 'Jammu and Kashmir', '42241.00', '1.28'),
(23, 'Kerala', '38863.00', '1.18'),
(24, 'Meghalaya', '22429.00', '0.68'),
(25, 'Manipur', '22327.00', '0.68'),
(26, 'Mizoram', '21081.00', '0.64'),
(27, 'Nagaland', '16579.00', '0.50'),
(28, 'Tripura', '10486.00', '0.31'),
(29, 'Sikkim', '7096.00', '0.21'),
(30, 'Goa', '3702.00', '0.11'),
(31, 'Delhi', '1483.00', '0.04'),
(32, 'Dadra and Nagar Haveli and Daman and Diu', '603.00', '0.01'),
(33, 'Puducherry', '492.00', '0.01'),
(34, 'Chandigarh', '114.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--
-- Error reading structure for table national.states: #1932 - Table 'national.states' doesn't exist in engine
-- Error reading data for table national.states: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `national`.`states`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `states1`
--
-- Error reading structure for table national.states1: #1932 - Table 'national.states1' doesn't exist in engine
-- Error reading data for table national.states1: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `national`.`states1`' at line 1

--
-- Indexes for dumped tables
--

--
-- Indexes for table `export_import_share`
--
ALTER TABLE `export_import_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gdpshare`
--
ALTER TABLE `gdpshare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationshare`
--
ALTER TABLE `nationshare`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `export_import_share`
--
ALTER TABLE `export_import_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gdpshare`
--
ALTER TABLE `gdpshare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `nationshare`
--
ALTER TABLE `nationshare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*  */;
