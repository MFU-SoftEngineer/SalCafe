/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : salcafe

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-18 21:40:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemId` int NOT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `itemPrice` int DEFAULT NULL,
  `itemInventory` int DEFAULT NULL,
  `itemPhotoURL` varchar(255) DEFAULT NULL,
  `itemDescribe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderId` int NOT NULL,
  `userId` int DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `payment` int DEFAULT NULL COMMENT '1=Cash on delivery;2=pay online(already pay)',
  `address` varchar(255) DEFAULT NULL COMMENT 'null=use user default address',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userPassWord` varchar(255) DEFAULT NULL,
  `userPhoneNumber` int DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userDefaultAddress` varchar(255) DEFAULT NULL,
  `userState` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `userGender` int DEFAULT NULL COMMENT '1=male;0=female',
  `userType` int DEFAULT NULL COMMENT '1=admin;2=manager;3=client',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
