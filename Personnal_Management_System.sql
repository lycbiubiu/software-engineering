-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.30 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 personnel_management_system 的数据库结构
CREATE DATABASE IF NOT EXISTS `personnel_management_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `personnel_management_system`;

-- 导出  表 personnel_management_system.account_password 结构
CREATE TABLE IF NOT EXISTS `account_password` (
  `eid` char(10) COLLATE utf8_bin NOT NULL COMMENT '员工编号',
  `password` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`eid`),
  KEY `FK_employee_basic_info` (`eid`),
  CONSTRAINT `FK_employee_basic_info` FOREIGN KEY (`eid`) REFERENCES `employee_basic_information` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户账号密码表(用户名,密码,邮箱,电话号码,员工编号,账号密码标识)';

-- 正在导出表  personnel_management_system.account_password 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `account_password` DISABLE KEYS */;
REPLACE INTO `account_password` (`eid`, `password`, `email`, `phonenumber`) VALUES
	('12345678', '8888', NULL, NULL);
/*!40000 ALTER TABLE `account_password` ENABLE KEYS */;

-- 导出  表 personnel_management_system.employee_basic_information 结构
CREATE TABLE IF NOT EXISTS `employee_basic_information` (
  `eid` char(10) COLLATE utf8_bin NOT NULL COMMENT '员工编号',
  `branch` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '单位（东直门、莲花池、天桥、北郊、内勤、保修工、其他）',
  `birthdate` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '出生日期',
  `nation` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '民族（汉、满、回、朝、其他）',
  `name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '性别（男，女）',
  `standardOfCulture` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '文化程度（小学、初中、高中、大专、大学、研究生、其他）',
  `politicalStatus` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '政治面貌（党员、团员、群众）',
  `workingHours` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '工作时间',
  `contractTerm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '合同期限',
  `typeOfWork` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '工种（司机、售票、保养工、高度、核算、窗口票、加油、护工、锅炉工、炊事员、保育员、茶炉、其他人员、干部）',
  `drivingLicense` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '驾驶执照（有,无）',
  `skillWage` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '技能工资',
  `fileWage` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '档案工资',
  `jobWage` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '岗位工资',
  `totalWage` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '累计工资',
  `homeAddress` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '家庭住址',
  `postalcode` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  personnel_management_system.employee_basic_information 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `employee_basic_information` DISABLE KEYS */;
REPLACE INTO `employee_basic_information` (`eid`, `branch`, `birthdate`, `nation`, `name`, `sex`, `standardOfCulture`, `politicalStatus`, `workingHours`, `contractTerm`, `typeOfWork`, `drivingLicense`, `skillWage`, `fileWage`, `jobWage`, `totalWage`, `homeAddress`, `postalcode`) VALUES
	('001', '天桥', '', '', '李四', '女', '本科', '22', '5', '', '售票', '无', '', '', '3500', '', '', ''),
	('002', '天桥', '', '', '王五', '男', '', '', '3', '', '司机', '', '', '', '', '', '', ''),
	('003', '东直门', '', '汉', '孙丽', '女', '本科以上', '党员', '6', '', '干部', '有', '', '', '', '9000', '', ''),
	('004', '莲花池', '', '', '赵钱', '男', '高中', '', '1', '', '保养工', '有', '', '', '', '', '', ''),
	('12345678', '东直门', '', '', '张三', '男', '', '', '3', '', '干部', '有', '', '', '', '9999999', '', '');
/*!40000 ALTER TABLE `employee_basic_information` ENABLE KEYS */;

-- 导出  表 personnel_management_system.jobtransfer 结构
CREATE TABLE IF NOT EXISTS `jobtransfer` (
  `tid` char(10) NOT NULL,
  `eid` char(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '员工编号',
  `originUnit` varchar(20) NOT NULL,
  `newUnit` varchar(20) NOT NULL,
  `transferDate` date DEFAULT NULL,
  PRIMARY KEY (`tid`,`eid`),
  KEY `FK_empinfo_jobtrans` (`eid`),
  CONSTRAINT `FK_empinfo_jobtrans` FOREIGN KEY (`eid`) REFERENCES `employee_basic_information` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  personnel_management_system.jobtransfer 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `jobtransfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobtransfer` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
