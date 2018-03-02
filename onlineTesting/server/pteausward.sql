/*
 Navicat Premium Data Transfer

 Source Server         : kevin
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost
 Source Database       : pteausward

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : utf-8

 Date: 03/02/2018 15:54:12 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `answershortquestion`
-- ----------------------------
DROP TABLE IF EXISTS `answershortquestion`;
CREATE TABLE `answershortquestion` (
  `id` int(20) NOT NULL,
  `audioPath` varchar(300) DEFAULT NULL,
  `answer` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `answershortquestion`
-- ----------------------------
BEGIN;
INSERT INTO `answershortquestion` VALUES ('1', '1.mp3', 'Decade', 'What do we call a period of 10 years?\n\nWhat do we call a period of 10 years?\n\nWhat do we call a period of 10 years?'), ('2', '2.mp3', 'Decade', 'What do we call a period of 10 years?');
COMMIT;

-- ----------------------------
--  Table structure for `describeimage`
-- ----------------------------
DROP TABLE IF EXISTS `describeimage`;
CREATE TABLE `describeimage` (
  `id` int(20) NOT NULL,
  `imagePath` varchar(40) DEFAULT NULL,
  `audioPath` varchar(40) DEFAULT NULL,
  `descriptionPath` varchar(40) DEFAULT NULL,
  `category` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `describeimage`
-- ----------------------------
BEGIN;
INSERT INTO `describeimage` VALUES ('1', '1.jpg', '1.mp3', '1.txt', '1'), ('2', '2.jpg', '2.mp3', '2.txt', '2'), ('3', '3.jpg', '3.mp3', '3.txt', '3');
COMMIT;

-- ----------------------------
--  Table structure for `highlightincorrectwords`
-- ----------------------------
DROP TABLE IF EXISTS `highlightincorrectwords`;
CREATE TABLE `highlightincorrectwords` (
  `id` int(20) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `audioPath` varchar(50) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `highlightincorrectwords`
-- ----------------------------
BEGIN;
INSERT INTO `highlightincorrectwords` VALUES ('1', 'On a visit to the Tampa area way back when, I enjoyed a stringer #404 reminder that not all little red ants are benign. Introduced fire ants in the U.S.South are just one example of how ants from one region can set up colonies in another. South American so-called \"crazy\" fonts #404 now damage electrical equipment in the U.S. And super-colonies of Argentine ants are all over Europe. To nudge #404 such expansions, scientists, including Scientific American contributor Rob Dunn, tried to track introduced ant species in the Netherlands, New Zealand and the U.S. They found that some 252 ant species have infiltrated the three places, mostly accidentally, for example, in slipping #404 containers full of fruit or wood. The researchers think their official count is low—they estimate the true number at nearly a thousand species. And most can make a permanent home on new shoes #404 , thanks to coming from nearby, academically #404 similar regions. The research appeared in the journal Biology Letters. Expanding their empires may be good news for ants. But maybe not for humans, as I learned all too painfully', '1.mp3', '$stinging|ants|gauge|shipping|shores|climatically$ ');
COMMIT;

-- ----------------------------
--  Table structure for `listenfillblank`
-- ----------------------------
DROP TABLE IF EXISTS `listenfillblank`;
CREATE TABLE `listenfillblank` (
  `id` int(20) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `audioPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `listenfillblank`
-- ----------------------------
BEGIN;
INSERT INTO `listenfillblank` VALUES ('1', 'Some ecotourism offers visitors close #404\r\n with different species. But new research suggests that these activities may not be so great for the animals. Researchers tagged stingrays in Stingray City in the Cayman Islands to #404  \r\n their movements and behavior. Compared to stingrays outside of the tourism area, those in Stingray City switched their activity #404\r\n from night to day, when tourists handed out food, and mated year round instead of seasonally. The stingrays also had more bite #404\r\n , which suggests increased aggression towards one another. The study is in the journal PLoS ONE. Past research has found increased #404 \r\n and more intra- and inter- species aggression among animals that have been fed by humans. Interactive tourism is a growing business. But researchers say that more study is needed to #404 \r\n the health and safety of humans and animals alike. Ecotourism may be good for a given species, as humans become engaged in its #404 \r\n . But for the individual members of that species tasked with #404 \r\n with people, it may not be a walk in the park.', '$encounters|monitor|patterns|marks|stress|ensure|survival|dealing$', '1.mp3'), ('2', 'Some ecotourism offers visitors close #404\r\n with different species. But new research suggests that these activities may not be so great for the animals. Researchers tagged stingrays in Stingray City in the Cayman Islands to #404  \r\n their movements and behavior. Compared to stingrays outside of the tourism area, those in Stingray City switched their activity #404\r\n from night to day, when tourists handed out food, and mated year round instead of seasonally. The stingrays also had more bite #404\r\n , which suggests increased aggression towards one another. The study is in the journal PLoS ONE. Past research has found increased #404 \r\n and more intra- and inter- species aggression among animals that have been fed by humans. Interactive tourism is a growing business. But researchers say that more study is needed to #404 \r\n the health and safety of humans and animals alike. Ecotourism may be good for a given species, as humans become engaged in its #404 \r\n . But for the individual members of that species tasked with #404 \r\n with people, it may not be a walk in the park.', '$encounters|monitor|patterns|marks|stress|ensure|survival|dealing$', '2.mp3');
COMMIT;

-- ----------------------------
--  Table structure for `readaloud`
-- ----------------------------
DROP TABLE IF EXISTS `readaloud`;
CREATE TABLE `readaloud` (
  `audioPathMale` varchar(200) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `recordingDuration` int(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `audioPathFemale` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `readaloud`
-- ----------------------------
BEGIN;
INSERT INTO `readaloud` VALUES ('1.mp3', '1', '35', 'Yellow is the most optimistic color, yet surprisingly, people lose their tempers most often in yellow rooms and babies cry more in them. The reason may be that yellow is the hardest color on the eye. On the other hand, it speeds metabolism and enhances concentration; think of yellow legal pads and post-it notes.', '1.mp3'), ('2.mp3', '2', '35', 'dddd', '2.mp3'), ('3.mp3', '3', '40', '3dddddddddddddddddddd', '3.mp3');
COMMIT;

-- ----------------------------
--  Table structure for `readfillblank`
-- ----------------------------
DROP TABLE IF EXISTS `readfillblank`;
CREATE TABLE `readfillblank` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `answer` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `readfillblank`
-- ----------------------------
BEGIN;
INSERT INTO `readfillblank` VALUES ('1', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\n', '$include|chronic|degradation|inconsistent$ '), ('2', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$include|chronic|degradation|inconsistent$ ');
COMMIT;

-- ----------------------------
--  Table structure for `readreorderparagraph`
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraph`;
CREATE TABLE `readreorderparagraph` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `answer` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `readreorderparagraph`
-- ----------------------------
BEGIN;
INSERT INTO `readreorderparagraph` VALUES ('1', '$5|1|3|2|4$'), ('2', '$5|2|3|1|4$');
COMMIT;

-- ----------------------------
--  Table structure for `readreorderparagraphquestions`
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraphquestions`;
CREATE TABLE `readreorderparagraphquestions` (
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `questionfk` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`questionfk`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `readreorderparagraphquestions`
-- ----------------------------
BEGIN;
INSERT INTO `readreorderparagraphquestions` VALUES ('Liberal is conservative in a moderate Midwestern kind of way which is changing fast due to big National Beef Packing plant which relies on Hispanic migrants and thus four-fifths of the children in Liberal\'s public school system are hispanic', '1', '1'), ('Liberal\'s mayor, Joe Denoyer, who was raised in A democratic family near Chicago and moved to Liberal in search of work', '1', '2'), ('This should make the town receptive to Democrats, but Mr Trump easily won the country of which it forms part', '1', '3'), ('Mr Denoyer voted for Mr Trump by being impressed by his promise, though he thinks it unlikely that the present will keep his promises.', '1', '4'), ('The town of Liberal is said to have been named for an early settler famous among travellers for being free with drinking water.', '1', '5'), ('dasdasd', '2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `repeatsentence`
-- ----------------------------
DROP TABLE IF EXISTS `repeatsentence`;
CREATE TABLE `repeatsentence` (
  `id` int(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `audioPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `repeatsentence`
-- ----------------------------
BEGIN;
INSERT INTO `repeatsentence` VALUES ('1', 'You will find the economics section on the second floor of the library.', '1.mp3'), ('2', 'You will be informed of the results by email.', '2.mp3');
COMMIT;

-- ----------------------------
--  Table structure for `retelllecture`
-- ----------------------------
DROP TABLE IF EXISTS `retelllecture`;
CREATE TABLE `retelllecture` (
  `id` int(20) NOT NULL,
  `audioPath` varchar(40) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `imagePath` varchar(40) DEFAULT NULL,
  `descriptionPath` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `retelllecture`
-- ----------------------------
BEGIN;
INSERT INTO `retelllecture` VALUES ('1', '1.mp3', 'description', '1.jpg', '1.txt'), ('2', '2.mp3', 'description2', '2.jpg', '2.txt');
COMMIT;

-- ----------------------------
--  Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `writeessay`
-- ----------------------------
DROP TABLE IF EXISTS `writeessay`;
CREATE TABLE `writeessay` (
  `id` int(20) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `writeessay`
-- ----------------------------
BEGIN;
INSERT INTO `writeessay` VALUES ('1', 'Age discrimination occurs when a decison is made on the basis of a person\'s age. In the workplace, these are most often decisions about being employed in the first place, winnning promotions of being unfairly dismissed. Should discrimination against older workers be made illegal?'), ('2', 'Age discrimination occurs when a decison is made on the basis of a person\'s age. In the workplace, these are most often decisions about being employed in the first place, winnning promotions of being unfairly dismissed. Should discrimination against older workers be made illegal?');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
