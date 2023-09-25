-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-09-25 05:39:46
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
-- 資料庫： `minidb0925`
--

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `CustName` varchar(31) DEFAULT NULL COMMENT '客戶寶號',
  `CustId` varchar(9) NOT NULL COMMENT '客戶代號',
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
  `DeptId` varchar(9) NOT NULL COMMENT '部門代號',
  `ManagerName` varchar(9) DEFAULT NULL COMMENT '主管姓名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `employee`
--

CREATE TABLE `employee` (
  `EmpId` varchar(5) NOT NULL,
  `EmpName` varchar(8) DEFAULT NULL COMMENT '姓名',
  `JobTitle` varchar(11) DEFAULT NULL COMMENT '現任職稱',
  `DeptId` varchar(4) DEFAULT NULL COMMENT '部門代號',
  `City` varchar(7) DEFAULT NULL COMMENT '縣市',
  `Address` varchar(32) DEFAULT NULL COMMENT '地址',
  `Phone` varchar(16) DEFAULT NULL COMMENT '電話',
  `ZipCode` varchar(3) DEFAULT NULL COMMENT '郵遞區號',
  `MonthSalary` double DEFAULT NULL COMMENT '月薪資',
  `AnnualLeave` double DEFAULT NULL COMMENT '年假天數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `exp`
--

CREATE TABLE `exp` (
  `EmpId` varchar(5) NOT NULL,
  `OutsideJob1` varchar(13) DEFAULT NULL COMMENT '在外任職一',
  `OutsideJob2` varchar(16) DEFAULT NULL COMMENT '在外任職二',
  `CompJob1` varchar(13) DEFAULT NULL COMMENT '公司任職1',
  `CompJob2` varchar(13) DEFAULT NULL COMMENT '公司任職二'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `inv`
--

CREATE TABLE `inv` (
  `ProdId` varchar(16) NOT NULL COMMENT '產品代號',
  `Stock` double DEFAULT NULL COMMENT '現存量',
  `SafeStock` double DEFAULT NULL COMMENT '安全存量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `leav`
--

CREATE TABLE `leav` (
  `EmpID` varchar(5) NOT NULL,
  `Vacation` varchar(9) DEFAULT NULL COMMENT '假別',
  `Year` double DEFAULT NULL COMMENT '年',
  `Month` double DEFAULT NULL COMMENT '月',
  `Days` double DEFAULT NULL COMMENT '天數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `orderdetail`
--

CREATE TABLE `orderdetail` (
  `seq` int(11) NOT NULL COMMENT '序號',
  `OrderId` varchar(8) NOT NULL COMMENT '訂單編號',
  `ProdId` varchar(14) NOT NULL COMMENT '產品代號',
  `Qty` int(11) NOT NULL COMMENT '數量',
  `Discount` float NOT NULL COMMENT '折扣',
  `post` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `overtime`
--

CREATE TABLE `overtime` (
  `EmpId` varchar(5) NOT NULL COMMENT '員工代號',
  `OverDate` date NOT NULL COMMENT '加班日期',
  `OverHours` double DEFAULT NULL COMMENT '加班時數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `person`
--

CREATE TABLE `person` (
  `EmpId` varchar(5) NOT NULL,
  `JobTitle` varchar(11) DEFAULT NULL COMMENT '職稱',
  `Birth` date DEFAULT NULL COMMENT '年齡',
  `Gender` varchar(3) DEFAULT NULL COMMENT '性別',
  `BirthPlace` varchar(7) DEFAULT NULL COMMENT '出生地',
  `NativePlace` varchar(7) DEFAULT NULL COMMENT '籍貫',
  `WorkYear` double DEFAULT NULL COMMENT '到職年',
  `Expertise1` varchar(13) DEFAULT NULL COMMENT '專長一',
  `Expertise2` varchar(13) DEFAULT NULL COMMENT '專長二',
  `ForeignLang1` varchar(9) DEFAULT NULL COMMENT '第一外語',
  `ForeignLang2` varchar(9) DEFAULT NULL COMMENT '第二外語'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `ProdName` varchar(31) DEFAULT NULL COMMENT '產品名稱',
  `ProdID` varchar(14) NOT NULL COMMENT '產品代號',
  `UnitPrice` double DEFAULT NULL COMMENT '單價',
  `Cost` double DEFAULT NULL COMMENT '成本'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `purchasedetail`
--

CREATE TABLE `purchasedetail` (
  `seq` int(11) NOT NULL,
  `PurchaseId` varchar(8) NOT NULL,
  `ProdId` varchar(10) NOT NULL,
  `Qty` int(11) NOT NULL,
  `PurchasePrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `seq` int(11) NOT NULL,
  `PurchaseId` varchar(8) NOT NULL,
  `EmpId` varchar(8) NOT NULL,
  `SupplierId` varchar(8) NOT NULL,
  `PurchaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `quota`
--

CREATE TABLE `quota` (
  `EmpId` varchar(5) NOT NULL,
  `Quota2016` double DEFAULT NULL COMMENT '業績目標2016',
  `Quota2017` double DEFAULT NULL COMMENT '業績目標2017',
  `Quota2018` double DEFAULT NULL COMMENT '業績目標2018'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `records`
--

CREATE TABLE `records` (
  `ClassNo` varchar(9) DEFAULT NULL COMMENT '班級座號',
  `YMD` date DEFAULT NULL COMMENT '年月日',
  `PublicLeave` double DEFAULT NULL COMMENT '公假',
  `Leave` double DEFAULT NULL COMMENT '事假',
  `SickLeave` double DEFAULT NULL COMMENT '病假',
  `Absent` double DEFAULT NULL COMMENT '曠課'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `salesorder`
--

CREATE TABLE `salesorder` (
  `seq` int(11) NOT NULL COMMENT '序號',
  `OrderId` varchar(8) NOT NULL COMMENT '訂單編號',
  `EmpId` varchar(8) NOT NULL COMMENT '員工代號',
  `CustId` varchar(8) NOT NULL COMMENT '客戶代號',
  `OrderDate` date NOT NULL COMMENT '訂單日期',
  `Descript` varchar(100) NOT NULL COMMENT '備註'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `ClassNo` varchar(9) NOT NULL COMMENT '班級座號',
  `StName` varchar(7) DEFAULT NULL COMMENT '姓名',
  `Birthday` date DEFAULT NULL COMMENT '出生年月日',
  `IDCard` varchar(11) DEFAULT NULL COMMENT '身分証號碼',
  `Address` varchar(33) DEFAULT NULL COMMENT '住址',
  `Parent` varchar(9) DEFAULT NULL COMMENT '家長',
  `Phone` varchar(15) DEFAULT NULL COMMENT '電話',
  `Department` varchar(5) DEFAULT NULL COMMENT '科別'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `supplier`
--

CREATE TABLE `supplier` (
  `SupplierName` varchar(31) DEFAULT NULL COMMENT '供應商寶號',
  `SupplierId` varchar(9) NOT NULL COMMENT '供應商代號',
  `City` varchar(9) DEFAULT NULL COMMENT '縣市',
  `Address` varchar(39) DEFAULT NULL COMMENT '地址',
  `ZipCode` varchar(4) DEFAULT NULL COMMENT '郵遞區號',
  `Contact` varchar(9) DEFAULT NULL COMMENT '聯絡人',
  `JobTitle` varchar(15) DEFAULT NULL COMMENT '職稱',
  `Phone` varchar(12) DEFAULT NULL COMMENT '電話'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustId`),
  ADD KEY `CustId` (`CustId`);

--
-- 資料表索引 `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`DeptId`),
  ADD KEY `DeptId` (`DeptId`),
  ADD KEY `ManagerName` (`ManagerName`);

--
-- 資料表索引 `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpId`),
  ADD KEY `DeptId` (`DeptId`),
  ADD KEY `EmpId` (`EmpId`),
  ADD KEY `EmpName` (`EmpName`);

--
-- 資料表索引 `exp`
--
ALTER TABLE `exp`
  ADD KEY `EmpId` (`EmpId`);

--
-- 資料表索引 `inv`
--
ALTER TABLE `inv`
  ADD PRIMARY KEY (`ProdId`),
  ADD KEY `ProdId` (`ProdId`);

--
-- 資料表索引 `leav`
--
ALTER TABLE `leav`
  ADD KEY `EmpID` (`EmpID`);

--
-- 資料表索引 `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`seq`),
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `ProdId` (`ProdId`);

--
-- 資料表索引 `overtime`
--
ALTER TABLE `overtime`
  ADD KEY `EmpId` (`EmpId`);

--
-- 資料表索引 `person`
--
ALTER TABLE `person`
  ADD KEY `EmpId` (`EmpId`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProdID`),
  ADD KEY `ProdID` (`ProdID`),
  ADD KEY `ProdID_2` (`ProdID`);

--
-- 資料表索引 `purchasedetail`
--
ALTER TABLE `purchasedetail`
  ADD PRIMARY KEY (`seq`),
  ADD KEY `ProdId` (`ProdId`),
  ADD KEY `PurchaseId` (`PurchaseId`);

--
-- 資料表索引 `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`PurchaseId`),
  ADD KEY `PurchaseId` (`PurchaseId`),
  ADD KEY `SupplierId` (`SupplierId`),
  ADD KEY `EmpId` (`EmpId`);

--
-- 資料表索引 `quota`
--
ALTER TABLE `quota`
  ADD PRIMARY KEY (`EmpId`),
  ADD KEY `EmpId` (`EmpId`);

--
-- 資料表索引 `records`
--
ALTER TABLE `records`
  ADD KEY `ClassNo` (`ClassNo`);

--
-- 資料表索引 `salesorder`
--
ALTER TABLE `salesorder`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `EmpId` (`EmpId`),
  ADD KEY `CustId` (`CustId`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ClassNo`),
  ADD KEY `ClassNo` (`ClassNo`);

--
-- 資料表索引 `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierId`),
  ADD KEY `SupplierId` (`SupplierId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
