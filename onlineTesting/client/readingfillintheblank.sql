/*
 Navicat MySQL Data Transfer

 Source Server         : pte
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : pteausward

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 29/01/2018 19:14:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for readingfillintheblank
-- ----------------------------
DROP TABLE IF EXISTS `readingfillintheblank`;
CREATE TABLE `readingfillintheblank` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `options` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `answer` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of readingfillintheblank
-- ----------------------------
BEGIN;
INSERT INTO `readingfillintheblank` VALUES (1, 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$consistent,present,involve,include|a,b,c,d|a,b,c,d|a,b,c,d$', '$include|chronic|degradation|inconsistent$ ');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
