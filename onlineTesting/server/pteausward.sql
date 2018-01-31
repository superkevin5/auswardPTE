/*
Navicat MySQL Data Transfer

Source Server         : pteAusward
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : pteausward

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-01-30 00:14:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for readaloud
-- ----------------------------
DROP TABLE IF EXISTS `readaloud`;
CREATE TABLE `readaloud` (
  `audioPath` varchar(200) DEFAULT NULL,
  `id` int(100) NOT NULL,
  `recordingDuration` int(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readaloud
-- ----------------------------
INSERT INTO `readaloud` VALUES ('1.mp3', '1', '35', 'Yellow is the most optimistic color, yet surprisingly, people lose their tempers most often in yellow rooms and babies cry more in them. The reason may be that yellow is the hardest color on the eye. On the other hand, it speeds metabolism and enhances concentration; think of yellow legal pads and post-it notes.');
INSERT INTO `readaloud` VALUES ('2.mp3', '2', '35', 'dddd');
INSERT INTO `readaloud` VALUES ('3.mp3', '3', '40', '3dddddddddddddddddddd');

-- ----------------------------
-- Table structure for readfillblank
-- ----------------------------
DROP TABLE IF EXISTS `readfillblank`;
CREATE TABLE `readfillblank` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `answer` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of readfillblank
-- ----------------------------
INSERT INTO `readfillblank` VALUES ('1', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$include|chronic|degradation|inconsistent$ ');
INSERT INTO `readfillblank` VALUES ('2', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$include|chronic|degradation|inconsistent$ ');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
