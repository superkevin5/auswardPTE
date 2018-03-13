/*
Navicat MySQL Data Transfer

Source Server         : pteAusward
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : pteausward

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-03-13 23:03:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answershortquestion
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
-- Records of answershortquestion
-- ----------------------------
INSERT INTO `answershortquestion` VALUES ('1', '1.mp3', 'Decade', 'What do we call a period of 10 years?\n\nWhat do we call a period of 10 years?\n\nWhat do we call a period of 10 years?');
INSERT INTO `answershortquestion` VALUES ('2', '2.mp3', 'Decade', 'What do we call a period of 10 years?');

-- ----------------------------
-- Table structure for describeimage
-- ----------------------------
DROP TABLE IF EXISTS `describeimage`;
CREATE TABLE `describeimage` (
  `id` int(20) NOT NULL,
  `imagePath` varchar(40) DEFAULT NULL,
  `audioPath` varchar(40) DEFAULT NULL,
  `descriptionPath` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of describeimage
-- ----------------------------
INSERT INTO `describeimage` VALUES ('1', '1.jpg', '1.mp3', '1.pdf');
INSERT INTO `describeimage` VALUES ('2', '2.jpg', '2.mp3', '2.txt');
INSERT INTO `describeimage` VALUES ('3', '3.jpg', '3.mp3', '3.txt');

-- ----------------------------
-- Table structure for highlightincorrectwords
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
-- Records of highlightincorrectwords
-- ----------------------------
INSERT INTO `highlightincorrectwords` VALUES ('1', 'On a visit to the Tampa area way back when, I enjoyed a stringer #404 reminder that not all little red ants are benign. Introduced fire ants in the U.S.South are just one example of how ants from one region can set up colonies in another. South American so-called \"crazy\" fonts #404 now damage electrical equipment in the U.S. And super-colonies of Argentine ants are all over Europe. To nudge #404 such expansions, scientists, including Scientific American contributor Rob Dunn, tried to track introduced ant species in the Netherlands, New Zealand and the U.S. They found that some 252 ant species have infiltrated the three places, mostly accidentally, for example, in slipping #404 containers full of fruit or wood. The researchers think their official count is low—they estimate the true number at nearly a thousand species. And most can make a permanent home on new shoes #404 , thanks to coming from nearby, academically #404 similar regions. The research appeared in the journal Biology Letters. Expanding their empires may be good news for ants. But maybe not for humans, as I learned all too painfully', '1.mp3', '$stinging|ants|gauge|shipping|shores|climatically$ ');

-- ----------------------------
-- Table structure for listenfillblank
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
-- Records of listenfillblank
-- ----------------------------
INSERT INTO `listenfillblank` VALUES ('1', 'Some ecotourism offers visitors close #404\r\n with different species. But new research suggests that these activities may not be so great for the animals. Researchers tagged stingrays in Stingray City in the Cayman Islands to #404  \r\n their movements and behavior. Compared to stingrays outside of the tourism area, those in Stingray City switched their activity #404\r\n from night to day, when tourists handed out food, and mated year round instead of seasonally. The stingrays also had more bite #404\r\n , which suggests increased aggression towards one another. The study is in the journal PLoS ONE. Past research has found increased #404 \r\n and more intra- and inter- species aggression among animals that have been fed by humans. Interactive tourism is a growing business. But researchers say that more study is needed to #404 \r\n the health and safety of humans and animals alike. Ecotourism may be good for a given species, as humans become engaged in its #404 \r\n . But for the individual members of that species tasked with #404 \r\n with people, it may not be a walk in the park.', '$encounters|monitor|patterns|marks|stress|ensure|survival|dealing$', '1.mp3');
INSERT INTO `listenfillblank` VALUES ('2', 'Some ecotourism offers visitors close #404\r\n with different species. But new research suggests that these activities may not be so great for the animals. Researchers tagged stingrays in Stingray City in the Cayman Islands to #404  \r\n their movements and behavior. Compared to stingrays outside of the tourism area, those in Stingray City switched their activity #404\r\n from night to day, when tourists handed out food, and mated year round instead of seasonally. The stingrays also had more bite #404\r\n , which suggests increased aggression towards one another. The study is in the journal PLoS ONE. Past research has found increased #404 \r\n and more intra- and inter- species aggression among animals that have been fed by humans. Interactive tourism is a growing business. But researchers say that more study is needed to #404 \r\n the health and safety of humans and animals alike. Ecotourism may be good for a given species, as humans become engaged in its #404 \r\n . But for the individual members of that species tasked with #404 \r\n with people, it may not be a walk in the park.', '$encounters|monitor|patterns|marks|stress|ensure|survival|dealing$', '2.mp3');

-- ----------------------------
-- Table structure for readaloud
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
-- Records of readaloud
-- ----------------------------
INSERT INTO `readaloud` VALUES ('1.mp3', '1', '35', 'Yellow is the most optimistic color, yet surprisingly, people lose their tempers most often in yellow rooms and babies cry more in them. The reason may be that yellow is the hardest color on the eye. On the other hand, it speeds metabolism and enhances concentration; think of yellow legal pads and post-it notes.', '1.mp3');
INSERT INTO `readaloud` VALUES ('2.mp3', '2', '35', 'dddd', '2.mp3');
INSERT INTO `readaloud` VALUES ('3.mp3', '3', '40', '3dddddddddddddddddddd', '3.mp3');

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
INSERT INTO `readfillblank` VALUES ('1', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\n', '$include|chronic|degradation|inconsistent$ ');
INSERT INTO `readfillblank` VALUES ('2', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\nThe inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.', '$include|chronic|degradation|inconsistent$ ');

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
INSERT INTO `readreorderparagraph` VALUES ('1', '$5|1|3|2|4$');
INSERT INTO `readreorderparagraph` VALUES ('2', '$5|2|3|1|4$');

-- ----------------------------
-- Table structure for readreorderparagraphquestions
-- ----------------------------
DROP TABLE IF EXISTS `readreorderparagraphquestions`;
CREATE TABLE `readreorderparagraphquestions` (
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `questionfk` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`questionfk`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of readreorderparagraphquestions
-- ----------------------------
INSERT INTO `readreorderparagraphquestions` VALUES ('Liberal is conservative in a moderate Midwestern kind of way which is changing fast due to big National Beef Packing plant which relies on Hispanic migrants and thus four-fifths of the children in Liberal\'s public school system are hispanic', '1', '1');
INSERT INTO `readreorderparagraphquestions` VALUES ('Liberal\'s mayor, Joe Denoyer, who was raised in A democratic family near Chicago and moved to Liberal in search of work', '1', '2');
INSERT INTO `readreorderparagraphquestions` VALUES ('This should make the town receptive to Democrats, but Mr Trump easily won the country of which it forms part', '1', '3');
INSERT INTO `readreorderparagraphquestions` VALUES ('Mr Denoyer voted for Mr Trump by being impressed by his promise, though he thinks it unlikely that the present will keep his promises.', '1', '4');
INSERT INTO `readreorderparagraphquestions` VALUES ('The town of Liberal is said to have been named for an early settler famous among travellers for being free with drinking water.', '1', '5');
INSERT INTO `readreorderparagraphquestions` VALUES ('dasdasd', '2', '1');

-- ----------------------------
-- Table structure for repeatsentence
-- ----------------------------
DROP TABLE IF EXISTS `repeatsentence`;
CREATE TABLE `repeatsentence` (
  `id` int(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `audioPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repeatsentence
-- ----------------------------
INSERT INTO `repeatsentence` VALUES ('1', 'You will find the economics section on the second floor of the library.', '1.mp3');
INSERT INTO `repeatsentence` VALUES ('2', 'You will be informed of the results by email.', '2.mp3');

-- ----------------------------
-- Table structure for retelllecture
-- ----------------------------
DROP TABLE IF EXISTS `retelllecture`;
CREATE TABLE `retelllecture` (
  `id` int(20) NOT NULL,
  `audioPath` varchar(40) DEFAULT NULL,
  `imagePath` varchar(40) DEFAULT NULL,
  `descriptionPath` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of retelllecture
-- ----------------------------
INSERT INTO `retelllecture` VALUES ('1', '1.mp3', '1.jpg', '1.txt');
INSERT INTO `retelllecture` VALUES ('2', '2.mp3', '2.jpg', '2.txt');

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

-- ----------------------------
-- Table structure for summarisespokentext
-- ----------------------------
DROP TABLE IF EXISTS `summarisespokentext`;
CREATE TABLE `summarisespokentext` (
  `id` int(20) NOT NULL,
  `audioPath` varchar(20) DEFAULT NULL,
  `descriptionPath` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summarisespokentext
-- ----------------------------
INSERT INTO `summarisespokentext` VALUES ('1', '1.mp3', '1.txt');
INSERT INTO `summarisespokentext` VALUES ('2', '2.mp3', '1.txt');

-- ----------------------------
-- Table structure for summarisewrittentext
-- ----------------------------
DROP TABLE IF EXISTS `summarisewrittentext`;
CREATE TABLE `summarisewrittentext` (
  `id` int(20) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summarisewrittentext
-- ----------------------------
INSERT INTO `summarisewrittentext` VALUES ('1', 'Since Australians Jennifer Hawkins and Lauryn Eagle were crowned Miss Universe and Miss Teen International respectively, there has been a dramatic increase in interest in beauty pageants in this country. These wins have also sparked a debate as to whether beauty pageants are just harmless reminders of old fashioned values or a throwback to the days when women were respected for how good they looked. Opponents argue that beauty pageants, whether its Miss Universe or Miss Teen International, are demeaning to women and out of sync with the times. They say they are nothing more than symbols of decline. \r\n\r\nIn the past few decades Australia has taken more than a few faltering steps toward treating women with dignity and respect. Young women are being brought up knowing that they can do anything, as shown by inspiring role models in medicine such as 2003 Australian of the Year Professor Fiona Stanley. \r\n\r\nIn the 1960s and 70s, one of the first acts of the feminist movement was to picket beauty pageants on the premise that the industry promoted the view that it was acceptable to judge women on their appearance. Today many young Australian women are still profoundly uncomfortable with their body image, feeling under all kinds of pressures because they are judged by how they look. \r\n\r\nAlmost all of the pageant victors are wafer thin, reinforcing the message that thin equals beautiful. This ignores the fact that men and women come in all sizes and shapes. In a country where up to 60% of young women are on a diet at any one time and 70% of school girls say they want to lose weight, despite the fact that most have a normal BMI, such messages are profoundly hazardous to the mental health of young Australians.', 'sample');
INSERT INTO `summarisewrittentext` VALUES ('2', 'As far as prediction is concerned, remember that the chairman of IBM predicted in the fifties that the world would need a maximum of around half a dozen computers, that the British Department for Education seemed to think in the eighties that we would all need to be able to code in BASIC and that in the nineties Microsoft failed to foresee the rapid growth of the Internet. Who could have predicted that one major effect of the automobile would be to bankrupt small shops across the nation? Could the early developers of the telephone have foreseen its development as a medium for person to person communication, rather than as a form of broadcasting medium? We all, including the \'experts\', seem to be peculiarly inept at predicting the likely development of our technologies, even as far as the next year. We can, of course, try to extrapolate from experience of previous technologies, as I do below by comparing the technology of the Internet with the development of other information and communication technologies and by examining the earlier development of radio and print. But how justified I might be in doing so remains an open question. You might conceivably find the history of the British and French videotex systems, Prestel and Minitel, instructive. However, I am not entirely convinced that they are very relevant, nor do I know where you can find information about them on line, so, rather than take up space here, I\'ve briefly described them in a separate article.', 'sample2');

-- ----------------------------
-- Table structure for writeessay
-- ----------------------------
DROP TABLE IF EXISTS `writeessay`;
CREATE TABLE `writeessay` (
  `id` int(20) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writeessay
-- ----------------------------
INSERT INTO `writeessay` VALUES ('1', 'Age discrimination occurs when a decison is made on the basis of a person\'s age. In the workplace, these are most often decisions about being employed in the first place, winnning promotions of being unfairly dismissed. Should discrimination against older workers be made illegal?');
INSERT INTO `writeessay` VALUES ('2', 'Age discrimination occurs when a decison is made on the basis of a person\'s age. In the workplace, these are most often decisions about being employed in the first place, winnning promotions of being unfairly dismissed. Should discrimination against older workers be made illegal?');

-- ----------------------------
-- Table structure for writefromdictation
-- ----------------------------
DROP TABLE IF EXISTS `writefromdictation`;
CREATE TABLE `writefromdictation` (
  `id` int(20) NOT NULL,
  `audioPath` varchar(30) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writefromdictation
-- ----------------------------
INSERT INTO `writefromdictation` VALUES ('1', '1.mp3', 'This class will look at the structure of the essay');
INSERT INTO `writefromdictation` VALUES ('2', '2.mp3', 'They have struggled since last year to make their services paid.');
