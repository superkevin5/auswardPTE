/*
Navicat MySQL Data Transfer

Source Server         : pteAusward
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : pteausward

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-21 21:38:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answershortquestion
-- ----------------------------
DROP TABLE IF EXISTS `answershortquestion`;
CREATE TABLE `answershortquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `audioPath` varchar(300) DEFAULT NULL,
  `answer` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answershortquestion
-- ----------------------------
INSERT INTO `answershortquestion` VALUES ('1', '1.mp3', 'Microscope', 'If telescopes are used to locate distant objects, what instrument is employed to magnify minuscule objects?');
INSERT INTO `answershortquestion` VALUES ('2', '2.mp3', 'Community service', 'Which kind of punishment for a crime is the less severe, an imprisonment or community service?');
INSERT INTO `answershortquestion` VALUES ('3', '3.mp3', 'Two', 'How many sides are there in a bilateral agreement?');
INSERT INTO `answershortquestion` VALUES ('4', '4.mp3', '(Ensuring good) ventilation', 'A manufacturing process releases noxious gases. What is the most important safety measure for workers at this plant? ensuring good ventilation, or appropriate footwear.');
INSERT INTO `answershortquestion` VALUES ('5', '5.mp3', 'A chronology / a timeline', 'A list of events placed in time order is usually described as what?');
INSERT INTO `answershortquestion` VALUES ('6', '6.mp3', 'Six', 'If a figure is hexagonal, how many sides does it have?');
INSERT INTO `answershortquestion` VALUES ('7', '7.mp3', 'Salt', 'What key mineral makes seawater different from fresh water? ');
INSERT INTO `answershortquestion` VALUES ('8', '8.mp3', 'Hide', 'In the animal kingdom, is the purpose of camouflage to attract a mate, to find food or to hide?');
INSERT INTO `answershortquestion` VALUES ('9', '9.mp3', 'Departures', 'Which section of a train timetable will tell you what time your train leaves?');
INSERT INTO `answershortquestion` VALUES ('10', '10.mp3', 'Instructions', 'What do we call the list of steps that tell you how to put something together? ');
INSERT INTO `answershortquestion` VALUES ('11', '11.mp3', 'Interview', 'What do we call the meeting where an employer asks a potential employee questions about their work experience?');
INSERT INTO `answershortquestion` VALUES ('12', '12.mp3', 'Front desk', 'What desk should you go to when you first arrive to stay at a hotel?');
INSERT INTO `answershortquestion` VALUES ('13', '13.mp3', 'Architect', 'What is the job title of someone who designs buildings?');
INSERT INTO `answershortquestion` VALUES ('14', '14.mp3', 'Rent', 'What term is used for the amount of money you pay a landlord for living in their house or apartment?');
INSERT INTO `answershortquestion` VALUES ('15', '15.mp3', 'Breakfast', 'What do we call the first meal of the day?');
INSERT INTO `answershortquestion` VALUES ('16', '16.mp3', 'Spectator', 'What word is used for someone who watches a sports event?');
INSERT INTO `answershortquestion` VALUES ('17', '17.mp3', 'Ladder', 'What object would you use to climb up to the roof of a house?');
INSERT INTO `answershortquestion` VALUES ('18', '18.mp3', 'Appetite', 'If you don\'t feel like eating, what do we say you don\'t have?');
INSERT INTO `answershortquestion` VALUES ('19', '19.mp3', 'Lungs', 'What do we call the organs in our chest that we use to breathe?');
INSERT INTO `answershortquestion` VALUES ('20', '20.mp3', 'City / Town', 'If someone lives in an urban area, where do they live?');
INSERT INTO `answershortquestion` VALUES ('21', '21.mp3', 'Crown', 'What does a king or queen wear on their head at official ceremonies?');
INSERT INTO `answershortquestion` VALUES ('22', '22.mp3', 'Dictionary', 'What do we call a book that contains lots of words with their meanings?');
INSERT INTO `answershortquestion` VALUES ('23', '23.mp3', 'The sun', 'What is the source of solar energy?');
INSERT INTO `answershortquestion` VALUES ('24', '24.mp3', 'Anonymous', 'When the writer of a book is unknown, what word is used for the author? ');
INSERT INTO `answershortquestion` VALUES ('25', '25.mp3', 'Sponsor', 'What do we call a company or organization that gives money to a sports or arts event inexchange for advertising?');
INSERT INTO `answershortquestion` VALUES ('26', '26.mp3', 'Biology / Ecology', 'What do we call the study of living things? ');
INSERT INTO `answershortquestion` VALUES ('27', '27.mp3', 'Seasons', 'What are winter, spring, summer and autumn?');
INSERT INTO `answershortquestion` VALUES ('28', '28.mp3', 'Cattle', 'What is a collective term for cows and bulls, especially on a farm?');
INSERT INTO `answershortquestion` VALUES ('29', '29.mp3', 'Cheap', 'If something is not expensive, what do we say it is?');
INSERT INTO `answershortquestion` VALUES ('30', '30.mp3', 'Glasses / contact lenses', 'What do people wear if they can\'t see very well?');
INSERT INTO `answershortquestion` VALUES ('31', '31.mp3', 'Artificial/Manmade/Synthesis', 'If something such as fabric or medicine is artificially made, not natural, what do we say it is?');
INSERT INTO `answershortquestion` VALUES ('32', '32.mp3', 'Fruit', 'What type of food is an apple?');
INSERT INTO `answershortquestion` VALUES ('33', '33.mp3', 'Twelve', 'How many months are there in a year?');
INSERT INTO `answershortquestion` VALUES ('34', '34.mp3', 'West', 'What is the opposite of east? ');
INSERT INTO `answershortquestion` VALUES ('35', '35.mp3', 'Water / liquid', 'When ice is at room temperature, what does it become?');
INSERT INTO `answershortquestion` VALUES ('36', '36.mp3', 'Honey', 'Which sweet food do bees produce?');
INSERT INTO `answershortquestion` VALUES ('37', '37.mp3', 'Library', 'Where can people go to borrow books? ');
INSERT INTO `answershortquestion` VALUES ('38', '38.mp3', 'Waiter / Waitress', 'Who serves food in a restaurant?');
INSERT INTO `answershortquestion` VALUES ('39', '39.mp3', 'Triangle', 'What is the word in geometry for a shape that has three sides?');
INSERT INTO `answershortquestion` VALUES ('40', '40.mp3', 'Index', 'What do you call the alphabetical list at the end of a textbook that tells you where to find specific information?');
INSERT INTO `answershortquestion` VALUES ('41', '41.mp3', 'Source', 'What is the word for the place where a river starts?');
INSERT INTO `answershortquestion` VALUES ('42', '42.mp3', 'Editor', 'Who is the main journalist responsible for producing a newspaper or magazine? ');
INSERT INTO `answershortquestion` VALUES ('43', '43.mp3', 'Profit', 'A business doesn’t want to make a loss - what does it want to make?');
INSERT INTO `answershortquestion` VALUES ('44', '44.mp3', 'Agriculture', 'What is the economic sector that deals with farming?');
INSERT INTO `answershortquestion` VALUES ('45', '45.mp3', 'Thesis / Dissertation', 'What do you call the very long essay that students have to write for a doctoral degree?');
INSERT INTO `answershortquestion` VALUES ('46', '46.mp3', 'Century', 'What do we call a period of 100 years?');
INSERT INTO `answershortquestion` VALUES ('47', '47.mp3', 'Graduation', 'At what ceremony do students receive their degree or diploma at the end of their period of study?');
INSERT INTO `answershortquestion` VALUES ('48', '48.mp3', 'Deadline / Due Date', 'What do we call the date that a piece of work must be finished by?');
INSERT INTO `answershortquestion` VALUES ('49', '49.mp3', 'Editorial', 'Which section of a newspaper gives the editor\'s opinion?');
INSERT INTO `answershortquestion` VALUES ('50', '50.mp3', 'Microscope', 'What instrument would you use to examine very small objects or live forms? ');
INSERT INTO `answershortquestion` VALUES ('51', '51.mp3', 'Virus', 'What is the destructive program that spreads from computer to computer? ');
INSERT INTO `answershortquestion` VALUES ('52', '52.mp3', 'Mammals', 'What term is used for animals such as humans that usually give birth to live young, mammals or reptiles?');
INSERT INTO `answershortquestion` VALUES ('53', '53.mp3', 'Democracy', 'What do you call a system of government in which people vote for the people who will represent them?');
INSERT INTO `answershortquestion` VALUES ('54', '54.mp3', 'A receipt', 'What do we call the piece of paper that proves you have bought an item?');
INSERT INTO `answershortquestion` VALUES ('55', '55.mp3', 'Resume / CV', 'What do you call the document that gives you details about your qualifications and work experience?');
INSERT INTO `answershortquestion` VALUES ('56', '56.mp3', 'Agricultural', 'How would you describe an economy based largely on farming?');
INSERT INTO `answershortquestion` VALUES ('57', '57.mp3', 'Astronomy', 'What is the study of the stars and planets called?');
INSERT INTO `answershortquestion` VALUES ('58', '58.mp3', 'Public relations', 'In business and advertising, what does PR stand for?');
INSERT INTO `answershortquestion` VALUES ('59', '59.mp3', 'Coastguard', 'What emergency service is usually called when someone is in trouble at sea, ambulance or coastguard?');
INSERT INTO `answershortquestion` VALUES ('60', '60.mp3', 'May', 'Name a month that falls between April and June.');
INSERT INTO `answershortquestion` VALUES ('61', '61.mp3', 'Download', 'What word describes moving a program or other material from a website to your computer?');
INSERT INTO `answershortquestion` VALUES ('62', '62.mp3', 'An X-ray', 'What do we call a picture that a doctor takes to see inside your body? ');
INSERT INTO `answershortquestion` VALUES ('63', '63.mp3', 'Weather', 'If someone is feeling a little ill, they may say they are feeling under the what?');
INSERT INTO `answershortquestion` VALUES ('64', '64.mp3', 'A referee', 'Who is the person in charge of a football match? ');
INSERT INTO `answershortquestion` VALUES ('65', '65.mp3', 'The final', 'What do we call the last game in a sporting competition, which decides the champion?');
INSERT INTO `answershortquestion` VALUES ('66', '66.mp3', 'Landscapes', 'What is the general term for paintings of the countryside or natural views?');
INSERT INTO `answershortquestion` VALUES ('67', '67.mp3', 'printer', 'Which of these would probably be found in an office, a printer, a blanket or a nailbrush?');
INSERT INTO `answershortquestion` VALUES ('68', '68.mp3', 'A portrait', 'What is a painting of a person\'s head usually called? ');
INSERT INTO `answershortquestion` VALUES ('69', '69.mp3', 'In a city', 'Where would you find an urban area, in a city or in countryside?');
INSERT INTO `answershortquestion` VALUES ('70', '70.mp3', 'solar eclipse', 'What do we call it when the moon completely blocks out the light from the Sun? ');
INSERT INTO `answershortquestion` VALUES ('71', '71.mp3', 'West', 'What point of the compass is directly opposite east?');
INSERT INTO `answershortquestion` VALUES ('72', '72.mp3', 'Checkout', 'Where do you pay for your purchases at a supermarket?');
INSERT INTO `answershortquestion` VALUES ('73', '73.mp3', 'A basement apartment', 'What do you call an apartment that is below ground level, a basement apartment or apenthouse apartment?');
INSERT INTO `answershortquestion` VALUES ('74', '74.mp3', 'A keyboard', 'What feature do pianos and computers have in common? ');
INSERT INTO `answershortquestion` VALUES ('75', '75.mp3', 'A negative feeling', 'If you are feeling fed up, is it a positive or a negative feeling?');
INSERT INTO `answershortquestion` VALUES ('76', '76.mp3', 'A decade', 'What do we call a period of ten years?');
INSERT INTO `answershortquestion` VALUES ('77', '77.mp3', 'Plumber', 'A specialist who repairs leaking water pipes is called a?');
INSERT INTO `answershortquestion` VALUES ('78', '78.mp3', 'The Suez Canal', 'A famous canal links the Mediterranean Sea with the Indian Ocean. Is it the Corinth or the Suez Canal?');
INSERT INTO `answershortquestion` VALUES ('79', '79.mp3', 'In a freezer', 'Where would you store meat you wish to keep frozen at home?');
INSERT INTO `answershortquestion` VALUES ('80', '80.mp3', 'Driver’s license, or driving license', 'What is the most important document you have to show when you want to hire a car?');
INSERT INTO `answershortquestion` VALUES ('81', '81.mp3', 'Gymnasium', 'Where would you go to work out on a treadmill?');
INSERT INTO `answershortquestion` VALUES ('82', '82.mp3', 'An aqualung', 'What piece of equipment would you use to go diving in the sea, an aqualung or an aquaplane?');
INSERT INTO `answershortquestion` VALUES ('83', '83.mp3', 'supermarket', 'Where would you most likely go to buy some flour, a bakery, a florist or a supermarket?');
INSERT INTO `answershortquestion` VALUES ('84', '84.mp3', 'Radiology', 'Which hospital department would you go to for an X-ray, radiology or cardiology? ');
INSERT INTO `answershortquestion` VALUES ('85', '85.mp3', 'An art gallery / a museum', 'Where would you go to see an exhibition of sculpture?');
INSERT INTO `answershortquestion` VALUES ('86', '86.mp3', 'In liters', 'Would you measure the volume of bottled water in liters or kilos? ');
INSERT INTO `answershortquestion` VALUES ('87', '87.mp3', 'Wrist', 'What’s the joint called where your hand is connected to your arm? ');
INSERT INTO `answershortquestion` VALUES ('88', '88.mp3', 'psychologist', 'Who would you consult to treat a fear of crowded places, a philosopher or a psychologist?');
INSERT INTO `answershortquestion` VALUES ('89', '89.mp3', 'By public transportation', 'How would most people travel to work each day in big cities like Hong Kong, Tokyo and New York?');
INSERT INTO `answershortquestion` VALUES ('90', '90.mp3', 'supermarket', 'Would a supermarket, a cafe or a bookstore probably have the widest range of products available?');
INSERT INTO `answershortquestion` VALUES ('91', '91.mp3', 'Laundry', 'In which room of their home would someone usually wash their clothes?');
INSERT INTO `answershortquestion` VALUES ('92', '92.mp3', 'More men', 'Despite all the advances in equality between the sexes, would more men or women play professional football?');
INSERT INTO `answershortquestion` VALUES ('93', '93.mp3', 'Biology', 'Which main branch of science deals with classification of living things?');
INSERT INTO `answershortquestion` VALUES ('94', '94.mp3', 'Written examination', 'In most universities, there are two ways of being assessed, one is orally, and the other is through?');
INSERT INTO `answershortquestion` VALUES ('95', '95.mp3', 'October', 'Name a month that falls between September and November. ');
INSERT INTO `answershortquestion` VALUES ('96', '96.mp3', 'A city', 'Would a town, a village or a city probably cover the largest area?');
INSERT INTO `answershortquestion` VALUES ('97', '97.mp3', 'bed', 'Which of these would probably be found in most homes around the world, a computer, a bed or a television?');
INSERT INTO `answershortquestion` VALUES ('98', '98.mp3', 'Their relative sizes', 'What does the main difference between a wristwatch and a clock relate to?');
INSERT INTO `answershortquestion` VALUES ('99', '99.mp3', 'In the early morning', 'Would it be better to jogging at noon or in the early morning, if you wanted to avoid the hottest part of the day?');
INSERT INTO `answershortquestion` VALUES ('100', '100.mp3', 'The 20th century', 'In which century did the automobile become manufactured on a mass scale?');
INSERT INTO `answershortquestion` VALUES ('101', '101.mp3', 'The U.S. / Canada / Mexico', 'Name a country located in North America.');
INSERT INTO `answershortquestion` VALUES ('102', '102.mp3', 'Monday', 'Some calendars begin the week on Sunday, what is the other day which commonly starts a week?');
INSERT INTO `answershortquestion` VALUES ('103', '103.mp3', 'A museum', 'Where would you go to see exhibits of dinosaurs?');
INSERT INTO `answershortquestion` VALUES ('104', '104.mp3', 'In summer', 'In which season would people be least likely to go snow skiing?');
INSERT INTO `answershortquestion` VALUES ('105', '105.mp3', 'The moon', 'Which of these was last to be explored, the Himalayas, the moon or Australia? ');
INSERT INTO `answershortquestion` VALUES ('106', '106.mp3', 'Email', 'Would letter or email be the fastest way to get a message to your professor? ');
INSERT INTO `answershortquestion` VALUES ('107', '107.mp3', '13 years old', 'Jane and Peter have three children, they are 4,13 and 15 years old, they only have one son who is the youngest child, how old is their middle child?');
INSERT INTO `answershortquestion` VALUES ('108', '108.mp3', 'Millions', 'Which would be better to report the population of a major global city, hundreds, millions or billions?');
INSERT INTO `answershortquestion` VALUES ('109', '109.mp3', 'The 15th (of) July', 'This work is due for submission, one month from 15 June. On what date should it be submitted?');
INSERT INTO `answershortquestion` VALUES ('110', '110.mp3', 'By plane', 'What is the quickest way to travel from Hong Kong to Paris?');
INSERT INTO `answershortquestion` VALUES ('111', '111.mp3', 'A planet', 'What is the name for a huge natural body that orbits the sun?');
INSERT INTO `answershortquestion` VALUES ('112', '112.mp3', 'Ice', 'What can be added to a drink to cool it down on a hot day?');
INSERT INTO `answershortquestion` VALUES ('113', '113.mp3', 'passport', 'What special document does most people traveling between one country to another need to carry?');
INSERT INTO `answershortquestion` VALUES ('114', '114.mp3', 'helmet', 'What kind of equipment is used to protect motorbike rider’s brain from injury?');
INSERT INTO `answershortquestion` VALUES ('115', '115.mp3', 'Cook it in the oven', 'What is the last thing to do when baking a cake?');
INSERT INTO `answershortquestion` VALUES ('116', '116.mp3', 'pharmacy', 'Would you go to a pharmacy or a surgery to get a prescription filled after visiting a doctor?');
INSERT INTO `answershortquestion` VALUES ('117', '117.mp3', 'Credit card', 'There are two main ways to pay for goods bought in a shop, one is by cash, and the other is by?');
INSERT INTO `answershortquestion` VALUES ('118', '118.mp3', '366', 'How many days are in a leap year?');
INSERT INTO `answershortquestion` VALUES ('119', '119.mp3', 'Do more physical exercise', 'To improve their health and fitness, most people either try to improve their diet or?');
INSERT INTO `answershortquestion` VALUES ('120', '120.mp3', 'Kilometer', 'Will it be better to use km or kg to measure the distance between two cities?');
INSERT INTO `answershortquestion` VALUES ('121', '121.mp3', 'The United Kingdom', 'The large island just off the coast of mainland Europe is the home to which country?');
INSERT INTO `answershortquestion` VALUES ('122', '122.mp3', '100 (years)', 'How many years are there in a century? ');
INSERT INTO `answershortquestion` VALUES ('123', '123.mp3', 'Three or four years', 'How many years does it take to finish undergraduate study? ');
INSERT INTO `answershortquestion` VALUES ('124', '124.mp3', 'East', 'In which direction does the sun come up?');
INSERT INTO `answershortquestion` VALUES ('125', '125.mp3', 'Typewriter', 'Computer, telephone and typewriter, which one is first invented? ');
INSERT INTO `answershortquestion` VALUES ('126', '126.mp3', 'Judge', 'What shall we call the person who decides if a person is guilty in the court?');
INSERT INTO `answershortquestion` VALUES ('127', '127.mp3', 'Northwest', 'What is the opposite of southeast?');
INSERT INTO `answershortquestion` VALUES ('128', '128.mp3', 'February', 'What is the month between January and March? ');
INSERT INTO `answershortquestion` VALUES ('129', '129.mp3', 'New York / Washington / Boston', 'Name a city in the U.S. ');
INSERT INTO `answershortquestion` VALUES ('130', '130.mp3', 'Four', 'How many times a year is a quarterly journal published? ');
INSERT INTO `answershortquestion` VALUES ('131', '131.mp3', 'Rainy weather', 'A lack of which kind of weather causes drought, dry weather or rainy weather?');
INSERT INTO `answershortquestion` VALUES ('132', '132.mp3', 'Use of illicit drugs', 'Which is usually considered against the law? Use of illicit drugs or use of prescribed medication?');
INSERT INTO `answershortquestion` VALUES ('133', '133.mp3', 'Before sleeping', 'When would it be safe to take medication, which causes drowsiness, before sleeping, driving or operating machinery?');
INSERT INTO `answershortquestion` VALUES ('134', '134.mp3', 'Thermometer', 'Which instrument is used to measure variations in temperature? ');
INSERT INTO `answershortquestion` VALUES ('135', '135.mp3', 'Columns', 'When you create a table, the data in horizontal dimension is organized in rows and the data in vertical dimension is organized in what?');
INSERT INTO `answershortquestion` VALUES ('136', '136.mp3', 'Smell', 'Which of the 5 senses are you using, if you detect the odor of gas in a laboratory or in your kitchen?');
INSERT INTO `answershortquestion` VALUES ('137', '137.mp3', 'Four', 'How many people are there in a quartet?');
INSERT INTO `answershortquestion` VALUES ('138', '138.mp3', 'Vision', 'To which of our sense do all of the following words relate, opaque, vivid, brilliant, shiny?');
INSERT INTO `answershortquestion` VALUES ('139', '139.mp3', 'Slow down', 'In a recession, does economic activity increase or slow down? ');
INSERT INTO `answershortquestion` VALUES ('140', '140.mp3', 'Beneficial', 'In medical terms, are antibodies harmful or beneficial for patients? ');
INSERT INTO `answershortquestion` VALUES ('141', '141.mp3', 'Optometrist', 'Would a person suffering problems with their vision consult a biologist or an optometrist?');
INSERT INTO `answershortquestion` VALUES ('142', '142.mp3', 'Fridge', 'Would fresh milk last longer in a fridge or in a cool cupboard? ');
INSERT INTO `answershortquestion` VALUES ('143', '143.mp3', 'Secondary source', 'Historians use evidence to draw conclusions about the past, would a contemporary artist\'s painting of an ancient battle be an original source or secondary source?');
INSERT INTO `answershortquestion` VALUES ('144', '144.mp3', 'Cooking', 'What is the subject of study at a culinary institute?');
INSERT INTO `answershortquestion` VALUES ('145', '145.mp3', ' Laboratory', 'Where would you expect to find equipment like microscopes, bounce and burner, beaker and petri dish?');
INSERT INTO `answershortquestion` VALUES ('146', '146.mp3', 'Psychology', 'What is the name of the field of study that studies the human mind and behavior?');
INSERT INTO `answershortquestion` VALUES ('147', '147.mp3', 'Telescope', 'A planet or a galaxy that is very distant can be seen with what device? ');
INSERT INTO `answershortquestion` VALUES ('148', '148.mp3', 'Ice', 'What word is used to describe frozen water? ');
INSERT INTO `answershortquestion` VALUES ('149', '149.mp3', 'Full stop / period', 'Which symbol is used to complete a sentence? ');
INSERT INTO `answershortquestion` VALUES ('150', '150.mp3', 'Australia', 'Which country is in the south hemisphere, Canada or Australia?');
INSERT INTO `answershortquestion` VALUES ('151', '151.mp3', 'Four', 'How many seasons are there in a year?');
INSERT INTO `answershortquestion` VALUES ('152', '152.mp3', '0.75', 'What is 3 quarters of 100%?');
INSERT INTO `answershortquestion` VALUES ('153', '153.mp3', '10 years', 'How many years are there in a decade?');
INSERT INTO `answershortquestion` VALUES ('154', '154.mp3', 'Car sample', 'Which of the following is not a means of transportation? ');
INSERT INTO `answershortquestion` VALUES ('155', '155.mp3', 'Mathematics', 'What is the subject that involves geometry and algebra? ');
INSERT INTO `answershortquestion` VALUES ('156', '156.mp3', 'Horizon', 'What is the meeting point of Sea and Sky called?');
INSERT INTO `answershortquestion` VALUES ('157', '157.mp3', 'As soon as possible', 'What does ASAP mean? ');
INSERT INTO `answershortquestion` VALUES ('158', '158.mp3', 'High employment', 'Which is better, high employment or low employment?');
INSERT INTO `answershortquestion` VALUES ('159', '159.mp3', 'Opposite side', 'How do you call the person who faces you? ');
INSERT INTO `answershortquestion` VALUES ('160', '160.mp3', 'Students', 'What does the black square represents? ');
INSERT INTO `answershortquestion` VALUES ('161', '161.mp3', 'Southeast', 'What is the opposite direction of west north? ');
INSERT INTO `answershortquestion` VALUES ('162', '162.mp3', 'Horizontal', 'What is the antonym of vertical? ');
INSERT INTO `answershortquestion` VALUES ('163', '163.mp3', 'The outside', 'From where can you have a full view of a building, the outside, inside or top?');
INSERT INTO `answershortquestion` VALUES ('164', '164.mp3', 'Astronomical telescope', 'What do you call a piece of equipment we use to look at stars?');
INSERT INTO `answershortquestion` VALUES ('165', '165.mp3', 'Binoculars', 'What do you need to see thing which are far away?');
INSERT INTO `answershortquestion` VALUES ('166', '166.mp3', 'Gain', 'Profit means gain or loss? ');
INSERT INTO `answershortquestion` VALUES ('167', '167.mp3', 'Protection', 'Why people wear gloves when they do experiment?');
INSERT INTO `answershortquestion` VALUES ('168', '168.mp3', 'Glasses / goggles', 'If a person is doing an experiment, what would he wear to protect his eyes?');
INSERT INTO `answershortquestion` VALUES ('169', '169.mp3', 'By elevator / lift', 'What is the quickest way to get to the 21st floor?');
INSERT INTO `answershortquestion` VALUES ('170', '170.mp3', 'Car', 'What is more fuel-efficient, car or truck?');
INSERT INTO `answershortquestion` VALUES ('171', '171.mp3', 'Morning', 'What do we call the time before noon?');
INSERT INTO `answershortquestion` VALUES ('172', '172.mp3', 'Milk', 'What kind of liquid do mammals feed their babies?');
INSERT INTO `answershortquestion` VALUES ('173', '173.mp3', '7 days', 'How many days are there in a week?');
INSERT INTO `answershortquestion` VALUES ('174', '174.mp3', 'Ocean', 'Where you can see the whale?');
INSERT INTO `answershortquestion` VALUES ('175', '175.mp3', 'index', 'What do we call it when we find the information in front of a book? ');
INSERT INTO `answershortquestion` VALUES ('176', '176.mp3', 'supermarket', 'Which kind of shop contain more kinds of products?');

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
  `description` varchar(2000) DEFAULT NULL,
  `audioPathFemale` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readaloud
-- ----------------------------
INSERT INTO `readaloud` VALUES ('2.mp3', '5', '35', 'Akimbo, this must be one of the odder-looking words in the language. It puzzles us in part because it doesn\'t seem to have any relatives. What\'s more, it is now virtually a fossil word, until recently almost invariably found in \'arms Akimbo\', a posture in which a person stands with hands on hips and elbows sharply bent outward, one that signals impatience and hostility, or contempt. ', '2.mp3');
INSERT INTO `readaloud` VALUES ('1.mp3', '4', '35', 'Domestication is an evolutionary, rather than a political development. They were more likely to survive and prosper in an alliance with humans than on their own. Human provided the animals with food and protection, in exchange for which the animals provided the humans their milk and eggs, and yes, their flesh. ', '1.mp3');
INSERT INTO `readaloud` VALUES ('3.mp3', '6', '35', 'A young man from a small provincial town - a man without independent wealth, without powerful family connections and without a university education -- moved to London in the late 1580\'s and, in a remarkably short time, became the greatest playwright not of his age alone but of all time. How did Shakespeare become Shakespeare? ', '3.mp3');
INSERT INTO `readaloud` VALUES ('4.mp3', '7', '35', 'Moods may also have an effect on how information is processed, by influencing the extent to that which judges rely on pre-existing, internal information, or focus on new, external information. Positive moods promote more holistic and top-down processing style, while negative moods recruit more stimulus-driven and bottom-up processing. ', '4.mp3');
INSERT INTO `readaloud` VALUES ('5.mp3', '8', '35', 'The problem begins with the alphabet itself. Building a spelling system for English using letters that come from Latin - despite the two languages not sharing exactly the same set of sounds - is like building a playroom using an IKEA office set. ', '5.mp3');
INSERT INTO `readaloud` VALUES ('6.mp3', '9', '35', 'Modern buildings have to achieve certain performance requirements, at least to satisfy those of building codes, to provide a safe, healthy, and comfortable environment. However, these conditioned environments demand resources in energy and materials, which are both limited in supply, to build and operate. ', '6.mp3');
INSERT INTO `readaloud` VALUES ('7.mp3', '10', '35', 'Three professors from Hamburg University\'s medical faculty travelled last month to Ingeborg\'s sitting room in East Berlin to test her on the work she carried out in pre war Germany. ', '7.mp3');
INSERT INTO `readaloud` VALUES ('8.mp3', '11', '35', 'This finding is understandable in certain cases in spite of its high significance; that is because energy efficiency of building operation just represents a single aspect of sustainability. ', '8.mp3');
INSERT INTO `readaloud` VALUES ('9.mp3', '12', '35', 'The numbers on US student debt, after all, are truly staggering. The average 2015 US university graduate who took out loans to help pay for tuition enters the workforce with $35,000 in student debt. ', '9.mp3');
INSERT INTO `readaloud` VALUES ('10.mp3', '13', '35', 'The insults and criticism were not unexpected. What was surprising was people\'s enthusiasm about the competition. Thousands have participated in the discussion. ', '10.mp3');
INSERT INTO `readaloud` VALUES ('11.mp3', '14', '35', 'Who do you think is the most glamorous person? A biotechnologist who led his company in international research, an ordinary welder who gained international fame through his work, or a photographer complimented widely for a series of photos? ', '11.mp3');
INSERT INTO `readaloud` VALUES ('12.mp3', '15', '35', 'In the photo, the wild cat\'s huge paws are clamped onto the side of the white safari Jeep in which Chappell was a passenger. Almost as tall as the Jeep on her hind legs, she appears to be forcing her muzzle into the back window. ', '12.mp3');
INSERT INTO `readaloud` VALUES ('13.mp3', '16', '35', 'Certain types of methodology are more suitable for some research projects than others. For example, the use of questionnaires and surveys is more suitable for quantitative research whereas interviews and focus groups are more often used for qualitative research purposes. ', '13.mp3');
INSERT INTO `readaloud` VALUES ('14.mp3', '17', '35', 'Another administration option to bake marijuana at a relatively low temperature to kill any dangerous microorganisms and then allow that patient to eat it or drink it. Both of these methods of administration make smoking the drug unnecessary. However, criticism of medical marijuana has also been raised because as a natural plant, it cannot be patented and marketed by pharmaceutical companies and is unlikely to win widespread medical acceptance. ', '14.mp3');
INSERT INTO `readaloud` VALUES ('15.mp3', '18', '35', 'A smoking ban is a public policy that includes criminal laws and health regulations that prohibit smoking in certain public places and workspaces. There are varying definitions of smoking employed in this legislation. The strictest definitions define smoking as being the inhalation of any tobacco substance while the loosest define smoking as possessing any lit tobacco product. ', '15.mp3');
INSERT INTO `readaloud` VALUES ('16.mp3', '19', '35', 'Welfare has a special political meaning to the United States because it refers to how the poor receives financial aid. In comparison, Welfare services are regarded as a universal right in other regions like Europe, where it is believed that all citizens should be able to obtain a minimal level of social support and well-being. ', '16.mp3');
INSERT INTO `readaloud` VALUES ('17.mp3', '20', '35', 'Ever since I remembered. Father woke up early, made breakfast for us all and read newspaper. After that he would go to work. He worked as a writer. ', '17.mp3');
INSERT INTO `readaloud` VALUES ('18.mp3', '21', '35', 'First discovered in 2007, “fast radio burst” continue to defy explanation. These cosmic chirps last a thousandth of a second. The characteristics of the radio pulses suggested that they came from galaxies billions of light-years away. However, new works points to a much closer origin-flaring star within our own galaxy. ', '18.mp3');
INSERT INTO `readaloud` VALUES ('19.mp3', '22', '35', 'The development of easy-to-use statistics is being taught and learned. Students can make transformations of variables, create graphs of distributions of variables, and select among statistical analyses all at the click of a button. However, even with these advancements, students sometimes find statistics to be an arduous task. ', '19.mp3');
INSERT INTO `readaloud` VALUES ('20.mp3', '23', '35', 'In the fast-changing world of modern healthcare, the job of a doctor is more and more like the job of a chief executive. The people who run hospitals and physicians\' practices don\'t just need to know medicine. They must also be able to balance budgets, motivate a large and diverse staff and make difficult marketing and legal decisions. ', '20.mp3');
INSERT INTO `readaloud` VALUES ('21.mp3', '24', '35', 'Cheerful sunny yellow is an attention getter. While it is considered an optimistic color, people lose their tempers more often in yellow rooms, and babies will cry more. It is the most difficult color for the eye to take in, so it can be overpowering if overused. Yellow enhances concentration, hence its use for legal pads. It also speeds metabolism. ', '21.mp3');
INSERT INTO `readaloud` VALUES ('22.mp3', '25', '35', 'Since Plato, philosophers have described the decision-making process as either rational or emotional: we carefully deliberate or we “blink” and go with our gut. But as scientists break open the mind’s black box with the latest tools of neuro science, they’re discovering that this not how the mind works. Our best decisions are a finely tuned blend of both feeling and reason – and the precise mix depends on the situation. ', '22.mp3');
INSERT INTO `readaloud` VALUES ('23.mp3', '26', '35', 'The brain is divided into two hemispheres, called the left and right hemispheres. Each hemisphere provided a different set of functions, behaviors, and controls. The right hemisphere is often called the creative side of the brain, while the left hemisphere is the logical or analytic side of brain. ', '23.mp3');
INSERT INTO `readaloud` VALUES ('24.mp3', '27', '35', 'Introvert (or those of us with Introverted tendencies) tends to recharge by spending time alone. They lose energy from being around people for long periods of time, particularly large crowds. Extroverts, on the other hand, gain energy from other people. Extroverts actually find their energy is sapped when they spend too much time alone. They recharge by being social. ', '24.mp3');
INSERT INTO `readaloud` VALUES ('25.mp3', '28', '35', 'Global warming is defined as an increase in the average temperature of the earth’s atmosphere. This trend began in the middle of the 20th century and is one of the major environmental concerns of scientists and governmental officials worldwide. The changes in temperature result mostly from the effect of increased concentrations of greenhouse gasses in the atmosphere. ', '25.mp3');
INSERT INTO `readaloud` VALUES ('26.mp3', '29', '35', 'The Office of Personnel Management was the target of the attack, but data from nearly every government agency was stolen. U.S. investigators say they believe Chinese hackers were behind the breach. ', '26.mp3');
INSERT INTO `readaloud` VALUES ('27.mp3', '30', '35', 'While the Republican field is packed with male candidates, so far, some of the sharpest Clinton critiques have come from women. ', '27.mp3');
INSERT INTO `readaloud` VALUES ('28.mp3', '31', '35', 'As far as politics go, the responses are just as varied. Mitigation is common and calls for a reduction of emissions and less reliance on fossil fuels. Coal burning power plants are now replaced with hydraulic power plants and electrical cars are replacing some gasoline efficient cars. Many people, however, feel that this is not enough. ', '28.mp3');
INSERT INTO `readaloud` VALUES ('29.mp3', '32', '35', 'The border itself between, Mexico and United States is fraught with a mix of urban and desert terrain and spans over 1,900 miles. Both the uninhabited areas of the border and urban areas are where the most drug trafficking and illegal crossings take place. Crime is prevalent in urban cities like El Paso, Texas and San Diego, California. ', '29.mp3');
INSERT INTO `readaloud` VALUES ('30.mp3', '33', '35', 'Free trade is an economic policy under which the government does not interfere with trade. No tariffs are applied to imports or exports, and people are allowed to trade goods and services as they please. Supply and demand dictates the prices for which goods and services sell and are the only factors that determine how resources are allocated in society. ', '30.mp3');
INSERT INTO `readaloud` VALUES ('31.mp3', '34', '35', 'Unlike the United Kingdom, which has taken a relatively restrictive approach to the possession of arms, the United States has taken a more lenient approach. In the United States, three models have evolved regarding the interpretation of the meaning of the right to bear and keep arms as delineated in the Second Amendment. ', '31.mp3');
INSERT INTO `readaloud` VALUES ('32.mp3', '35', '35', 'Trade unions originated in Europe during the industrial revolution. Because of the machinery that had become commonplace, skilled labor became less in demand so employers had nearly all of the bargaining power. Employers mistreated the workers and paid them too little for the work they did. Trade unions were organized that would help in the improvement of working condition. ', '32.mp3');
INSERT INTO `readaloud` VALUES ('33.mp3', '36', '35', 'Unions take the power out of the employer’s hands on many issues. There are examples of cases where workers were engaging in sexual or racial harassment, but were protected by their unions and allowed to keep their jobs. Poor workers and excellent workers often receive the same pay and raises, giving no reason for a person to work harder than necessary at their jobs. ', '33.mp3');
INSERT INTO `readaloud` VALUES ('34.mp3', '37', '35', 'Using more than fifty interviews, award-winning writer Danny Danziger creates a fascinating mosaic of the people behind New York’s magnificent Metropolitan Museum of Art from the aristocratic, acerbic director of the museum, Philippe de Motebello, to the curators who have a deep knowledge and passionate appreciation of their collections, from the security guards to the philanthropists who keep the museum’s financial life blood flowing. ', '34.mp3');
INSERT INTO `readaloud` VALUES ('35.mp3', '38', '35', 'One of the unidentifiable objects in this study lies just outside Centaurus A (NGC 5128), an elliptical galaxy located about 12 million light-years from Earth. The other is in a globular cluster of stars found just outside NGC 4636, another elliptical galaxy located 47 million light-years from Earth in the constellation Virgo. ', '35.mp3');
INSERT INTO `readaloud` VALUES ('36.mp3', '39', '35', 'The climate for doing business improved in Egypt more than in any other country last year, according to a global study that revealed a wave of company-oriented reforms across the Middle East. The World Bank rankings, which look at business regulations, also showed that the pace of business reforms in Eastern Europe was overtaking East Asia. ', '36.mp3');
INSERT INTO `readaloud` VALUES ('37.mp3', '40', '35', 'In 2005, donor countries agreed on an accord to harmonize their practices. Since then, aid officials have complained that too little has changed on the ground. Conferences of donors in developing countries still tend to be dominated by a small group of north European governments, with the US often absent. ', '37.mp3');
INSERT INTO `readaloud` VALUES ('38.mp3', '41', '35', 'In a genuine republic the will of the government is dependent on the will of the society, and the will of the society is dependent on the reason of the society. In Federalist 51, for example, James Madison claimed that the extent and structure of the government of the United States make it dependent on the will of the society. ', '38.mp3');
INSERT INTO `readaloud` VALUES ('39.mp3', '42', '35', 'Analysts were impressed by the improvement in margins reported across all regions, apart from the United Kingdom, and said that this reflected a clear effort to improve profitability across the business. Although the turnaround is still in its early stages and the valuation looks full, given the challenge of turning around such a large and complex business, this is certainly an impressive start. ', '39.mp3');
INSERT INTO `readaloud` VALUES ('47.mp3', '43', '35', 'A recent trend in the entertainment world is to adapt classic works of literature for either TV or movies. One argument is that this is to everyone’s benefit, as it introduces people to works they might otherwise never have, but is rarely done successfully. ', '47.mp3');
INSERT INTO `readaloud` VALUES ('48.mp3', '44', '35', 'A university is a lot more than just classes and exams, university is a concept that offers you a host of possibilities to develop both academically and personally. Find out about the different projects, clubs and societies that are in your university. You will definitely find something you are interested in. ', '48.mp3');
INSERT INTO `readaloud` VALUES ('49.mp3', '45', '35', 'Currently, integration is increasingly needed in the business environment. This need emerges from the efficiency and synergy requirements necessary in a complex and turbulent environment. In other words, integration is needed to facilitate coordination, which is again related to the building of competitive advantage. ', '49.mp3');
INSERT INTO `readaloud` VALUES ('50.mp3', '46', '35', 'There are perhaps three ways of looking at furniture: some people see it as purely functional and useful, and don\'t bother themselves with aesthetics; others see it as essential to civilized living and concern themselves with design and how the furniture will look in a room - in other words, function combined with aesthetics; and yet others see furniture as a form of art. ', '50.mp3');
INSERT INTO `readaloud` VALUES ('51.mp3', '47', '35', 'Reiss took a stab at settling the argument with a meta-analysis — a study of studies — on whether people can really perceive better-than-CD quality sound. He analyzed data from 18 studies, including more than 400 participants and nearly 13,000 listening tests. Overall, listeners picked out the better-than-CD-quality track 52.3 percent of the time. Statistically significant, if not all that impressive. ', '51.mp3');
INSERT INTO `readaloud` VALUES ('52.mp3', '48', '35', 'There are three main interpretations of the English Revolution. The longest lasting interpretation was that the Revolution was the almost inevitable outcome of an age-old power struggle between parliament and crown. The second sees it as a class struggle, and a lead-up to the French and other revolutions. Finally, the third interpretation sees the other two as too fixed, not allowing for unpredictability, and that the outcome could have gone either way. ', '52.mp3');
INSERT INTO `readaloud` VALUES ('53.mp3', '49', '35', 'The tsunamis could provide crucial information about the habitability of ancient Mars. The first one occurred when the planet must have been relatively warm and amenable for life, because it carved out backwash channels as it returned to the sea. By contrast, the planet had become much cooler by the time the second tsunami hit — the waters apparently flash-froze after flowing onto the surface. ', '53.mp3');
INSERT INTO `readaloud` VALUES ('54.mp3', '50', '35', '\"Thompson recognized and exploited all the ingredients of a successful amusement ride,\" writes Judith A. Adams in The American amusement Park Industry. \"His coasters combined an appearance of danger with actual safety, thrilled riders with exhilarating speed, and allowed the public to intimately experience the Industrial Revolution’s new technologies of gears, steel, and dazzling electric lights.\" ', '54.mp3');
INSERT INTO `readaloud` VALUES ('55.mp3', '51', '35', 'Usually, age is determined by physical characteristics, such as teeth or bones. Great — if you have a body. Researchers have tried unsuccessfully to use blood. But in this study, the scientists used immune cells called T-cells. T-cells recognize invaders through receptors that match molecules on bacteria, viruses, even tumors. The cellular activity that produces these receptors also produces a type of circular DNA molecule as a by-product. ', '55.mp3');
INSERT INTO `readaloud` VALUES ('56.mp3', '52', '35', 'For the purposes of argument, culture is divided into material and non-material, and the speaker\'s aim is to show how they both affect each other. Material developments in tools and technology can affect non-material culture, our customs and beliefs, and the other way around. Genetics is used as an example as it has changed the way we think about life, but also our beliefs have affected its rate of development. ', '56.mp3');
INSERT INTO `readaloud` VALUES ('57.mp3', '53', '35', 'Networking is easy and fun because it taps into this human predilection to talk about ourselves when asked. Consider successful networking as little more than the process of guiding a person to tell you about his life, what he\'s doing, the company that employs him, and his current industry. ', '57.mp3');
INSERT INTO `readaloud` VALUES ('58.mp3', '54', '35', 'The second group that is particularly vulnerable are night shift workers...and the third group that is particularly vulnerable are people with sleep disorders, particularly sleep apnoea. One out of three men and one out of six women have sleep apnoea. And yet, 85 percent are undiagnosed and untreated. And it more than doubles the risk of crashes. ', '58.mp3');
INSERT INTO `readaloud` VALUES ('59.mp3', '55', '35', 'It\'s not that human activities didn\'t impact wildlife at all of course. Heavily hunted species, like white-tailed deer, grey squirrels, and raccoons, were photographed somewhat less often in hunted areas. Coyotes showed up more often in hunted areas. While most species didn’t avoid hiking trails, the predators actually preferred them. ', '59.mp3');
INSERT INTO `readaloud` VALUES ('60.mp3', '56', '35', 'Dolphins, whales and porpoises are all social animals, but some species are more sociable than others. This depends on the environment because a species adopts the lifestyle most suitable for this. Among dolphins, forming groups makes it easier for them to find food, reproduce and gain knowledge. They are safer, too, because dolphins can communicate danger when there are threats around. ', '60.mp3');
INSERT INTO `readaloud` VALUES ('61.mp3', '57', '35', 'For centuries, Atlantis has been one of the western world’s favourite legends. a tantalizing blend of fantasy and mystery. Stories tell of a rich and glorious empire that was lost to the sea-where some hope its ruins still lie, waiting to be discovered. ', '61.mp3');
INSERT INTO `readaloud` VALUES ('62.mp3', '58', '35', 'The speaker is a marine biologist who became interested in the Strandlopers, an ancient people who lived on the coastline, because of their connection to the sea. Their way of life intrigued him. As a child he had spent a lot of time by the sea, exploring and collecting things so he began to study them, and discovered some interesting information about their way of life, how they hunted, what tools they used, and so on. ', '62.mp3');
INSERT INTO `readaloud` VALUES ('63.mp3', '59', '35', 'Market research is vital part of the planning of any business. However experienced you or your staff may be in a particular field, if you are thinking of introducing a service to new area. It is important to find out what the local population thinks about it first. ', '63.mp3');
INSERT INTO `readaloud` VALUES ('64.mp3', '60', '35', 'Not a lot is known about how the transportation of goods by water first began. Large cargo boats were being used in some parts of the world up to five thousand years ago. However, sea trade became more widespread when large sailing boats travelled between ports, carrying spices, perfumes and objects made by hand. ', '64.mp3');
INSERT INTO `readaloud` VALUES ('65.mp3', '61', '35', 'Humans need to use energy in order to exist. So it is unsurprising that the way people have been producing energy is largely responsible for current environmental problems. Pollution comes in many forms, but those that are most concerning, because of their impact on health, result from the combustion of fuels in power stations and cars. ', '65.mp3');
INSERT INTO `readaloud` VALUES ('66.mp3', '62', '35', 'History rubs shoulders and often overlaps with many other areas of research, from myths and epics to the social sciences, including economics, politics, biography, demography, and much else besides. Some histories are almost pure narratives, while others go in for detailed, tightly-focused analyses of, for example, the parish records of a Cornish village in the 16th century. ', '66.mp3');
INSERT INTO `readaloud` VALUES ('67.mp3', '63', '35', 'In the Middle Ages, the design and use of flags were considered a means of identifying social status. Flags were, therefore, the symbols not of nations, but of the nobility. The design of each flag resembled the \"devices\" on the noble\'s Coat of Arms, and the size of the flags was an indication of how high the owner stood in the nobility. ', '67.mp3');
INSERT INTO `readaloud` VALUES ('68.mp3', '64', '35', 'Historically what has been used to estimate bats has been photographic estimates, visual estimates, mark-recapture estimates, and those have been highly prone to bias. Newer technology, like thermal imaging cameras is accurate, but expensive. So at a time of epic bat mortality-due to, for example, the fungal white nose syndrome that\'s wiping out bats in Canada and the U.S. ', '68.mp3');
INSERT INTO `readaloud` VALUES ('69.mp3', '65', '35', 'But they did find something that had a much bigger impact on wildlife: habitat quality. The best predictor of wildlife abundance was not human activity, but factors like forest connectivity, nearby housing density, and the amount of adjacent agriculture. The results were published in the Journal of Applied Ecology. ', '69.mp3');
INSERT INTO `readaloud` VALUES ('70.mp3', '66', '35', 'The initial thud comes from when those dorsal bursae collide. And the reverberation results from the vibrations that linger when the tissues pull apart. But Thode the younger says the bursae have to be somewhat sticky for the clapping together and snapping apart to produce a noise with the correct loudness and pitch. That stickiness comes courtesy of the mucus. ', '70.mp3');
INSERT INTO `readaloud` VALUES ('71.mp3', '67', '35', '\"The caterpillars that feed on trees are trying to match the hatching of their eggs to the timing of bud burst. The caterpillars want to feed on the juiciest and least chemically protected leaves. And it\'s not just the caterpillars, of course, that are important. But the knock-on effect is on nesting birds, which are also trying to hatch their chicks at the same time that there\'s the maximum number of caterpillars.\" ', '71.mp3');
INSERT INTO `readaloud` VALUES ('72.mp3', '68', '35', 'Study author Samuel Shian, a materials scientist, says this smart glass is cheaper than others, and uses minimal power much less, for example, than something like a curling iron. And since it\'s flexible and foldable, he says it could even be used for things like camouflage uniforms, to switch, for example, from green and brown to white and gray. \"This would be very useful when the background landscape suddenly changes, such as during early snowfall.\" ', '72.mp3');
INSERT INTO `readaloud` VALUES ('73.mp3', '69', '35', 'This study marks the first time scientists have linked dike formation to large, damaging earthquakes, and Wauthier is looking back through history for more examples. She says researchers will never be able to predict exactly when an earthquake might strike after a dike intrusion. But at least now, researchers and rift zone residents know they\'re not just in for bangs they may also be in for shudders. ', '73.mp3');
INSERT INTO `readaloud` VALUES ('74.mp3', '70', '35', 'Britain, then, was slower to create and develop a police force than the rest of Europe France had one long before indeed, the word police is taken from the French. This fact was not unimportant, as the very idea of a police force was seen as foreign that is, French and particularly undesirable, and was generally regarded as a form of oppression. ', '74.mp3');
INSERT INTO `readaloud` VALUES ('75.mp3', '71', '35', 'A university is not a business. More precisely, a not-for-profit college or university is significantly different than a for- profit business. A university has no owners it is a public trust. Without owners it has no one to pay dividends to, and no one for whom it must maximize its profits. A business has a single over-riding goal: the maximization of return for the owners. A university has a multiplicity of goals: to foster learning, to create knowledge, and to serve its community. ', '75.mp3');
INSERT INTO `readaloud` VALUES ('76.mp3', '72', '35', 'To understand the past you have to be able, as far as possible, to think as the people in the period you are studying thought. The example of what it must have been like to be a peasant in the Middle Ages is used. However, sensibilities change over time and we can\'t completely throw off the mentality of the present. Therefore, every age will have a slightly different perspective on the same period of the past, no matter what the facts are. ', '76.mp3');
INSERT INTO `readaloud` VALUES ('77.mp3', '73', '35', 'Trump has threatened to declare China a currency manipulator, but experts say he has little legal or economic basis to take such a step. He has also threatened to impose a tariff of up to 45 percent on Chinese imports if Beijing doesn\'t behave a move that could lead to a trade war and damage the economies of both nations. ', '77.mp3');
INSERT INTO `readaloud` VALUES ('78.mp3', '74', '35', 'Each tube-shaped mic-robot is a sandwich of three materials. A graphene outer layer, which binds to heavy metals. A middle layer of nickel, which gives the bots magnetic polarity, so they can be pulled through wastewater with magnets. And platinum inside for propulsion. Just add a bit of peroxide to the wastewater, and it\'ll react with the platinum to form water and oxygen bubbles, which propel the tubes along. ', '78.mp3');
INSERT INTO `readaloud` VALUES ('79.mp3', '75', '35', 'By beginning so early, he knows that he has plenty of time to do thoroughly all the work he can be expected to do. All his work having been finished in good time, he has a long interval of rest in the evening before the timely hour when he goes to bed. After a sound night\'s rest, he rises early next morning in good health and spirits for the labors of a new day. ', '79.mp3');
INSERT INTO `readaloud` VALUES ('80.mp3', '76', '35', 'Parents need to take control of the television viewing of Pre-schoolers and children of early school age. A workable technique is to make a simple but firm weekly plan as to what programs will be permitted and how much time overall may be spent in viewing. Any child\'s weekly schedule normally involves a certain amount of time for school, naps, outdoor play and indoor play. There should not, therefore, be great amounts of unfilled time when the child gravitates towards the TV set. ', '80.mp3');
INSERT INTO `readaloud` VALUES ('81.mp3', '77', '35', 'Parents can communicate their personal feelings about undesirable programs both by discouraging their children from watching them and by writing to their local television station or to the programs sponsors. The public does have a voice. Clearly, not all programs need please everybody. We do have a choice of programs and we also have a choice, for ourselves and at least for our younger children, of watching or not watching. There is an off button on every set! ', '81.mp3');
INSERT INTO `readaloud` VALUES ('82.mp3', '78', '35', 'The development of easy-to-use statistical software has changed the way statistics is being taught and learned. Students can make transformations of variables, create graphs of distributions of variables, and select among statistical analyses all at the click of a button. However, even with these advancements, students sometimes still find statistics to be an arduous task. ', '82.mp3');
INSERT INTO `readaloud` VALUES ('83.mp3', '79', '35', 'Tesla came over from Graz and went to work for Thomas Edison. Nonetheless Edison offered him a job, promising Tesla fifty thousand dollars if Tesla could redesign Edisons breakdown-prone DC generator designs. The new generator designs were a vast improvement over Edisons originals. Upon completing the job Tesla went to Edison to collect the $50,000 promised for the task. Tesla, Edison replied, you don’t understand our American humour. And Tesla was never paid. ', '83.mp3');
INSERT INTO `readaloud` VALUES ('84.mp3', '80', '35', 'Lincon\'s apparently radical change of mind about his war power to emancipate slaves was caused by the escalating scope of war, which convinced him that any measure to weaken the confederacy and strengthen the Union war effort and justifiable as a military necessity.', '84.mp3');
INSERT INTO `readaloud` VALUES ('85.mp3', '81', '35', 'History rubs shoulders and often overlaps with many other areas of research, from myths and epics to the social sciences, including economics, politics, biography, demography, and much else besides. Some histories are almost pure narratives, while others go in for detailed, tightly-focused analyses of, for example, the parish records of a Cornish village in the 16th century.', '85.mp3');
INSERT INTO `readaloud` VALUES ('86.mp3', '82', '35', 'There are many kinds of pond, but nearly all are small bodies of shallow, stagnant water in which plants with roots can grow. Water movement is slight and temperatures fluctuate widely. The wealth of plants ensures that during daylight hours oxygen is plentiful. However, at night, when photosynthesis no longer takes place, oxygen supplies can fall very low.', '86.mp3');
INSERT INTO `readaloud` VALUES ('87.mp3', '83', '35', 'Before the time of Alexander the Great, the only eastern people who could be compared with the Greeks in the fields of science and philosophy were from the Indian sub-continent. However, because so little is known about Indian chronology, it is difficult to tell how much of their science was original and how much was the result of Greek influence.', '87.mp3');
INSERT INTO `readaloud` VALUES ('88.mp3', '84', '35', 'While far fewer people these days write letters and therefore have less use for stamps, there are still a few categories of stamp which attract collectors. Stamps in common use for an indefinite period until the price goes up - are called \"definitive\" issues, while a more collectible type of stamp is the \"commemorative\" issue, honouring people, events and anniversaries.', '88.mp3');
INSERT INTO `readaloud` VALUES ('89.mp3', '85', '35', 'In the second quarter of the 19th century, a rapidly growing middle class created a great demand for furniture production. Yet at this stage, while machines were used for certain jobs, such as carved decoration, there was no real mass production. The extra demand was met by numerous woodworkers. Mass production came later and the quality of domestic furniture declined.', '89.mp3');
INSERT INTO `readaloud` VALUES ('90.mp3', '86', '35', 'In the Middle Ages, the design and use of flags were considered a means of identifying social status. Flags were, therefore, the symbols not of nations, but of the nobility. The design of each flag resembled the \"devices\" on the noble\'s Coat of Arms, and the size of the flag was an indication of how high the owner stood in the nobility.', '90.mp3');
INSERT INTO `readaloud` VALUES ('91.mp3', '87', '35', 'The ritual of the state opening of parliament still illustrates the basis of the British constitution. The sovereignty of the Royal Family has passed to the sovereignty of parliament, leaving the monarchy with the trappings of power, while prime ministers are still denied the kind of status that is given to American and French presidents.', '91.mp3');
INSERT INTO `readaloud` VALUES ('92.mp3', '88', '35', 'Most peasants remained self-sufficient and sceptical about money - and with good reason: the triumph of capitalism probably made them worse off. They now had to deal with a centralized imperial state that was collecting tax more efficiently, giving more power to landlords, and slowly reducing customary peasant rights to land and produce.', '92.mp3');
INSERT INTO `readaloud` VALUES ('93.mp3', '89', '35', 'Another method governments use to try and influence the private sector is economic planning. For a long time now, socialist and communist states have used planning as an alternative to the price mechanism, organizing production and distributing their resources according to social and strategic needs, rather than based on purely economic considerations.', '93.mp3');
INSERT INTO `readaloud` VALUES ('94.mp3', '90', '35', 'Most succulent plants are found in regions where there is little rainfall, dry air, plenty of sunshine, porous soils and high temperatures during part of the year. These conditions have caused changes in plant structures, which have resulted in greatly increased thickness of stems, leaves and sometimes roots, enabling them to store moisture from the infrequent rains.', '94.mp3');
INSERT INTO `readaloud` VALUES ('95.mp3', '91', '35', 'Line engraving on metal, which, to a great extent, was a development of the goldsmith \'s craft of ornamenting armour and precious metals, did not emerge as a print-making technique until well into the 151h century. Copper, the metal mainly used for engraving, was expensive, and engraving itself was laborious and took a long time.', '95.mp3');
INSERT INTO `readaloud` VALUES ('96.mp3', '92', '35', 'For the first two or three years after the Second World War, a new title would often sell out within a few months of publication. However, unless public demand for the book was unusually high, they were rarely able to reprint it. With paper stocks strictly rationed, they could not afford to use up precious paper or tie up their limited capital with a reprint.', '96.mp3');
INSERT INTO `readaloud` VALUES ('97.mp3', '93', '35', 'The Atlantic coast of the peninsula can be thought of as the cold side, and the sea on this coast tends to be clear and cold, with a variety of seaweeds growing along the rocky shoreline. On a hot day, however, this cold water can be very refreshing and is said to be less hospitable to sharks, which prefer warmer waters.', '97.mp3');
INSERT INTO `readaloud` VALUES ('98.mp3', '94', '35', 'All the works of art shown in this exhibition were purchased on a shoestring budget. The criteria that the curators had to follow were that works must be acquired cheaply, appeal to a broad range of tastes, and fit with unusual environments. Thus, many of our better known modern artists are not represented.', '98.mp3');
INSERT INTO `readaloud` VALUES ('99.mp3', '95', '35', 'Foam-filled furniture is very dangerous if it catches fire, and foam quickly produces a high temperature, thick smoke and poisonous gases - including carbon monoxide. Therefore, set levels of fire resistance have been established for new and second-hand upholstered furniture and other similar products.', '99.mp3');
INSERT INTO `readaloud` VALUES ('100.mp3', '96', '35', 'The starting point of Bergson\'s theory is the experience of time and motion. Time is the reality we experience most directly, but this doesn\'t mean that we can capture this experience mentally. The past is gone and the future is yet to come. The only reality is the present, which is real through our experience.', '100.mp3');
INSERT INTO `readaloud` VALUES ('101.mp3', '97', '35', 'It is important to note that saving is not the same as investment. Saving is about cash, while investment is about real product. The difference is important because money, being liquid, can leak out of the economic system - which it does when someone who is putting aside unspent income keeps it under the mattress.', '101.mp3');
INSERT INTO `readaloud` VALUES ('102.mp3', '98', '35', 'Historically, the low level of political autonomy of the cities in China is partly a result of the early development of the state bureaucracy. The bureaucrats played a major role in the growth of urbanization, but were also able to control its subsequent development and they never completely gave up this control.', '102.mp3');
INSERT INTO `readaloud` VALUES ('103.mp3', '99', '35', 'Writers may make the mistake of making all their sentences too compact. Some have made this accusation against the prose of Gibbon. An occasional loose sentence prevents the style from becoming too formal and allows the reader to relax slightly. Loose sentences are common in easy, unforced writing, but it is a fault when there are too many of them.', '103.mp3');
INSERT INTO `readaloud` VALUES ('104.mp3', '100', '35', 'There is a long history of rulers and governments trying to legislate on men\'s hair - both the length of the hair on their heads and the style of facial hair. For practical reasons, Alexander the Great insisted his soldiers be clean-shaven, but Peter the Great of Russia went further, insisting no Russians had beards.', '104.mp3');
INSERT INTO `readaloud` VALUES ('105.mp3', '101', '35', 'Early in the 19th century, Wordsworth opposed the coming of the steam train to the Lake District, saying it would destroy its natural character. Meanwhile, Blake denounced the \"dark satanic mills\" of the Industrial Revolution. The conservation of the natural environment, however, did not become a major theme in politics until quite recently.', '105.mp3');
INSERT INTO `readaloud` VALUES ('106.mp3', '102', '35', 'In the distribution of wealth, America is more unequal than most European countries. The richest tenth of the population earns nearly six times more than the poorest tenth. In Germany and France, the ratio is just over three to one. The United States also has the largest proportion of its people in long-term poverty.', '106.mp3');
INSERT INTO `readaloud` VALUES ('107.mp3', '103', '35', 'Chaucer was probably the first English writer to see the English nation as a unity. This is the reason for his great appeal to his contemporaries. A long war with France had produced a wave of patriotism, with people no longer seeing each other as Saxon or Norman but as English.', '107.mp3');
INSERT INTO `readaloud` VALUES ('108.mp3', '104', '35', 'What can history tell us about contemporary society? Generally, in the past, even in Europe until the 18th century, it was assumed that it could tell how any society should work. The past was the model for the present and the future. It represented the key to the genetic code by which each generation produced its successors and ordered their relationships.', '108.mp3');
INSERT INTO `readaloud` VALUES ('1.mp3', '105', '35', 'Domestication is an evolutionary, rather than a political development. They were more likely to survive and prosper in an alliance with humans than on their own. Human provided the animals with food and protection, in exchange for which the animals provided the humans their milk and eggs, and yes, their flesh. ', '1.mp3');
INSERT INTO `readaloud` VALUES ('2.mp3', '106', '35', 'Akimbo, this must be one of the odder-looking words in the language. It puzzles us in part because it doesn\'t seem to have any relatives. What\'s more, it is now virtually a fossil word, until recently almost invariably found in \'arms Akimbo\', a posture in which a person stands with hands on hips and elbows sharply bent outward, one that signals impatience and hostility, or contempt. ', '2.mp3');
INSERT INTO `readaloud` VALUES ('3.mp3', '107', '35', 'A young man from a small provincial town - a man without independent wealth, without powerful family connections and without a university education -- moved to London in the late 1580\'s and, in a remarkably short time, became the greatest playwright not of his age alone but of all time. How did Shakespeare become Shakespeare? ', '3.mp3');
INSERT INTO `readaloud` VALUES ('4.mp3', '108', '35', 'Moods may also have an effect on how information is processed, by influencing the extent to that which judges rely on pre-existing, internal information, or focus on new, external information. Positive moods promote more holistic and top-down processing style, while negative moods recruit more stimulus-driven and bottom-up processing. ', '4.mp3');
INSERT INTO `readaloud` VALUES ('5.mp3', '109', '35', 'The problem begins with the alphabet itself. Building a spelling system for English using letters that come from Latin - despite the two languages not sharing exactly the same set of sounds - is like building a playroom using an IKEA office set. ', '5.mp3');
INSERT INTO `readaloud` VALUES ('6.mp3', '110', '35', 'Modern buildings have to achieve certain performance requirements, at least to satisfy those of building codes, to provide a safe, healthy, and comfortable environment. However, these conditioned environments demand resources in energy and materials, which are both limited in supply, to build and operate. ', '6.mp3');
INSERT INTO `readaloud` VALUES ('7.mp3', '111', '35', 'Three professors from Hamburg University\'s medical faculty travelled last month to Ingeborg\'s sitting room in East Berlin to test her on the work she carried out in pre war Germany. ', '7.mp3');
INSERT INTO `readaloud` VALUES ('8.mp3', '112', '35', 'This finding is understandable in certain cases in spite of its high significance; that is because energy efficiency of building operation just represents a single aspect of sustainability. ', '8.mp3');
INSERT INTO `readaloud` VALUES ('9.mp3', '113', '35', 'The numbers on US student debt, after all, are truly staggering. The average 2015 US university graduate who took out loans to help pay for tuition enters the workforce with $35,000 in student debt. ', '9.mp3');
INSERT INTO `readaloud` VALUES ('10.mp3', '114', '35', 'The insults and criticism were not unexpected. What was surprising was people\'s enthusiasm about the competition. Thousands have participated in the discussion. ', '10.mp3');
INSERT INTO `readaloud` VALUES ('11.mp3', '115', '35', 'Who do you think is the most glamorous person? A biotechnologist who led his company in international research, an ordinary welder who gained international fame through his work, or a photographer complimented widely for a series of photos? ', '11.mp3');
INSERT INTO `readaloud` VALUES ('12.mp3', '116', '35', 'In the photo, the wild cat\'s huge paws are clamped onto the side of the white safari Jeep in which Chappell was a passenger. Almost as tall as the Jeep on her hind legs, she appears to be forcing her muzzle into the back window. ', '12.mp3');
INSERT INTO `readaloud` VALUES ('13.mp3', '117', '35', 'Certain types of methodology are more suitable for some research projects than others. For example, the use of questionnaires and surveys is more suitable for quantitative research whereas interviews and focus groups are more often used for qualitative research purposes. ', '13.mp3');
INSERT INTO `readaloud` VALUES ('14.mp3', '118', '35', 'Another administration option to bake marijuana at a relatively low temperature to kill any dangerous microorganisms and then allow that patient to eat it or drink it. Both of these methods of administration make smoking the drug unnecessary. However, criticism of medical marijuana has also been raised because as a natural plant, it cannot be patented and marketed by pharmaceutical companies and is unlikely to win widespread medical acceptance. ', '14.mp3');
INSERT INTO `readaloud` VALUES ('15.mp3', '119', '35', 'A smoking ban is a public policy that includes criminal laws and health regulations that prohibit smoking in certain public places and workspaces. There are varying definitions of smoking employed in this legislation. The strictest definitions define smoking as being the inhalation of any tobacco substance while the loosest define smoking as possessing any lit tobacco product. ', '15.mp3');
INSERT INTO `readaloud` VALUES ('16.mp3', '120', '35', 'Welfare has a special political meaning to the United States because it refers to how the poor receives financial aid. In comparison, Welfare services are regarded as a universal right in other regions like Europe, where it is believed that all citizens should be able to obtain a minimal level of social support and well-being. ', '16.mp3');
INSERT INTO `readaloud` VALUES ('17.mp3', '121', '35', 'Ever since I remembered. Father woke up early, made breakfast for us all and read newspaper. After that he would go to work. He worked as a writer. ', '17.mp3');
INSERT INTO `readaloud` VALUES ('18.mp3', '122', '35', 'First discovered in 2007, “fast radio burst” continue to defy explanation. These cosmic chirps last a thousandth of a second. The characteristics of the radio pulses suggested that they came from galaxies billions of light-years away. However, new works points to a much closer origin-flaring star within our own galaxy. ', '18.mp3');
INSERT INTO `readaloud` VALUES ('19.mp3', '123', '35', 'The development of easy-to-use statistics is being taught and learned. Students can make transformations of variables, create graphs of distributions of variables, and select among statistical analyses all at the click of a button. However, even with these advancements, students sometimes find statistics to be an arduous task. ', '19.mp3');
INSERT INTO `readaloud` VALUES ('20.mp3', '124', '35', 'In the fast-changing world of modern healthcare, the job of a doctor is more and more like the job of a chief executive. The people who run hospitals and physicians\' practices don\'t just need to know medicine. They must also be able to balance budgets, motivate a large and diverse staff and make difficult marketing and legal decisions. ', '20.mp3');
INSERT INTO `readaloud` VALUES ('21.mp3', '125', '35', 'Cheerful sunny yellow is an attention getter. While it is considered an optimistic color, people lose their tempers more often in yellow rooms, and babies will cry more. It is the most difficult color for the eye to take in, so it can be overpowering if overused. Yellow enhances concentration, hence its use for legal pads. It also speeds metabolism. ', '21.mp3');
INSERT INTO `readaloud` VALUES ('22.mp3', '126', '35', 'Since Plato, philosophers have described the decision-making process as either rational or emotional: we carefully deliberate or we “blink” and go with our gut. But as scientists break open the mind’s black box with the latest tools of neuro science, they’re discovering that this not how the mind works. Our best decisions are a finely tuned blend of both feeling and reason – and the precise mix depends on the situation. ', '22.mp3');
INSERT INTO `readaloud` VALUES ('23.mp3', '127', '35', 'The brain is divided into two hemispheres, called the left and right hemispheres. Each hemisphere provided a different set of functions, behaviors, and controls. The right hemisphere is often called the creative side of the brain, while the left hemisphere is the logical or analytic side of brain. ', '23.mp3');
INSERT INTO `readaloud` VALUES ('24.mp3', '128', '35', 'Introvert (or those of us with Introverted tendencies) tends to recharge by spending time alone. They lose energy from being around people for long periods of time, particularly large crowds. Extroverts, on the other hand, gain energy from other people. Extroverts actually find their energy is sapped when they spend too much time alone. They recharge by being social. ', '24.mp3');
INSERT INTO `readaloud` VALUES ('25.mp3', '129', '35', 'Global warming is defined as an increase in the average temperature of the earth’s atmosphere. This trend began in the middle of the 20th century and is one of the major environmental concerns of scientists and governmental officials worldwide. The changes in temperature result mostly from the effect of increased concentrations of greenhouse gasses in the atmosphere. ', '25.mp3');
INSERT INTO `readaloud` VALUES ('26.mp3', '130', '35', 'The Office of Personnel Management was the target of the attack, but data from nearly every government agency was stolen. U.S. investigators say they believe Chinese hackers were behind the breach. ', '26.mp3');
INSERT INTO `readaloud` VALUES ('27.mp3', '131', '35', 'While the Republican field is packed with male candidates, so far, some of the sharpest Clinton critiques have come from women. ', '27.mp3');
INSERT INTO `readaloud` VALUES ('28.mp3', '132', '35', 'As far as politics go, the responses are just as varied. Mitigation is common and calls for a reduction of emissions and less reliance on fossil fuels. Coal burning power plants are now replaced with hydraulic power plants and electrical cars are replacing some gasoline efficient cars. Many people, however, feel that this is not enough. ', '28.mp3');
INSERT INTO `readaloud` VALUES ('29.mp3', '133', '35', 'The border itself between, Mexico and United States is fraught with a mix of urban and desert terrain and spans over 1,900 miles. Both the uninhabited areas of the border and urban areas are where the most drug trafficking and illegal crossings take place. Crime is prevalent in urban cities like El Paso, Texas and San Diego, California. ', '29.mp3');
INSERT INTO `readaloud` VALUES ('30.mp3', '134', '35', 'Free trade is an economic policy under which the government does not interfere with trade. No tariffs are applied to imports or exports, and people are allowed to trade goods and services as they please. Supply and demand dictates the prices for which goods and services sell and are the only factors that determine how resources are allocated in society. ', '30.mp3');
INSERT INTO `readaloud` VALUES ('31.mp3', '135', '35', 'Unlike the United Kingdom, which has taken a relatively restrictive approach to the possession of arms, the United States has taken a more lenient approach. In the United States, three models have evolved regarding the interpretation of the meaning of the right to bear and keep arms as delineated in the Second Amendment. ', '31.mp3');
INSERT INTO `readaloud` VALUES ('32.mp3', '136', '35', 'Trade unions originated in Europe during the industrial revolution. Because of the machinery that had become commonplace, skilled labor became less in demand so employers had nearly all of the bargaining power. Employers mistreated the workers and paid them too little for the work they did. Trade unions were organized that would help in the improvement of working condition. ', '32.mp3');
INSERT INTO `readaloud` VALUES ('33.mp3', '137', '35', 'Unions take the power out of the employer’s hands on many issues. There are examples of cases where workers were engaging in sexual or racial harassment, but were protected by their unions and allowed to keep their jobs. Poor workers and excellent workers often receive the same pay and raises, giving no reason for a person to work harder than necessary at their jobs. ', '33.mp3');
INSERT INTO `readaloud` VALUES ('34.mp3', '138', '35', 'Using more than fifty interviews, award-winning writer Danny Danziger creates a fascinating mosaic of the people behind New York’s magnificent Metropolitan Museum of Art from the aristocratic, acerbic director of the museum, Philippe de Motebello, to the curators who have a deep knowledge and passionate appreciation of their collections, from the security guards to the philanthropists who keep the museum’s financial life blood flowing. ', '34.mp3');
INSERT INTO `readaloud` VALUES ('35.mp3', '139', '35', 'One of the unidentifiable objects in this study lies just outside Centaurus A (NGC 5128), an elliptical galaxy located about 12 million light-years from Earth. The other is in a globular cluster of stars found just outside NGC 4636, another elliptical galaxy located 47 million light-years from Earth in the constellation Virgo. ', '35.mp3');
INSERT INTO `readaloud` VALUES ('36.mp3', '140', '35', 'The climate for doing business improved in Egypt more than in any other country last year, according to a global study that revealed a wave of company-oriented reforms across the Middle East. The World Bank rankings, which look at business regulations, also showed that the pace of business reforms in Eastern Europe was overtaking East Asia. ', '36.mp3');
INSERT INTO `readaloud` VALUES ('37.mp3', '141', '35', 'In 2005, donor countries agreed on an accord to harmonize their practices. Since then, aid officials have complained that too little has changed on the ground. Conferences of donors in developing countries still tend to be dominated by a small group of north European governments, with the US often absent. ', '37.mp3');
INSERT INTO `readaloud` VALUES ('38.mp3', '142', '35', 'In a genuine republic the will of the government is dependent on the will of the society, and the will of the society is dependent on the reason of the society. In Federalist 51, for example, James Madison claimed that the extent and structure of the government of the United States make it dependent on the will of the society. ', '38.mp3');
INSERT INTO `readaloud` VALUES ('39.mp3', '143', '35', 'Analysts were impressed by the improvement in margins reported across all regions, apart from the United Kingdom, and said that this reflected a clear effort to improve profitability across the business. Although the turnaround is still in its early stages and the valuation looks full, given the challenge of turning around such a large and complex business, this is certainly an impressive start. ', '39.mp3');
INSERT INTO `readaloud` VALUES ('40.mp3', '144', '35', 'The coastal wetlands have environmental and economic importance. Wetlands provide natural wealth. They have important filtering capabilities. As the runoff water passes, they retain excess nutrients and some pollutants. They maintain water flow during dry periods. Thousands of people depend on groundwater for drinking. They act as natural sponges of flood waters and contain soil erosion. They control floods and save the buildings from collapsing during heavy rains. The hardwood-riparian wetlands along the Mississippi River can store sixty days of floodwater. ', '40.mp3');
INSERT INTO `readaloud` VALUES ('41.mp3', '145', '35', 'IT may well change the way you live, yet again. Welcome to the world mobile commerce, where your hand-held device, it a mobile phone, a personal digital assistant (PDA) or any other wireless application will soon be used for commercial transactions. Skeptical? Consider these facts In Japan, mobile phones are used for location based services where the mobile service provider tie up with a host of other players such as restaurants, car rental companies etc. When the mobile use enters that zone, messages from all these players are flashed on the mobile device. Location base services are proved in several other countries as well. ', '41.mp3');
INSERT INTO `readaloud` VALUES ('42.mp3', '146', '35', 'In the past, Naming English as a separate subject seemed relatively easy. The textbook selected and graded items of language which were put into content and then practiced intensively. New items were carefully controlled so that the student could cope quite easily. Now that English is used as a medium of instruction, however, all this has changed. Unknown items of grammar and vocabulary appear in texts which attempt to explain new and often difficult information. Difficulties with the language interact with difficulties as regards the subject matter. ', '42.mp3');
INSERT INTO `readaloud` VALUES ('43.mp3', '147', '35', 'The student’s reading in his own subject slows down, and his comprehension becomes less secure. He expresses himself slowly and often fails to convey his ideas exactly. He is disappointed to find that under pressure he makes a lot of unnecessary mistakes in areas where he knows the correct language forms. His social relations are difficult as he cannot find the right phrase quickly enough to keep a conversation going, so his language often betrays him into dullness, coldness, or worst of all, rudeness. Instead of the students being in control of the language, the language seems now to be in control of the students. ', '43.mp3');
INSERT INTO `readaloud` VALUES ('44.mp3', '148', '35', 'Yellow is the most optimistic color, yet surprisingly, people lose their tempers most often in yellow rooms and babies cry more in them. The reason may be that yellow is the hardest color on the eye. On the other hand, it speeds metabolism and enhances concentration; think of yellow legal pads and post-it notes. ', '44.mp3');
INSERT INTO `readaloud` VALUES ('45.mp3', '149', '35', 'Many papers you write in college will require you to include quotes from one or more sources. Even if you don\'t have to do it, integrating a few quotes into your writing can add life and persuasiveness to your arguments. The key is to use quotes to support a point you\'re trying to make rather than just include them to fill space. ', '45.mp3');
INSERT INTO `readaloud` VALUES ('46.mp3', '150', '35', 'As a historian, if you really want to understand the sensibilities of those who lived in the past, you must be like a novelist and get into the skins of your characters and think and feel as they do. You are asked to imagine what it\'s like to be a peasant in medieval times, asking the sort of questions a peasant might ask. What the writer is saying is that a historian needs imaginative sympathy with ordinary people in the past. ', '46.mp3');
INSERT INTO `readaloud` VALUES ('47.mp3', '151', '35', 'A recent trend in the entertainment world is to adapt classic works of literature for either TV or movies. One argument is that this is to everyone’s benefit, as it introduces people to works they might otherwise never have, but is rarely done successfully. ', '47.mp3');
INSERT INTO `readaloud` VALUES ('48.mp3', '152', '35', 'A university is a lot more than just classes and exams, university is a concept that offers you a host of possibilities to develop both academically and personally. Find out about the different projects, clubs and societies that are in your university. You will definitely find something you are interested in. ', '48.mp3');
INSERT INTO `readaloud` VALUES ('49.mp3', '153', '35', 'Currently, integration is increasingly needed in the business environment. This need emerges from the efficiency and synergy requirements necessary in a complex and turbulent environment. In other words, integration is needed to facilitate coordination, which is again related to the building of competitive advantage. ', '49.mp3');
INSERT INTO `readaloud` VALUES ('50.mp3', '154', '35', 'There are perhaps three ways of looking at furniture: some people see it as purely functional and useful, and don\'t bother themselves with aesthetics; others see it as essential to civilized living and concern themselves with design and how the furniture will look in a room - in other words, function combined with aesthetics; and yet others see furniture as a form of art. ', '50.mp3');
INSERT INTO `readaloud` VALUES ('51.mp3', '155', '35', 'Reiss took a stab at settling the argument with a meta-analysis — a study of studies — on whether people can really perceive better-than-CD quality sound. He analyzed data from 18 studies, including more than 400 participants and nearly 13,000 listening tests. Overall, listeners picked out the better-than-CD-quality track 52.3 percent of the time. Statistically significant, if not all that impressive. ', '51.mp3');
INSERT INTO `readaloud` VALUES ('52.mp3', '156', '35', 'There are three main interpretations of the English Revolution. The longest lasting interpretation was that the Revolution was the almost inevitable outcome of an age-old power struggle between parliament and crown. The second sees it as a class struggle, and a lead-up to the French and other revolutions. Finally, the third interpretation sees the other two as too fixed, not allowing for unpredictability, and that the outcome could have gone either way. ', '52.mp3');
INSERT INTO `readaloud` VALUES ('53.mp3', '157', '35', 'The tsunamis could provide crucial information about the habitability of ancient Mars. The first one occurred when the planet must have been relatively warm and amenable for life, because it carved out backwash channels as it returned to the sea. By contrast, the planet had become much cooler by the time the second tsunami hit — the waters apparently flash-froze after flowing onto the surface. ', '53.mp3');
INSERT INTO `readaloud` VALUES ('54.mp3', '158', '35', '\"Thompson recognized and exploited all the ingredients of a successful amusement ride,\" writes Judith A. Adams in The American amusement Park Industry. \"His coasters combined an appearance of danger with actual safety, thrilled riders with exhilarating speed, and allowed the public to intimately experience the Industrial Revolution’s new technologies of gears, steel, and dazzling electric lights.\" ', '54.mp3');
INSERT INTO `readaloud` VALUES ('55.mp3', '159', '35', 'Usually, age is determined by physical characteristics, such as teeth or bones. Great — if you have a body. Researchers have tried unsuccessfully to use blood. But in this study, the scientists used immune cells called T-cells. T-cells recognize invaders through receptors that match molecules on bacteria, viruses, even tumors. The cellular activity that produces these receptors also produces a type of circular DNA molecule as a by-product. ', '55.mp3');
INSERT INTO `readaloud` VALUES ('56.mp3', '160', '35', 'For the purposes of argument, culture is divided into material and non-material, and the speaker\'s aim is to show how they both affect each other. Material developments in tools and technology can affect non-material culture, our customs and beliefs, and the other way around. Genetics is used as an example as it has changed the way we think about life, but also our beliefs have affected its rate of development. ', '56.mp3');
INSERT INTO `readaloud` VALUES ('57.mp3', '161', '35', 'Networking is easy and fun because it taps into this human predilection to talk about ourselves when asked. Consider successful networking as little more than the process of guiding a person to tell you about his life, what he\'s doing, the company that employs him, and his current industry. ', '57.mp3');
INSERT INTO `readaloud` VALUES ('58.mp3', '162', '35', 'The second group that is particularly vulnerable are night shift workers...and the third group that is particularly vulnerable are people with sleep disorders, particularly sleep apnoea. One out of three men and one out of six women have sleep apnoea. And yet, 85 percent are undiagnosed and untreated. And it more than doubles the risk of crashes. ', '58.mp3');
INSERT INTO `readaloud` VALUES ('59.mp3', '163', '35', 'It\'s not that human activities didn\'t impact wildlife at all of course. Heavily hunted species, like white-tailed deer, grey squirrels, and raccoons, were photographed somewhat less often in hunted areas. Coyotes showed up more often in hunted areas. While most species didn’t avoid hiking trails, the predators actually preferred them. ', '59.mp3');
INSERT INTO `readaloud` VALUES ('60.mp3', '164', '35', 'Dolphins, whales and porpoises are all social animals, but some species are more sociable than others. This depends on the environment because a species adopts the lifestyle most suitable for this. Among dolphins, forming groups makes it easier for them to find food, reproduce and gain knowledge. They are safer, too, because dolphins can communicate danger when there are threats around. ', '60.mp3');
INSERT INTO `readaloud` VALUES ('61.mp3', '165', '35', 'For centuries, Atlantis has been one of the western world’s favourite legends. a tantalizing blend of fantasy and mystery. Stories tell of a rich and glorious empire that was lost to the sea-where some hope its ruins still lie, waiting to be discovered. ', '61.mp3');
INSERT INTO `readaloud` VALUES ('62.mp3', '166', '35', 'The speaker is a marine biologist who became interested in the Strandlopers, an ancient people who lived on the coastline, because of their connection to the sea. Their way of life intrigued him. As a child he had spent a lot of time by the sea, exploring and collecting things so he began to study them, and discovered some interesting information about their way of life, how they hunted, what tools they used, and so on. ', '62.mp3');
INSERT INTO `readaloud` VALUES ('63.mp3', '167', '35', 'Market research is vital part of the planning of any business. However experienced you or your staff may be in a particular field, if you are thinking of introducing a service to new area. It is important to find out what the local population thinks about it first. ', '63.mp3');
INSERT INTO `readaloud` VALUES ('64.mp3', '168', '35', 'Not a lot is known about how the transportation of goods by water first began. Large cargo boats were being used in some parts of the world up to five thousand years ago. However, sea trade became more widespread when large sailing boats travelled between ports, carrying spices, perfumes and objects made by hand. ', '64.mp3');
INSERT INTO `readaloud` VALUES ('65.mp3', '169', '35', 'Humans need to use energy in order to exist. So it is unsurprising that the way people have been producing energy is largely responsible for current environmental problems. Pollution comes in many forms, but those that are most concerning, because of their impact on health, result from the combustion of fuels in power stations and cars. ', '65.mp3');
INSERT INTO `readaloud` VALUES ('66.mp3', '170', '35', 'History rubs shoulders and often overlaps with many other areas of research, from myths and epics to the social sciences, including economics, politics, biography, demography, and much else besides. Some histories are almost pure narratives, while others go in for detailed, tightly-focused analyses of, for example, the parish records of a Cornish village in the 16th century. ', '66.mp3');
INSERT INTO `readaloud` VALUES ('67.mp3', '171', '35', 'In the Middle Ages, the design and use of flags were considered a means of identifying social status. Flags were, therefore, the symbols not of nations, but of the nobility. The design of each flag resembled the \"devices\" on the noble\'s Coat of Arms, and the size of the flags was an indication of how high the owner stood in the nobility. ', '67.mp3');
INSERT INTO `readaloud` VALUES ('68.mp3', '172', '35', 'Historically what has been used to estimate bats has been photographic estimates, visual estimates, mark-recapture estimates, and those have been highly prone to bias. Newer technology, like thermal imaging cameras is accurate, but expensive. So at a time of epic bat mortality-due to, for example, the fungal white nose syndrome that\'s wiping out bats in Canada and the U.S. ', '68.mp3');
INSERT INTO `readaloud` VALUES ('69.mp3', '173', '35', 'But they did find something that had a much bigger impact on wildlife: habitat quality. The best predictor of wildlife abundance was not human activity, but factors like forest connectivity, nearby housing density, and the amount of adjacent agriculture. The results were published in the Journal of Applied Ecology. ', '69.mp3');
INSERT INTO `readaloud` VALUES ('70.mp3', '174', '35', 'The initial thud comes from when those dorsal bursae collide. And the reverberation results from the vibrations that linger when the tissues pull apart. But Thode the younger says the bursae have to be somewhat sticky for the clapping together and snapping apart to produce a noise with the correct loudness and pitch. That stickiness comes courtesy of the mucus. ', '70.mp3');
INSERT INTO `readaloud` VALUES ('71.mp3', '175', '35', '\"The caterpillars that feed on trees are trying to match the hatching of their eggs to the timing of bud burst. The caterpillars want to feed on the juiciest and least chemically protected leaves. And it\'s not just the caterpillars, of course, that are important. But the knock-on effect is on nesting birds, which are also trying to hatch their chicks at the same time that there\'s the maximum number of caterpillars.\" ', '71.mp3');
INSERT INTO `readaloud` VALUES ('72.mp3', '176', '35', 'Study author Samuel Shian, a materials scientist, says this smart glass is cheaper than others, and uses minimal power much less, for example, than something like a curling iron. And since it\'s flexible and foldable, he says it could even be used for things like camouflage uniforms, to switch, for example, from green and brown to white and gray. \"This would be very useful when the background landscape suddenly changes, such as during early snowfall.\" ', '72.mp3');
INSERT INTO `readaloud` VALUES ('73.mp3', '177', '35', 'This study marks the first time scientists have linked dike formation to large, damaging earthquakes, and Wauthier is looking back through history for more examples. She says researchers will never be able to predict exactly when an earthquake might strike after a dike intrusion. But at least now, researchers and rift zone residents know they\'re not just in for bangs they may also be in for shudders. ', '73.mp3');
INSERT INTO `readaloud` VALUES ('74.mp3', '178', '35', 'Britain, then, was slower to create and develop a police force than the rest of Europe France had one long before indeed, the word police is taken from the French. This fact was not unimportant, as the very idea of a police force was seen as foreign that is, French and particularly undesirable, and was generally regarded as a form of oppression. ', '74.mp3');
INSERT INTO `readaloud` VALUES ('75.mp3', '179', '35', 'A university is not a business. More precisely, a not-for-profit college or university is significantly different than a for- profit business. A university has no owners it is a public trust. Without owners it has no one to pay dividends to, and no one for whom it must maximize its profits. A business has a single over-riding goal: the maximization of return for the owners. A university has a multiplicity of goals: to foster learning, to create knowledge, and to serve its community. ', '75.mp3');
INSERT INTO `readaloud` VALUES ('76.mp3', '180', '35', 'To understand the past you have to be able, as far as possible, to think as the people in the period you are studying thought. The example of what it must have been like to be a peasant in the Middle Ages is used. However, sensibilities change over time and we can\'t completely throw off the mentality of the present. Therefore, every age will have a slightly different perspective on the same period of the past, no matter what the facts are. ', '76.mp3');
INSERT INTO `readaloud` VALUES ('77.mp3', '181', '35', 'Trump has threatened to declare China a currency manipulator, but experts say he has little legal or economic basis to take such a step. He has also threatened to impose a tariff of up to 45 percent on Chinese imports if Beijing doesn\'t behave a move that could lead to a trade war and damage the economies of both nations. ', '77.mp3');
INSERT INTO `readaloud` VALUES ('78.mp3', '182', '35', 'Each tube-shaped mic-robot is a sandwich of three materials. A graphene outer layer, which binds to heavy metals. A middle layer of nickel, which gives the bots magnetic polarity, so they can be pulled through wastewater with magnets. And platinum inside for propulsion. Just add a bit of peroxide to the wastewater, and it\'ll react with the platinum to form water and oxygen bubbles, which propel the tubes along. ', '78.mp3');
INSERT INTO `readaloud` VALUES ('79.mp3', '183', '35', 'By beginning so early, he knows that he has plenty of time to do thoroughly all the work he can be expected to do. All his work having been finished in good time, he has a long interval of rest in the evening before the timely hour when he goes to bed. After a sound night\'s rest, he rises early next morning in good health and spirits for the labors of a new day. ', '79.mp3');
INSERT INTO `readaloud` VALUES ('80.mp3', '184', '35', 'Parents need to take control of the television viewing of Pre-schoolers and children of early school age. A workable technique is to make a simple but firm weekly plan as to what programs will be permitted and how much time overall may be spent in viewing. Any child\'s weekly schedule normally involves a certain amount of time for school, naps, outdoor play and indoor play. There should not, therefore, be great amounts of unfilled time when the child gravitates towards the TV set. ', '80.mp3');
INSERT INTO `readaloud` VALUES ('81.mp3', '185', '35', 'Parents can communicate their personal feelings about undesirable programs both by discouraging their children from watching them and by writing to their local television station or to the programs sponsors. The public does have a voice. Clearly, not all programs need please everybody. We do have a choice of programs and we also have a choice, for ourselves and at least for our younger children, of watching or not watching. There is an off button on every set! ', '81.mp3');
INSERT INTO `readaloud` VALUES ('82.mp3', '186', '35', 'The development of easy-to-use statistical software has changed the way statistics is being taught and learned. Students can make transformations of variables, create graphs of distributions of variables, and select among statistical analyses all at the click of a button. However, even with these advancements, students sometimes still find statistics to be an arduous task. ', '82.mp3');
INSERT INTO `readaloud` VALUES ('83.mp3', '187', '35', 'Tesla came over from Graz and went to work for Thomas Edison. Nonetheless Edison offered him a job, promising Tesla fifty thousand dollars if Tesla could redesign Edisons breakdown-prone DC generator designs. The new generator designs were a vast improvement over Edisons originals. Upon completing the job Tesla went to Edison to collect the $50,000 promised for the task. Tesla, Edison replied, you don’t understand our American humour. And Tesla was never paid. ', '83.mp3');
INSERT INTO `readaloud` VALUES ('84.mp3', '188', '35', 'Lincon\'s apparently radical change of mind about his war power to emancipate slaves was caused by the escalating scope of war, which convinced him that any measure to weaken the confederacy and strengthen the Union war effort and justifiable as a military necessity.', '84.mp3');
INSERT INTO `readaloud` VALUES ('85.mp3', '189', '35', 'History rubs shoulders and often overlaps with many other areas of research, from myths and epics to the social sciences, including economics, politics, biography, demography, and much else besides. Some histories are almost pure narratives, while others go in for detailed, tightly-focused analyses of, for example, the parish records of a Cornish village in the 16th century.', '85.mp3');
INSERT INTO `readaloud` VALUES ('86.mp3', '190', '35', 'There are many kinds of pond, but nearly all are small bodies of shallow, stagnant water in which plants with roots can grow. Water movement is slight and temperatures fluctuate widely. The wealth of plants ensures that during daylight hours oxygen is plentiful. However, at night, when photosynthesis no longer takes place, oxygen supplies can fall very low.', '86.mp3');
INSERT INTO `readaloud` VALUES ('87.mp3', '191', '35', 'Before the time of Alexander the Great, the only eastern people who could be compared with the Greeks in the fields of science and philosophy were from the Indian sub-continent. However, because so little is known about Indian chronology, it is difficult to tell how much of their science was original and how much was the result of Greek influence.', '87.mp3');
INSERT INTO `readaloud` VALUES ('88.mp3', '192', '35', 'While far fewer people these days write letters and therefore have less use for stamps, there are still a few categories of stamp which attract collectors. Stamps in common use for an indefinite period until the price goes up - are called \"definitive\" issues, while a more collectible type of stamp is the \"commemorative\" issue, honouring people, events and anniversaries.', '88.mp3');
INSERT INTO `readaloud` VALUES ('89.mp3', '193', '35', 'In the second quarter of the 19th century, a rapidly growing middle class created a great demand for furniture production. Yet at this stage, while machines were used for certain jobs, such as carved decoration, there was no real mass production. The extra demand was met by numerous woodworkers. Mass production came later and the quality of domestic furniture declined.', '89.mp3');
INSERT INTO `readaloud` VALUES ('90.mp3', '194', '35', 'In the Middle Ages, the design and use of flags were considered a means of identifying social status. Flags were, therefore, the symbols not of nations, but of the nobility. The design of each flag resembled the \"devices\" on the noble\'s Coat of Arms, and the size of the flag was an indication of how high the owner stood in the nobility.', '90.mp3');
INSERT INTO `readaloud` VALUES ('91.mp3', '195', '35', 'The ritual of the state opening of parliament still illustrates the basis of the British constitution. The sovereignty of the Royal Family has passed to the sovereignty of parliament, leaving the monarchy with the trappings of power, while prime ministers are still denied the kind of status that is given to American and French presidents.', '91.mp3');
INSERT INTO `readaloud` VALUES ('92.mp3', '196', '35', 'Most peasants remained self-sufficient and sceptical about money - and with good reason: the triumph of capitalism probably made them worse off. They now had to deal with a centralized imperial state that was collecting tax more efficiently, giving more power to landlords, and slowly reducing customary peasant rights to land and produce.', '92.mp3');
INSERT INTO `readaloud` VALUES ('93.mp3', '197', '35', 'Another method governments use to try and influence the private sector is economic planning. For a long time now, socialist and communist states have used planning as an alternative to the price mechanism, organizing production and distributing their resources according to social and strategic needs, rather than based on purely economic considerations.', '93.mp3');
INSERT INTO `readaloud` VALUES ('94.mp3', '198', '35', 'Most succulent plants are found in regions where there is little rainfall, dry air, plenty of sunshine, porous soils and high temperatures during part of the year. These conditions have caused changes in plant structures, which have resulted in greatly increased thickness of stems, leaves and sometimes roots, enabling them to store moisture from the infrequent rains.', '94.mp3');
INSERT INTO `readaloud` VALUES ('95.mp3', '199', '35', 'Line engraving on metal, which, to a great extent, was a development of the goldsmith \'s craft of ornamenting armour and precious metals, did not emerge as a print-making technique until well into the 151h century. Copper, the metal mainly used for engraving, was expensive, and engraving itself was laborious and took a long time.', '95.mp3');
INSERT INTO `readaloud` VALUES ('96.mp3', '200', '35', 'For the first two or three years after the Second World War, a new title would often sell out within a few months of publication. However, unless public demand for the book was unusually high, they were rarely able to reprint it. With paper stocks strictly rationed, they could not afford to use up precious paper or tie up their limited capital with a reprint.', '96.mp3');
INSERT INTO `readaloud` VALUES ('97.mp3', '201', '35', 'The Atlantic coast of the peninsula can be thought of as the cold side, and the sea on this coast tends to be clear and cold, with a variety of seaweeds growing along the rocky shoreline. On a hot day, however, this cold water can be very refreshing and is said to be less hospitable to sharks, which prefer warmer waters.', '97.mp3');
INSERT INTO `readaloud` VALUES ('98.mp3', '202', '35', 'All the works of art shown in this exhibition were purchased on a shoestring budget. The criteria that the curators had to follow were that works must be acquired cheaply, appeal to a broad range of tastes, and fit with unusual environments. Thus, many of our better known modern artists are not represented.', '98.mp3');
INSERT INTO `readaloud` VALUES ('99.mp3', '203', '35', 'Foam-filled furniture is very dangerous if it catches fire, and foam quickly produces a high temperature, thick smoke and poisonous gases - including carbon monoxide. Therefore, set levels of fire resistance have been established for new and second-hand upholstered furniture and other similar products.', '99.mp3');
INSERT INTO `readaloud` VALUES ('100.mp3', '204', '35', 'The starting point of Bergson\'s theory is the experience of time and motion. Time is the reality we experience most directly, but this doesn\'t mean that we can capture this experience mentally. The past is gone and the future is yet to come. The only reality is the present, which is real through our experience.', '100.mp3');
INSERT INTO `readaloud` VALUES ('101.mp3', '205', '35', 'It is important to note that saving is not the same as investment. Saving is about cash, while investment is about real product. The difference is important because money, being liquid, can leak out of the economic system - which it does when someone who is putting aside unspent income keeps it under the mattress.', '101.mp3');
INSERT INTO `readaloud` VALUES ('102.mp3', '206', '35', 'Historically, the low level of political autonomy of the cities in China is partly a result of the early development of the state bureaucracy. The bureaucrats played a major role in the growth of urbanization, but were also able to control its subsequent development and they never completely gave up this control.', '102.mp3');
INSERT INTO `readaloud` VALUES ('103.mp3', '207', '35', 'Writers may make the mistake of making all their sentences too compact. Some have made this accusation against the prose of Gibbon. An occasional loose sentence prevents the style from becoming too formal and allows the reader to relax slightly. Loose sentences are common in easy, unforced writing, but it is a fault when there are too many of them.', '103.mp3');
INSERT INTO `readaloud` VALUES ('104.mp3', '208', '35', 'There is a long history of rulers and governments trying to legislate on men\'s hair - both the length of the hair on their heads and the style of facial hair. For practical reasons, Alexander the Great insisted his soldiers be clean-shaven, but Peter the Great of Russia went further, insisting no Russians had beards.', '104.mp3');
INSERT INTO `readaloud` VALUES ('105.mp3', '209', '35', 'Early in the 19th century, Wordsworth opposed the coming of the steam train to the Lake District, saying it would destroy its natural character. Meanwhile, Blake denounced the \"dark satanic mills\" of the Industrial Revolution. The conservation of the natural environment, however, did not become a major theme in politics until quite recently.', '105.mp3');
INSERT INTO `readaloud` VALUES ('106.mp3', '210', '35', 'In the distribution of wealth, America is more unequal than most European countries. The richest tenth of the population earns nearly six times more than the poorest tenth. In Germany and France, the ratio is just over three to one. The United States also has the largest proportion of its people in long-term poverty.', '106.mp3');
INSERT INTO `readaloud` VALUES ('107.mp3', '211', '35', 'Chaucer was probably the first English writer to see the English nation as a unity. This is the reason for his great appeal to his contemporaries. A long war with France had produced a wave of patriotism, with people no longer seeing each other as Saxon or Norman but as English.', '107.mp3');
INSERT INTO `readaloud` VALUES ('108.mp3', '212', '35', 'What can history tell us about contemporary society? Generally, in the past, even in Europe until the 18th century, it was assumed that it could tell how any society should work. The past was the model for the present and the future. It represented the key to the genetic code by which each generation produced its successors and ordered their relationships.', '108.mp3');

-- ----------------------------
-- Table structure for readfillblank
-- ----------------------------
DROP TABLE IF EXISTS `readfillblank`;
CREATE TABLE `readfillblank` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `options` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `answer` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of readfillblank
-- ----------------------------
INSERT INTO `readfillblank` VALUES ('1', 'The inevitable consequences  #404 rampant corruption, an absence of globally competitive Chinese companies,  #404 waste of resources, rampant environmental  #404 and soaring inequality. Above all, the monopoly over power of an ideologically bankrupt communist party is  #404 with the pluralism of opinion, security of property and vibrant competition on which a dynamic economy depends. As a result, Chinese development remains parasitic on know-how and institutions developed elsewhere.\n', 'include|chronic|degradation|inconsistent$a|b|c|d$e|f|g|h$x|s|w|t', 'include$a$e$x', '1');

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
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `audioPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repeatsentence
-- ----------------------------
INSERT INTO `repeatsentence` VALUES ('1', 'A periodical is a publication that is issued regularly.', '1.mp3');
INSERT INTO `repeatsentence` VALUES ('2', 'A lot of agricultural workers came to the East End to look for alternative work.', '2.mp3');
INSERT INTO `repeatsentence` VALUES ('3', 'A study shows that the people\'s mood can be affected by news and weather reports.', '3.mp3');
INSERT INTO `repeatsentence` VALUES ('4', 'All essays and seminar papers submitted must be emailed to your tutor.', '4.mp3');
INSERT INTO `repeatsentence` VALUES ('5', 'All students are encouraged to vote in the forthcoming elections', '5.mp3');
INSERT INTO `repeatsentence` VALUES ('6', 'Allergy problems do run in the family but we don\'t understand why?', '6.mp3');
INSERT INTO `repeatsentence` VALUES ('7', 'Anyone who has a problem with their accommodation should speak to the welfare officer.', '7.mp3');
INSERT INTO `repeatsentence` VALUES ('8', 'Being a student representative on the union really cuts into my study time.', '8.mp3');
INSERT INTO `repeatsentence` VALUES ('9', 'Books which are overdue will incur daily fine.', '9.mp3');
INSERT INTO `repeatsentence` VALUES ('10', 'Computer software has changed a lot in the last year.', '10.mp3');
INSERT INTO `repeatsentence` VALUES ('11', 'Detailed analysis of population growth has revealed some alarming predictions.', '11.mp3');
INSERT INTO `repeatsentence` VALUES ('12', 'Distance learning has become far more popular these days.', '12.mp3');
INSERT INTO `repeatsentence` VALUES ('13', 'Does the college refectory offer vegetarian dishes on a daily basis?', '13.mp3');
INSERT INTO `repeatsentence` VALUES ('14', 'Does the professor keep regular office hours?', '14.mp3');
INSERT INTO `repeatsentence` VALUES ('15', 'Does the university have an ice hockey team?', '15.mp3');
INSERT INTO `repeatsentence` VALUES ('16', 'During that period heavy industry grew rapidly in the north of the country.', '16.mp3');
INSERT INTO `repeatsentence` VALUES ('17', 'During the next few centuries, London became one of the most powerful and prosperous cities in Europe.', '17.mp3');
INSERT INTO `repeatsentence` VALUES ('18', 'Economy of scale is the increase in efficiency that occurs when more goods are produced.', '18.mp3');
INSERT INTO `repeatsentence` VALUES ('19', 'Essays should be typed with double space in white paper.', '19.mp3');
INSERT INTO `repeatsentence` VALUES ('20', 'Exam results will be available next week from the course office.', '20.mp3');
INSERT INTO `repeatsentence` VALUES ('21', 'Extra seminars to be scheduled to assist you with revision.', '21.mp3');
INSERT INTO `repeatsentence` VALUES ('22', 'Factor such as cost and function influence the design of the bridge.', '22.mp3');
INSERT INTO `repeatsentence` VALUES ('23', 'Fees are heavily discounted and bursaries are available for delegates.', '23.mp3');
INSERT INTO `repeatsentence` VALUES ('24', 'He started his tutorial presentation right on time.', '24.mp3');
INSERT INTO `repeatsentence` VALUES ('25', 'He was not the only one to call for legal reform in the 16th century.', '25.mp3');
INSERT INTO `repeatsentence` VALUES ('26', 'Here is only one example but there are lots of others.', '26.mp3');
INSERT INTO `repeatsentence` VALUES ('27', 'Higher numbers of patients were infected than during previous outbreaks of the illness.', '27.mp3');
INSERT INTO `repeatsentence` VALUES ('28', 'However, this method is problematic m terms of accuracy.', '28.mp3');
INSERT INTO `repeatsentence` VALUES ('29', 'I believe the children should read aloud more.', '29.mp3');
INSERT INTO `repeatsentence` VALUES ('30', 'I found a large rock and I broke through the basement window.', '30.mp3');
INSERT INTO `repeatsentence` VALUES ('31', 'I think the University\'s main campus is closed.', '31.mp3');
INSERT INTO `repeatsentence` VALUES ('32', 'I think we should get together over the weekend to discuss this assignment.', '32.mp3');
INSERT INTO `repeatsentence` VALUES ('33', 'I thought the mid-term exam was only worth half of our course grade.', '33.mp3');
INSERT INTO `repeatsentence` VALUES ('34', 'I will check again but I am pretty sure we are supposed to read chapter two.', '34.mp3');
INSERT INTO `repeatsentence` VALUES ('35', 'I will now demonstrate how the reaction can be arrested by adding a dilute acid.', '35.mp3');
INSERT INTO `repeatsentence` VALUES ('36', 'If you are unable to complete the task in time, please notify me by email.', '36.mp3');
INSERT INTO `repeatsentence` VALUES ('37', 'If you are working after 11 O\'clock, who will drive you home?', '37.mp3');
INSERT INTO `repeatsentence` VALUES ('38', 'If you want to quit the student union, tell the registrar.', '38.mp3');
INSERT INTO `repeatsentence` VALUES ('39', 'If your parents come to visit you this semester where will they stay?', '39.mp3');
INSERT INTO `repeatsentence` VALUES ('40', 'I\'m afraid Professor Jones doesn\'t suffer fools gladly.', '40.mp3');
INSERT INTO `repeatsentence` VALUES ('41', 'In the past, students were required to complete two long written assignments.', '41.mp3');
INSERT INTO `repeatsentence` VALUES ('42', 'It is important that you work as a team on this project.', '42.mp3');
INSERT INTO `repeatsentence` VALUES ('43', 'It is quite clear that the rising prosperity does not make people feel more content.', '43.mp3');
INSERT INTO `repeatsentence` VALUES ('44', 'It\'s important that humans dispose of their waste in appropriate ways.', '44.mp3');
INSERT INTO `repeatsentence` VALUES ('45', 'I\'ve always been interested in biology and physics.', '45.mp3');
INSERT INTO `repeatsentence` VALUES ('46', 'I\'ve got a tutorial in an hour and I haven\'t had any time to prepare for it.', '46.mp3');
INSERT INTO `repeatsentence` VALUES ('47', 'I’ll start with a brief history of the district, and then focus on life in the first half of the 20th century.', '47.mp3');
INSERT INTO `repeatsentence` VALUES ('48', 'Knives and forks should be placed next to the spoon on the edge of the table.', '48.mp3');
INSERT INTO `repeatsentence` VALUES ('49', 'I think we should get together over the weekend to discuss this assignment.', '49.mp3');
INSERT INTO `repeatsentence` VALUES ('50', 'Make sure you correctly cite all your sources.', '50.mp3');
INSERT INTO `repeatsentence` VALUES ('51', 'Many of the most popular courses are available online.', '51.mp3');
INSERT INTO `repeatsentence` VALUES ('52', 'Many of the urban poor lived in extremely cramped conditions.', '52.mp3');
INSERT INTO `repeatsentence` VALUES ('53', 'Many privately owned firms have been eaten up by larger corporations.', '53.mp3');
INSERT INTO `repeatsentence` VALUES ('54', 'Maybe it is time for me to make some changes.', '54.mp3');
INSERT INTO `repeatsentence` VALUES ('55', 'Modern poetry often tests the conventions of language and rhythm.', '55.mp3');
INSERT INTO `repeatsentence` VALUES ('56', 'Most of these criticisms can be shown to be false.', '56.mp3');
INSERT INTO `repeatsentence` VALUES ('57', 'Most students are not eligible to claim housing benefit.', '57.mp3');
INSERT INTO `repeatsentence` VALUES ('58', 'Most students on last year course did well in this module.', '58.mp3');
INSERT INTO `repeatsentence` VALUES ('59', 'Most teaching staff make their lecture notes available online.', '59.mp3');
INSERT INTO `repeatsentence` VALUES ('60', 'Much of his research objectives are driven by his natural curiosity and instincts.', '60.mp3');
INSERT INTO `repeatsentence` VALUES ('61', 'New timetables will be posted on the student noticeboard.', '61.mp3');
INSERT INTO `repeatsentence` VALUES ('62', 'New York City is famous for its ethnic diversity.', '62.mp3');
INSERT INTO `repeatsentence` VALUES ('63', 'Newspaper are supported primarily by the sale of advertising space.', '63.mp3');
INSERT INTO `repeatsentence` VALUES ('64', 'Next time, we will discuss the influence of the media in public policy.', '64.mp3');
INSERT INTO `repeatsentence` VALUES ('65', 'Novelists have a major role to play in reflecting their time to their readers.', '65.mp3');
INSERT INTO `repeatsentence` VALUES ('66', 'Of course, you can also choose to have your grades email to you.', '66.mp3');
INSERT INTO `repeatsentence` VALUES ('67', 'Opposition to the government tax policies are wide spread across business sectors.', '67.mp3');
INSERT INTO `repeatsentence` VALUES ('68', 'Our class is divided into two groups, you come with me, the others stay here.', '68.mp3');
INSERT INTO `repeatsentence` VALUES ('69', 'Overcrowding, poor sanitary affected the daily lives of the majority of the population.', '69.mp3');
INSERT INTO `repeatsentence` VALUES ('70', 'Please come to the next seminar properly prepared.', '70.mp3');
INSERT INTO `repeatsentence` VALUES ('71', 'Please have copies of your seminar papers in the library a week in advance.', '71.mp3');
INSERT INTO `repeatsentence` VALUES ('72', 'Please note the college laboratories will be closed for cleaning next week.', '72.mp3');
INSERT INTO `repeatsentence` VALUES ('73', 'Please switch off all electronic devices when you are attending a conference session.', '73.mp3');
INSERT INTO `repeatsentence` VALUES ('74', 'Professor Smith will be late for today’s lecture.', '74.mp3');
INSERT INTO `repeatsentence` VALUES ('75', 'Students are held accountable for adhering to establish community standard.', '75.mp3');
INSERT INTO `repeatsentence` VALUES ('76', 'Students must hand in their assignments by Friday.', '76.mp3');
INSERT INTO `repeatsentence` VALUES ('77', 'Students who wish to apply for an extension should approach their tutors.', '77.mp3');
INSERT INTO `repeatsentence` VALUES ('78', 'Students with queries about this term time tables must speak to the tutor immediately.', '78.mp3');
INSERT INTO `repeatsentence` VALUES ('79', 'Studies suggest there may be a correlation between educational achievement and family size.', '79.mp3');
INSERT INTO `repeatsentence` VALUES ('80', 'Students need to finish their assignments during next four weeks.', '80.mp3');
INSERT INTO `repeatsentence` VALUES ('81', 'Successful applicants will work with a large team of researchers.', '81.mp3');
INSERT INTO `repeatsentence` VALUES ('82', 'Sydney is Australia\'s largest city, chief port and cultural centre.', '82.mp3');
INSERT INTO `repeatsentence` VALUES ('83', 'The arts magazine is looking for a new assistant editor.', '83.mp3');
INSERT INTO `repeatsentence` VALUES ('84', 'The Arts magazine is looking for a new Assistant Editor.', '84.mp3');
INSERT INTO `repeatsentence` VALUES ('85', 'This article covers whom, where and when of the conflict.', '85.mp3');
INSERT INTO `repeatsentence` VALUES ('86', 'The brief outline takes us to the beginning of the 20th century.', '86.mp3');
INSERT INTO `repeatsentence` VALUES ('87', 'The conference is predicted to draw greater numbers than last year.', '87.mp3');
INSERT INTO `repeatsentence` VALUES ('88', 'The circulation desk is located on the ground floor.', '88.mp3');
INSERT INTO `repeatsentence` VALUES ('89', 'The country suffered a series of invasions by tribes from present-day Germany and Denmark.', '89.mp3');
INSERT INTO `repeatsentence` VALUES ('90', 'The date of the invention of the first clock is disputed among historians.', '90.mp3');
INSERT INTO `repeatsentence` VALUES ('91', 'The Drama Society is now auditioning for parts in the student play.', '91.mp3');
INSERT INTO `repeatsentence` VALUES ('92', 'The development is mainly included in chapter 9.', '92.mp3');
INSERT INTO `repeatsentence` VALUES ('93', 'The drama society is now auditioning for parts in the students play.', '93.mp3');
INSERT INTO `repeatsentence` VALUES ('94', 'The English work Typhoon comes from the Chinese word big wind.', '94.mp3');
INSERT INTO `repeatsentence` VALUES ('95', 'The fertile planes in the east of the region provide excellent land for farming', '95.mp3');
INSERT INTO `repeatsentence` VALUES ('96', 'The final year will consist of four taught courses and one project.', '96.mp3');
INSERT INTO `repeatsentence` VALUES ('97', 'The financial report for the last quarter will be available this afternoon.', '97.mp3');
INSERT INTO `repeatsentence` VALUES ('98', 'The fire left the area almost completely devoid of vegetation.', '98.mp3');
INSERT INTO `repeatsentence` VALUES ('99', 'The initial results are intriguing; however, statistically speaking they are insignificant.', '99.mp3');
INSERT INTO `repeatsentence` VALUES ('100', 'The law library is closed on Sundays and public holidays.', '100.mp3');
INSERT INTO `repeatsentence` VALUES ('101', 'The lecture on child psychology has been postponed until Friday.', '101.mp3');
INSERT INTO `repeatsentence` VALUES ('102', 'The lecture will deal with the influence of the technology on music.', '102.mp3');
INSERT INTO `repeatsentence` VALUES ('103', 'The library will be closed for 3 days over the bank holiday weekend.', '103.mp3');
INSERT INTO `repeatsentence` VALUES ('104', 'The majority of the hardware we are using was built for a customer', '104.mp3');
INSERT INTO `repeatsentence` VALUES ('105', 'The Maximum production of chocolate is in U.S.', '105.mp3');
INSERT INTO `repeatsentence` VALUES ('106', 'The medical Centre is located near the supermarket on North Street.', '106.mp3');
INSERT INTO `repeatsentence` VALUES ('107', 'The meeting will take place in the main auditorium.', '107.mp3');
INSERT INTO `repeatsentence` VALUES ('108', 'The mismatch between the intended and reported uses of the instrument has become clear.', '108.mp3');
INSERT INTO `repeatsentence` VALUES ('109', 'The modern approach to the problem is to stress the symbolic side of human nature.', '109.mp3');
INSERT INTO `repeatsentence` VALUES ('110', 'The most modern agricultural equipment is now extremely expensive.', '110.mp3');
INSERT INTO `repeatsentence` VALUES ('111', 'The nearest automatic teller is in front of Anatomy labs.', '111.mp3');
INSERT INTO `repeatsentence` VALUES ('112', 'The new drug will be tested in North America.', '112.mp3');
INSERT INTO `repeatsentence` VALUES ('113', 'The number of students registering for post graduate research has risen.', '113.mp3');
INSERT INTO `repeatsentence` VALUES ('114', 'The opposition has so far been unresponsive to our proposal.', '114.mp3');
INSERT INTO `repeatsentence` VALUES ('115', 'The part of the story is the story of my father.', '115.mp3');
INSERT INTO `repeatsentence` VALUES ('116', 'The research looked at neighbourhood cooperative schemes such as community gardens.', '116.mp3');
INSERT INTO `repeatsentence` VALUES ('117', 'The Romans left in 410 at the beginning of the fifth century.', '117.mp3');
INSERT INTO `repeatsentence` VALUES ('118', 'The seminar will now take place a week on Tuesday.', '118.mp3');
INSERT INTO `repeatsentence` VALUES ('119', 'The smoke from these contributed a great deal to the air pollution.', '119.mp3');
INSERT INTO `repeatsentence` VALUES ('120', 'The thoughts never cross my mind.', '120.mp3');
INSERT INTO `repeatsentence` VALUES ('121', 'The technology they introduced meant that metal and leather goods were produced there for the first time.', '121.mp3');
INSERT INTO `repeatsentence` VALUES ('122', 'The university has world renowned school of archaeology.', '122.mp3');
INSERT INTO `repeatsentence` VALUES ('123', 'The university is working towards being more environmentally sustainable.', '123.mp3');
INSERT INTO `repeatsentence` VALUES ('124', 'The visiting professor is going to give a lecture for geology.', '124.mp3');
INSERT INTO `repeatsentence` VALUES ('125', 'There are hundreds of clubs and societies to choose from.', '125.mp3');
INSERT INTO `repeatsentence` VALUES ('126', 'There are no places left in the morning tutorial.', '126.mp3');
INSERT INTO `repeatsentence` VALUES ('127', 'There is a position available for a Junior Lecturer in Media Studies.', '127.mp3');
INSERT INTO `repeatsentence` VALUES ('128', 'There is an hourly bus service from the campus into town.', '128.mp3');
INSERT INTO `repeatsentence` VALUES ('129', 'There is plenty of cheap accommodation off-campus.', '129.mp3');
INSERT INTO `repeatsentence` VALUES ('130', 'There will be a conference here next summer on using a web for academic research.', '130.mp3');
INSERT INTO `repeatsentence` VALUES ('131', 'There will be a significant rise in tuition fee starting next year.', '131.mp3');
INSERT INTO `repeatsentence` VALUES ('132', 'There will be no extensions given for this project.', '132.mp3');
INSERT INTO `repeatsentence` VALUES ('133', 'There\'s an hourly bus service from the campus into town.', '133.mp3');
INSERT INTO `repeatsentence` VALUES ('134', 'They say Professor James\'s lectures are always interesting and funny.', '134.mp3');
INSERT INTO `repeatsentence` VALUES ('135', 'This course will examine some of the profound ethical dilemmas.', '135.mp3');
INSERT INTO `repeatsentence` VALUES ('136', 'This is the third time you\'ve ask for an extension on this project.', '136.mp3');
INSERT INTO `repeatsentence` VALUES ('137', 'This module develops our understanding of the theory behind advertising campaigns.', '137.mp3');
INSERT INTO `repeatsentence` VALUES ('138', 'This science fiction novel uses inventions of better space to create the setting.', '138.mp3');
INSERT INTO `repeatsentence` VALUES ('139', 'This semester we plan to specialize in educational psychology.', '139.mp3');
INSERT INTO `repeatsentence` VALUES ('140', 'This year we are applying to use a different type of assessment on this module.', '140.mp3');
INSERT INTO `repeatsentence` VALUES ('141', 'Tomorrow\'s lunch time seminar on nuclear engineering has been postponed. ', '141.mp3');
INSERT INTO `repeatsentence` VALUES ('142', 'Tuesday\'s lecture on social psychology will now take place in the central hall.', '142.mp3');
INSERT INTO `repeatsentence` VALUES ('143', 'Tutorials are held for two hours every Thursday during semester.', '143.mp3');
INSERT INTO `repeatsentence` VALUES ('144', 'Unlike applied arts, fine art do not serve a practical function.', '144.mp3');
INSERT INTO `repeatsentence` VALUES ('145', 'Unlike the other store, where it can take up is up to 14 days.', '145.mp3');
INSERT INTO `repeatsentence` VALUES ('146', 'Visual aids can make presentations clear and more interesting.', '146.mp3');
INSERT INTO `repeatsentence` VALUES ('147', 'We are also going to be more prescriptive about what you focus on in your presentation.', '147.mp3');
INSERT INTO `repeatsentence` VALUES ('148', 'We are warning the clients that the rates are increasing.', '148.mp3');
INSERT INTO `repeatsentence` VALUES ('149', 'We don\'t teach in the same way as we used to.', '149.mp3');
INSERT INTO `repeatsentence` VALUES ('150', 'We\'ve decided to ask you to write four short pieces of written coursework this', '150.mp3');
INSERT INTO `repeatsentence` VALUES ('151', 'When I was in school, I had many of the same problem you do now. ', '151.mp3');
INSERT INTO `repeatsentence` VALUES ('152', 'When we think about communication we think about interaction.', '152.mp3');
INSERT INTO `repeatsentence` VALUES ('153', 'Without doubt his primary motive was economic.', '153.mp3');
INSERT INTO `repeatsentence` VALUES ('154', 'You are not permitted to take reference books out of the library. ', '154.mp3');
INSERT INTO `repeatsentence` VALUES ('155', 'You don’t have to be on Professor Smith\'s course to attend this lecture.', '155.mp3');
INSERT INTO `repeatsentence` VALUES ('156', 'You must establish a day and a time with your tutor.', '156.mp3');
INSERT INTO `repeatsentence` VALUES ('157', 'You need to write a proposal for your research.', '157.mp3');
INSERT INTO `repeatsentence` VALUES ('158', 'You will be informed of the results by email.', '158.mp3');
INSERT INTO `repeatsentence` VALUES ('159', 'You will find the economics section on the second floor of the library.', '159.mp3');

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
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writeessay
-- ----------------------------
INSERT INTO `writeessay` VALUES ('1', 'The value of travel is highly overrated, one can become scholar without leaving home. To what extent do you agree or disagree the travel is an necessary component of a quality education？');
INSERT INTO `writeessay` VALUES ('2', 'You need to study climate change. Which aspect of climate change will you choose and why? Use examples.');
INSERT INTO `writeessay` VALUES ('3', 'Write about environment pollution. Who is responsible whether government, companies or industries?');
INSERT INTO `writeessay` VALUES ('4', 'The only thing that interfere with my learning is my education\" Einstein. What does he mean by that? And do you\nthink he is correct?');
INSERT INTO `writeessay` VALUES ('5', 'Talk about the pros / cons of this era as is full of dailyi nvention. Any recent invention that you think proved beneficial or detrimental to society.');
INSERT INTO `writeessay` VALUES ('6', 'Do you think the place where a person grew up helps him/her in accomplishing goals in life? Give an example of a famous person to explain it.');
INSERT INTO `writeessay` VALUES ('7', 'Whether travel is necessary to a high quality education?');
INSERT INTO `writeessay` VALUES ('8', 'Television has many useful functions to play in everyone\'s life, for some its relaxation, for some it is companion.\nDiscuss your viewpoint and support your answer with examples and discussion point.');
INSERT INTO `writeessay` VALUES ('9', 'Any new technological development in the recent years is a boon or curse for the society in general.');
INSERT INTO `writeessay` VALUES ('10', 'The advance of technology affects daily life. Mention a recent tech and elaborate the pros and cons and justify.');
INSERT INTO `writeessay` VALUES ('11', 'Learning a new language at an early age is helpful for children. Is it more positive for their future aspect or have some adverse effects?');
INSERT INTO `writeessay` VALUES ('12', 'Different people get success in different fields. Some people work long hours to get success, but others feel that\nspend free time for joy than Wealth. Which style closely related to you and explains your views?');
INSERT INTO `writeessay` VALUES ('13', 'Company\'s top-level authorities should get their employees in decision-making process. Discuss.');
INSERT INTO `writeessay` VALUES ('14', 'In some countries around the world, voting is compulsory. Do you agree with the notion of compulsory voting?');
INSERT INTO `writeessay` VALUES ('15', 'Large shopping malls are replacing small shops. What is your opinion about this? Discuss with appropriate examples.');
INSERT INTO `writeessay` VALUES ('16', 'Do you think consumer should avoid over-packaged products or it is responsibility of producer to avoid extra\npackaging of products? Give your views or any relevant example with your own experience.');
INSERT INTO `writeessay` VALUES ('17', 'Nowadays, people spend too much time at work to the extent that they hardly have time for their personal life.\nDiscuss.');
INSERT INTO `writeessay` VALUES ('18', 'Parents should be held legally responsible for their children\'s acts. What is your opinion? Support it with personal examples.');
INSERT INTO `writeessay` VALUES ('19', 'Write about Climate change. Who is responsible whether Government or industries? Why?');
INSERT INTO `writeessay` VALUES ('20', 'Should marketing for consumer goods companies like clothing and food focus on reputation or on short-term strategies like discount and special offers?');
INSERT INTO `writeessay` VALUES ('21', 'Do you believe that industrial revolution was the main factor for problems in developed nation?');
INSERT INTO `writeessay` VALUES ('22', 'The environment we live in is in danger due to various problems. What are the underlying causes? Who is responsible to combat this? What measures?');
INSERT INTO `writeessay` VALUES ('23', 'Some people believe law changes human behavior. Do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('24', 'Communication has changed significantly in the last 10 years Discuss pros and cons impacts.');
INSERT INTO `writeessay` VALUES ('25', 'The illiterate of the 21st century will not be those who cannot read and write, but those who cannot learn, unlearn,\nand relearn. Agree or Disagree?');
INSERT INTO `writeessay` VALUES ('26', '\"In a war of ideas, it is people who get killed\". Does a common man suffer from a group\'s ideology? Express your\nopinion, and support the same with reasons and examples.');
INSERT INTO `writeessay` VALUES ('27', 'It is usually foolish to get married before completing your studies and getting established in a good job? Do you agree\nor disagree\".');
INSERT INTO `writeessay` VALUES ('28', 'With enough amounts of motivation and practice, people can learn anything that the experts teach in the classroom. To what extent do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('29', 'The world’s governments and organizations are facing a lot of issues. Which do you think is the most pressing problem for the inhabitants on our planet and give the solution?');
INSERT INTO `writeessay` VALUES ('30', 'Some people suggest that each family should only have one car and encourage alternative vehicle. Do you agree?');
INSERT INTO `writeessay` VALUES ('31', 'Some effective people like repetitive routine, such as eating the same food, do you like this way ?');
INSERT INTO `writeessay` VALUES ('32', 'Does the advent of Internet change the role of teacher? To what extent do you agree?');
INSERT INTO `writeessay` VALUES ('33', 'A competitive environment in school and university would bring excellence and need to be encouraged. Agree or disagree?');
INSERT INTO `writeessay` VALUES ('34', 'There is no need of newspapers in modern world. To what extent do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('35', 'Do you think English will remain to be a global language despite globalization?');
INSERT INTO `writeessay` VALUES ('36', 'Cultural shock is a new worry concern for less immigration. What are the possible opinions to eradicate this issue?');
INSERT INTO `writeessay` VALUES ('37', 'Some people believe one can be brilliant without leaving their local areas. To what extent do you think travel should be a component to improve education quality?');
INSERT INTO `writeessay` VALUES ('38', 'Some people think educational purpose is to have a better life in the future; others argue that its aim is only for a\nself-improvement. What is your opinion? Your essay should base on your own experiences and examples.');
INSERT INTO `writeessay` VALUES ('39', 'Extreme sports like skiing, water rafting etc. are dangerous and should these be banned');
INSERT INTO `writeessay` VALUES ('40', 'What are the greatest inventions of the 20th century among medicine, airplane and computers, why?');
INSERT INTO `writeessay` VALUES ('41', 'Whether formal writing examination is a good way to assess students learning?');
INSERT INTO `writeessay` VALUES ('42', 'The information evolution brought about by the mass communication has positive and negative consequences for\nboth the individuals and society. Do you agree or disagree? Discuss and give examples and own experiences.');
INSERT INTO `writeessay` VALUES ('43', 'The mass media including TV, Radio and newspaper influence our society and shape our opinions and characters. What is your opinion?');
INSERT INTO `writeessay` VALUES ('44', 'A person \'s life is defined by the place where he grows. Use an example of a success person to illustrate this point of view.');
INSERT INTO `writeessay` VALUES ('45', 'Pursue scientific knowledge, for knowledge itself or for practical use, which one is the most important reason.');
INSERT INTO `writeessay` VALUES ('46', 'It is important to preserve the beautiful buildings of past. Do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('47', 'Using formal written assessment is still a valid task. To what extent do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('48', 'Current problems facing society deserve high priority for funding rather than research for likely future issues. To what extent do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('49', 'Sole aim of university education is to make students ready for employment. What is your opinion?');
INSERT INTO `writeessay` VALUES ('50', 'Global problems related to governments and international organisations, what are the problems and what is your\nopinion?');
INSERT INTO `writeessay` VALUES ('51', 'Positive and negative impacts on the change of means of communicating in society in the past 10 years');
INSERT INTO `writeessay` VALUES ('52', 'We have entered a throw-away society and fill the environment with rubbish. What are the causes and what are your solutions?');
INSERT INTO `writeessay` VALUES ('53', 'Sports and games create disturbance in students\' life because students cannot fully concentrate on their studies. To what extent do you agree or disagree?');
INSERT INTO `writeessay` VALUES ('54', 'Xenophobia has accelerated rapidly in the western countries. According to you what solutions can be proposed by government and individuals?');
INSERT INTO `writeessay` VALUES ('55', 'Most high-level jobs are done by men. Should governments encourage that a certain percentage of these jobs be\nreserved for women? What is your opinion?');
INSERT INTO `writeessay` VALUES ('56', 'What is your view on the idea that it takes failure to achieve success?');
INSERT INTO `writeessay` VALUES ('57', 'Is imitating celebrities in sports and movies good or bad?');
INSERT INTO `writeessay` VALUES ('58', 'Successful sports stars and glamorous film stars are role models for youngsters. Do you agree with this statement?');
INSERT INTO `writeessay` VALUES ('59', 'What are the pros and cons of staying connected on social media for 24 hours a day.');

-- ----------------------------
-- Table structure for writefromdictation
-- ----------------------------
DROP TABLE IF EXISTS `writefromdictation`;
CREATE TABLE `writefromdictation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `audioPath` varchar(30) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writefromdictation
-- ----------------------------
INSERT INTO `writefromdictation` VALUES ('1', '1.mp3', 'A group meeting will be held tomorrow in the library conference room.');
INSERT INTO `writefromdictation` VALUES ('2', '2.mp3', 'A number of students have some volunteer jobs.');
INSERT INTO `writefromdictation` VALUES ('3', '3.mp3', 'A person\'s education level is closely related to their economic background.');
INSERT INTO `writefromdictation` VALUES ('4', '4.mp3', 'All of your assignment should be due by tomorrow.');
INSERT INTO `writefromdictation` VALUES ('5', '5.mp3', 'All staff must leave from the fire hydrant exit.');
INSERT INTO `writefromdictation` VALUES ('6', '6.mp3', 'All writers are consciously or unconsciously representing their own culture.');
INSERT INTO `writefromdictation` VALUES ('7', '7.mp3', 'Animals behave differently from their wild counterparts.');
INSERT INTO `writefromdictation` VALUES ('8', '8.mp3', 'Animals raised in captivity behave differently from their wild counterparts');
INSERT INTO `writefromdictation` VALUES ('9', '9.mp3', 'Artists, other than politicians, played their own roles of cultural critics.');
INSERT INTO `writefromdictation` VALUES ('10', '10.mp3', 'Assignments should be submitted to the department before deadline.');
INSERT INTO `writefromdictation` VALUES ('11', '11.mp3', 'Catch the camera to see the fish.');
INSERT INTO `writefromdictation` VALUES ('12', '12.mp3', 'Climate change is becoming acceptable among a group of scientists.');
INSERT INTO `writefromdictation` VALUES ('13', '13.mp3', 'Climate change is being acknowledged by many scientists.');
INSERT INTO `writefromdictation` VALUES ('14', '14.mp3', 'Competition for the places in course is fierce.');
INSERT INTO `writefromdictation` VALUES ('15', '15.mp3', 'Conferences ought to be / are all / will always be scheduled two weeks in advance.');
INSERT INTO `writefromdictation` VALUES ('16', '16.mp3', 'Despite the protest, the chemistry department was closed down.');
INSERT INTO `writefromdictation` VALUES ('17', '17.mp3', 'Education level is related to the economic background.');
INSERT INTO `writefromdictation` VALUES ('18', '18.mp3', 'Eight groups need to submit the outlines of their projects to their tutors.');
INSERT INTO `writefromdictation` VALUES ('19', '19.mp3', 'Elections of president take place once every four years.');
INSERT INTO `writefromdictation` VALUES ('20', '20.mp3', 'Essay is easy once research is finished.');
INSERT INTO `writefromdictation` VALUES ('21', '21.mp3', 'Assignments will (should) be submitted in the department before deadline.');
INSERT INTO `writefromdictation` VALUES ('22', '22.mp3', 'Avoid confusing causes of those changes.');
INSERT INTO `writefromdictation` VALUES ('23', '23.mp3', 'Avoid confusing causes and effects of those changes.');
INSERT INTO `writefromdictation` VALUES ('24', '24.mp3', 'Before submitting your assignment, your advisor must approve your application.');
INSERT INTO `writefromdictation` VALUES ('25', '25.mp3', 'Before submitting your assignment, your advisor should approve it.');
INSERT INTO `writefromdictation` VALUES ('26', '26.mp3', 'Behind the garage is a secret storage room.');
INSERT INTO `writefromdictation` VALUES ('27', '27.mp3', 'Behind the group is the garage joined by some partners.');
INSERT INTO `writefromdictation` VALUES ('28', '28.mp3', 'Caged camera to see the fish.');
INSERT INTO `writefromdictation` VALUES ('29', '29.mp3', 'Career opportunities in this field are (quite) limited.');
INSERT INTO `writefromdictation` VALUES ('30', '30.mp3', 'Catch the camera to see the fish.');
INSERT INTO `writefromdictation` VALUES ('31', '31.mp3', 'Evaluation paper will be reviewed by the University personnel.');
INSERT INTO `writefromdictation` VALUES ('32', '32.mp3', 'Final year business students have to write a five-thousand-word essay on market trends.');
INSERT INTO `writefromdictation` VALUES ('33', '33.mp3', 'Free/The campus tour runs daily during summer for prospective students.');
INSERT INTO `writefromdictation` VALUES ('34', '34.mp3', 'He started his tutorial presentation right on time.');
INSERT INTO `writefromdictation` VALUES ('35', '35.mp3', 'He was not the only one to call for a legal reform in the sixteenth century.');
INSERT INTO `writefromdictation` VALUES ('36', '36.mp3', 'Heavy rain will fall throughout the country next week.');
INSERT INTO `writefromdictation` VALUES ('37', '37.mp3', 'Heavy rain will fully across the city next week.');
INSERT INTO `writefromdictation` VALUES ('38', '38.mp3', 'Higher numbers of patients were infected than during previous outbreaks of the illness.');
INSERT INTO `writefromdictation` VALUES ('39', '39.mp3', 'Everyone in this room need to take part in/during the fire drill.');
INSERT INTO `writefromdictation` VALUES ('40', '40.mp3', 'Everyone must evacuate the premises during the fire drill.');
INSERT INTO `writefromdictation` VALUES ('41', '41.mp3', 'Experts believe that industrial development will help (the) economy.');
INSERT INTO `writefromdictation` VALUES ('42', '42.mp3', 'It is important to allocate your time wisely when revising.');
INSERT INTO `writefromdictation` VALUES ('43', '43.mp3', 'It is strictly required to submit the assignment by Friday.');
INSERT INTO `writefromdictation` VALUES ('44', '44.mp3', 'It is vital that you acknowledge all your sources.');
INSERT INTO `writefromdictation` VALUES ('45', '45.mp3', 'Law is beneficial to investors by protecting their rights and avoiding any improper actions in the market.');
INSERT INTO `writefromdictation` VALUES ('46', '46.mp3', 'Leading company changed their policies (procedures) after their reports were released.');
INSERT INTO `writefromdictation` VALUES ('47', '47.mp3', 'Materials and resources are on hold at the library\'s front desk.');
INSERT INTO `writefromdictation` VALUES ('48', '48.mp3', 'Most of the theories were similar, but a few critics disagreed.');
INSERT INTO `writefromdictation` VALUES ('49', '49.mp3', 'Most teaching staff make their lecture notes available online.');
INSERT INTO `writefromdictation` VALUES ('50', '50.mp3', 'Most theories are quite similar, but a few critics disagree.');
INSERT INTO `writefromdictation` VALUES ('51', '51.mp3', 'Most of the features are part of the previous system.');
INSERT INTO `writefromdictation` VALUES ('52', '52.mp3', 'I thought we would meet in the small meeting room.');
INSERT INTO `writefromdictation` VALUES ('53', '53.mp3', 'If it helps to take notes in order to concentrate, please do so.');
INSERT INTO `writefromdictation` VALUES ('54', '54.mp3', 'If it helps your concentrate, take note, do it.');
INSERT INTO `writefromdictation` VALUES ('55', '55.mp3', 'If taking notes helps your concentration, please do it');
INSERT INTO `writefromdictation` VALUES ('56', '56.mp3', 'If you are not sure, go to/ phone student services for help.');
INSERT INTO `writefromdictation` VALUES ('57', '57.mp3', 'Inflation affects the demand, pricing and consumption of most products.');
INSERT INTO `writefromdictation` VALUES ('58', '58.mp3', 'Interim grades/scores/results will be posted on the board outside the student lounge.');
INSERT INTO `writefromdictation` VALUES ('59', '59.mp3', 'It helps to take notes to concentration on what please do.');
INSERT INTO `writefromdictation` VALUES ('60', '60.mp3', 'It is absolutely vital that you acknowledge all your sources.');
INSERT INTO `writefromdictation` VALUES ('61', '61.mp3', 'It is hard to anticipate all the characters that were in react.');
INSERT INTO `writefromdictation` VALUES ('62', '62.mp3', 'Neurons are principally involved in chemical processes.');
INSERT INTO `writefromdictation` VALUES ('63', '63.mp3', 'Newspapers are supported primarily by the sale of advertising space.');
INSERT INTO `writefromdictation` VALUES ('64', '64.mp3', 'Nurses specialize in clinical work and management.');
INSERT INTO `writefromdictation` VALUES ('65', '65.mp3', 'Observers waited nervously and held the breath for the concert.');
INSERT INTO `writefromdictation` VALUES ('66', '66.mp3', 'Observers waited nervously and took/hold the breath for the concert.');
INSERT INTO `writefromdictation` VALUES ('67', '67.mp3', 'Our class is divided into two groups.');
INSERT INTO `writefromdictation` VALUES ('68', '68.mp3', 'Our class will be divided into three groups.');
INSERT INTO `writefromdictation` VALUES ('69', '69.mp3', 'Our group is going to meet tomorrow in the library conference room.');
INSERT INTO `writefromdictation` VALUES ('70', '70.mp3', 'Our professor is hosting the economic development conference next week.');
INSERT INTO `writefromdictation` VALUES ('71', '71.mp3', 'Our professors are hosting an economic/business conference.');
INSERT INTO `writefromdictation` VALUES ('72', '72.mp3', 'Please note that the college laboratory will be closed for cleaning next week.');
INSERT INTO `writefromdictation` VALUES ('73', '73.mp3', 'Please remember to bring a highlighter to class on next Wednesday.');
INSERT INTO `writefromdictation` VALUES ('74', '74.mp3', 'Please work with each other to build monolithic statues.');
INSERT INTO `writefromdictation` VALUES ('75', '75.mp3', 'Please/try to work with each other to build monolith status.');
INSERT INTO `writefromdictation` VALUES ('76', '76.mp3', 'Politics is not usual a safe topic of conversation.');
INSERT INTO `writefromdictation` VALUES ('77', '77.mp3', 'Politics is usually not a safe topic for conversation.');
INSERT INTO `writefromdictation` VALUES ('78', '78.mp3', 'Presidential elections are held (once) every four years.');
INSERT INTO `writefromdictation` VALUES ('79', '79.mp3', 'Reference of material is held in the hall of library reference desk.');
INSERT INTO `writefromdictation` VALUES ('80', '80.mp3', 'Relevant resources are reserved in the library.');
INSERT INTO `writefromdictation` VALUES ('81', '81.mp3', 'Remember students have strictly ability criteria.');
INSERT INTO `writefromdictation` VALUES ('82', '82.mp3', 'Rising in inflation will increase the demand price and the consuming of products.');
INSERT INTO `writefromdictation` VALUES ('83', '83.mp3', 'Sales figures last year are better than expected.');
INSERT INTO `writefromdictation` VALUES ('84', '84.mp3', 'Scientists here are doing/studying a wide variety of mysterious processes.');
INSERT INTO `writefromdictation` VALUES ('85', '85.mp3', 'Scientists now study a wide variety of atmospheric processes.');
INSERT INTO `writefromdictation` VALUES ('86', '86.mp3', 'Some of the features are part of previous research.');
INSERT INTO `writefromdictation` VALUES ('87', '87.mp3', 'Student concession cards need to be obtained by completing an application form.');
INSERT INTO `writefromdictation` VALUES ('88', '88.mp3', 'Students have the options to live in college residencies or apartments.');
INSERT INTO `writefromdictation` VALUES ('89', '89.mp3', 'Resources and materials are on hold on the library reference desk.');
INSERT INTO `writefromdictation` VALUES ('90', '90.mp3', 'Resources of materials are on hold on the library reference desk.');
INSERT INTO `writefromdictation` VALUES ('91', '91.mp3', 'Review all materials before drawing your conclusion(s).');
INSERT INTO `writefromdictation` VALUES ('92', '92.mp3', 'Student\'s identification card will be issued by today and / or tomorrow.');
INSERT INTO `writefromdictation` VALUES ('93', '93.mp3', 'Successful applicants will work with a large team of researchers.');
INSERT INTO `writefromdictation` VALUES ('94', '94.mp3', 'Sydney is Australia\'s largest city, chief port and cultural center.');
INSERT INTO `writefromdictation` VALUES ('95', '95.mp3', 'Teaching assistants will receive a monthly remuneration for housing.');
INSERT INTO `writefromdictation` VALUES ('96', '96.mp3', 'Teaching assistants will receive monthly fees for housing.');
INSERT INTO `writefromdictation` VALUES ('97', '97.mp3', 'Technologies on biotechnology is of crucial importance in the project developing.');
INSERT INTO `writefromdictation` VALUES ('98', '98.mp3', 'That we won\'t have any struggle in the lab.');
INSERT INTO `writefromdictation` VALUES ('99', '99.mp3', 'The application process is longer than expected.');
INSERT INTO `writefromdictation` VALUES ('100', '100.mp3', 'The author\'s previous works are more theoretical and less experimental.');
INSERT INTO `writefromdictation` VALUES ('101', '101.mp3', 'The book was supported by many faculty members.');
INSERT INTO `writefromdictation` VALUES ('102', '102.mp3', 'The cafeteria/ coffee house features sandwiches, salads, soup, chicken, and fish.');
INSERT INTO `writefromdictation` VALUES ('103', '103.mp3', 'The campus tour runs daily during summer for perspective students.');
INSERT INTO `writefromdictation` VALUES ('104', '104.mp3', 'The cart carries a single object.');
INSERT INTO `writefromdictation` VALUES ('105', '105.mp3', 'The cause and effect of problem.');
INSERT INTO `writefromdictation` VALUES ('106', '106.mp3', 'The coffee house has a special student discount throughout the/a week.');
INSERT INTO `writefromdictation` VALUES ('107', '107.mp3', 'The company needs to polish its image.');
INSERT INTO `writefromdictation` VALUES ('108', '108.mp3', 'The curriculum is described in (the) course syllabus.');
INSERT INTO `writefromdictation` VALUES ('109', '109.mp3', 'The decision is made with support of many faculty members.');
INSERT INTO `writefromdictation` VALUES ('110', '110.mp3', 'The decision was made with the support by several faculty members.');
INSERT INTO `writefromdictation` VALUES ('111', '111.mp3', 'The dining hall will undergo renovation during the fall break.');
INSERT INTO `writefromdictation` VALUES ('112', '112.mp3', 'The early work of this research are more experimental.');
INSERT INTO `writefromdictation` VALUES ('113', '113.mp3', 'The early work is more philosophical rather than experimental.');
INSERT INTO `writefromdictation` VALUES ('114', '114.mp3', 'The economic books are at the back on the left.');
INSERT INTO `writefromdictation` VALUES ('115', '115.mp3', 'The essay will be published once the research is finished.');
INSERT INTO `writefromdictation` VALUES ('116', '116.mp3', 'The final year will consist of four taught courses and one project.');
INSERT INTO `writefromdictation` VALUES ('117', '117.mp3', 'The first assignment will be due on 14th of September.');
INSERT INTO `writefromdictation` VALUES ('118', '118.mp3', 'The following economic policy lecture has been cancelled.');
INSERT INTO `writefromdictation` VALUES ('119', '119.mp3', 'The guy is qualified to lead the groups into the mountain.');
INSERT INTO `writefromdictation` VALUES ('120', '120.mp3', 'The history of the movement is/was recorded by several writers.');
INSERT INTO `writefromdictation` VALUES ('121', '121.mp3', 'The importance of this event is/was not yet fully understood.');
INSERT INTO `writefromdictation` VALUES ('122', '122.mp3', 'The key findings seemed to contradict our initial hypothesis.');
INSERT INTO `writefromdictation` VALUES ('123', '123.mp3', 'The leading companies have changed their policies after the reports were released.');
INSERT INTO `writefromdictation` VALUES ('124', '124.mp3', 'The main concepts in this thesis were not new.');
INSERT INTO `writefromdictation` VALUES ('125', '125.mp3', 'The main concepts of these events were not yet fully understood.');
INSERT INTO `writefromdictation` VALUES ('126', '126.mp3', 'The massive accumulation of data is converted to a communicable argument.');
INSERT INTO `writefromdictation` VALUES ('127', '127.mp3', 'The module of the work is more of a compositional style.');
INSERT INTO `writefromdictation` VALUES ('128', '128.mp3', 'The most important process of farming is weeding.');
INSERT INTO `writefromdictation` VALUES ('129', '129.mp3', 'The nearest automatic teller is in front of the anatomy labs.');
INSERT INTO `writefromdictation` VALUES ('130', '130.mp3', 'The new product failed due to a lack of demand.');
INSERT INTO `writefromdictation` VALUES ('131', '131.mp3', 'The problem of postgraduate students is funding.');
INSERT INTO `writefromdictation` VALUES ('132', '132.mp3', 'The qualification will be assessed with criterion to approach.');
INSERT INTO `writefromdictation` VALUES ('133', '133.mp3', 'The qualification will be assessed with the criterion to approach.');
INSERT INTO `writefromdictation` VALUES ('134', '134.mp3', 'The relative humidity is the amount of moisture that the air can hold.');
INSERT INTO `writefromdictation` VALUES ('135', '135.mp3', 'The relevant resources/materials are reserved in the library.');
INSERT INTO `writefromdictation` VALUES ('136', '136.mp3', 'The research on cyclone tropical forest are forecasting the weather conditions.');
INSERT INTO `writefromdictation` VALUES ('137', '137.mp3', 'The result of the experiment reported in the table below.');
INSERT INTO `writefromdictation` VALUES ('138', '138.mp3', 'The same approach reached to the same explanation of the problem.');
INSERT INTO `writefromdictation` VALUES ('139', '139.mp3', 'The same issue reached the same explanation of the problem.');
INSERT INTO `writefromdictation` VALUES ('140', '140.mp3', 'The same problems reached both same explanations.');
INSERT INTO `writefromdictation` VALUES ('141', '141.mp3', 'The schedule allows a lot of time for independent study.');
INSERT INTO `writefromdictation` VALUES ('142', '142.mp3', 'The schedule allows plenty of time for independent study.');
INSERT INTO `writefromdictation` VALUES ('143', '143.mp3', 'The scientists now study a wide variety of atmospheric processes.');
INSERT INTO `writefromdictation` VALUES ('144', '144.mp3', 'The scientists use the web to explore the problems.');
INSERT INTO `writefromdictation` VALUES ('145', '145.mp3', 'The sociology department is highly regarded worldwide.');
INSERT INTO `writefromdictation` VALUES ('146', '146.mp3', 'The spot of lecture on economic policy has been cancelled.');
INSERT INTO `writefromdictation` VALUES ('147', '147.mp3', 'The students have options to live in residences or apartments.');
INSERT INTO `writefromdictation` VALUES ('148', '148.mp3', 'The technician left the new microscope in biology lab.');
INSERT INTO `writefromdictation` VALUES ('149', '149.mp3', 'The theme of the work requires demure compensational style.');
INSERT INTO `writefromdictation` VALUES ('150', '150.mp3', 'The theory has a great control of controversy.');
INSERT INTO `writefromdictation` VALUES ('151', '151.mp3', 'The time of the math lecture has been changed to ten thirty.');
INSERT INTO `writefromdictation` VALUES ('152', '152.mp3', 'The toughest part of public transport is funding.');
INSERT INTO `writefromdictation` VALUES ('153', '153.mp3', 'The toughest part of research for postgraduate students is funding.');
INSERT INTO `writefromdictation` VALUES ('154', '154.mp3', 'The toughest problem of research for postgraduate students is funding. ');
INSERT INTO `writefromdictation` VALUES ('155', '155.mp3', 'The undergraduates need some specific resources to analyze a specific problem.');
INSERT INTO `writefromdictation` VALUES ('156', '156.mp3', 'The university has a world-renowned school of archaeology.');
INSERT INTO `writefromdictation` VALUES ('157', '157.mp3', 'The university library has most of the necessary books.');
INSERT INTO `writefromdictation` VALUES ('158', '158.mp3', 'The university officer will help you locate housing and transportation.');
INSERT INTO `writefromdictation` VALUES ('159', '159.mp3', 'There is a need for constructive dialogue between leaders.');
INSERT INTO `writefromdictation` VALUES ('160', '160.mp3', 'There is not enough evidence to support this recommendation.');
INSERT INTO `writefromdictation` VALUES ('161', '161.mp3', 'There is/was not enough evidence to support these recommendations.');
INSERT INTO `writefromdictation` VALUES ('162', '162.mp3', 'There was no correlation between drug used and cure rates.');
INSERT INTO `writefromdictation` VALUES ('163', '163.mp3', 'There were not enough evidences to support the recommendations.');
INSERT INTO `writefromdictation` VALUES ('164', '164.mp3', 'There will be a conference here next summer on using the web for academic research.');
INSERT INTO `writefromdictation` VALUES ('165', '165.mp3', 'They were struggling last year to make their service pay.');
INSERT INTO `writefromdictation` VALUES ('166', '166.mp3', 'Thief happens to a thousand people every day.');
INSERT INTO `writefromdictation` VALUES ('167', '167.mp3', 'This graph shows there is a minimum growth.');
INSERT INTO `writefromdictation` VALUES ('168', '168.mp3', 'This graph/slide shows there is a minimum growth.');
INSERT INTO `writefromdictation` VALUES ('169', '169.mp3', 'This paper challenged the previously accepted theories.');
INSERT INTO `writefromdictation` VALUES ('170', '170.mp3', 'This schedule allows a lot of / plenty of time for / on independent / individual study.');
INSERT INTO `writefromdictation` VALUES ('171', '171.mp3', 'This schedule allows a lot of time for independent study.');
INSERT INTO `writefromdictation` VALUES ('172', '172.mp3', 'This slide shows there is a minimum growth.');
INSERT INTO `writefromdictation` VALUES ('173', '173.mp3', 'Those events are not yet fully understood.');
INSERT INTO `writefromdictation` VALUES ('174', '174.mp3', 'To achieve full marks, an appropriate bibliography is required. ');
INSERT INTO `writefromdictation` VALUES ('175', '175.mp3', 'Today’s lecture material will be included in the next assessment.');
INSERT INTO `writefromdictation` VALUES ('176', '176.mp3', 'Tribes work(ed) with each other to build monolith statues.');
INSERT INTO `writefromdictation` VALUES ('177', '177.mp3', 'Please work with each other to build monolithic statues.');
INSERT INTO `writefromdictation` VALUES ('178', '178.mp3', 'Undergraduate student may participate in specific stages with/within the program. ');
INSERT INTO `writefromdictation` VALUES ('179', '179.mp3', 'University departments should carefully monitor articles and publications by faculty.');
INSERT INTO `writefromdictation` VALUES ('180', '180.mp3', 'We cannot consider the price at this stage.');
INSERT INTO `writefromdictation` VALUES ('181', '181.mp3', 'We support the research on problems of tropical cyclone dynamics, diagnosed and forecasting.');
INSERT INTO `writefromdictation` VALUES ('182', '182.mp3', 'We support the research on problems related to tropical cyclone dynamics and forecasting.');
INSERT INTO `writefromdictation` VALUES ('183', '183.mp3', 'We support to do research in the field of archaeology such as forecasting and estimation.');
INSERT INTO `writefromdictation` VALUES ('184', '184.mp3', 'When meet high potential risks, companies will raise their price.');
INSERT INTO `writefromdictation` VALUES ('185', '185.mp3', 'When workers ask for an increase in wages, the company raises its prices.');
INSERT INTO `writefromdictation` VALUES ('186', '186.mp3', 'When workers ask for raising/high wages, the companies raise prices.');
INSERT INTO `writefromdictation` VALUES ('187', '187.mp3', 'Why has the project been held up for so long?');
INSERT INTO `writefromdictation` VALUES ('188', '188.mp3', 'You are required to complete the/your research paper by next Monday.');
INSERT INTO `writefromdictation` VALUES ('189', '189.mp3', 'You are required to submit your assignment by Friday.');
INSERT INTO `writefromdictation` VALUES ('190', '190.mp3', 'You can contact with all your tutors by email.');
INSERT INTO `writefromdictation` VALUES ('191', '191.mp3', 'You can contact all your tutors by email.');
INSERT INTO `writefromdictation` VALUES ('192', '192.mp3', 'You can find a lot more information/references on university website.');
INSERT INTO `writefromdictation` VALUES ('193', '193.mp3', 'You come with me and the others stay here.');
INSERT INTO `writefromdictation` VALUES ('194', '194.mp3', 'You must submit your assignment by next Friday at the latest.');
INSERT INTO `writefromdictation` VALUES ('195', '195.mp3', 'You must submit your assignments by next Friday at the latest.');
INSERT INTO `writefromdictation` VALUES ('196', '196.mp3', 'You should allocate your time wisely when revising.');
INSERT INTO `writefromdictation` VALUES ('197', '197.mp3', 'You should contact all tutors by email.');
INSERT INTO `writefromdictation` VALUES ('198', '198.mp3', 'You should include these two picture from the lecture in your assignment.');
INSERT INTO `writefromdictation` VALUES ('199', '199.mp3', 'Your summary should be as clear and concise as possible.');
INSERT INTO `writefromdictation` VALUES ('200', '200.mp3', 'Your task is to create the demand for the product.');
INSERT INTO `writefromdictation` VALUES ('201', '201.mp3', 'Your thesis should/must have (a) fairly limited/large scope. ');
INSERT INTO `writefromdictation` VALUES ('202', '202.mp3', 'Most of the features are part of the previous system.');
INSERT INTO `writefromdictation` VALUES ('203', '203.mp3', 'It is hard to anticipate all their actions.');
INSERT INTO `writefromdictation` VALUES ('204', '204.mp3', 'The key findings seemed to contradict our initial hypothesis.');
INSERT INTO `writefromdictation` VALUES ('205', '205.mp3', 'Writing an essay is easy once the research is finished.');
INSERT INTO `writefromdictation` VALUES ('206', '206.mp3', 'Most critics agreed with the new theory, but a few disagreed.');
INSERT INTO `writefromdictation` VALUES ('207', '207.mp3', 'The results of the experiment are reported in the table below. ');
INSERT INTO `writefromdictation` VALUES ('208', '208.mp3', 'Laws protect consumer rights and help to avoid market problems.');
INSERT INTO `writefromdictation` VALUES ('209', '209.mp3', 'The following economic lectures will be cancelled.');
INSERT INTO `writefromdictation` VALUES ('210', '210.mp3', 'The morning\'s lecture on economic policy has been cancelled.');
INSERT INTO `writefromdictation` VALUES ('211', '211.mp3', 'The coffee house menu featured coffee, sandwiches and toast.');
INSERT INTO `writefromdictation` VALUES ('212', '212.mp3', 'Control systems in manufacturing require a high level of accuracy.');
INSERT INTO `writefromdictation` VALUES ('213', '213.mp3', 'We need to hand in the essay by next week.');
INSERT INTO `writefromdictation` VALUES ('214', '214.mp3', 'Public perception about biotechnology is crucial for developing scientific consensus.');
INSERT INTO `writefromdictation` VALUES ('215', '215.mp3', 'Identity theft happens to thousands of people every year.');
INSERT INTO `writefromdictation` VALUES ('216', '216.mp3', 'The commissioner will collect fines for the sovereignty.');
INSERT INTO `writefromdictation` VALUES ('217', '217.mp3', 'The commissioner will portion funds for the authorities.');
INSERT INTO `writefromdictation` VALUES ('218', '218.mp3', 'The findings of researchers are focused on the causes of diseases and treatments.');
INSERT INTO `writefromdictation` VALUES ('219', '219.mp3', 'The software companies design and create new products.');
INSERT INTO `writefromdictation` VALUES ('220', '220.mp3', 'Let me know if anybody struggles in the lab.');
INSERT INTO `writefromdictation` VALUES ('221', '221.mp3', 'Please make sure you have collected all the necessary materials. ');
INSERT INTO `writefromdictation` VALUES ('222', '222.mp3', 'Please make sure you correctly cite all the necessary materials.');
INSERT INTO `writefromdictation` VALUES ('223', '223.mp3', 'It is absolutely vital to allocate your resources.');
INSERT INTO `writefromdictation` VALUES ('224', '224.mp3', 'Students were instructed to submit their assignments by Friday.');
INSERT INTO `writefromdictation` VALUES ('225', '225.mp3', 'Americans have progressively found the growth in quantitative terms.');
INSERT INTO `writefromdictation` VALUES ('226', '226.mp3', 'The island is located at the north end of the bay.');
INSERT INTO `writefromdictation` VALUES ('227', '227.mp3', 'The report contains the most important information.');
INSERT INTO `writefromdictation` VALUES ('228', '228.mp3', 'Water taps on the campus will discourage the frequent use of plastic bottles.');
INSERT INTO `writefromdictation` VALUES ('229', '229.mp3', 'A recent article shows a number of interesting experiments.');
INSERT INTO `writefromdictation` VALUES ('230', '230.mp3', 'The theme of the instrumental work exhibits more of a demure, compositional style.');
INSERT INTO `writefromdictation` VALUES ('231', '231.mp3', 'Organization plays an important role in academic literature.');
INSERT INTO `writefromdictation` VALUES ('232', '232.mp3', 'Organizational failure is considered in various perspectives in academic literature.');
INSERT INTO `writefromdictation` VALUES ('233', '233.mp3', 'The advertisement for children is open to much debate.');
INSERT INTO `writefromdictation` VALUES ('234', '234.mp3', 'The effect of advertising is open to much debate.');
INSERT INTO `writefromdictation` VALUES ('235', '235.mp3', 'Article numbers are collected through interesting experiments.');
INSERT INTO `writefromdictation` VALUES ('236', '236.mp3', 'Mutually exclusive events are neither complementary nor opposing. ');
INSERT INTO `writefromdictation` VALUES ('237', '237.mp3', 'Companies want to protect their brand from negative comments.');
INSERT INTO `writefromdictation` VALUES ('238', '238.mp3', 'Books for children often contain many bits of illustration.');
INSERT INTO `writefromdictation` VALUES ('239', '239.mp3', 'Before completing the exercise, you need to read the remaining chapters. ');
INSERT INTO `writefromdictation` VALUES ('240', '240.mp3', 'An ancient text may hold secrets which were lost centuries ago.');
INSERT INTO `writefromdictation` VALUES ('241', '241.mp3', 'Agenda item should be submitted by the end of the day.');
INSERT INTO `writefromdictation` VALUES ('242', '242.mp3', 'Affordable housing is an important issue for all members of society.');
INSERT INTO `writefromdictation` VALUES ('243', '243.mp3', 'Rising sales figures means a rise in demand.');
INSERT INTO `writefromdictation` VALUES ('244', '244.mp3', 'Some people regarded it as care, while others regarded it as recklessness.');
INSERT INTO `writefromdictation` VALUES ('245', '245.mp3', 'Remember, the prestigious selection has strict eligibility criteria.');
INSERT INTO `writefromdictation` VALUES ('246', '246.mp3', 'Remember, the gifts purchased by children should have a striped character. ');
INSERT INTO `writefromdictation` VALUES ('247', '247.mp3', 'The commission of fund supported among authorities has raised an argument.');
INSERT INTO `writefromdictation` VALUES ('248', '248.mp3', 'Climate change is a fierce phenomenon concentrated by scientists.');
INSERT INTO `writefromdictation` VALUES ('249', '249.mp3', 'A party is thrown in the small meeting room.');
INSERT INTO `writefromdictation` VALUES ('250', '250.mp3', 'The solar energy department is highly regarded worldwide.');
INSERT INTO `writefromdictation` VALUES ('251', '251.mp3', 'Teaching assistants will receive a monthly stipend for housing.');
INSERT INTO `writefromdictation` VALUES ('252', '252.mp3', 'The evaluation form will be reviewed by university personnel.');
INSERT INTO `writefromdictation` VALUES ('253', '253.mp3', 'To gain full marks, an appropriate bibliography is required.');
INSERT INTO `writefromdictation` VALUES ('254', '254.mp3', 'The same issues featured both the explanations of the problem.');
INSERT INTO `writefromdictation` VALUES ('255', '255.mp3', 'The morning\'s lecture on economic policy has been cancelled.');
INSERT INTO `writefromdictation` VALUES ('256', '256.mp3', 'The new technician dropped the microscope in the biology lab.');
INSERT INTO `writefromdictation` VALUES ('257', '257.mp3', 'The author\'s previous works are more philosophical and less experimental.');
INSERT INTO `writefromdictation` VALUES ('258', '258.mp3', 'Organizational failure is considered in various perspectives in academic literature.');
INSERT INTO `writefromdictation` VALUES ('259', '259.mp3', 'Animals raised in captivity behave differently with their wild counterparts.');
INSERT INTO `writefromdictation` VALUES ('260', '260.mp3', 'The scientists now study a wide variety of atmospheric processes.');
INSERT INTO `writefromdictation` VALUES ('261', '261.mp3', 'The coffee house features soups salads sandwiches chicken and fish.');
INSERT INTO `writefromdictation` VALUES ('262', '262.mp3', 'The sociology department is highly regarded.');
INSERT INTO `writefromdictation` VALUES ('263', '263.mp3', 'While something is desirable, underline issue must be addressed.');
INSERT INTO `writefromdictation` VALUES ('264', '264.mp3', 'A very basic definition of computing is counting and calculating.');
INSERT INTO `writefromdictation` VALUES ('265', '265.mp3', 'A very basic feature of computing is counting and calculating.');
INSERT INTO `writefromdictation` VALUES ('266', '266.mp3', 'Academic problems cause a rise in employment.');
INSERT INTO `writefromdictation` VALUES ('267', '267.mp3', 'Economic problems cause a rise on unemployment.');
INSERT INTO `writefromdictation` VALUES ('268', '268.mp3', 'An aerial photograph was promptly registered for federal evaluations');
INSERT INTO `writefromdictation` VALUES ('269', '269.mp3', 'And in that regard, as well as in other regards, it stands as an important contribution.');
INSERT INTO `writefromdictation` VALUES ('270', '270.mp3', 'Behind the garage, there is a flat car drawn by mules.');
INSERT INTO `writefromdictation` VALUES ('271', '271.mp3', 'Below the heating controls in the middle is a small round plastic button.');
INSERT INTO `writefromdictation` VALUES ('272', '272.mp3', 'Celebrated theory is still a subject of controversy.');
INSERT INTO `writefromdictation` VALUES ('273', '273.mp3', 'Celebrated theory is still a subject to a great controversy.');
INSERT INTO `writefromdictation` VALUES ('274', '274.mp3', 'Celebrity is still the great source of controversy.');
INSERT INTO `writefromdictation` VALUES ('275', '275.mp3', 'Celebrity theory is still the great source of controversy.');
INSERT INTO `writefromdictation` VALUES ('276', '276.mp3', 'Climate change is a fierce phenomenon concentrated by scientists.');
INSERT INTO `writefromdictation` VALUES ('277', '277.mp3', 'Consumer confidence has a direct impact on sales');
INSERT INTO `writefromdictation` VALUES ('278', '278.mp3', 'Daily practice can build confidence and improve skills');
INSERT INTO `writefromdictation` VALUES ('279', '279.mp3', 'Early streams of economic in Roman Republic will be examined.');
INSERT INTO `writefromdictation` VALUES ('280', '280.mp3', 'Economic problems cause a rise in unemployment.');
INSERT INTO `writefromdictation` VALUES ('281', '281.mp3', 'Evaluation form will be reviewed by university personnel');
INSERT INTO `writefromdictation` VALUES ('282', '282.mp3', 'Freshwater creatures did not appear in the paintings until the modern period.');
INSERT INTO `writefromdictation` VALUES ('283', '283.mp3', 'Government reforms have been proposed at all levels.');
INSERT INTO `writefromdictation` VALUES ('284', '284.mp3', 'Human being compete with other things for resources and space.');
INSERT INTO `writefromdictation` VALUES ('285', '285.mp3', 'I thought we would meet in the small meeting room.');
INSERT INTO `writefromdictation` VALUES ('286', '286.mp3', 'Those who seek for further extension, contact your faculty for more information;');
INSERT INTO `writefromdictation` VALUES ('287', '287.mp3', 'It is hard to observe the reaction of the character.');
INSERT INTO `writefromdictation` VALUES ('288', '288.mp3', 'It is really a comprehensive program that covers both theory and practice');
INSERT INTO `writefromdictation` VALUES ('289', '289.mp3', 'Listening is the key skill to succeed to this course.');
INSERT INTO `writefromdictation` VALUES ('290', '290.mp3', 'Many birds migrated to the warmer areas for winter.');
INSERT INTO `writefromdictation` VALUES ('291', '291.mp3', 'Many toxins originate from plants or animals');
INSERT INTO `writefromdictation` VALUES ('292', '292.mp3', 'Medical researchers have focused on the different treatments and disease.');
INSERT INTO `writefromdictation` VALUES ('293', '293.mp3', 'No more than four people are allowed in the lab to something.');
INSERT INTO `writefromdictation` VALUES ('294', '294.mp3', 'No more than four people are allowed in the lab.');
INSERT INTO `writefromdictation` VALUES ('295', '295.mp3', 'Packaging is very important to attract intentioned buyers.');
INSERT INTO `writefromdictation` VALUES ('296', '296.mp3', 'Participants are initially selected from a range of foundation subjects.');
INSERT INTO `writefromdictation` VALUES ('297', '297.mp3', 'Peer group pressure has a great effect on young people');
INSERT INTO `writefromdictation` VALUES ('298', '298.mp3', 'Scientific beneficiary to space exploration is frequently questioned.');
INSERT INTO `writefromdictation` VALUES ('299', '299.mp3', 'Some people regarded this as eye wash whereas some people ask for the status of their complaints and actions taken.');
INSERT INTO `writefromdictation` VALUES ('300', '300.mp3', 'Something detail based underline issue must be addressed first');
INSERT INTO `writefromdictation` VALUES ('301', '301.mp3', 'Statistic results should be described in different ways depending on circumstances.');
INSERT INTO `writefromdictation` VALUES ('302', '302.mp3', 'Submitting your group assignment must be issued punctually by one of your group members.');
INSERT INTO `writefromdictation` VALUES ('303', '303.mp3', 'Synopsis contains the most important information.');
INSERT INTO `writefromdictation` VALUES ('304', '304.mp3', 'Textile manufacturer plays a large role in improving economies');
INSERT INTO `writefromdictation` VALUES ('305', '305.mp3', 'That brief outline takes us to the beginning of the 20th century.');
INSERT INTO `writefromdictation` VALUES ('306', '306.mp3', 'The aerial photograph were promptly registered for federal evaluations.');
INSERT INTO `writefromdictation` VALUES ('307', '307.mp3', 'The campus tour will help you get familiar with the teaching facilities.');
INSERT INTO `writefromdictation` VALUES ('308', '308.mp3', 'The campus tour will help you to get familiar with the teaching facilities.');
INSERT INTO `writefromdictation` VALUES ('309', '309.mp3', 'The earth\'s atmosphere (is mostly composed of) nitrogen and oxygen.');
INSERT INTO `writefromdictation` VALUES ('310', '310.mp3', 'The excursion for children is very much open to debate.');
INSERT INTO `writefromdictation` VALUES ('311', '311.mp3', 'The glimpse of something is an enormously rewarding experience.');
INSERT INTO `writefromdictation` VALUES ('312', '312.mp3', 'The key difference between courses is the kind of assessment');
INSERT INTO `writefromdictation` VALUES ('313', '313.mp3', 'The meeting has some struggle overlaps.');
INSERT INTO `writefromdictation` VALUES ('314', '314.mp3', 'The qualification will be assessed by using a conference criterion to approach.');
INSERT INTO `writefromdictation` VALUES ('315', '315.mp3', 'The reconciliation is important, the basic underlying issue that I think must be addressed.');
INSERT INTO `writefromdictation` VALUES ('316', '316.mp3', 'The theme of the issue was the estimation of problem.');
INSERT INTO `writefromdictation` VALUES ('317', '317.mp3', 'The whole point of the project was to look at the norm not the exception.');
INSERT INTO `writefromdictation` VALUES ('318', '318.mp3', 'These have also been found to contribute to the death of many marine animals');
INSERT INTO `writefromdictation` VALUES ('319', '319.mp3', 'This class will look at the structure of the essay');
INSERT INTO `writefromdictation` VALUES ('320', '320.mp3', 'They are both grown up in the rural area and dislike the urban life.');
INSERT INTO `writefromdictation` VALUES ('321', '321.mp3', 'They have struggled since last year to make their services paid.');
INSERT INTO `writefromdictation` VALUES ('322', '322.mp3', 'There is a strict eligibility criteria to undertake background speaker studies.');
INSERT INTO `writefromdictation` VALUES ('323', '323.mp3', 'Attracting skilled workers to the city with expensive housing is hard. ');
INSERT INTO `writefromdictation` VALUES ('324', '324.mp3', 'Her celebrating theory has a great level of controversy.');
INSERT INTO `writefromdictation` VALUES ('325', '325.mp3', 'When workers ask for higher wages, the company often raises its prices.');
INSERT INTO `writefromdictation` VALUES ('326', '326.mp3', 'This guy is qualified to lead the groups into the mountain.');
