/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : hotelmanagersystem

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-08-01 15:39:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bill`
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(30) NOT NULL,
  `roomid` varchar(30) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `vipid` varchar(30) DEFAULT NULL,
  `goodtype` varchar(30) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for `goodsinfo`
-- ----------------------------
DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodid` varchar(50) NOT NULL,
  `goodname` varchar(50) NOT NULL,
  `goodtype` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goodid` (`goodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodtype` varchar(50) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goodtype` (`goodtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------

-- ----------------------------
-- Table structure for `guestroom`
-- ----------------------------
DROP TABLE IF EXISTS `guestroom`;
CREATE TABLE `guestroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `roomtype` varchar(20) NOT NULL,
  `storey` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestroom
-- ----------------------------

-- ----------------------------
-- Table structure for `guest_cut`
-- ----------------------------
DROP TABLE IF EXISTS `guest_cut`;
CREATE TABLE `guest_cut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(20) NOT NULL,
  `typename` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guest_cut
-- ----------------------------

-- ----------------------------
-- Table structure for `operation`
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `optype` varchar(30) NOT NULL,
  `orderid` varchar(30) NOT NULL,
  `notetype` varchar(30) NOT NULL,
  `noteline` varchar(30) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation
-- ----------------------------

-- ----------------------------
-- Table structure for `opretionid`
-- ----------------------------
DROP TABLE IF EXISTS `opretionid`;
CREATE TABLE `opretionid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opretionid
-- ----------------------------

-- ----------------------------
-- Table structure for `ordernote`
-- ----------------------------
DROP TABLE IF EXISTS `ordernote`;
CREATE TABLE `ordernote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(30) NOT NULL,
  `roomid` varchar(30) NOT NULL,
  `roomtype` varchar(30) NOT NULL,
  `orderstate` varchar(30) NOT NULL,
  `optype` varchar(30) NOT NULL,
  `guest` varchar(30) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `vipid` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `time` date NOT NULL,
  `newstate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordernote
-- ----------------------------

-- ----------------------------
-- Table structure for `ordernumber`
-- ----------------------------
DROP TABLE IF EXISTS `ordernumber`;
CREATE TABLE `ordernumber` (
  `date` varchar(30) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordernumber
-- ----------------------------

-- ----------------------------
-- Table structure for `storey`
-- ----------------------------
DROP TABLE IF EXISTS `storey`;
CREATE TABLE `storey` (
  `storey` varchar(20) NOT NULL,
  `storeyname` varchar(20) NOT NULL,
  PRIMARY KEY (`storey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storey
-- ----------------------------

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------

-- ----------------------------
-- Table structure for `usertype`
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `typeid` varchar(20) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES ('1', '超级管理员');
INSERT INTO `usertype` VALUES ('2', '经理');
INSERT INTO `usertype` VALUES ('3', '前台');

-- ----------------------------
-- Table structure for `vip`
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` varchar(50) NOT NULL,
  `guest` varchar(50) NOT NULL,
  `idcard` varchar(50) NOT NULL,
  `gender` enum('男','女') NOT NULL,
  `password` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `point` double DEFAULT NULL,
  `grade` enum('普通','VIP') DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vipid` (`vipid`),
  UNIQUE KEY `idcard` (`idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
