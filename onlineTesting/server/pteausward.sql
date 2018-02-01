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

 Date: 01/02/2018 17:55:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for readaloud
-- ----------------------------
DROP TABLE IF EXISTS `readaloud`;
CREATE TABLE `readaloud` (
  `audioPath` varchar(200) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `recordingDuration` int(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readaloud
-- ----------------------------
BEGIN;
INSERT INTO `readaloud` VALUES ('1.mp3', 1, 35, 'Yellow is the most optimistic color, yet surprisingly, people lose their tempers most often in yellow rooms and babies cry more in them. The reason may be that yellow is the hardest color on the eye. On the other hand, it speeds metabolism and enhances concentration; think of yellow legal pads and post-it notes.');
INSERT INTO `readaloud` VALUES ('2.mp3', 2, 35, 'dddd');
INSERT INTO `readaloud` VALUES ('3.mp3', 3, 40, '3dddddddddddddddddddd');
COMMIT;

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
BEGIN;
INSERT INTO `readfillblank` VALUES (1, 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\n', '$include|chronic|degradation|inconsistent$ ');
INSERT INTO `readfillblank` VALUES (2, 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$include|chronic|degradation|inconsistent$ ');
COMMIT;

-- ----------------------------
-- Table structure for readreorderparagraph
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraph`;
CREATE TABLE `readreorderparagraph` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `answer` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of readreorderparagraph
-- ----------------------------
BEGIN;
INSERT INTO `readreorderparagraph` VALUES (1, '$5|1|3|2|4$');
INSERT INTO `readreorderparagraph` VALUES (2, '$5|2|3|1|4$');
COMMIT;

-- ----------------------------
-- Table structure for readreorderparagraphquestions
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraphquestions`;
CREATE TABLE `readreorderparagraphquestions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `questionfk` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questionID` (`questionfk`),
  CONSTRAINT `questionID` FOREIGN KEY (`questionfk`) REFERENCES `readreorderparagraph` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of readreorderparagraphquestions
-- ----------------------------
BEGIN;
INSERT INTO `readreorderparagraphquestions` VALUES (1, 'Liberal is conservative in a moderate Midwestern kind of way which is changing fast due to big National Beef Packing plant which relies on Hispanic migrants and thus four-fifths of the children in Liberal\'s public school system are hispanic', 1);
INSERT INTO `readreorderparagraphquestions` VALUES (2, 'Liberal\'s mayor, Joe Denoyer, who was raised in A democratic family near Chicago and moved to Liberal in search of work', 1);
INSERT INTO `readreorderparagraphquestions` VALUES (3, 'This should make the town receptive to Democrats, but Mr Trump easily won the country of which it forms part', 1);
INSERT INTO `readreorderparagraphquestions` VALUES (4, 'Mr Denoyer voted for Mr Trump by being impressed by his promise, though he thinks it unlikely that the present will keep his promises.', 1);
INSERT INTO `readreorderparagraphquestions` VALUES (5, 'The town of Liberal is said to have been named for an early settler famous among travellers for being free with drinking water.', 1);
INSERT INTO `readreorderparagraphquestions` VALUES (6, '6', 2);
INSERT INTO `readreorderparagraphquestions` VALUES (7, '7', 2);
INSERT INTO `readreorderparagraphquestions` VALUES (8, '8', 2);
INSERT INTO `readreorderparagraphquestions` VALUES (9, '9', 2);
INSERT INTO `readreorderparagraphquestions` VALUES (10, '10', 2);
INSERT INTO `readreorderparagraphquestions` VALUES (11, '11', 2);
COMMIT;

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

SET FOREIGN_KEY_CHECKS = 1;
