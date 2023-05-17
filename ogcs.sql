-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 08:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `Admission_ID` int(10) NOT NULL,
  `User_ID` int(10) DEFAULT NULL,
  `Staff_ID` int(10) DEFAULT NULL,
  `Preferred_Method` varchar(255) DEFAULT NULL,
  `Date_Admissioned` varchar(100) DEFAULT NULL,
  `Admission_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`Admission_ID`, `User_ID`, `Staff_ID`, `Preferred_Method`, `Date_Admissioned`, `Admission_Description`) VALUES
(1, 1, 6, 'Anonymous', '02/19/1998', 'Anxiety Disorder'),
(2, 2, 5, 'Anonymous', '01/19/1998', 'Behavioural and Emotional Disorder'),
(3, 3, 4, 'Anonymous', '03/19/1998', 'Bipolar Affective Disorder'),
(4, 3, 3, 'Introduce', '04/19/1998', 'Depression'),
(5, 5, 3, 'Anonymous', '05/19/1998', 'Dissociation Disorder'),
(34, 1, 1, 'Anonymous', '05/22/2003', 'Mayabang');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_ID` int(10) NOT NULL,
  `User_ID` int(10) DEFAULT NULL,
  `Staff_ID` int(10) DEFAULT NULL,
  `Counselor_ID` int(10) DEFAULT NULL,
  `Date_Start` varchar(100) DEFAULT NULL,
  `Date_End` varchar(100) DEFAULT NULL,
  `Counseling_Type` varchar(255) NOT NULL,
  `Appointment_Purpose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_ID`, `User_ID`, `Staff_ID`, `Counselor_ID`, `Date_Start`, `Date_End`, `Counseling_Type`, `Appointment_Purpose`) VALUES
(1, 9, 1, 21, '05/16/20', '05/16/21', 'Trauma Counseling', 'To Cure Trauma'),
(2, 6, 2, 20, '05/16/19', '05/16/20', 'Career Counseling', 'To be redirected in the right path and take advantage of my skills and strengths uhmmm'),
(3, 5, 3, 19, '05/16/18', '05/16/19', 'Bereavement Counseling', 'To move on with my life and continue to live despite losing a lot'),
(4, 3, 4, 18, '05/16/17', '05/16/18', 'Addiction Counseling', 'To stop my addiction to drugs'),
(5, 2, 5, 17, '05/16/16', '05/16/17', 'Child and Adolescent Counseling	', 'To help me be a normal child again'),
(6, 1, 6, 16, '05/16/15', '05/16/16', 'Marriage and Family Therapy	', 'To know better ways and be a responsible partner to my wife and my kids'),
(7, 10, 8, 15, '05/16/14', '05/16/15', 'Clinical Psychology', 'To cure my mental illness that makes it hard for me to go outside'),
(8, 1, 1, 15, '05/19/2023', '05/27/2023', 'sdasd', 'adasdasda');

-- --------------------------------------------------------

--
-- Table structure for table `counselors`
--

CREATE TABLE `counselors` (
  `Counselor_ID` int(10) NOT NULL,
  `Counselor_Name` varchar(255) DEFAULT NULL,
  `Counselor_Address` varchar(255) DEFAULT NULL,
  `Counselor_PhoneNo` bigint(11) DEFAULT NULL,
  `Counselor_Specialty` varchar(255) DEFAULT NULL,
  `Counselor_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counselors`
--

INSERT INTO `counselors` (`Counselor_ID`, `Counselor_Name`, `Counselor_Address`, `Counselor_PhoneNo`, `Counselor_Specialty`, `Counselor_Img`) VALUES
(15, 'Dr. Jane Smith', 'Manila', 9876543210, 'Clinical Psychology', ''),
(16, 'Dr. Michael Johnson', 'Quezon City', 1234567890, 'Marriage and Family Therapy', ''),
(17, 'Dr. Sarah Lee', 'Makati', 4567891230, 'Child and Adolescent Counseling', ''),
(18, 'Dr. David Chen', 'Taguig', 7890123456, 'Addiction Counseling', ''),
(19, 'Dr. Maria Rodriguez', 'Mandaluyong', 2345678901, 'Bereavement Counseling', ''),
(20, 'Dr. William Wong', 'Pasig', 3456789012, 'Career Counseling', ''),
(21, 'Dr. Emily Nguyen', 'San Juan', 4567890123, 'Trauma Counseling', ''),
(22, 'Dr. Daniel Wilson', 'Parañaque', 5678901234, 'Substance Abuse Counseling', ''),
(23, 'Dr. Sophia Lee', 'Valenzuela, Jaded', 6789012345, 'Grief Counseling', ''),
(24, 'jaded', 'jaded', 9663969556, 'Grief Counselinger', 'tulipsatinash.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Payment_ID` int(10) NOT NULL,
  `User_ID` int(10) DEFAULT NULL,
  `Appointment_ID` int(10) DEFAULT NULL,
  `Amount` decimal(7,2) DEFAULT NULL,
  `DOP` varchar(255) DEFAULT NULL,
  `MOP` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`Payment_ID`, `User_ID`, `Appointment_ID`, `Amount`, `DOP`, `MOP`) VALUES
(1, 10, 1, 2500.00, '05/22/03', 'Cash'),
(2, 9, 2, 1000.00, '05/22/03', 'Check'),
(3, 6, 3, 500.00, '05/22/03', 'Debit Card'),
(4, 5, 4, 1500.00, '05/22/03', 'Prepaid Card'),
(5, 3, 5, 2000.00, '05/22/03', 'Credit Card'),
(6, 2, 6, 300.00, '05/22/03', 'GCash'),
(7, 1, 7, 3000.00, '05/22/23', 'Bank Transfer'),
(8, 1, 1, 100.00, '05/22/2003', 'Gcash kase mahirap lang kami nope');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `Referral_ID` int(10) NOT NULL,
  `User_ID` int(10) DEFAULT NULL,
  `Staff_ID` int(10) DEFAULT NULL,
  `Counselor_ID` int(10) DEFAULT NULL,
  `Referral_Date` varchar(100) DEFAULT NULL,
  `Referral_Situation` varchar(50) DEFAULT NULL,
  `Referral_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`Referral_ID`, `User_ID`, `Staff_ID`, `Counselor_ID`, `Referral_Date`, `Referral_Situation`, `Referral_Description`) VALUES
(1, 1, 1, 23, '05/15/23', 'Manageable', 'Anxiety'),
(2, 2, 2, 22, '05/14/23', 'Out of Control', 'Behavioural and Emotional Disorder'),
(3, 3, 3, 21, '05/13/23', 'Docile', 'Bipolar Affective Disorder'),
(4, 5, 4, 20, '05/12/23', 'Normal', 'Dissociation Disorder'),
(5, 6, 5, 19, '05/11/23', 'Abnormal', 'Raging Potato'),
(6, 9, 6, 18, '05/10/23', 'Weirdly Okay', 'Signs of Autism'),
(7, 2, 8, 15, '05/09/23', 'Calm and Composeder', 'Introvert'),
(19, 1, 1, 19, '05/12/2023', 'asdasdsadsa', 'asdasdqwewqewqe');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `Staff_ID` int(10) NOT NULL,
  `Staff_Name` varchar(255) DEFAULT NULL,
  `Staff_Address` varchar(255) DEFAULT NULL,
  `Staff_PhoneNo` bigint(11) DEFAULT NULL,
  `Staff_Position` varchar(255) DEFAULT NULL,
  `Staff_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`Staff_ID`, `Staff_Name`, `Staff_Address`, `Staff_PhoneNo`, `Staff_Position`, `Staff_Img`) VALUES
(1, 'Julius Randle', 'Polangui', 9663969556, 'Staff I', ''),
(2, 'Luka Doncic', 'Sorsogon', 9163969556, 'Staff II', ''),
(3, 'Lebron James', 'Camarines Sur', 9263969556, 'Staff III', ''),
(4, 'Stephen Curry', 'Camarines Norte', 9363969556, 'Staff IV', ''),
(5, 'Trae Young', 'Daraga', 9463969556, 'Staff V', ''),
(6, 'Jayson Tatum', 'Old Albay', 9563969556, 'Staff VI', ''),
(8, 'De Aaron Fox', 'Sacramento Kings', 9999999999, 'General V', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(10) NOT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `User_Pronoun` varchar(5) DEFAULT NULL,
  `User_Address` varchar(255) DEFAULT NULL,
  `User_PhoneNo` bigint(12) DEFAULT NULL,
  `User_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `User_Name`, `User_Pronoun`, `User_Address`, `User_PhoneNo`, `User_Img`) VALUES
(1, 'Jaded', 'Him', 'San Pedro', 9663969556, 'tulipfruit.jfif'),
(2, 'Glaiza', 'Her', 'Rawis, San Joaquin', 9526484894, '324322281_948591946125955_5930948354479871302_n.jpg'),
(3, 'Stephen', 'It', 'San Francisco, California', 9526484814, ''),
(5, 'Andrea', 'Her', 'Rawis, San Joaquin', 9667539538, ''),
(6, 'Klay', 'Him', 'San Francisco, California', 9667247538, ''),
(9, 'asdsadsa', 'asdas', '21321321321321', 123213213, 'F.png'),
(10, 'jade', 'asdas', 'adasdasdasd', 12321321, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`Admission_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Counselor_ID` (`Counselor_ID`);

--
-- Indexes for table `counselors`
--
ALTER TABLE `counselors`
  ADD PRIMARY KEY (`Counselor_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`Referral_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Counselor_ID` (`Counselor_ID`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `Admission_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Appointment_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counselors`
--
ALTER TABLE `counselors`
  MODIFY `Counselor_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `Payment_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `Referral_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `Staff_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`),
  ADD CONSTRAINT `admissions_ibfk_2` FOREIGN KEY (`Staff_ID`) REFERENCES `staffs` (`Staff_ID`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Staff_ID`) REFERENCES `staffs` (`Staff_ID`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`),
  ADD CONSTRAINT `appointments_ibfk_4` FOREIGN KEY (`Counselor_ID`) REFERENCES `counselors` (`Counselor_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointments` (`Appointment_ID`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staffs` (`Staff_ID`),
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
