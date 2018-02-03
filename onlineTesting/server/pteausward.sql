/*
 Navicat MySQL Data Transfer

 Source Server         : pteAusward
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : pteausward

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 03/02/2018 18:13:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for listenfillblank
-- ----------------------------
DROP TABLE IF EXISTS `listenfillblank`;
CREATE TABLE `listenfillblank`  (
  `id` int(20) NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audioPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of listenfillblank
-- ----------------------------
INSERT INTO `listenfillblank` VALUES (1, 'Some ecotourism offers visitors close #404\r\n with different species. But new research suggests that these activities may not be so great for the animals. Researchers tagged stingrays in Stingray City in the Cayman Islands to #404  \r\n their movements and behavior. Compared to stingrays outside of the tourism area, those in Stingray City switched their activity #404\r\n from night to day, when tourists handed out food, and mated year round instead of seasonally. The stingrays also had more bite #404\r\n , which suggests increased aggression towards one another. The study is in the journal PLoS ONE. Past research has found increased #404 \r\n and more intra- and inter- species aggression among animals that have been fed by humans. Interactive tourism is a growing business. But researchers say that more study is needed to #404 \r\n the health and safety of humans and animals alike. Ecotourism may be good for a given species, as humans become engaged in its #404 \r\n . But for the individual members of that species tasked with #404 \r\n with people, it may not be a walk in the park.', '$encounters|monitor|patterns|marks|stress|ensure|survival|dealing$', '1.mp3');
INSERT INTO `listenfillblank` VALUES (2, 'Some ecotourism offers visitors close #404\r\n with different species. But new research suggests that these activities may not be so great for the animals. Researchers tagged stingrays in Stingray City in the Cayman Islands to #404  \r\n their movements and behavior. Compared to stingrays outside of the tourism area, those in Stingray City switched their activity #404\r\n from night to day, when tourists handed out food, and mated year round instead of seasonally. The stingrays also had more bite #404\r\n , which suggests increased aggression towards one another. The study is in the journal PLoS ONE. Past research has found increased #404 \r\n and more intra- and inter- species aggression among animals that have been fed by humans. Interactive tourism is a growing business. But researchers say that more study is needed to #404 \r\n the health and safety of humans and animals alike. Ecotourism may be good for a given species, as humans become engaged in its #404 \r\n . But for the individual members of that species tasked with #404 \r\n with people, it may not be a walk in the park.', '$encounters|monitor|patterns|marks|stress|ensure|survival|dealing$', '2.mp3');

-- ----------------------------
-- Table structure for readaloud
-- ----------------------------
DROP TABLE IF EXISTS `readaloud`;
CREATE TABLE `readaloud`  (
  `audioPathMale` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `recordingDuration` int(50) NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audioPathFemale` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readaloud
-- ----------------------------
INSERT INTO `readaloud` VALUES ('1.mp3', 1, 35, 'Yellow is the most optimistic color, yet surprisingly, people lose their tempers most often in yellow rooms and babies cry more in them. The reason may be that yellow is the hardest color on the eye. On the other hand, it speeds metabolism and enhances concentration; think of yellow legal pads and post-it notes.', '1.mp3');
INSERT INTO `readaloud` VALUES ('2.mp3', 2, 35, 'dddd', '2.mp3');
INSERT INTO `readaloud` VALUES ('3.mp3', 3, 40, '3dddddddddddddddddddd', '3.mp3');

-- ----------------------------
-- Table structure for readfillblank
-- ----------------------------
DROP TABLE IF EXISTS `readfillblank`;
CREATE TABLE `readfillblank`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `answer` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readfillblank
-- ----------------------------
INSERT INTO `readfillblank` VALUES (1, 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\n', '$include|chronic|degradation|inconsistent$ ');
INSERT INTO `readfillblank` VALUES (2, 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$include|chronic|degradation|inconsistent$ ');

-- ----------------------------
-- Table structure for readreorderparagraph
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraph`;
CREATE TABLE `readreorderparagraph`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readreorderparagraph
-- ----------------------------
INSERT INTO `readreorderparagraph` VALUES (1, '$5|1|3|2|4$');
INSERT INTO `readreorderparagraph` VALUES (2, '$5|2|3|1|4$');

-- ----------------------------
-- Table structure for readreorderparagraphquestions
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraphquestions`;
CREATE TABLE `readreorderparagraphquestions`  (
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `questionfk` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`questionfk`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readreorderparagraphquestions
-- ----------------------------
INSERT INTO `readreorderparagraphquestions` VALUES ('Liberal is conservative in a moderate Midwestern kind of way which is changing fast due to big National Beef Packing plant which relies on Hispanic migrants and thus four-fifths of the children in Liberal\'s public school system are hispanic', 1, 1);
INSERT INTO `readreorderparagraphquestions` VALUES ('Liberal\'s mayor, Joe Denoyer, who was raised in A democratic family near Chicago and moved to Liberal in search of work', 1, 2);
INSERT INTO `readreorderparagraphquestions` VALUES ('This should make the town receptive to Democrats, but Mr Trump easily won the country of which it forms part', 1, 3);
INSERT INTO `readreorderparagraphquestions` VALUES ('Mr Denoyer voted for Mr Trump by being impressed by his promise, though he thinks it unlikely that the present will keep his promises.', 1, 4);
INSERT INTO `readreorderparagraphquestions` VALUES ('The town of Liberal is said to have been named for an early settler famous among travellers for being free with drinking water.', 1, 5);
INSERT INTO `readreorderparagraphquestions` VALUES ('dasdasd', 2, 1);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`session_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
