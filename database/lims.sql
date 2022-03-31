-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 7:55 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lims`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` varchar(50) NOT NULL,
  `agent_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agent_password`, `name`, `branch`, `phone`) VALUES
('111', '23456', 'Prasanth', 'Mirjapur', '9997654562'),
('222', '1610', 'Shivam', 'Delhi', '8887776543'),
('333', '12345', 'RajaSravanKumar', 'Rourkela', '9701822559');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(200) NOT NULL,
  `client_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `policy_id` varchar(50) NOT NULL,
  `agent_id` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_password`, `name`, `sex`, `birth_date`, `marital_status`, `nid`, `phone`, `address`, `policy_id`, `agent_id`, `image`) VALUES
('1511986023', '123', 'John Green', 'Male', '11-05-1985', 'Married', '0121567952', '013548743688', 'Texas', '2', '111', 'john green'),
('1511986129', '123', 'Amir', 'Male', '10-09-1970', 'Married', '46814518451', '54189465100', 'Delhi', '1', '111', 'GOT505_102414_HS_DSC_1022-920x584.jpeg'),
('1511986256', '123', 'Ganesh', 'Male', '05-09-1987', 'Divorced', '5216541656', '0169780980', 'Nagpur', '3', '111', 'Gareth-Walker.jpg'),
('1511986409', '123', 'Megan', 'Female', '15-09-1978', 'Married', '156498408704', '074740548974', 'New York', '1', '111', 'download (1).jpg'),
('1511986641', '123', 'Salman bhai', 'Male', '14-02-1992', 'Single', '49847561198465', '987451315', 'Delhi', '2', '111', 'salman.jpg'),
('1511986754', '123', 'ashik', 'Male', '03-10-1996', 'Single', '9875423140', '01658794121', 'Chittagong', '2', '222', '16251977_1174337339348846_5098922748844342271_o.jpg'),
('1511986912', '123', 'jhansi', 'Female', '19-08-1990', 'Married', '48540406540', '8798451321320', 'Dehrdoon', '3', '222', 'Actress-Tisha.jpg'),
('1511987011', '123', 'Sadik', 'Male', '05-03-1987', 'Married', '8725129982', '01515644470', 'Hamirpur', '3', '222', '23130701_1680702031993274_5846937852496800142_n.jpg'),
('1511987599', '123', 'Aamir Khan', 'Male', '14-03-1965', 'Married', '6526648857', '01833036524', 'Bombay', '2', '222', 'aamir-khan_640x480_41479373132.jpg'),
('1511987920', '123', 'Wilson', 'Male', '12-03-1992', 'Married', '16545153165', '012589746', 'Chicago', '2', '222', '006.jpg'),
('1511987932', '123', 'Rashmika', 'Female', '07-12-1991', 'Single', '9188858735', '01762274542', 'Hyderabad', '1', '333', '_5e3c32f4-dfd0-11e6-8bc2-389d9c78b3df.jpg'),
('1511988146', '123', 'Cristiano Ronaldo', 'Male', '25-03-1985', 'Married', '465318546431', '9885151321', 'Madrid', '3', '333', 'Portugals-forward-Cristiano-Ronaldo-rea.jpg'),
('1511988147', '123', 'Rajesh', 'Male', '18-08-1993', 'Married', '9312238845', '01562664475', 'Bangalore', '2', '333', '14054202_1351389611612839_1015782923555011426_n.jpg'),
('1511988275', '123', 'Lionel Messi', 'Male', '12-09-1987', 'Married', '49843516825185', '0125886451', 'Barcelona', '3', '333', '416x416.jpg'),
('1511988421', '123', 'akbar', 'Female', '09-11-1994', 'Single', '9422294485', '01530220045', 'Patna', '3', '333', 'kabir-safa-image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE `nominee` (
  `nominee_id` varchar(200) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(50) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominee`
--

INSERT INTO `nominee` (`nominee_id`, `client_id`, `name`, `sex`, `birth_date`, `nid`, `relationship`, `priority`, `phone`) VALUES
('1511986023-414821017', '1511986023', 'Martha Green', 'Female', '15-08-1990', '321684798321', 'Wife', '1st', '01502816848'),
('1511986129-562418685', '1511986129', 'krish', 'Male', '10-08-2000', '84894089405', 'Son', '1st', '0152487632'),
('1511986256-1001633290', '1511986256', 'somesh', 'Male', '12-07-2001', '548405872141', 'Son', '1st', '0187455214854'),
('1511986409-1583368932', '1511986409', 'angelina', 'Female', '26-10-1996', '408705185494', 'Daughter', '1st', '41854548408'),
('1511986570-225462542', '1511986409', 'Bill watson', 'Male', '14-11-1970', '19648151613222', 'Husband', '2nd', '6546513258451'),
('1511986641-1504036491', '1511986641', 'Samantha', 'Female', '05-06-1975', '544414456498', 'Mother', '1st', '541984516518'),
('1511986754-53418428', '1511986754', 'ved prakash', 'Male', '12-09-1992', '10254845616585', 'Brother', '1st', '025884596844'),
('1511986912-1024403548', '1511986912', 'pramod', 'Male', '10-09-1989', '564156122225', 'Husband', '1st', '5841561651465'),
('1511987011-183007296', '1511987011', 'naresh', 'Male', '15-04-1989', '8929122249', 'Brother', '1st', '01744237435'),
('1511987599-513216278', '1511987599', 'radhika', 'Female', '07-11-1973', '73777477756', 'Wife', '1st', '01239924475'),
('1511987920-2105200552', '1511987920', 'aishwarya', 'Female', '16-01-1968', '5641515611', 'Mother', '1st', '4984468151320'),
('1511987932-1318641913', '1511987932', 'Aadi', 'Male', '19-09-1989', '8922247586', 'Husband', '1st', '01732663337'),
('1511988146-114572519', '1511988146', 'johnsena', 'Male', '12-09-2005', '4846513518', 'Son', '1st', '65498153189'),
('1511988147-1556364815', '1511988147', 'the rock', 'Male', '16-12-1971', '713855677487', 'Father', '1st', '01883774472'),
('1511988275-674553550', '1511988275', 'Tiago Messi', 'Male', '25-07-2008', '465415184651', 'Son', '1st', '6489465164189');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `recipt_no` varchar(20) NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `due` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL,
  `agent_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`recipt_no`, `client_id`, `month`, `amount`, `due`, `fine`, `agent_id`) VALUES
('1511987179_452089622', '1511986023', 'May ', '6500', '0', '0', '555'),
('1511987211_190085256', '1511986023', 'June', '6500', '0', '0', '555'),
('1511987230_390658416', '1511986023', 'July', '6000', '0', '500', '555'),
('1511987272_936407539', '1511986129', 'January', '3000', '0', '0', '555'),
('1511987294_157536829', '1511986129', 'February', '3000', '0', '0', '555'),
('1511987356_228689839', '1511986256', 'September', '13000', '0', '0', '555'),
('1511987375_208594029', '1511986256', 'October', '13000', '0', '0', '555'),
('1511987407_616696691', '1511986409', 'November', '3000', '0', '0', '555'),
('1511987433_196711163', '1511986409', 'December', '3000', '0', '0', '555'),
('1511987516_243604186', '1511986641', 'March', '6500', '0', '0', '555'),
('1511987592_140845877', '1511987011', 'April', '13000', '0', '0', '555'),
('1511987614_130742935', '1511987011', 'July', '13000', '0', '0', '555'),
('1511987665_189868060', '1511986912', 'August', '13000', '0', '0', '555'),
('1511987683_122084269', '1511986912', 'September', '10000', '0', '3000', '555'),
('1511987717_198373690', '1511986912', 'October', '13000', '0', '0', '555'),
('1511987778_123379304', '1511986256', 'June', '13000', '0', '0', '555'),
('1511988103_361528786', '1511987920', 'May ', '6500', '0', '0', '111'),
('1511988119_162172016', '1511987920', 'June', '6500', '0', '0', '111'),
('1511988132_734204095', '1511987920', 'July', '5000', '0', '1500', '111'),
('1511988410_340758810', '1511988146', 'May ', '13000', '0', '0', '111'),
('1511988425_663527012', '1511988146', 'June', '9000', '0', '4000', '111'),
('1511988449_500783305', '1511988146', 'July', '13000', '0', '0', '111'),
('1511988497_126275506', '1511988275', 'January', '13000', '0', '0', '111'),
('1511988535_990905192', '1511988275', 'February', '13000', '0', '0', '111'),
('1511988556_123908469', '1511988275', 'March', '10000', '0', '3000', '111'),
('1511989810_798994343', '1511987011', 'January', '13000', '0', '0', '222'),
('1511989871_127982362', '1511987011', 'February', '12000', '0', '1000', '222'),
('1511989898_333265655', '1511987011', 'March', '13500', '0', '0', '222'),
('1511989998_117407536', '1511987599', 'April', '6500', '0', '0', '222'),
('1511990035_160826062', '1511987599', 'May', '6500', '0', '0', '222'),
('1511990048_422427668', '1511987599', 'June', '6200', '0', '300', '222'),
('1511990085_87306440', '1511987932', 'February', '3000', '0', '0', '222'),
('1511990125_551933465', '1511987932', 'March', '3000', '0', '0', '222'),
('1511990134_120884202', '1511987932', 'April', '3000', '0', '0', '222'),
('1511990144_176620861', '1511987932', 'May', '2700', '0', '300', '222'),
('1511990187_187405393', '1511988147', 'May', '6500', '0', '0', '222'),
('1511990199_959205473', '1511988147', 'June', '6200', '0', '300', '222'),
('1511990208_118604619', '1511988147', 'July', '6800', '0', '0', '222'),
('1511990256_119833492', '1511988421', 'June', '13000', '0', '0', '222'),
('1511990272_28498432', '1511988421', 'July', '11000', '0', '2000', '222');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `health_status` varchar(50) NOT NULL,
  `system` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `coverage` varchar(50) NOT NULL,
  `age_limit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `term`, `health_status`, `system`, `payment_method`, `coverage`, `age_limit`) VALUES
('1', '10 year', '500000', '3000', 'Cash/Check', '100%', '50'),
('2', '10 Years', '1000000', '6500', 'Cash/Check', '100%', '50'),
('3', '10 Years', '2000000', '13000', 'Cash/Check', '100%', '50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `agent_id` (`agent_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
  ADD PRIMARY KEY (`nominee_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`recipt_no`),
  ADD UNIQUE KEY `recipt_no` (`recipt_no`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`),
  ADD UNIQUE KEY `policy_id` (`policy_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
