-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2017 at 04:11 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3-7+squeeze19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `2016270`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `credentials` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `experience` int(11) NOT NULL,
  `research` int(11) NOT NULL,
  `fee_basic` int(11) NOT NULL,
  `fee_advanced` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`user_id`, `name`, `credentials`, `email`, `password`, `contact`, `address`, `experience`, `research`, `fee_basic`, `fee_advanced`) VALUES
(1, 'Anurag Bisht', 'MD, MBBS, Cardiologist', '2016041@iiitdmj.ac.in', 'Anurag123', 8989018948, '24 jump street , near mall road , Nainital , Uttarakhand', 4, 2, 500, 5000),
(2, 'Ujjwal Rathore', 'MD, MBBS, Neurologist', '2016281@iiitdmj.ac.in', 'Ujjwal123', 8651444306, 'Sadaf Bazaar, Patna, Bihar', 6, 4, 200, 1000),
(3, 'Sanjeev Singh', 'MD,MS,MBBS Orthologist', 'Sanjeevsn@gmail.com', 'Sanjeev123', 9412958184, 'multiplex road, Kanpur, UP', 3, 1, 200, 2000),
(4, 'Pradeep Batra', 'MD, MBBS,MS, Super Specialist OrthoSurgeon', 'pradeep05@gmail.com', 'Pradeep123', 8654123598, 'Connaught Place, New Delhi', 8, 5, 1000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhar` bigint(16) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`user_id`, `aadhar`, `name`, `address`, `age`, `gender`, `password`) VALUES
(1, 1234567891234567, 'Sumit Chauhan', 'Vikasnagar, Dehradun', 20, 'male', 'Sumit123'),
(2, 1234567890123456, 'Rounak Agarwal', 'Murliganj, Bihar', 19, 'Male', 'Rounak123'),
(3, 2345678901234567, 'Sanya Rathore', 'Patna, Bihar', 16, 'Female', 'sanya123'),
(4, 9876543211234567, 'Kush Mittal', 'Bajpur, Nainital, Uttarakhand', 20, 'Male', 'Kush123'),
(5, 7894561233216549, 'Surbhi Joshi', 'Saharanpur, UP', 25, 'Female', 'surbhi123');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_aadhar` bigint(16) NOT NULL,
  `visit_date` date NOT NULL,
  `medicines` varchar(200) NOT NULL,
  `notes` varchar(300) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`record_id`, `patient_id`, `doctor_id`, `patient_aadhar`, `visit_date`, `medicines`, `notes`) VALUES
(3, 2, 2, 1234567890123456, '2017-11-14', 'calpol, paracetamol', 'The patient is suffering from insomnia. Requires a lot of attention.'),
(4, 1, 1, 1234567891234567, '2017-11-11', 'Semanti, Paracetamol, Betadin, Wikoryl', 'The patient is suffering from minor fever and throat congestion.'),
(5, 2, 2, 1234567890123456, '2017-11-11', 'Paracetamol, Wikoryl, Betadin, Cough Syrup', 'The patient is just stressed and is feeling unwell. The patient has also been feeling low. Need to refer to Psychologist.'),
(6, 2, 1, 1234567890123456, '2017-11-11', 'Cough Syrup, Inhaler', 'The patient is suffering from throat congestion. He has been put to further tests, showing symptoms of asthma. '),
(7, 1, 3, 1234567891234567, '2017-11-11', 'Maxofen Plus, Eye drops', 'The patient is sufferiing from eye infection. Need to keep his eyes isolated for a week'),
(8, 2, 3, 1234567890123456, '2017-11-11', 'Calcium tablets, B-complex', 'The patient face major impact at ankle causing the ligament to tear. Bed rest for atleast 2 weeks.'),
(9, 2, 1, 1234567890123456, '2017-11-11', 'Paracetamol, Leg craps, Sticks', 'The patient had paralytic attack. Under strict medication.'),
(10, 4, 4, 9876543211234567, '2017-11-11', 'Calpol, Paracetamol', 'The patient is suffering from acute Tuberculosis.'),
(11, 1, 4, 1234567891234567, '2017-11-11', 'Paracetamol, Disprin', 'Patient is normal just stressed.'),
(12, 4, 1, 9876543211234567, '2017-11-11', 'different medicines', 'The patient needs rest.'),
(14, 1, 1, 1234567891234567, '2017-11-11', 'medice', 'Doctor note'),
(15, 1, 1, 1234567891234567, '2017-11-11', 'paracetmol', 'the patient');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`user_id`),
  ADD CONSTRAINT `records_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`user_id`);
