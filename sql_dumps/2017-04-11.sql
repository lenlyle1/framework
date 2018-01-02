-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: health_connect_alpha
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action_plan`
--

DROP TABLE IF EXISTS `action_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_plan` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `my_goal` int(10) unsigned DEFAULT NULL,
  `brain_storm_opt_1` varchar(1028) DEFAULT NULL,
  `brain_storm_opt_2` varchar(1028) DEFAULT NULL,
  `brain_storm_opt_3` varchar(1028) DEFAULT NULL,
  `brain_storm` varchar(512) DEFAULT NULL,
  `plan_text` varchar(1028) DEFAULT NULL,
  `barrier_text` varchar(1028) DEFAULT NULL,
  `strategy_text` varchar(1028) DEFAULT NULL,
  `track_else` varchar(1028) DEFAULT NULL,
  `track_paper` tinyint(1) DEFAULT NULL,
  `track_calendar` tinyint(1) DEFAULT NULL,
  `track_app` tinyint(1) DEFAULT NULL,
  `confidence_level` int(10) unsigned DEFAULT NULL,
  `coached` tinyint(1) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_plan`
--

LOCK TABLES `action_plan` WRITE;
/*!40000 ALTER TABLE `action_plan` DISABLE KEYS */;
INSERT INTO `action_plan` VALUES (1,'1',41,'asdf','aa','aaaaaaaaa','asdf','dsfasdfdd','dssss','asdfasdfss','',1,1,0,3,0,'2017-04-08','2017-03-31 23:24:13','2017-03-31 23:24:42'),(2,'1',0,'','','','','','','','',0,0,0,0,0,'0000-00-00','2017-04-03 15:53:12','2017-04-03 16:10:11'),(3,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-03 16:11:18','2017-04-03 16:11:18'),(4,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-03 16:12:29','2017-04-03 16:12:29'),(5,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-03 16:15:09','2017-04-03 16:15:09'),(6,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-03 16:15:40','2017-04-03 16:15:40'),(7,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-03 16:16:02','2017-04-03 16:16:02'),(8,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-03 16:16:43','2017-04-03 16:16:43'),(9,'1',42,'dddd','ddd','ddd','ddd','dfdfdfd','dfdfd','dfdfdfd','',0,1,1,9,0,'0000-00-00','2017-04-03 16:18:20','2017-04-03 16:21:09'),(10,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-10 23:52:13','2017-04-10 23:52:13'),(11,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-04-10 23:54:25','2017-04-10 23:54:25'),(12,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-04-10 23:55:18','2017-04-10 23:55:18');
/*!40000 ALTER TABLE `action_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `evaluation_id` int(10) unsigned NOT NULL,
  `method_name` varchar(64) DEFAULT NULL,
  `friendly_name` varchar(128) DEFAULT NULL,
  `patient_report` tinyint(1) NOT NULL DEFAULT '1',
  `clinician_report` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,'formConfidence','Comfortable Filling Out Forms',1,0),(2,'vegetableServings','Getting Enough Vegetables',1,0),(3,'fruitServings','Getting Enough Fruit',1,0),(4,'weeklySugarSoda','Limiting Sugary Consumption',1,0),(5,'bmiCalc','Maintaining a Healthy BMI',1,0),(6,'processedFoodConsumption','Limiting Salt and Processed Food Consumption',1,0),(7,'fatConsumption','Limiting Fat Consumption',1,0),(8,'eatingHabitsRollup','Overall Eating Habits',1,0),(9,'exerciseHabits','Getting Enough Exercise',1,0),(10,'prescriptionAdherence','Taking your Prescriptions',1,0),(11,'tobaccoUsage','Tobacco/Nicotine Use',1,0),(12,'depressionSymptoms','Signs of Depression',1,0),(13,'stress','Overall Stress',1,0),(14,'weeklyAlcoholUnits','Alcohol Moderation',1,0),(15,'monthlyHealthStatus','Overall Health Status',1,0),(16,'socialNeeds','Social Needs',0,1);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_short_text`
--

DROP TABLE IF EXISTS `evaluation_short_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation_short_text` (
  `evaluation_id` int(10) unsigned NOT NULL,
  `short_text` text,
  PRIMARY KEY (`evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_short_text`
--

LOCK TABLES `evaluation_short_text` WRITE;
/*!40000 ALTER TABLE `evaluation_short_text` DISABLE KEYS */;
INSERT INTO `evaluation_short_text` VALUES (1,'Please tell us if you need help filling out forms or understanding anything about your healthcare.'),(2,'Consider talking to your healthcare provider about how to put more healthy vegetable options in your diet. '),(3,'Consider talking to your healthcare provider about how to put more healthy fruit options in your diet. '),(4,'We recommend talking to your healthcare provider about how to cut down on sugary drinks and replacing them with other beverages. '),(5,'We recommend talking to your healthcare provider about strategies to achieve a healthier weight. '),(6,'Salt Consumption Placeholder Text'),(7,'We recommend talking to your healthcare provider about how to reduce unhealthy fats in your diet. '),(9,'Exercise placeholder Text'),(10,'We recommend that you discuss the medications that you take regularly, and those that you don\'t, with your healthcare provider.'),(11,'Tobacco Usage Placeholder Text'),(12,'Depression Placeholder Text'),(13,'We recommend that you discuss your stress and things causing you stress with your healthcare provider.'),(14,'We recommend that you discuss ways to cut down on alcohol with your healthcare provider.'),(15,'It is important for you to tell your healthcare provider when you are bothered by your health problems.'),(16,'Social Needs Placeholder Text');
/*!40000 ALTER TABLE `evaluation_short_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_text`
--

DROP TABLE IF EXISTS `evaluation_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation_text` (
  `text_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text_node_name` varchar(128) NOT NULL,
  `text_body` text NOT NULL,
  PRIMARY KEY (`text_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_text`
--

LOCK TABLES `evaluation_text` WRITE;
/*!40000 ALTER TABLE `evaluation_text` DISABLE KEYS */;
INSERT INTO `evaluation_text` VALUES (1,'health_lit_warn_cth_patient','You said that you are only somewhat confident about filling out forms in the doctor’s office.  Please tell us if you need help filling out forms or understanding anything about your healthcare.'),(2,'health_lit_err_cth_patient','You said that you are not very confident about filling out forms or reading written material in the doctor\'s office.  Please tell us if you need help filling out forms or understanding anything about your healthcare.'),(3,'health_lit_warn_cth_clinician','\nYour patient indicates being only somewhat confident about completing forms and understanding written material in the doctor’s office.\nThis means that your patient may have lower than average health literacy and may need extra help understanding health information, as well as both written and oral instructions that you provide.  \nWe recommend that you take steps to be sure that your patient understands your instructions.</br>\nCommon techniques to increase understanding include asking the patient to repeat back to you key points to check for understanding, providing low literacy written materials, involving family members in follow up plans, and/or using an interpreter when the barrier is related to discordance between the language of the healthcare team and the preferred language of the patient.\"\n'),(4,'health_lit_err_cth_clinician','Your patient indicates not being confident about completing forms in the doctor\'s office.  This means that your patient probably has lower than average health literacy and almost certainly needs extra help understanding health information, as well as both written and oral instructions that you provide.  We recommend that you take steps to be sure that your patient understands your instructions.\r\n</br>\r\nCommon techniques to increase understanding include asking the patient to repeat back to you key points to check for understanding, providing low literacy written materials, involving family members in follow up plans, and/or using an interpreter when the barrier is related to discordance between the language of the healthcare team and the preferred language of the patient.'),(5,'bmi_under_warn_cth_patient','Your body mass index (calculated from your weight and height) is [[bmi]], which means that you are underweight.  We recommend talking to someone on your healthcare team about ways to achieve a healthier weight.\n'),(6,'bmi_over_warn_cth_patient','Your body mass index (calculated from your weight and height) is [[bmi]] which means you are overweight.  Being overweight increases your risk of chronic health problems. Losing some weight may improve your health and reduce your health risks.  Consider talking to someone on your healthcare team about ways to help reach a healthy weight.\n'),(7,'bmi_over_err_cth_patient','Your body mass index (calculated from your weight and height) is [[bmi]], which means that you are in the obese range. Losing weight would probably be good for your health and reduce your health risks.  We recommend talking to someone on yourhealthcare team about ways to achieve a healthier weight.\n'),(9,'health_lit_warn_eecth_patient','\nYou said that you are only somewhat confident about filling out forms in the doctor’s office.  Many people have the same difficulties. We would like to help. Let\'s work together to make things clear.  \n'),(10,'health_lit_err_eecth_patient','You said that you are not very confident about filling out forms in the doctor\'s office.  Many people have the same difficulties. We would like to help. Let\'s work together to make things clear.'),(11,'health_lit_warn_eecth_clinician','Your patient may need extra help filling out forms, understanding health information, and comprehending  written and oral instructions.  This can be a very sensitive topic for many patients. We recommend that you take extra time to validate concerns about health literacy and sentively take steps to be sure that your patient understands your instructions and has the support needed to follow through on your recommendations for health care.  \n</br>\nCommon techniques to increase understanding include asking the patient to repeat back to you key points to check for understanding, providing low literacy written materials, involving family members in follow up plans, and/or using an interpreter when the barrier is related to discordance between the language of the healthcare team and the preferred language of the patient.\n'),(12,'health_lit_err_eecth_clinician','Your patient will need extra help filling out forms, understanding health information, and comprehending  written and oral instructions.  This can be a very sensitive topic for many patients. We recommend that you take extra time to sensitively validate concerns about health literacy and take steps to be sure that your patient understands your instructions and has the support needed to follow through on your recommendations for health care.  \n</br>\nCommon techniques to increase understanding include asking the patient to repeat back to you key points to check for understanding, providing low literacy written materials, involving family members in follow up plans, and/or using an interpreter when the barrier is related to discordance between the language of the healthcare team and the preferred language of the patient.\n'),(13,'bmi_under_warn_cth_clinician','\nBMI is [[bmi]] and falls in the underweight category.  There may be many reasons for this, some of which could warrant further clinical investigation.\n'),(14,'bmi_over_warn_cth_clinician','\nBMI is [[bmi]] and falls in the overweight category. Identify realistic and appropriate weight loss goals.  Encourage your patient to take steps to begin losing weight over the next 6 months through a combination of calorie restriction and increased physical activity, until the goal is reached.\n'),(15,'bmi_over_err_cth_clinician','\nBMI is [[bmi]] and falls in the obese category.  Help your patient to set realistic short and long term weight loss goals.   Encourage weight loss of up to 1-2 lbs/week until goals are met. Weight loss can be achieved with a combination of calorie restriction and increased physical activity. Referring your patient to a nutritionist, weight loss group, or exercise group may be helpful.  In some cases intensive weight management programs or consideration of bariatric surgery may be indicated if there are significant comorbidities and patient interest.\n'),(16,'bmi_under_warn_eecth_patent','\nBased on your height and weight, you are underweight.  We recommend talking to someone on your healthcare team about ways to achieve a healthier weight.\n'),(17,'bmi_over_warn_eecth_patient','\nBased on your height and weight, you are overweight. This may be hard to hear and losing weight can be very difficult.  You may have tried to lose weight in the past without success.  Let\'s work together to help you reach your weight goals. \n'),(18,'bmi_over_warn_eecth_clinician','\nBMI is [[bmi]] and falls in the overweight category. This is a sensitive issue for most patients. It may be helpful to inquire about their previous experiences trying to lose weight and how their weight impacts their life.  If the timing is right, identify small and realistic steps to address weight, such as self-monitoring diet and physical activity or involvement in a weight loss program. \n'),(19,'bmi_over_err_eecth_clinician','\nBMI is [[bmi]] and falls in the obese category. This is a sensitive issue for most patients. It may be helpful to inquire about their previous experiences trying to lose weight and how their weight impacts their life.  In many cases obesity is associated with depression, anxiety and poor self-esteem.   If the timing is right, identify small and realistic steps to address weight and associated emotional issues.  Acitivities might include self-monitoring diet and physical activity, involvement in a weight loss program, or referral for counseling. \n'),(20,'bmi_okay_eecth_patient','\nYour body mass index (calculated from your weight and height) is [[bmi]].  This is a healthy weight for most people like you.  Congratulations!\n'),(21,'bmi_okay_eecth_clinician','\nBMI is [[bmi]] and falls in the healthy weight category.  You may wish to congratulate the patient on maintaining a healthy weight. \n'),(22,'bmi_over_err_eecth_patient','\nBased on your height and weight, you are in the obese range. This may be hard to hear and losing weight can be very difficult.  You may have tried to lose weight in the past without success.  Even losing a small amount of weight can improve your health. Let\'s work together to help you reach your weight goals.\n'),(23,'bmi_under_warn_eecth_clinician','Based on your height and weight, you are underweight.  We recommend talking to someone on your healthcare team about ways to achieve a healthier weight'),(25,'veggie_warn_patient_cth','Eating [[recommended_servings]] or more vegetable servings (where one serving is about half a cup) each day is recommended. You probably need to eat one or two more servings of vegetables every day than you are eating right now.  Consider talking to someone on your healthcare team about how to add more healthy vegetables to your diet.'),(26,'veggie_err_patient_cth','Eating [[recommended_servings]] or more vegetable servings (where one serving is about half a cup) each day is recommended. You probably need to eat several more servings of vegetables each day.  We recommend that you talk to someone on your healthcare team about how to add more healthy vegetables in your diet.'),(27,'veggie_bad_clinician_cth','Eating [[recommended_servings]] or more vegetable servings (where one serving is about half a cup) each day is recommended. Your patient indicates [[user_servings]] daily servings of vegetables in their diet and they need to increase vegetable intake. Resources on the Connection to Health website may help you work with the patient to increase vegetable intake. </br>  Your patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail [[user_input]]\n'),(28,'veggie_okay_patient_eecth','Congratulations on eating at least [[recommended_servings]] servings of vegetables each day!'),(30,'veggie_bad_patient_eecth','Eating [[recommended_servings]] or more vegetable servings (where one serving is about half a cup) each day is recommended. You said that you eat [[user_servings]] servings each day. Eating more vegetables can be difficult for many reasons.  Let\'s work together to find a good way to help you eat more vegetables.\n'),(31,'veggie_bad_clinician_eecth','Eating [[recommended_servings]] or more fiber-rich vegetable servings (where one serving is about half a cup) each day is recommended. Your patient indicates [[user_servings]] daily servings of vegetables in their diet and they need to increase vegetable intake. There can be many reasons why this is happening.  We encourage you to explore the reasons and develop a realistic plan to increase vegetable consumption.</br>  Your patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail [[user_input]]'),(33,'fruit_bad_cth_patient','\nBased on your height and weight, you are in the obese range. This may be hard to hear and losing weight can be very difficult.  You may have tried to lose weight in the past without success.  Even losing a small amount of weight can improve your health. Let\'s work together to help you reach your weight goals.\n'),(35,'fruit_warn_cth_clinician','\nEating [[recommended_servings]] servings (where one serving is about half a cup) of fruit each day is recommended. Your patient indicates a low level of fruit in their diet and needs to increase fruit intake. Resources on the Connection to Health website may help you work with the patient to increase fruit intake. </br> Your patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail [[user_input]]\n'),(36,'fruit_err_cth_clinician','\nEating [[recommended_servings]] servings (where one serving is about half a cup) of fruit each day is recommended. Your patient indicates a much lower than recommended level of fruit in their diet.  Resources on the Connection to Health website may help you work with the patient to increase fruit intake.  A nutrition referral may also be helpful.  </br>Your patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]\n\n</p>'),(37,'fruit_okay_eecth_patient','Congratulations on eating at least [[recommended_servings] servings of fruit each day!'),(38,'fruit_bad_eecth_patient','Eating [[recommended_servings]] or more fruit servings (where one serving is about half a cup) each day is recommended. You said that you eat [[user_servings]] each day. Eating more fruit can be difficult for many reasons.  Let\'s work together to find a good way to help you eat more fruit.'),(39,'fruit_bad_eecth_clinician','Eating [[recommended_servings]] or more fiber-rich fruit servings (where one serving is about half a cup) each day is recommended. Your patient indicates [[user_servings]] daily servings of fruit in their diet and they need to increase fruit intake. There can be many reasons why this is happening.  We encourage you to explore the reasons and develop a realistic plan to increase fruit consumption. </br>\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]\n</p>'),(40,'sugary_drink_warn_one_cth_patient','Drinking just one sugary drink each day can be unhealthy.  Consider trying to cut down or stop drinking sugary drinks and replacing them with other beverages.'),(41,'sugary_drink_warn_one_cth_clinician','Your patient indicates drinking one sugary drink a day.  The patient should be encouraged to consider alternatives to sugary drinks and to consume sugar sweetened drinks less often. Resources on the Connection to Health website may help you work with your patient to reduce intake of sugary beverages.\n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(42,'sugary_drink_warn_two_cth_patient','You said that you are drinking two sugary drinks every day.  It is unhealthy to be drinking this much sugar.   Try to stop drinking sugary drinks and to replace them with other beverages. Consider talking to someone on your healthcare team about how to cut down on sugar in your diet.\r\nYou said that you are drinking two sugary drinks every day.  It is unhealthy to be drinking this much sugar.   Try to stop drinking sugary drinks and to replace them with other beverages. Consider talking to someone on your healthcare team about how to cut down on sugar in your diet.\r\nYou said that you are drinking two sugary drinks every day.  It is unhealthy to be drinking this much sugar.   Try to stop drinking sugary drinks and to replace them with other beverages. Consider talking to someone on your healthcare team about how to cut down on sugar in your diet.'),(43,'sugary_drink_warn_two_cth_clinician','Your patient indicates drinking two sugary drinks a day.   The patient should be encouraged to consider alternatives to sugary drinks and to cut consumption to less than one 12-oz sugary drink per day. Resources on the Connection to Health website may help you work with your patient to reduce intake of sugary beverages. \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(44,'sugary_drink_err_cth_patient','You said that you are drinking three or more sugary drinks every day.  It is unhealthy to be drinking this much sugar.  Try to cut down or stop drinking sugary beverages. We recommend talking to someone on your healthcare team about how to cut down on sugar in your diet.'),(45,'sugary_drink_err_cth_clinician','Your patient indicates a very high level of sugar-containing drinks in their diet and needs to decrease to 12 oz or less per day. The patient should be encouraged to consider alternatives to sugary drinks. Resources on the Connection to Health website may help you work with your patient to reduce intake of sugary beverages. A nutrition referral may also be helpful. \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(47,'sugary_drink_okay_eecth_patient','Congratulations on avoiding sugar-sweetened beverages!'),(48,'sugary_drink_warn_one_eecth_patient','You may not be aware what you drink contains alot of sugar. Drinking even just one sugary drink each day can be unhealthy. Cutting out all sugary drinks from your diet can be challenging.  We want to help you replace sugary drinks with healthy drinks you would enjoy. '),(49,'ugary_drink_warn_two_eecth_patient','You may not be aware what you drink contains a lot of sugar. You said that you are drinking two sugary drinks every day.   It is unhealthy to be drinking this much sugar. Although it may be difficult, cutting down on sugary drinks is very important to your health. We want to help you replace sugary drinks with healthy drinks you would enjoy.'),(50,'sugary_drink_warn_one_eecth_clinician','Your patient indicates drinking one sugary drink a day. Work with the patient to find healthy alternatives to sugary drinks.  \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(51,'sugary_drink_warn_two_eecth_clinician','Your patient indicates drinking two sugary drinks a day.  Work with the patient to find healthy alternatives to sugary drinks.   Create a realistic plan to decrease the consumption of sugary drinks with the goal of stopping over time. \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(52,'sugary_drink_err_eecth_patient','You may not be aware what you drink contains alot of sugar.  You said that you are drinking three or more sugary drinks every day.  It is very unhealthy to be drinking this much sugar.  Although it may be difficult, cutting down on sugary drinks is very important to your health. We want to help you replace sugary drinks with healthy drinks you would enjoy.'),(53,'sugary_drink_err_eecth_clinician','Your patient indicates drinking three or more sugary drinks a day which is very unhealthy.  Work with the patient to find healthy alternatives to sugary drinks.   Create a realistic plan to decrease the consumption of sugary drinks with the goal of stopping over time. \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(54,'salty_food_err_cth_patient','You said you eat a lot of salty foods.  Too much salt is unhealthy. We recommend talking to someone on your healthcare team about how to cut down on salt in your diet.'),(55,'salty_food_err_cth_clinician','Your patient has a high salt intake, which increases risk for hypertension, stroke, and other cardiovascular disease. Consider decreasing packaged and processed foods and consuming low-sodium food or referring the patient for health education or a nutrition consultation.  Resources on the Connection to Health website may also help you work with your patient to reduce intake of salty foods.  A nutrition referral may also be helpful.</br>\n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p> [[user_input]]</p>'),(56,'salty_food_okay_eecth_patient','Congratulations on limiting salt in your diet!'),(57,'salty_food_err_eecth_patient','Your survey answers tell us you are eating more salt than is recommended. You may not know that the food you eat has a lot of salt.  Too much salt can be unhealthy. Reducing salt in diet can be very difficult.  We want to help you make a plan to enjoy your food with less salt. '),(58,'salty_food_err_eecth_clinician','Your patient has a high salt intake, which increases risk for hypertension, stroke, and other cardiovascular disease. It can be difficult for patients to cut down on salt.  Goals are more likely to be met when they are small and realistic. Consider slowly decreasing packaged and processed foods and consuming low-sodium food or referring the patient for health education or a nutrition consultation.   \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(59,'fat_warn_cth_patient','You are eating more fat than is recommended.  Consider cutting down on fried foods, full-fat dairy products, fast food, and fatty meats, and replacing them with something healthier. Consider talking to someone your healthcare team about how to reduce unhealthy fats in your diet.'),(60,'fat_warn_cth_clinician','Your patient indicates a moderate level of fat intake.  Encourage the patient to eat fatty foods less often.  Recommend decreasing fried foods, full-fat dairy products, fast food, and fatty meats and replacing them with healthier alternatives. Resources on the Connection to Health website may help you work with your patient to reduce fat intake.\n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(61,'fat_err_cth_patient','You are eating much more fat than is recommended.  Consider cutting down on fried foods, full-fat dairy products, fast food, and fatty meats, and replacing them with something healthier.  We recommend talking to someone on your healthcare team about how to reduce unhealthy fats in your diet. Visiting a nutritionist may be helpful.'),(62,'fat_err_cth_clinician','Your patient indicates a high level of fat intake.  The patient should be advised to replace fried foods, full-fat dairy products, fast food, and fatty meals with healthier alternatives.  Resources on the Connection to Health website may help you work with your patient to reduce fat intake. A nutrition referral may also be helpful.   \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(63,'fat_okay_eecth_patient','Congratulations on limiting unhealthy fats in your diet!'),(64,'fat_warn_eecth_patient','Your survey answers tell us you are eating more fat than is recommended.  Changing to a lower-fat diet can be difficult and may take time. We would like to help you find a way to cut down on fats and replace them with healthier foods you would enjoy.'),(65,'fat_warn_eecth_clinician','Your patient indicates a moderate level of fat intake.  Encourage the patient to eat fatty foods less often.  It can be difficult for patients to make big changes in their diet.  Goals are more likely to be met when they are small and realistic. Recommend decreasing fried foods, full-fat dairy products, fast food, and fatty meats and replacing them with healthier alternatives. \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(66,'fat_err_eecth_patient','Your survey answers tell us you are eating much more fat than is recommended.  Changing to a lower-fat diet can be difficult and may take time. We would like to help you find a way to cut down on fats and replace them with healthier foods you would enjoy.'),(67,'fat_err_eecth_clinician','Your patient indicates a high level of fat intake.  Encourage the patient to eat fatty foods less often.  It can be difficult for patients to make big changes in their diet.  Goals are more likely to be met when they are small and realistic. Recommend decreasing fried foods, full-fat dairy products, fast food, and fatty meats and replacing them with healthier alternatives.  Referral to a nutrionist may be helpful.\n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(68,'exercise_habits_warn_cth_patient','You said you are being physically active or exercising [[user_minutes]] minutes per week. This is less than recommended.  Doing more exercise or physical activity may be good for your health.  Exercising at least 150 minutes a week, or 20-30 minutes a day is recommended for most people. Consider talking to someone on your healthcare team about safe ways to increase your exercise.'),(69,'exercise_habits_err_cth_patient','You said you are being physically active or exercising [[user_minutes]] minutes per week. This is much less than is recommended.  Doing more exercise or physical activity may be good for your health.  Exercising at least 150 minutes a week, or 20-30 minutes a day is recommended for most people. We recommend talking to someone on your healthcare team about safe ways to increase your exercise.'),(70,'exercise_habits_warn_cth_clinician','Your patient indicates exercising [[user_minutes]] minutes of moderate physical activity per week. Your patient also indicated the following barriers to exercising, which you might want to discuss in more detail:  <p>[[user_input]]</p> Encourage your patient to set an exercise goal of 150 minutes OR MORE per week.  Reducing sedentary behavior may also be helpful.  Your patient might benefit from resources on the Connection to Health website, exercise groups and classes, or from other education and action planning.'),(71,'exercise_habits_err_cth_clinician','Your patient indicates exercising [[user_minutes]] minutes of moderate physical activity per week. our patient also indicated the following barriers to exercising, which you might want to discuss in more detail: <p>[[user_input]]</p> Encourage your patient to set an exercise 150 minutes OR MORE per week.  Reducing sedentary behavior may also be helpful.  Your patient might benefit from resources on the Connection to Health website, exercise groups and classes, or from other education and action planning.\n\n'),(72,'exercise_habits_okay_eecth_patient','Congratulations on exercising at least 150 minutes a week!'),(73,'exercise_habits_warn_eecth_patient','You said you are being physically active or exercising [[user_minutes]] minutes in total per week.  Doing a moderate or heavy physical activity for at least 150 minutes a week, or 20-30 minutes each day, is recommended for most people. You may have tried to exercise more in the past without success. It can be difficult to find the time and energy to exercise, and it often takes time to find the right mix of activities you enjoy.  We want to help you make a plan to be more physically active in a way that is safe for you.'),(74,'exercise_habits_err_eecth_patient','You said you are being physically active or exercising [[user_minutes]] minutes in total per week.  Doing a moderate or heavy physical activity for at least 150 minutes a week, or 20-30 minutes each day, is recommended for most people. You may have tried to exercise more in the past without success. It can be difficult to find the time and energy to exercise, and it often takes time to find the right mix of activities you enjoy.  We want to help you make a plan to be more physically active in a way that is safe for you.'),(75,'exercise_habits_warn_eecth_clinician','Your patient indicates exercising [[user_minutes]] minutes of moderate physical activity per week. Your patient also indicated the following barriers to exercising, which you might want to discuss in more detail: <p>[[user_input]]</p>  It can be difficult for patients to increase their physical activity.  It may be helpful to inquire about their previous experiences trying to exercise more and their ability to sustain exercise over time. Initial goals are more likely to be met when they are small and realistic. Encourage your patient to set a safe exercise goal and gradually work toward 150 minutes or more per week if appropriate.  Reducing sedentary behavior may also be helpful.'),(76,'exercise_habits_err_eecth_clinician','Your patient indicates exercising [[user_minutes]] minutes of moderate physical activity per week. Your patient also indicated the following barriers to exercising, which you might want to discuss in more detail: <p>[[user_input]]</p>.  It can be difficult for patients to increase their physical activity.  It may be helpful to inquire about their previous experiences trying to exercise more and their ability to sustain exercise over time. Goals are more likely to be met when they are small and realistic. Encourage your patient to set a safe exercise goal and gradually work toward 150 minutes or more per week if appropriate.  Reducing sedentary behavior may also be helpful.'),(77,'prescription_adherence_err_cth_patient','You said that you missed taking one or more of your medications [[missed_days]] days over the past two weeks. We recommend that you discuss the medications that you take regularly, and those that you do not take regularly, with someone on your healthcare team so that you can find better ways to take your medications.'),(78,'prescription_adherence_err_cth_clinician','Your patient indicated that they have missed taking one or more of their prescribed medications [[missed_days]] days over the past two weeks. The specific reason(s) included the following: <p>[[user_input]]</p>  Consider medications that require fewer daily doses. Prescribing inexpensive generic medications that can be dosed just once a day, ordering 90-day supplies of medications from a mail order pharmacy, taking medications at the same time as other daily routines, and/or using weekly pill boxes may help improve medication adherence.  Additional suggestions about how to improve medication adherence can be found on the Connection to Health website.'),(79,'prescription_adherence_okay_eecth_patient','\r\nCongratulations on taking your medications regularly as recommended!'),(80,'prescription_adherence_err_eecth_patient','You said that you missed taking one or more of your medications [[missed_days]] days over the past two weeks. This is common for many people and there may be good reasons why it is hard for you to take your medications regularly.  We want to make it easier for you to take the medications you need in a way that is best for you. '),(81,'prescription_adherence_err_eecth_clinician','Your patient indicated that they have missed taking one or more of their prescribed medications [[missed_days]] days over the past two weeks. Patients have many good reasons for not taking medications regularly. Your patient noted the following specific reason(s): <p>[[user_input]]</p>  You may want to ask about other more personal reasons. Consider medications that require fewer daily doses. Also, prescribing inexpensive generic medications that can be dosed just once a day, ordering 90-day supplies of medications from a mail order pharmacy, taking medications at the same time as other daily routines, and/or using weekly pill boxes may help improve medication adherence.  '),(82,'tobacco_err_cth_patient','You said that you currently [[user_input]]. Smoking can be very harmful to your health, even if you only smoke a little bit.  We recommend that you discuss reducing risks from <p>[[user_input]]</p> with someone on your healthcare team.'),(83,'tobacco_err_cth_clinician','Your patient indicated currently [[tobacco_per_day_input]]. We recommend  that they quit or reduce and offering help with an action plan to quit when they are ready.  Consider prescribing tobacco cessation products or referral to a tobacco cessation progam.'),(84,'tobacco_okay_eecth_patient','Congratulations on avoiding tobacco products!'),(85,'tobacco_err_eecth_patient','You said that you currently [[user_input]]. Smoking can be very harmful to your health, even if you only smoke a little bit. You may have heard this before and you may have tried to quit or cut back. Both can be very hard. It may take several tries to be successful.  Let\'s work together to make a plan that will work for you.'),(86,'tobacco_err_eecth_clinician','Your patient indicated currently [[tobacco_per_day_input]].  Ask the patient how they view their tobacco use.   It may be helpful to inquire about their previous experiences trying to cut back or stop using tobacco products and how tobacco products impact their life.  If the timing is right, make a plan with the patient for cutting back or abstaining from tobacco products. Consider prescribing tobacco cessation products or referral to a tobacco cessation progam.'),(87,'depression_warn_cth_patient','You have several symptoms of depression.  We recommend that you discuss how you are feeling with someone on your healthcare team.'),(88,'depression_err_cth_patient','You have many symptoms of depression.  Depression symptoms are treatable. We recommend that you discuss how you are feeling with someone on your healthcare team.'),(89,'depression_warn_cth_clinician','Your patient had a score on the PHQ-8 depression symptom screener of [[depression_info]]. This indicates that the patient is experiencing several symptoms of depression. (Note: The PHQ-8 does not include the suicidal ideation question that is asked in the PHQ-9).  We recommend you discuss with the patient the sources of current emotional symptoms and what could be done to address them.  The PHQ-8 is not diagnostic of Major Depressive Disorder, but may indicate significant emotional distress.  Additional follow-up and consultation is recommended.'),(90,'depression_err_cth_clinician','Your patient had a score on the PHQ-8 depression symptoms screener of [[depression_info]].  This is a positive screen for Major Depressive Disorder (MDD). (Note: The PHQ-8 does not include the suicidal ideation question that is asked in the PHQ-9). We recommend you discuss with the patient the sources of current emotional symptoms and what could be done to address them.  We strongly recommend further evaluation,  including asssessment for suicidal ideation. Consultation with a provider who can confirm the diagnosis and develop an appropriate treatment plan is recommended.'),(91,'depression_warn_eecth_patient','You reported having several symptoms of depression, like feeling blue or down.  Many people experience these symptoms from time to time.   These feelings can also make it hard to take care of your health and do things  that are important to you.  We want to talk with you more about how you are feeling so that we can decide together what can be done to help. '),(92,'depression_err_eecth_patient','You reported having many symptoms of depression, like feeling blue or down.  It can be very hard to live with symptoms of depression.  These feelings can also make it hard to take care of your health and do things that are important to you. Fortunately, depression symptoms like yours are treatable.   We want to talk with you more about how you are feeling so that we can decide together what can be done to help.'),(93,'depression_warn_eecth_clinician','Your patient had a score on the PHQ-8 depression symptom screener of [[depression_info]]. This indicates that the patient is experiencing several symptoms of depression. (Note: The PHQ-8 does not include the suicidal ideation question that is asked in the PHQ-9).  We recommend you discuss with the patient the sources of current emotional symptoms and what could be done to address them.  The PHQ-8 is not diagnostic of Major Depressive Disorder, but may indicate significant emotional distress.  Additional follow-up and consultation is recommended. Patients with symptoms of depression often find it difficult to meet or address their other health issues.'),(94,'depression_err_eecth_clinician','Your patient had a score on the PHQ-8 depression symptoms screener of [[depression_info]].  This is a positive screen for Major Depressive Disorder (MDD). Ee recommend confirmation of this diagnosis through interview. (Note: The PHQ-8 does not include the suicidal ideation question that is asked in the PHQ-9). We recommend you discuss with the patient the sources of current emotional symptoms and what could be done to address them.  We strongly recommend further evaluation,  including asssessment for suicidal ideation. Developing an appropriate treatment plan is recommended, perhaps in comnsultation with a mental health specialist.'),(95,'stress_err_cth_patient','You said that you have recently been experiencing a lot of stress due to a major event or change in your life.  We recommend that you discuss your current stress with someone on your healthcare team.'),(96,'stress_err_cth_clinician','Your patient indicated a lot of recent stress due to a major change or event. You might want to discuss this with the patient and consider how it may impact the patient\'s ability to make health-related changes right now.'),(97,'stress_err_eecth_patient','You said that you recently have been experiencing a lot of stress due to a major event or change in your life.  This type of stress is common and can be hard to deal with.  We want to work together on a plan to reduce your stress.'),(98,'stress_err_eecth_clinician','Your patient indicated a lot of stress due to a recent major change or event. You might want to discuss this with the patient and consider how it is affecting their quality of life and  impacting theirs ability to make health-related changes right now.   Patients with high levels of stress  often find it difficult to meet or address their other health issues.'),(99,'alcohol_err_cth_patient','You are drinking alcohol at a level that puts you at risk for health problems. We recommend that you discuss ways to cut down on alcohol with someone on your healthcare team.'),(100,'alcohol_err_cth_clinician','Your patient indicates a potentially hazardous level of alcohol use.  Consider screening for alcohol dependence. If patient is pregnant, has a health condition exacerbated by alcohol, or takes a medication that could interact with alcohol, recommend abstinence. If not, consider recommending staying within moderate drinking guidelines and reinforce the need not to drink and drive. A referral for substance use counseling may be beneficial.'),(101,'alcohol_okay_eecth_patient','Congratulations on limiting how much alcohol you drink!'),(102,'alcohol_err_eecth_patient','Your survey answers tell us you are drinking more alcohol than is recommended. You may not be aware that this puts you at risk for health problems.  This may be hard to hear and stopping or cutting back on alcohol can be very hard.  You may have tried to cut back or stop drinking in the past without success. Let\'s work together to make a plan that will work for you.'),(103,'alcohol_err_eecth_clinician','Your patient indicates a potential alcohol problem, because of heavier than recommended daily use and/or binge drinking. This is a sensitive issue for most patients. Ask the patient how they view their alcohol use. It may be helpful to inquire about their previous experiences trying to cut back or stop drinking and how alcohol impacts their life. If the timing is right, make a plan with the patient for cutting back or abstaining from alcohol.  Consider screening for alcohol dependence if patient is a heavy drinker. A referral for substance use counseling may be beneficial if the patient is alcohol dependent.'),(104,'health_stress_warn_cth_patient','You said that you feel stressed about your health problems.  Many people feel this way.  This kind of stress can affect your life in many ways. It\'s important to discuss this with your healthcare team. We want to help you understand and manage your stress to live a healthy life.'),(105,'health_stress_err_cth_patient','You said that you feel very stressed about your health problems.  Many people feel this way.  This kind of stress can affect your life in many of ways. It\'s very important to discuss this with your healthcare team. We want to help you understand and manage your stress to live a healthy life.'),(106,'health_stress_warn_cth_clinician','Your patient indicates moderate levels of health-related distress. Some of the areas causing distress include:  <p>[[user_input]]</p>  This can affect their quality of life and ability to manage their health problems.  Simply having an open conversation can be very effective in relieving health related distress. We encourage you to discuss the areas causing distress and to develop a management plan.'),(107,'health_stress_err_cth_clinician','Your patient indicates high levels of health-related distress.  Some of the areas causing distress include:  <p>[[user_input]]</p>  This can affect their quality of life and ability to manage their health problems.  Simply having an open conversation can be very effective in relieving health related distress. We encourage you to discuss the areas causing distress and to develop a management plan.'),(108,'health_stress_warn_eecth_patient','You said that you feel stressed about your health problems.  Many people feel this way.  This kind of stress can affect your life in many ways. It\'s important to discuss this with your healthcare team. We want to help you understand and manage your stress to live a healthy life.'),(109,'health_stress_err_eecth_patient','You said that you feel very stressed about your health problems.  Many people feel this way.  This kind of stress can affect your life in many of ways. It\'s very important to discuss this with your healthcare team. We want to help you understand and manage your stress to live a healthy life.'),(110,'health_stress_warn_eecth_clinician','Your patient indicates high levels of health-related distress.  Some of the areas causing distress include:  <p>[[user_input]]</p>  This can affect their quality of life and ability to manage their health problems.  Simply having an open conversation can be very effective in relieving health related distress. We encourage you to discuss the areas causing distress and to develop a management plan.'),(113,'social_needs_err_cth_patient','You indicated experiencing <p>[[user_input]]</p>  These issues are important and can affect your health.  We recommend that you discuss these issues with someone on your healthcare team.'),(114,'social_needs_err_cth_clinician','Your patient indicated <p>[[user_input]]</p>  You may want to discuss these issues with your patient. Community resources on the Connection to Health website may help you address these issues.  A referral to a social worker may also be helpful.'),(115,'social_needs_err_eecth_patient','You indicated experiencing <p>[[user_input]]</p>  These  are important and can affect your health.  It can be very hard to take care of your health when you have problems like these.  We want to talk with you more about this  so that we can decide together what can be done to help.'),(116,'social_needs_err_eecth_clinician','Your patient indicated <p>[[user_input]]</p>  We strongly recommend that you discuss these issues with your patient to understand how these issues might be best addressed.  Patients with unmet social needs often find it difficult to work on their other health issues.  Community resources on the Connection to Health website may help you address these issues. A referral to a social worker may also be helpful.');
/*!40000 ALTER TABLE `evaluation_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup`
--

DROP TABLE IF EXISTS `followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followup` (
  `followup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `followup_date` datetime NOT NULL,
  `followup_participant` varchar(1028) NOT NULL,
  `followup_method` varchar(256) NOT NULL,
  `followup_actions` varchar(1028) NOT NULL,
  PRIMARY KEY (`followup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup`
--

LOCK TABLES `followup` WRITE;
/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
INSERT INTO `followup` VALUES (1,'1','2017-04-01 00:00:00','Dr. Spock','Phone','not sure'),(2,'1','2017-05-01 00:00:00','Dr. House','Office','Netflix');
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `gender_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `gender_abbr` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'F','Female'),(2,'M','Male'),(3,'O','Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_lookup`
--

DROP TABLE IF EXISTS `goal_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_lookup` (
  `goal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `friendly_name` varchar(2056) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `action_plan_id` int(10) unsigned DEFAULT NULL,
  `static_goal` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`goal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_lookup`
--

LOCK TABLES `goal_lookup` WRITE;
/*!40000 ALTER TABLE `goal_lookup` DISABLE KEYS */;
INSERT INTO `goal_lookup` VALUES (1,'Health Literacy',NULL,NULL,1),(2,'Getting Enough Vegetables',NULL,NULL,1),(3,'Getting Enough Fruit',NULL,NULL,1),(4,'Sugared Beverages',NULL,NULL,1),(5,'Maintaining a Healthy BMI',NULL,NULL,1),(6,'Limiting Salt and Processed Food Consumption',NULL,NULL,1),(7,'Limiting Fat Consumption',NULL,NULL,1),(9,'Getting Enough Exercise',NULL,NULL,1),(10,'Taking your Prescriptions',NULL,NULL,1),(11,'Tobacco/Nicotine Use',NULL,NULL,1),(12,'Signs of Depression',NULL,NULL,1),(13,'Overall Stress',NULL,NULL,1),(14,'Alcohol Moderation',NULL,NULL,1),(15,'Overall Health Status',NULL,NULL,1),(41,'!!!!!!!!!!!','1',1,0),(42,'fdkjfkdjfd','1',9,0);
/*!40000 ALTER TABLE `goal_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivational_prompt`
--

DROP TABLE IF EXISTS `motivational_prompt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motivational_prompt` (
  `prompt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `start_date` datetime NOT NULL,
  `message` varchar(2056) NOT NULL,
  `hourly_frequency` int(10) unsigned NOT NULL,
  `event_time` int(10) unsigned NOT NULL,
  `receive_method` enum('phone','email','text') NOT NULL,
  PRIMARY KEY (`prompt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivational_prompt`
--

LOCK TABLES `motivational_prompt` WRITE;
/*!40000 ALTER TABLE `motivational_prompt` DISABLE KEYS */;
INSERT INTO `motivational_prompt` VALUES (1,'1','2017-05-01 00:00:00','eat more fish',12,12,'email'),(2,'1','2017-07-01 00:00:00','eat more fish',11,8,'email'),(3,'1','2017-07-01 00:00:00','eat less fish',11,8,'email');
/*!40000 ALTER TABLE `motivational_prompt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_desc` varchar(50) NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (36,'Admin Access','admin_access'),(37,'Create Users','create_users'),(38,'View User Info','view_user_info'),(39,'View All Users','view_all_users');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_lookup`
--

DROP TABLE IF EXISTS `question_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_lookup` (
  `question_id` int(10) unsigned NOT NULL,
  `friendly_name` varchar(32) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_lookup`
--

LOCK TABLES `question_lookup` WRITE;
/*!40000 ALTER TABLE `question_lookup` DISABLE KEYS */;
INSERT INTO `question_lookup` VALUES (1,'form_confidence'),(2,'vegetable_servings'),(3,'fruit_servings'),(4,'weekly_sugar_soda'),(5,'processed_foods'),(6,'fat_consumption'),(7,'portion_size'),(8,'weekly_exercise_days'),(9,'exercise_duration'),(10,'prescription_adherence'),(11,'tobacco_usage'),(12,'adhedonia'),(13,'feeling_hopeless'),(14,'sleep_disturbance'),(15,'lethargy'),(16,'appetite_disturbance'),(17,'failure_feelings'),(18,'concentration_issues'),(19,'feeling_slow'),(20,'stress'),(21,'weekly_alcohol_units'),(22,'overwhelmed_health'),(23,'health_management'),(24,'running_out_of_food'),(25,'bill_problems'),(26,'transportation_problems'),(27,'unstable_housing'),(28,'physical_abuse'),(29,'unsafe_at_home'),(30,'eating_better'),(31,'afford_meds'),(32,'side_effects'),(33,'meds_ineffective'),(34,'felt_better'),(35,'couldnt_get_meds'),(36,'meds_other_reason'),(37,'3_drinks_day'),(38,'health_stress'),(39,'find_better_way'),(40,'health_no_time'),(41,'few_benefits'),(42,'health_do_more'),(43,'health_demands'),(44,'little_benefit'),(45,'new_ways'),(46,'not_worth_it'),(47,'health_changes'),(48,'latino'),(49,'race'),(50,'education'),(51,'salt'),(52,'missed_med_days'),(53,'cigarette_usage'),(54,'cigarettes_per_day'),(55,'pipe_cigar'),(56,'pipe_cigar_frequency'),(57,'smokeless_tobacco'),(58,'exercise_reasons'),(59,'current_weight'),(60,'user_feet_height'),(61,'user_inch_height'),(62,'sha_chew'),(63,'sha_safe_home'),(64,'sha_driving_check'),(65,'sha_car_accident_check'),(66,'sha_falling_risk'),(67,'sha_physical_violence'),(68,'sha_seat_belt'),(69,'sha_gun_check'),(70,'sha_dental_care'),(71,'sha_drug_use'),(72,'sha_pregnant'),(73,'sha_std'),(74,'sha_birth_control'),(75,'sha_multiple_partners'),(76,'sha_condom_use'),(77,'sha_sex_pressured'),(78,'sha_decision_help'),(79,'sha_self_care'),(80,'sha_emergency_contact');
/*!40000 ALTER TABLE `question_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Superadmin'),(2,'CTH Administrator'),(3,'Practice Staff'),(4,'Research Staff'),(5,'Patient');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `role_permission` (`role_id`,`permission_id`) USING BTREE,
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,36);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation`
--

DROP TABLE IF EXISTS `translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `translation_item_id` int(10) NOT NULL,
  `language` varchar(2) NOT NULL DEFAULT 'en',
  `text` varchar(5120) NOT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `translation_item_id` (`translation_item_id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation`
--

LOCK TABLES `translation` WRITE;
/*!40000 ALTER TABLE `translation` DISABLE KEYS */;
INSERT INTO `translation` VALUES (1,1,'en','Limiting Salt and Processed Food Consumption'),(2,2,'en','Congratulations on limiting salt in your diet!'),(3,3,'en','Limiting Fat Consumption'),(4,4,'en','Congratulations on limiting unhealthy fats in your diet!'),(5,5,'en','Taking your Prescriptions'),(6,6,'en','\r\nCongratulations on taking your medications regularly as recommended!'),(7,7,'en','Tobacco/Nicotine Use'),(8,8,'en','Congratulations on avoiding tobacco products!'),(9,9,'en','Limiting Sugary Consumption'),(10,10,'en','You may not be aware what you drink contains alot of sugar. Drinking even just one sugary drink each day can be unhealthy. Cutting out all sugary drinks from your diet can be challenging.  We want to help you replace sugary drinks with healthy drinks you would enjoy. '),(11,11,'en','Signs of Depression'),(12,12,'en','You reported having several symptoms of depression, like feeling blue or down.  Many people experience these symptoms from time to time.   These feelings can also make it hard to take care of your health and do things  that are important to you.  We want to talk with you more about how you are feeling so that we can decide together what can be done to help. '),(13,13,'en','Comfortable Filling Out Forms'),(14,14,'en','You said that you are not very confident about filling out forms in the doctor\'s office.  Many people have the same difficulties. We would like to help. Let\'s work together to make things clear.'),(15,15,'en','Getting Enough Vegetables'),(16,16,'en','Eating [[recommended_servings]] or more vegetable servings (where one serving is about half a cup) each day is recommended. You said that you eat [[user_servings]] servings each day. Eating more vegetables can be difficult for many reasons.  Let\'s work together to find a good way to help you eat more vegetables.\n'),(17,17,'en','Getting Enough Fruit'),(18,18,'en','Eating [[recommended_servings]] or more fruit servings (where one serving is about half a cup) each day is recommended. You said that you eat [[user_servings]] each day. Eating more fruit can be difficult for many reasons.  Let\'s work together to find a good way to help you eat more fruit.'),(19,19,'en','Maintaining a Healthy BMI'),(20,20,'en','\nBased on your height and weight, you are in the obese range. This may be hard to hear and losing weight can be very difficult.  You may have tried to lose weight in the past without success.  Even losing a small amount of weight can improve your health. Let\'s work together to help you reach your weight goals.\n'),(21,21,'en','Getting Enough Exercise'),(22,22,'en','You said you are being physically active or exercising [[user_minutes]] minutes in total per week.  Doing a moderate or heavy physical activity for at least 150 minutes a week, or 20-30 minutes each day, is recommended for most people. You may have tried to exercise more in the past without success. It can be difficult to find the time and energy to exercise, and it often takes time to find the right mix of activities you enjoy.  We want to help you make a plan to be more physically active in a way that is safe for you.'),(23,23,'en','Overall Stress'),(24,24,'en','You said that you recently have been experiencing a lot of stress due to a major event or change in your life.  This type of stress is common and can be hard to deal with.  We want to work together on a plan to reduce your stress.'),(25,25,'en','Alcohol Moderation'),(26,26,'en',''),(27,27,'en','Social Needs'),(28,28,'en','You indicated experiencing <p>[[user_input]]</p>  These  are important and can affect your health.  It can be very hard to take care of your health when you have problems like these.  We want to talk with you more about this  so that we can decide together what can be done to help.'),(29,29,'en','Your survey answers tell us you are drinking more alcohol than is recommended. You may not be aware that this puts you at risk for health problems.  This may be hard to hear and stopping or cutting back on alcohol can be very hard.  You may have tried to cut back or stop drinking in the past without success. Let\'s work together to make a plan that will work for you.'),(30,30,'en','Drinking just one sugary drink each day can be unhealthy.  Consider trying to cut down or stop drinking sugary drinks and replacing them with other beverages.'),(31,31,'en','You have several symptoms of depression.  We recommend that you discuss how you are feeling with someone on your healthcare team.'),(32,32,'en','You said that you are not very confident about filling out forms or reading written material in the doctor\'s office.  Please tell us if you need help filling out forms or understanding anything about your healthcare.'),(33,33,'en','Eating [[recommended_servings]] or more vegetable servings (where one serving is about half a cup) each day is recommended. You probably need to eat several more servings of vegetables each day.  We recommend that you talk to someone on your healthcare team about how to add more healthy vegetables in your diet.'),(34,34,'en','\nBased on your height and weight, you are in the obese range. This may be hard to hear and losing weight can be very difficult.  You may have tried to lose weight in the past without success.  Even losing a small amount of weight can improve your health. Let\'s work together to help you reach your weight goals.\n'),(35,35,'en','Your body mass index (calculated from your weight and height) is [[bmi]], which means that you are in the obese range. Losing weight would probably be good for your health and reduce your health risks.  We recommend talking to someone on yourhealthcare team about ways to achieve a healthier weight.\n'),(36,36,'en','You said you are being physically active or exercising [[user_minutes]] minutes per week. This is much less than is recommended.  Doing more exercise or physical activity may be good for your health.  Exercising at least 150 minutes a week, or 20-30 minutes a day is recommended for most people. We recommend talking to someone on your healthcare team about safe ways to increase your exercise.'),(37,37,'en','You said that you have recently been experiencing a lot of stress due to a major event or change in your life.  We recommend that you discuss your current stress with someone on your healthcare team.'),(38,38,'en','You are drinking alcohol at a level that puts you at risk for health problems. We recommend that you discuss ways to cut down on alcohol with someone on your healthcare team.'),(39,39,'en','You indicated experiencing <p>[[user_input]]</p>  These issues are important and can affect your health.  We recommend that you discuss these issues with someone on your healthcare team.'),(40,40,'en','Your patient indicates drinking one sugary drink a day. Work with the patient to find healthy alternatives to sugary drinks.  \n\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]</p>'),(41,41,'en','Your patient had a score on the PHQ-8 depression symptom screener of [[depression_info]]. This indicates that the patient is experiencing several symptoms of depression. (Note: The PHQ-8 does not include the suicidal ideation question that is asked in the PHQ-9).  We recommend you discuss with the patient the sources of current emotional symptoms and what could be done to address them.  The PHQ-8 is not diagnostic of Major Depressive Disorder, but may indicate significant emotional distress.  Additional follow-up and consultation is recommended. Patients with symptoms of depression often find it difficult to meet or address their other health issues.'),(42,42,'en','Your patient will need extra help filling out forms, understanding health information, and comprehending  written and oral instructions.  This can be a very sensitive topic for many patients. We recommend that you take extra time to sensitively validate concerns about health literacy and take steps to be sure that your patient understands your instructions and has the support needed to follow through on your recommendations for health care.  \n</br>\nCommon techniques to increase understanding include asking the patient to repeat back to you key points to check for understanding, providing low literacy written materials, involving family members in follow up plans, and/or using an interpreter when the barrier is related to discordance between the language of the healthcare team and the preferred language of the patient.\n'),(43,43,'en','Eating [[recommended_servings]] or more fiber-rich vegetable servings (where one serving is about half a cup) each day is recommended. Your patient indicates [[user_servings]] daily servings of vegetables in their diet and they need to increase vegetable intake. There can be many reasons why this is happening.  We encourage you to explore the reasons and develop a realistic plan to increase vegetable consumption.</br>  Your patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail [[user_input]]'),(44,44,'en','Eating [[recommended_servings]] or more fiber-rich fruit servings (where one serving is about half a cup) each day is recommended. Your patient indicates [[user_servings]] daily servings of fruit in their diet and they need to increase fruit intake. There can be many reasons why this is happening.  We encourage you to explore the reasons and develop a realistic plan to increase fruit consumption. </br>\nYour patient indicated the following barriers to a healthy diet, which you might want to discuss in more detail <p>[[user_input]]\n</p>'),(45,45,'en','\nBMI is [[bmi]] and falls in the obese category. This is a sensitive issue for most patients. It may be helpful to inquire about their previous experiences trying to lose weight and how their weight impacts their life.  In many cases obesity is associated with depression, anxiety and poor self-esteem.   If the timing is right, identify small and realistic steps to address weight and associated emotional issues.  Acitivities might include self-monitoring diet and physical activity, involvement in a weight loss program, or referral for counseling. \n'),(46,46,'en','Your patient indicates exercising [[user_minutes]] minutes of moderate physical activity per week. Your patient also indicated the following barriers to exercising, which you might want to discuss in more detail: <p>[[user_input]]</p>.  It can be difficult for patients to increase their physical activity.  It may be helpful to inquire about their previous experiences trying to exercise more and their ability to sustain exercise over time. Goals are more likely to be met when they are small and realistic. Encourage your patient to set a safe exercise goal and gradually work toward 150 minutes or more per week if appropriate.  Reducing sedentary behavior may also be helpful.'),(47,47,'en','Your patient indicated a lot of stress due to a recent major change or event. You might want to discuss this with the patient and consider how it is affecting their quality of life and  impacting theirs ability to make health-related changes right now.   Patients with high levels of stress  often find it difficult to meet or address their other health issues.'),(48,48,'en','Your patient indicates a potential alcohol problem, because of heavier than recommended daily use and/or binge drinking. This is a sensitive issue for most patients. Ask the patient how they view their alcohol use. It may be helpful to inquire about their previous experiences trying to cut back or stop drinking and how alcohol impacts their life. If the timing is right, make a plan with the patient for cutting back or abstaining from alcohol.  Consider screening for alcohol dependence if patient is a heavy drinker. A referral for substance use counseling may be beneficial if the patient is alcohol dependent.'),(49,49,'en','Your patient indicated <p>[[user_input]]</p>  We strongly recommend that you discuss these issues with your patient to understand how these issues might be best addressed.  Patients with unmet social needs often find it difficult to work on their other health issues.  Community resources on the Connection to Health website may help you address these issues. A referral to a social worker may also be helpful.'),(50,50,'en','You said you eat a lot of salty foods.  Too much salt is unhealthy. We recommend talking to someone on your healthcare team about how to cut down on salt in your diet.'),(51,51,'en','You are eating much more fat than is recommended.  Consider cutting down on fried foods, full-fat dairy products, fast food, and fatty meats, and replacing them with something healthier.  We recommend talking to someone on your healthcare team about how to reduce unhealthy fats in your diet. Visiting a nutritionist may be helpful.'),(52,52,'en','You said that you currently [[user_input]]. Smoking can be very harmful to your health, even if you only smoke a little bit.  We recommend that you discuss reducing risks from <p>[[user_input]]</p> with someone on your healthcare team.'),(53,53,'en','You have many symptoms of depression.  Depression symptoms are treatable. We recommend that you discuss how you are feeling with someone on your healthcare team.'),(54,54,'en','Your body mass index (calculated from your weight and height) is [[bmi]] which means you are overweight.  Being overweight increases your risk of chronic health problems. Losing some weight may improve your health and reduce your health risks.  Consider talking to someone on your healthcare team about ways to help reach a healthy weight.\n'),(55,55,'en','Congratulations on eating at least [[recommended_servings]] servings of vegetables each day!'),(56,56,'en','Congratulations on avoiding sugar-sweetened beverages!'),(57,57,'en','Congratulations on exercising at least 150 minutes a week!'),(58,58,'en','\nBased on your height and weight, you are overweight. This may be hard to hear and losing weight can be very difficult.  You may have tried to lose weight in the past without success.  Let\'s work together to help you reach your weight goals. \n'),(59,59,'en','Your survey answers tell us you are eating more salt than is recommended. You may not know that the food you eat has a lot of salt.  Too much salt can be unhealthy. Reducing salt in diet can be very difficult.  We want to help you make a plan to enjoy your food with less salt. ');
/*!40000 ALTER TABLE `translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation_item`
--

DROP TABLE IF EXISTS `translation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translation_item` (
  `translation_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_key` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`translation_item_id`),
  UNIQUE KEY `item_key` (`item_key`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation_item`
--

LOCK TABLES `translation_item` WRITE;
/*!40000 ALTER TABLE `translation_item` DISABLE KEYS */;
INSERT INTO `translation_item` VALUES (26,''),(38,'alcohol_err_cth_patient'),(48,'alcohol_err_eecth_clinician'),(29,'alcohol_err_eecth_patient'),(35,'bmi_over_err_cth_patient'),(45,'bmi_over_err_eecth_clinician'),(20,'bmi_over_err_eecth_patient'),(54,'bmi_over_warn_cth_patient'),(58,'bmi_over_warn_eecth_patient'),(53,'depression_err_cth_patient'),(31,'depression_warn_cth_patient'),(41,'depression_warn_eecth_clinician'),(12,'depression_warn_eecth_patient'),(36,'exercise_habits_err_cth_patient'),(46,'exercise_habits_err_eecth_clinician'),(22,'exercise_habits_err_eecth_patient'),(57,'exercise_habits_okay_eecth_patient'),(51,'fat_err_cth_patient'),(4,'fat_okay_eecth_patient'),(34,'fruit_bad_cth_patient'),(44,'fruit_bad_eecth_clinician'),(18,'fruit_bad_eecth_patient'),(32,'health_lit_err_cth_patient'),(42,'health_lit_err_eecth_clinician'),(14,'health_lit_err_eecth_patient'),(25,'health_survey_alcohol_moderation'),(13,'health_survey_comfortable_filling_out_forms'),(21,'health_survey_getting_enough_exercise'),(17,'health_survey_getting_enough_fruit'),(15,'health_survey_getting_enough_vegetables'),(3,'health_survey_limiting_fat_consumption'),(1,'health_survey_limiting_salt_and_processed_food_consumption'),(9,'health_survey_limiting_sugary_consumption'),(19,'health_survey_maintaining_a_healthy_bmi'),(23,'health_survey_overall_stress'),(11,'health_survey_signs_of_depression'),(27,'health_survey_social_needs'),(5,'health_survey_taking_your_prescriptions'),(7,'health_survey_tobacco/nicotine_use'),(6,'prescription_adherence_okay_eecth_patient'),(50,'salty_food_err_cth_patient'),(59,'salty_food_err_eecth_patient'),(2,'salty_food_okay_eecth_patient'),(39,'social_needs_err_cth_patient'),(49,'social_needs_err_eecth_clinician'),(28,'social_needs_err_eecth_patient'),(37,'stress_err_cth_patient'),(47,'stress_err_eecth_clinician'),(24,'stress_err_eecth_patient'),(56,'sugary_drink_okay_eecth_patient'),(30,'sugary_drink_warn_one_cth_patient'),(40,'sugary_drink_warn_one_eecth_clinician'),(10,'sugary_drink_warn_one_eecth_patient'),(52,'tobacco_err_cth_patient'),(8,'tobacco_okay_eecth_patient'),(43,'veggie_bad_clinician_eecth'),(16,'veggie_bad_patient_eecth'),(33,'veggie_err_patient_cth'),(55,'veggie_okay_patient_eecth');
/*!40000 ALTER TABLE `translation_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(36) CHARACTER SET utf8 NOT NULL,
  `study_id` int(11) NOT NULL DEFAULT '-9',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `email_address` varchar(50) COLLATE utf8_bin NOT NULL,
  `salt` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `enroll_date` date NOT NULL,
  `reset_token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `token_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('3ecfad64194d11e7a4f584ef186498da',-9,'cth','$2y$10$xmuYeXMwJvzq1ghlksYTA.X.pxB8lgihT1hVz1aiUCTjnf8rJpM7G','werwer@wer.com','','2017-04-04','3ecfaca6194d11e7a4f584ef186498da3ecface0194d11e7a4f584ef186498da','2017-04-04 08:42:01'),('64dfed27194d11e7a4f584ef186498da',-9,'staff','$2y$10$oLVQwHeDojvMRrpl.26Fd.FE2hjvi7m3zd2RnuvB4hB8wqgbeyBfG','asdfasdf@ert.com','','2017-04-04','64dfec87194d11e7a4f584ef186498da64dfecbe194d11e7a4f584ef186498da','2017-04-04 08:43:05'),('739f39bc194d11e7a4f584ef186498da',-9,'research','$2y$10$5W2XrqpE17zu/qPi722zS.a/Ax8iLORvaORShf.JRa2C1bTsUzXMi','asdfasSdf@ert.com','','2017-04-04','739f3914194d11e7a4f584ef186498da739f3950194d11e7a4f584ef186498da','2017-04-04 08:43:30'),('8df026dd194b11e7a4f584ef186498da',-9,'superadmin','$2y$10$T5jxwZOvuUdea4Un8yhX0uHuhJfkiS0lw7DjRkGh1LxBa2ndiJtje','len@ieqtechnology.com','','2017-04-04','8df0263f194b11e7a4f584ef186498da8df02677194b11e7a4f584ef186498da','2017-04-04 08:29:55'),('93388604194d11e7a4f584ef186498da',-9,'patient','$2y$10$.oQsJh9R/kwgYCyOA/19JeApcD30IKWjHeRfLmXlkDiO3jmehTbgW','asdfaswSwdf@ert.com','','2017-04-04','9338852a194d11e7a4f584ef186498da9338857d194d11e7a4f584ef186498da','2017-04-04 08:44:23');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_user` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
SET NEW.enroll_date = NOW();
SET NEW.reset_token = CONCAT(get_uid(),get_uid());
SET NEW.token_time = NOW();
IF ISNULL(NEW.user_id) OR NEW.user_id='' THEN SET NEW.user_id = REPLACE(UUID(),'-',''); END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_evaluation`
--

DROP TABLE IF EXISTS `user_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_evaluation` (
  `batch_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `evaluation_id` int(10) unsigned NOT NULL,
  `cth_clinician_node_name` varchar(128) DEFAULT NULL,
  `eecth_clinician_node_name` varchar(128) DEFAULT NULL,
  `eecth_patient_node_name` varchar(128) DEFAULT NULL,
  `cth_patient_node_name` varchar(128) DEFAULT NULL,
  `cth_patient_text_id` int(10) unsigned DEFAULT NULL,
  `cth_clinician_text_id` int(10) unsigned DEFAULT NULL,
  `eecth_patient_text_id` int(10) unsigned DEFAULT NULL,
  `eecth_clinician_text_id` int(10) unsigned DEFAULT NULL,
  `eval_result` enum('green','yellow','red') NOT NULL,
  `user_input` varchar(1028) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`batch_id`,`user_id`,`evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_evaluation`
--

LOCK TABLES `user_evaluation` WRITE;
/*!40000 ALTER TABLE `user_evaluation` DISABLE KEYS */;
INSERT INTO `user_evaluation` VALUES (1,1,1,'health_lit_err_cth_clinician','health_lit_err_eecth_clinician','health_lit_err_eecth_patient','health_lit_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,2,'veggie_bad_clinician_cth','veggie_bad_clinician_eecth','veggie_bad_patient_eecth','veggie_err_patient_cth',NULL,NULL,NULL,NULL,'red','{\"recommended_servings\":6,\"user_servings\":\"0\",\"user_input\":[\"0\",\"0\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,3,'fruit_err_cth_clinician','fruit_bad_eecth_clinician','fruit_bad_eecth_patient','fruit_bad_cth_patient',NULL,NULL,NULL,NULL,'red','{\"recommended_servings\":4,\"user_servings\":\"0\",\"user_input\":[\"0\",\"0\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,4,'sugary_drink_warn_one_cth_clinician','sugary_drink_warn_one_eecth_clinician','sugary_drink_warn_one_eecth_patient','sugary_drink_warn_one_cth_patient',NULL,NULL,NULL,NULL,'yellow','{\"user_input\":[\"0\",\"0\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,5,'bmi_over_err_cth_clinician','bmi_over_err_eecth_clinician','bmi_over_err_eecth_patient','bmi_over_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"bmi\":117.3}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,6,NULL,NULL,'salty_food_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":[\"0\",\"0\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,7,NULL,NULL,'fat_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":[\"0\",\"0\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,9,'exercise_habits_err_cth_clinician','exercise_habits_err_eecth_clinician','exercise_habits_err_eecth_patient','exercise_habits_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_minutes\":0,\"user_input\":[\"Didn\'t feel safe\",\"I don\'t enjoy it\",\"I don\'t have any concerns about my physical activity\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,10,NULL,NULL,'prescription_adherence_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":null}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,11,NULL,NULL,'tobacco_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','[]','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,12,'depression_warn_cth_clinician','depression_warn_eecth_clinician','depression_warn_eecth_patient','depression_warn_cth_patient',NULL,NULL,NULL,NULL,'yellow','{\"depression_info\":10}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,13,'stress_err_cth_clinician','stress_err_eecth_clinician','stress_err_eecth_patient','stress_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,14,'alcohol_err_cth_clinician','alcohol_err_eecth_clinician','alcohol_err_eecth_patient','alcohol_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,16,'social_needs_err_cth_clinician','social_needs_err_eecth_clinician','social_needs_err_eecth_patient','social_needs_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Running out of food\",\"Bill problems\",\"Unstable housing\",\"Physical abuse\",\"Unsafe at home\"]}','2017-04-10 18:09:13','2017-04-10 18:09:13'),(2,1,1,'health_lit_err_cth_clinician','health_lit_err_eecth_clinician','health_lit_err_eecth_patient','health_lit_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,2,'veggie_bad_clinician_cth','veggie_bad_clinician_eecth','veggie_bad_patient_eecth','veggie_err_patient_cth',NULL,NULL,NULL,NULL,'red','{\"recommended_servings\":6,\"user_servings\":\"0\",\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,3,'fruit_err_cth_clinician','fruit_bad_eecth_clinician','fruit_bad_eecth_patient','fruit_bad_cth_patient',NULL,NULL,NULL,NULL,'red','{\"recommended_servings\":4,\"user_servings\":\"0\",\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,4,NULL,NULL,'sugary_drink_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,5,'bmi_over_err_cth_clinician','bmi_over_err_eecth_clinician','bmi_over_err_eecth_patient','bmi_over_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"bmi\":53.25}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,6,'salty_food_err_cth_clinician','salty_food_err_eecth_clinician','salty_food_err_eecth_patient','salty_food_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,7,'fat_err_cth_clinician','fat_err_eecth_clinician','fat_err_eecth_patient','fat_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,9,'exercise_habits_err_cth_clinician','exercise_habits_err_eecth_clinician','exercise_habits_err_eecth_patient','exercise_habits_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_minutes\":0,\"user_input\":[\"Physical limitations\",\"Didn\'t feel safe\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,10,NULL,NULL,'prescription_adherence_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":1}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,11,'tobacco_err_cth_clinician','tobacco_err_eecth_clinician','tobacco_err_eecth_patient','tobacco_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":\"Smoke Cigarettes and pipes or cigars as well as use smokeless tobacco\",\"tobacco_per_day_input\":\"Smoking 45 cigarettes per day as well as smoking a cigar or pipe 1 times per day and additionally using smokeless tobacco\"}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,12,'depression_err_cth_clinician','depression_err_eecth_clinician','depression_err_eecth_patient','depression_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"depression_info\":17}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,13,'stress_err_cth_clinician','stress_err_eecth_clinician','stress_err_eecth_patient','stress_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,14,'alcohol_err_cth_clinician','alcohol_err_eecth_clinician','alcohol_err_eecth_patient','alcohol_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,16,'social_needs_err_cth_clinician','social_needs_err_eecth_clinician','social_needs_err_eecth_patient','social_needs_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Running out of food\",\"Transportation problems\",\"Unstable housing\",\"Unsafe at home\"]}','2017-04-10 23:05:21','2017-04-10 23:05:21'),(3,1,1,'health_lit_err_cth_clinician','health_lit_err_eecth_clinician','health_lit_err_eecth_patient','health_lit_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,2,'veggie_bad_clinician_cth','veggie_bad_clinician_eecth','veggie_bad_patient_eecth','veggie_err_patient_cth',NULL,NULL,NULL,NULL,'red','{\"recommended_servings\":6,\"user_servings\":\"0\",\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,3,'fruit_err_cth_clinician','fruit_bad_eecth_clinician','fruit_bad_eecth_patient','fruit_bad_cth_patient',NULL,NULL,NULL,NULL,'red','{\"recommended_servings\":4,\"user_servings\":\"0\",\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,4,NULL,NULL,'sugary_drink_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,5,'bmi_over_err_cth_clinician','bmi_over_err_eecth_clinician','bmi_over_err_eecth_patient','bmi_over_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"bmi\":53.25}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,6,'salty_food_err_cth_clinician','salty_food_err_eecth_clinician','salty_food_err_eecth_patient','salty_food_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,7,'fat_err_cth_clinician','fat_err_eecth_clinician','fat_err_eecth_patient','fat_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Hard to get healthier food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,9,'exercise_habits_err_cth_clinician','exercise_habits_err_eecth_clinician','exercise_habits_err_eecth_patient','exercise_habits_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_minutes\":0,\"user_input\":[\"Physical limitations\",\"Didn\'t feel safe\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,10,NULL,NULL,'prescription_adherence_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":1}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,11,'tobacco_err_cth_clinician','tobacco_err_eecth_clinician','tobacco_err_eecth_patient','tobacco_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":\"Smoke Cigarettes and pipes or cigars as well as use smokeless tobacco\",\"tobacco_per_day_input\":\"Smoking 45 cigarettes per day as well as smoking a cigar or pipe 1 times per day and additionally using smokeless tobacco\"}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,12,'depression_err_cth_clinician','depression_err_eecth_clinician','depression_err_eecth_patient','depression_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"depression_info\":17}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,13,'stress_err_cth_clinician','stress_err_eecth_clinician','stress_err_eecth_patient','stress_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,14,'alcohol_err_cth_clinician','alcohol_err_eecth_clinician','alcohol_err_eecth_patient','alcohol_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,16,'social_needs_err_cth_clinician','social_needs_err_eecth_clinician','social_needs_err_eecth_patient','social_needs_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Running out of food\",\"Transportation problems\",\"Unstable housing\",\"Unsafe at home\"]}','2017-04-10 23:06:59','2017-04-10 23:06:59'),(4,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'green','[]','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,2,NULL,NULL,'veggie_okay_patient_eecth',NULL,NULL,NULL,NULL,NULL,'green','{\"recommended_servings\":6,\"user_servings\":\"7\",\"user_input\":[\"Someone else is making the food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'green','{\"recommended_servings\":4,\"user_servings\":\"7\",\"user_input\":[\"Someone else is making the food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,4,NULL,NULL,'sugary_drink_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":[\"Someone else is making the food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,5,'bmi_over_warn_cth_clinician','bmi_over_warn_eecth_clinician','bmi_over_warn_eecth_patient','bmi_over_warn_cth_patient',NULL,NULL,NULL,NULL,'yellow','{\"bmi\":27.12}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,6,'salty_food_err_cth_clinician','salty_food_err_eecth_clinician','salty_food_err_eecth_patient','salty_food_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Someone else is making the food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,7,NULL,NULL,'fat_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":[\"Someone else is making the food\",\"Can\'t afford it\",\"I eat healthy enough already\"]}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,9,NULL,NULL,'exercise_habits_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_minutes\":450,\"user_input\":null}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,10,NULL,NULL,'prescription_adherence_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','{\"user_input\":null}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,11,NULL,NULL,'tobacco_okay_eecth_patient',NULL,NULL,NULL,NULL,NULL,'green','[]','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'green','{\"depression_info\":0}','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'green','[]','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,14,'alcohol_err_cth_clinician','alcohol_err_eecth_clinician','alcohol_err_eecth_patient','alcohol_err_cth_patient',NULL,NULL,NULL,NULL,'red','[]','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,16,'social_needs_err_cth_clinician','social_needs_err_eecth_clinician','social_needs_err_eecth_patient','social_needs_err_cth_patient',NULL,NULL,NULL,NULL,'red','{\"user_input\":[\"Transportation problems\",\"Unstable housing\",\"Physical abuse\",\"Unsafe at home\"]}','2017-04-10 23:36:12','2017-04-10 23:36:12');
/*!40000 ALTER TABLE `user_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_patient_details`
--

DROP TABLE IF EXISTS `user_patient_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_patient_details` (
  `user_id` varchar(32) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender_id` int(11) NOT NULL,
  `mrn` varchar(20) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_patient_details`
--

LOCK TABLES `user_patient_details` WRITE;
/*!40000 ALTER TABLE `user_patient_details` DISABLE KEYS */;
INSERT INTO `user_patient_details` VALUES ('b711902c194511e7a4f584ef186498da','0000-00-00',1,'0',7,22),('fa670e27194511e7a4f584ef186498da','0000-00-00',1,'ffgffdgsdfg',31,22),('93388604194d11e7a4f584ef186498da','0000-00-00',2,'1111111',34,36);
/*!40000 ALTER TABLE `user_patient_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `user_id` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `home_phone` varchar(15) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  `is_coach` int(1) NOT NULL,
  `is_provider` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES ('3ecfad64194d11e7a4f584ef186498da','CTH','Admin','345345','',0,0),('64dfed27194d11e7a4f584ef186498da','Practice','Staff','234234','',0,0),('739f39bc194d11e7a4f584ef186498da','Research','Staff','234234','',0,0),('93388604194d11e7a4f584ef186498da','Joe','Patient','234234','',0,0);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_question_response`
--

DROP TABLE IF EXISTS `user_question_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_question_response` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `response` varchar(2056) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`batch_id`,`user_id`,`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_question_response`
--

LOCK TABLES `user_question_response` WRITE;
/*!40000 ALTER TABLE `user_question_response` DISABLE KEYS */;
INSERT INTO `user_question_response` VALUES (1,1,1,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,2,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,3,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,4,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,5,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,6,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,7,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,8,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,9,'15','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,11,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,12,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,13,'3','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,14,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,15,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,16,'2','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,17,'2','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,18,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,19,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,20,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,21,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,22,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,23,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,24,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,25,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,26,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,27,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,28,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,29,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,30,'[\"0\",\"0\"]','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,39,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,40,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,41,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,42,'3','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,43,'3','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,44,'3','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,45,'1','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,46,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,47,'2','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,48,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,49,'4','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,50,'2','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,51,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,52,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,53,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,54,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,55,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,56,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,57,'0','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,58,'[\"Didn\'t%20feel%20safe\",\"I%20don\'t%20enjoy%20it\",\"I%20don\'t%20have%20any%20concerns%20about%20my%20physical%20activity\"]','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,59,'434','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,60,'4','2017-04-10 18:09:13','2017-04-10 18:09:13'),(1,1,61,'3','2017-04-10 18:09:13','2017-04-10 18:09:13'),(2,1,1,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,2,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,3,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,4,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,5,'6','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,6,'7','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,7,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,8,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,9,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,10,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,11,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,12,'3','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,13,'3','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,14,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,15,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,16,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,17,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,18,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,19,'3','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,20,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,21,'5','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,22,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,23,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,24,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,25,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,26,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,27,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,28,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,29,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,30,'[\"Hard%20to%20get%20healthier%20food\",\"Can\'t%20afford%20it\",\"I%20eat%20healthy%20enough%20already\"]','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,31,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,32,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,33,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,34,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,35,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,36,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,37,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,38,'[\"1\",\"2\",\"3\"]','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,39,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,40,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,41,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,42,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,43,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,44,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,45,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,46,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,47,'2','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,48,'0','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,49,'4','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,50,'3','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,51,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,52,'11','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,53,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,54,'45','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,55,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,56,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,57,'1','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,58,'[\"Physical%20limitations\",\"Didn\'t%20feel%20safe\"]','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,59,'340','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,60,'5','2017-04-10 23:05:21','2017-04-10 23:05:21'),(2,1,61,'7','2017-04-10 23:05:21','2017-04-10 23:05:21'),(3,1,1,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,2,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,3,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,4,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,5,'6','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,6,'7','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,7,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,8,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,9,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,10,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,11,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,12,'3','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,13,'3','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,14,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,15,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,16,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,17,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,18,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,19,'3','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,20,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,21,'5','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,22,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,23,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,24,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,25,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,26,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,27,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,28,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,29,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,30,'[\"Hard%20to%20get%20healthier%20food\",\"Can\'t%20afford%20it\",\"I%20eat%20healthy%20enough%20already\"]','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,31,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,32,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,33,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,34,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,35,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,36,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,37,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,38,'[\"1\",\"2\",\"3\"]','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,39,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,40,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,41,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,42,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,43,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,44,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,45,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,46,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,47,'2','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,48,'0','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,49,'4','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,50,'3','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,51,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,52,'11','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,53,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,54,'45','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,55,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,56,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,57,'1','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,58,'[\"Physical%20limitations\",\"Didn\'t%20feel%20safe\"]','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,59,'340','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,60,'5','2017-04-10 23:06:59','2017-04-10 23:06:59'),(3,1,61,'7','2017-04-10 23:06:59','2017-04-10 23:06:59'),(4,1,1,'4','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,2,'7','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,3,'7','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,4,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,5,'7','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,6,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,7,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,8,'3','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,9,'150','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,11,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,12,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,13,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,14,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,15,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,16,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,17,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,18,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,19,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,20,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,21,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,22,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,23,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,24,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,25,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,26,'1','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,27,'1','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,28,'1','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,29,'1','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,30,'[\"Someone%20else%20is%20making%20the%20food\",\"Can\'t%20afford%20it\",\"I%20eat%20healthy%20enough%20already\"]','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,39,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,40,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,41,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,42,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,43,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,44,'2','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,45,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,46,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,47,'1','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,48,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,49,'4','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,50,'2','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,51,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,52,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,53,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,54,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,55,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,56,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,57,'0','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,59,'200','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,60,'6','2017-04-10 23:36:12','2017-04-10 23:36:12'),(4,1,61,'0','2017-04-10 23:36:12','2017-04-10 23:36:12');
/*!40000 ALTER TABLE `user_question_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` varchar(32) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_role` (`role_id`,`user_id`) USING BTREE,
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('8df026dd194b11e7a4f584ef186498da',1),('3ecfad64194d11e7a4f584ef186498da',2),('64dfed27194d11e7a4f584ef186498da',3),('739f39bc194d11e7a4f584ef186498da',4),('93388604194d11e7a4f584ef186498da',5);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-11 16:17:09
