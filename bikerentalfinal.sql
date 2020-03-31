-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 08:51 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TransactionId` varchar(100) DEFAULT NULL,
  `ReceiptUrl` varchar(250) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `TransactionId`, `ReceiptUrl`, `Description`) VALUES
(24, 'a@gmail.com', 1, '2019-11-19', '2019-11-21', 'fghj', 1, '2019-11-18 20:29:01', 'ch_1FgGqiDcT7bod4W6y0Ac5Cpl', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FgGqiDcT7bod4W6y0Ac5Cpl/rcpt_GCgDBwWC4BjjmKZKPPtMH1MjvmZaljT', 'BajajSS400'),
(25, 'a@gmail.com', 3, '2019-11-06', '2019-11-21', 'errtjk', NULL, '2019-11-18 20:30:25', 'ch_1FgGs4DcT7bod4W6v1vOWLCm', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FgGs4DcT7bod4W6v1vOWLCm/rcpt_GCgEtcizrobc022HSanNnUXO14W7yLG', 'SuzukiR1'),
(26, 'a@gmail.com', 1, '2019-11-20', '2019-11-21', 'xdfgh`', NULL, '2019-11-18 20:52:25', 'ch_1FgHDMDcT7bod4W61DKhN31e', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FgHDMDcT7bod4W61DKhN31e/rcpt_GCgaJr5CcDyb58JZRQghH83cn8YgiLf', 'BajajSS400'),
(27, 'a@gmail.com', 1, '2019-11-20', '2019-11-21', 'dfgh', NULL, '2019-11-18 21:39:27', 'ch_1FgHwsDcT7bod4W67SJFWLz8', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FgHwsDcT7bod4W67SJFWLz8/rcpt_GChLGDTTiJUAHvmb7fQlncuQ7sFKueN', 'BajajSS400'),
(28, 'chetan@gmail.com', 1, '2019-11-20', '2019-11-23', 'dfcgvhj', NULL, '2019-11-19 03:26:16', 'ch_1FgNMUDcT7bod4W6UzdOoYr4', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FgNMUDcT7bod4W6UzdOoYr4/rcpt_GCmwxDfupesSR2IcHHKok5IFhisy66O', 'BajajSS400'),
(59, 'kondashivaradhan07@gmail.com', 2, '2019-12-10', '2019-12-12', 'Wishing for a fast response', NULL, '2019-12-10 17:38:01', 'ch_1FoCevDcT7bod4W6JycXKTse', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FoCevDcT7bod4W6JycXKTse/rcpt_GKsPz4McXXXNjSlq9uBFSTwW6tKzr1d', 'BajajRS200'),
(60, 'kondashivaradhan07@gmail.com', 1, '2019-12-10', '2019-12-11', 'hello', NULL, '2019-12-10 17:38:50', 'ch_1FoCfhDcT7bod4W6YWgLgaC1', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FoCfhDcT7bod4W6YWgLgaC1/rcpt_GKsQAKQKhDggF54yuxDVg0xMXYcU78v', 'BajajSS400'),
(61, 'kondashivaradhan07@gmail.com', 2, '2019-12-11', '2019-12-12', 'Good', NULL, '2019-12-10 18:58:53', 'ch_1FoDvBDcT7bod4W632EezC2F', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FoDvBDcT7bod4W632EezC2F/rcpt_GKti9IZQ41IyTMoAe6ICiywym71V8HI', 'BajajRS200'),
(62, 'kondashivaradhan07@gmail.com', 2, '2019-12-11', '2019-12-12', 'Good', NULL, '2019-12-10 19:06:05', 'ch_1FoE29DcT7bod4W6X1YMHCEJ', 'https://pay.stripe.com/receipts/acct_1E9uAGDcT7bod4W6/ch_1FoE29DcT7bod4W6X1YMHCEJ/rcpt_GKtpsX1neEzeJ4p5ipjiLGcAF1DlN2Y', 'BajajRS200');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'KTM', '2019-10-16 18:30:00', '2019-11-02 19:04:42'),
(2, 'Bajaj', '2019-10-16 18:30:00', '2019-11-02 19:04:49'),
(3, 'Honda', '2019-10-16 18:30:00', '2019-11-02 19:04:51'),
(4, 'Suzuki', '2019-10-16 18:30:00', '2019-11-02 19:04:54'),
(5, 'Yamaha', '2019-10-16 18:30:00', '2019-11-02 19:04:59'),
(7, 'Ducati', '2019-10-16 18:30:00', '2019-11-02 19:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Lovely Professional University																							', 'kondashivaradhan007@gmail.com', '9849104007');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'konda', 'kondashivaradhan007@gmail.com', '7896081158', 'One portal is not yet made', '2019-11-02 19:06:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Last updated: October 15, 2019\r\nPlease read these Terms and Conditions (\"Terms\", \"Terms and Conditions\") carefully before using the website (the \"Service\") operated by Konda Shivaradhan, Lokesh, Rahul, Rajesh (\"us\", \"we\", or \"our\").\r\n</FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This site secures your DATA in php sql server the data is not shared with any other web applications and all the user data given by customers are stored with full isolation</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">WE ARE THE BIKE RENTAL MANAGER. The only 100% dedicated bike rental booking website. The first Bike Rental Manager (BRM) shop was our own bike shop. Ever Since it has been our aim to make bike rental easier for everyone, everywhere.We focus on making bike rentals easier for you.Your rental business has a unique set of challenges. We are the only dedicated bike rental site and will be able to offer you a solution to match your needs.Get in touch with us today! We provide affordable bike rates, we hae lost of Satiisfied customers feedback, you can have a look at our home page too!! </span>'),
(11, 'FAQs', 'faqs', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Content about to Drop</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'sairajesh@gmail.com', '2019-11-08 11:03:56'),
(3, 'sairajesh2998@gmail.com', '2019-11-12 07:42:00'),
(4, 'sairajesh298@gmail.com', '2019-12-05 05:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'kondashivaradhan007@gmail.com', 'This is amazing! I mean really such great bike for rent at affordable price. oh this is crazy man!', '2017-06-18 07:44:31', 1),
(2, 'penumarthi@gmail.com', '\nI think this is the one and only top bike rental site in the world. 5-Stars from me - Full satisfaction, no complain at all', '2017-06-18 07:46:05', 1),
(3, 'kondashivaradha007@gmail.com', 'Nice website!! Good for rental services.', '2019-11-02 18:56:45', 1),
(4, 'chetan@gmail.com', 'Useful,Simple,Relaiable', '2019-11-08 10:20:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Konda Shivaradhan', 'kondashivaradhan007@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2019-11-02 18:51:13'),
(4, 'Lokesh', 'penumarthi@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'PKL', 'XYZ', 'XYZ', '2017-06-17 20:03:36', '2019-11-02 18:51:37'),
(5, 'konda', 'kondashivaradha007@gmail.com', '8d78a32ffc1f573fb9293f8ce4b95105', '9849104007', NULL, NULL, NULL, NULL, '2019-11-02 18:39:30', NULL),
(6, 'a', 'abc@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 'a', NULL, NULL, NULL, NULL, '2019-11-04 03:59:41', NULL),
(7, 'chetan', 'chetan@gmail.com', 'dce2cde4394d4c96ec887bffb0d3995f', '9725631477', '', '', '', '', '2019-11-08 10:20:05', '2019-11-12 14:47:15'),
(8, 'Rajesh', 'sairajesh2@gmail.com', '053d615c45b137f4aa722a86eb55131d', '9666441978', NULL, NULL, NULL, NULL, '2019-11-12 18:15:42', NULL),
(9, 'qaaaaan', 'sai@g.com', 'e10adc3949ba59abbe56e057f20f883e', '54', NULL, NULL, NULL, NULL, '2019-11-12 18:16:26', NULL),
(10, 'qaaaaan', 'sai@g.com', 'e10adc3949ba59abbe56e057f20f883e', '54', NULL, NULL, NULL, NULL, '2019-11-12 18:17:56', NULL),
(11, 'Rahul Cc', 'rahulc14727@gmail.com', '9a0a55003fd5edad3fa605267964afa7', '8360418265', NULL, NULL, NULL, NULL, '2019-11-17 16:52:28', NULL),
(12, 'abhishek', 'a@gmail.com', '7815696ecbf1c96e6894b779456d330e', '779185336', '', '', '', '', '2019-11-18 16:56:25', '2019-11-18 16:56:58'),
(13, 'lokesh', 'lokesh@gmail.com', '25f9e794323b453885f5181f1b624d0b', '9381205609', NULL, NULL, NULL, NULL, '2019-12-10 05:11:37', NULL),
(14, 'konda', 'kondashivaradhan07@gmail.com', 'a097de8fc2910066eb35208401a5bde9', '7661800250', NULL, NULL, NULL, NULL, '2019-12-10 08:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'SS400', 2, 'Slowly spreading its cards this year, the Ace of Bajaj Autos is still not on the table. With the expectations like Pulsar 400SS or Pulsar SS400, the Ace (400SS) would be the commander of the Pulsar series. It would be a benchmark for the other motorcycle manufacturers as the competition for more performance oriented bikes will definitely rise this year.', 500, 'Petrol', 3453, 2, 'ss400.jpg', 'knowledges_base_bg.jpg', 'bajaj-pulsar-ss400.jpg', 'Bajaj-Pulsar-RS400-spied-450x244.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2019-12-10 19:33:56'),
(2, 'RS200', 2, 'The Pulsar is by far the most successful brand Bajaj has managed to create in the recent past.It is also fast, no doubt. But, its true highlight is its easy to ride nature. ', 550, 'Petrol', 2015, 2, 'bike_755x430.png', 'rs2002.jpg', 'rs2003.jpg', 'rs2004.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2019-12-10 19:34:00'),
(3, 'R1', 4, ' The Suzuki GSX-R1000 is a sport bike from Suzuki GSX-R series of motorcycles.It was introduced in 2001 to replace the GSX-R1100 and is powered by a liquid-cooled 999 cc (61.0 cu in) inline four-cylinder, four-stroke engine.', 560, 'Petrol', 2012, 2, 'featured-img-300.jpg', 'suzikir1.jpg', 'suzikir2.jpg', 'suzikir1.png', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2019-12-10 19:37:15'),
(4, 'Duke390', 1, ' The KTM 390 DUKE breathes life into values that have made motorcycling so amazing for decades. It combines maximum riding pleasure with optimum user value and comes out on top wherever nimble handling counts. Light as a feather, powerful and packed with state-of-the-art technology, it guarantees a thrilling ride, whether youre in the urban jungle or a forest of bends. 390 DUKE – nowhere you will find more motorcycle per euro.', 550, 'Petrol', 2012, 2, 'featured-img-3000.jpg', 'duke.jfif', 'duke2.jpg', 'duke3.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2019-12-10 19:41:00'),
(5, 'R1', 5, 'The YZF-R1® features a lightweight and compact crossplane crankshaft, inline-four-cylinder, 998cc high output engine. Featuring titanium fracture-split connecting rods, an offset cylinder block and magnesium covers, the motor delivers extremely high horsepower and a strong pulse of linear torque for outstanding performance, all wrapped in aerodynamic MotoGP®-style bodywork.', 450, 'Petrol', 3453, 2, 'bikes_755x430.png', 'yamahar1.jpg', 'yamahar2.jpg', 'yamahar3.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2019-12-10 19:39:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
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
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
