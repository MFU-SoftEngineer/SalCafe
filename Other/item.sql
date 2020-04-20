/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : salcafe

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-21 00:36:33
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
  `itemType` int DEFAULT NULL COMMENT '1=beverage;2=snack',
  `itemSales` int DEFAULT '0',
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', 'Espresso', '80', '100', 'img7.jpg', null, '1', '5');
INSERT INTO `item` VALUES ('2', 'Macchiato', '80', '100', 'img7.jpg', null, '1', '4');
INSERT INTO `item` VALUES ('3', 'Americano', '75', '100', 'img7.jpg', null, '1', '3');
INSERT INTO `item` VALUES ('4', 'Caffè Latte', '75', '100', 'img7.jpg', null, '1', '2');
INSERT INTO `item` VALUES ('5', 'Cappuccino', '80', '100', 'img7.jpg', null, '1', '1');
INSERT INTO `item` VALUES ('6', 'Macaron', '120', '50', 'img7.jpg', null, '2', '0');
INSERT INTO `item` VALUES ('7', '\r\nTiramisu', '120', '40', 'img7.jpg', null, '2', '0');
INSERT INTO `item` VALUES ('8', 'Pudding', '100', '60', 'img7.jpg', null, '2', '0');
INSERT INTO `item` VALUES ('9', '\r\nSandwich', '150', '40', 'img7.jpg', null, '2', '0');
INSERT INTO `item` VALUES ('10', 'Pizza', '200', '30', 'img7.jpg', null, '2', '0');
INSERT INTO `item` VALUES ('11', 'Caramel Macchiato', '90', '100', 'img7.jpg', null, '1', '6');
INSERT INTO `item` VALUES ('12', '\r\nFrench fries', '60', '150', 'img7.jpg', null, '2', '0');
