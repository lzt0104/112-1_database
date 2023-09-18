-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-09-11 05:06:51
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `minisdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `CustName` varchar(31) DEFAULT NULL COMMENT '客戶寶號',
  `CustId` varchar(9) DEFAULT NULL COMMENT '客戶代號',
  `City` varchar(9) DEFAULT NULL COMMENT '縣市',
  `Address` varchar(39) DEFAULT NULL COMMENT '地址',
  `ZipCode` varchar(4) DEFAULT NULL COMMENT '郵遞區號',
  `Contact` varchar(9) DEFAULT NULL COMMENT '聯絡人',
  `JobTitle` varchar(15) DEFAULT NULL COMMENT '職稱',
  `Phone` varchar(12) DEFAULT NULL COMMENT '電話',
  `Industry` varchar(9) DEFAULT NULL COMMENT '產業別',
  `TaxNo` varchar(9) DEFAULT NULL COMMENT '統一編號'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `dept`
--

CREATE TABLE `dept` (
  `DeptName` varchar(9) DEFAULT NULL COMMENT '部門名稱',
  `DeptId` varchar(9) DEFAULT NULL COMMENT '部門代號',
  `ManagerName` varchar(9) DEFAULT NULL COMMENT '主管姓名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
