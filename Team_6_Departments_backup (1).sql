CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `big_budgets`
--

DROP TABLE IF EXISTS `big_budgets`;
/*!50001 DROP VIEW IF EXISTS `big_budgets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `big_budgets` AS SELECT 
 1 AS `department_name`,
 1 AS `annual_budget`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `big_majors`
--

DROP TABLE IF EXISTS `big_majors`;
/*!50001 DROP VIEW IF EXISTS `big_majors`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `big_majors` AS SELECT 
 1 AS `major_name`,
 1 AS `num_students`,
 1 AS `lep`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clubs_orgs`
--

DROP TABLE IF EXISTS `clubs_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clubs_orgs` (
  `clubs_orgs_id` int(11) NOT NULL,
  `clubs_orgs_name` varchar(45) NOT NULL,
  `club_function` varchar(100) DEFAULT NULL,
  `num_students` int(10) unsigned DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`clubs_orgs_id`),
  KEY `fk_clubs_orgs_departments1_idx` (`department_id`),
  CONSTRAINT `fk_umd_clubs_and_organization_departments1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs_orgs`
--

LOCK TABLES `clubs_orgs` WRITE;
/*!40000 ALTER TABLE `clubs_orgs` DISABLE KEYS */;
INSERT INTO `clubs_orgs` VALUES (1,'Taiwanese Student Association','Students who are interested in Taiwanese Culture',1435,14),(2,'Girls Who Code','Women studnets who are interested in coding',1502,14),(3,'Japanese Student Association','Students who are interested in Japanese Culture',1432,14),(4,'Chinese Student Associaiton','Students who are interested in Chinese Culture',1235,14),(5,'Badmitton Club','Students who are interested in badmitton ',1987,14),(6,'Boxing Club','Students who are interested in boxing practice and compete',1205,14),(7,'Barbell Club','Students who are interested in power lifting',1452,14),(8,'Black Law Student Association','Black students who are interested in becoming a law students',1632,14),(9,'Black Engineers Society','Black students who are interested in becoming an engineer',1583,14),(10,'Society of Hispanics Professional Engineers','Hispanic students who are interested in becoming an engineer',1246,14),(11,'TransU','Students who are interested in having a discussion and a safe space for transgender people',1532,14),(12,'AstroTerps','Students who is interested in space ',1563,14),(13,'Vietnamese Student Association ','Students who are interested in Vietamese Culture',1642,14),(14,'Sikh Student Association','Students who are interested in Sikh Culture',1120,14);
/*!40000 ALTER TABLE `clubs_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `depart_club`
--

DROP TABLE IF EXISTS `depart_club`;
/*!50001 DROP VIEW IF EXISTS `depart_club`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `depart_club` AS SELECT 
 1 AS `clubs_orgs_name`,
 1 AS `department_name`,
 1 AS `department_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `depart_greek`
--

DROP TABLE IF EXISTS `depart_greek`;
/*!50001 DROP VIEW IF EXISTS `depart_greek`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `depart_greek` AS SELECT 
 1 AS `department_name`,
 1 AS `greek_orgs_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_head` varchar(100) DEFAULT NULL,
  `annual_budget` int(10) unsigned NOT NULL,
  `number_of_staff` int(11) DEFAULT NULL,
  `department_name` varchar(45) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Mary Ann Rankin',84300000,233,'Academic Affairs and Provost'),(2,'Damon Evans',95000000,450,'Athletics'),(3,'Colleen Auburger',35000000,79,'Budget and Fiscal Analysis'),(4,'Jay Gilchrist',16500000,156,'University Recreation & Wellness'),(5,'Colleen Wright-Riva',45000000,228,'Dining Services'),(6,'David McBride',23000000,144,'Health Center'),(7,'Jeff Hollingsworth',15000000,86,'Division of Information Technology'),(8,'Adriene Lim',24000000,105,'Library Services'),(9,'Cecilia Jabonete',8900000,62,'UMD Greek Life'),(10,'Betsy Hart',1500000,19,'National Foreign Language Center'),(11,'Gerry Strumpf',2300000,67,'Orientation Office'),(12,'Darryl Pines',73000000,215,'Office of the President'),(13,'Valronica Scales',86000000,198,'Resident Life'),(14,'Leeanne Dunsmore',4500000,49,'Student Organization Resource Center'),(15,'Brodie Remington',900000,23,'Office of University Relations');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `greek_orgs`
--

DROP TABLE IF EXISTS `greek_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `greek_orgs` (
  `greek_orgs_id` int(11) NOT NULL,
  `greek_orgs_name` varchar(45) NOT NULL,
  `president` varchar(100) DEFAULT NULL,
  `greek_orgs_type` varchar(50) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`greek_orgs_id`),
  KEY `fk_greek_departments_idx` (`department_id`),
  CONSTRAINT `fk_greek_departments` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `greek_orgs`
--

LOCK TABLES `greek_orgs` WRITE;
/*!40000 ALTER TABLE `greek_orgs` DISABLE KEYS */;
INSERT INTO `greek_orgs` VALUES (1,'Alpha Chi Omega','Ally Johnson','Service',9),(2,'Alpha Epsilon Pi','Millter Friedman','Service',9),(3,'Alpha Kappa Alpha','Chandler Bryant','Professional',9),(4,'Delta Sigma THeta','Sydney King','Professional',9),(5,'Gamma Phi Beta','Allison Hannahs','Service',9),(6,'Sigma Iota Alpha','Valeria Morales','Multicultural Awareness',9),(7,'Iota Nu Delta','Atharva Deshpande','Multicultural Awareness',9),(8,'Kappa Alpha Order','Dalton Warren','Service',9),(9,'Kappa Lambda Xi','Kayla Jackson','Multicultural Awareness',9),(10,'Phi Kappa Psi','Andrew Englander','Service',9),(11,'Phi Sigma Sigma','Maddie Berman','Service',9),(12,'Sigma Delta Tau','Jordan Levine','Service',9),(13,'Sigma Psi Zeta','Maria Janush','Multicultural Awareness',9),(14,'Zeta Beta Tau','Adam Reisfield','Service',9);
/*!40000 ALTER TABLE `greek_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `int_studies`
--

DROP TABLE IF EXISTS `int_studies`;
/*!50001 DROP VIEW IF EXISTS `int_studies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `int_studies` AS SELECT 
 1 AS `school_name`,
 1 AS `country_name`,
 1 AS `department_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lep_credits`
--

DROP TABLE IF EXISTS `lep_credits`;
/*!50001 DROP VIEW IF EXISTS `lep_credits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `lep_credits` AS SELECT 
 1 AS `major_name`,
 1 AS `major_credits`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `majors` (
  `major_id` int(11) NOT NULL,
  `major_name` varchar(45) NOT NULL,
  `lep` varchar(45) NOT NULL DEFAULT '0',
  `num_students` int(11) NOT NULL,
  `major_credits` int(11) DEFAULT NULL,
  `umd_schools_id` int(11) NOT NULL,
  PRIMARY KEY (`major_id`),
  KEY `fk_majors_umd_schools1_idx` (`umd_schools_id`),
  CONSTRAINT `fk_major_and_minor_umd_schools` FOREIGN KEY (`umd_schools_id`) REFERENCES `umd_schools` (`umd_schools_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (1,'Agricultural and Resource Economics','no',85,42,1),(2,'Animal Sceinces: Animal Care and Management','no',308,45,1),(3,'Environmental Science and Policy','no',101,45,1),(4,'Architecture','no',431,54,2),(5,'Music','yes',177,51,3),(6,'Jewish Studies','no',3,48,3),(7,'Economics','no',940,42,4),(8,'Psychology','yes',930,35,4),(9,'Accounting','yes',498,24,5),(10,'Finance','yes',907,21,5),(11,'Biochemistry','yes',365,34,6),(12,'Computer Science','yes',3188,25,6),(13,'Secondary Education: Mathematics','no',23,33,7),(14,'Human Development','no',85,36,7),(15,'Bioengineering','no',485,30,8),(16,'Civil Engineering','yes',358,42,8),(17,'Information Science','no',959,30,10),(18,'Journalism','yes',469,48,9),(19,'Community Health','no',263,48,11),(20,'Public Health Science ','no',994,74,11),(21,'Public Policy','no',219,58,12),(22,'Letters and Sciences','no',2961,30,13),(23,'Individual Studies','no',24,30,13);
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minors`
--

DROP TABLE IF EXISTS `minors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `minors` (
  `minor_id` int(11) NOT NULL AUTO_INCREMENT,
  `minor_name` varchar(45) NOT NULL,
  `minor_credits` int(11) NOT NULL,
  `lep` varchar(45) DEFAULT NULL,
  `num_students` int(11) NOT NULL DEFAULT '0',
  `umd_schools_id` int(11) NOT NULL,
  PRIMARY KEY (`minor_id`),
  KEY `fk_minors_umd_schools1_idx` (`umd_schools_id`),
  CONSTRAINT `fk_minors_umd_schools1` FOREIGN KEY (`umd_schools_id`) REFERENCES `umd_schools` (`umd_schools_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minors`
--

LOCK TABLES `minors` WRITE;
/*!40000 ALTER TABLE `minors` DISABLE KEYS */;
INSERT INTO `minors` VALUES (1,'Landscape Management',22,'no',78,1),(2,'Soil Science',17,'no',154,1),(3,'Construction Project Management',15,'yes',189,2),(4,'Real Estate Development',15,'no',267,2),(5,'Chinese',15,'no',198,3),(6,'Philosophy',18,'no',278,3),(7,'Global Terrorism Studies',18,'no',54,4),(8,'Neuroscience',15,'yes',345,4),(9,'Business Analytics',15,'yes',112,5),(10,'Astronomy',15,'no',444,6),(11,'Paleobiology',15,'no',89,6),(12,'Disability Studies',15,'yes',280,7),(13,'Global Engineering Leadership',16,'no',365,8),(14,'Nuclear Engineering',15,'no',246,8),(15,'Public Leadership',15,'no',253,12);
/*!40000 ALTER TABLE `minors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orgs_affiliation`
--

DROP TABLE IF EXISTS `orgs_affiliation`;
/*!50001 DROP VIEW IF EXISTS `orgs_affiliation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `orgs_affiliation` AS SELECT 
 1 AS `clubs_orgs_name`,
 1 AS `department_name`,
 1 AS `department_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `school_abroadprog`
--

DROP TABLE IF EXISTS `school_abroadprog`;
/*!50001 DROP VIEW IF EXISTS `school_abroadprog`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `school_abroadprog` AS SELECT 
 1 AS `school_name`,
 1 AS `country_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `staff_numbers`
--

DROP TABLE IF EXISTS `staff_numbers`;
/*!50001 DROP VIEW IF EXISTS `staff_numbers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `staff_numbers` AS SELECT 
 1 AS `Department Name`,
 1 AS `number_of_staff`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_greek_club`
--

DROP TABLE IF EXISTS `student_greek_club`;
/*!50001 DROP VIEW IF EXISTS `student_greek_club`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `student_greek_club` AS SELECT 
 1 AS `student_name`,
 1 AS `greek_orgs_name`,
 1 AS `clubs_orgs_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `student_major_minor`
--

DROP TABLE IF EXISTS `student_major_minor`;
/*!50001 DROP VIEW IF EXISTS `student_major_minor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `student_major_minor` AS SELECT 
 1 AS `student_name`,
 1 AS `major_name`,
 1 AS `minor_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `major_id` int(11) NOT NULL,
  `minor_id` int(11) NOT NULL,
  `greek_orgs_id` int(11) NOT NULL,
  `clubs_orgs_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_students_greek_orgs1_idx` (`greek_orgs_id`),
  KEY `fk_students_clubs_orgs1_idx` (`clubs_orgs_id`) /*!80000 INVISIBLE */,
  KEY `fk_students_majors1_idx` (`major_id`) /*!80000 INVISIBLE */,
  KEY `fk_students_minors1_idx` (`minor_id`),
  CONSTRAINT `fk_students_majors1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`),
  CONSTRAINT `fk_students_minors1` FOREIGN KEY (`minor_id`) REFERENCES `minors` (`minor_id`),
  CONSTRAINT `fk_students_umd_clubs_and_organization1` FOREIGN KEY (`clubs_orgs_id`) REFERENCES `clubs_orgs` (`clubs_orgs_id`),
  CONSTRAINT `fk_students_umd_fraternities_sororities1` FOREIGN KEY (`greek_orgs_id`) REFERENCES `greek_orgs` (`greek_orgs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (11254678,'Jasmine','Young',5,2,8,8),(11368592,'DJ','Griffin',9,3,1,7),(11369821,'Cassie ','Williams',3,2,3,1),(11456898,'Amelia','Fabian',13,8,4,2),(11526347,'Ben','Oliver',8,4,9,9),(11526477,'Carl','Johnson',13,14,2,5),(11569874,'Gabe','Scott',9,11,6,4),(11589722,'Justin','Wang',2,3,2,4),(11589752,'John','Smith',7,6,5,6),(11698123,'Jenny','Krepps',12,15,3,6),(11698752,'Alex','Price',10,2,2,3),(11876222,'Ryley','Watson',11,13,4,2),(11912536,'Rob','Stewart ',5,4,6,2),(11995588,'Aaron','Chris',1,6,5,5);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_abroad_programs`
--

DROP TABLE IF EXISTS `study_abroad_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `study_abroad_programs` (
  `study_abroad_id` int(11) NOT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  `umd_schools_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`study_abroad_id`,`umd_schools_id`,`student_id`),
  KEY `fk_students_has_umd_schools_umd_schools1_idx` (`umd_schools_id`),
  KEY `fk_students_has_umd_schools_students1_idx` (`student_id`),
  CONSTRAINT `fk_students_has_umd_schools_students1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `fk_students_has_umd_schools_umd_schools1` FOREIGN KEY (`umd_schools_id`) REFERENCES `umd_schools` (`umd_schools_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_abroad_programs`
--

LOCK TABLES `study_abroad_programs` WRITE;
/*!40000 ALTER TABLE `study_abroad_programs` DISABLE KEYS */;
INSERT INTO `study_abroad_programs` VALUES (1,'Brazil',1,11589722),(2,'England ',2,11369821),(3,'Spain ',3,11912536),(4,'Australia',4,11589752),(5,'Italy',3,11456898),(6,'Argentina',1,11995588),(7,'China',5,11254678),(8,'South Africa',2,11526347),(9,'Taiwan',4,11368592),(10,'Cuba',6,11526477),(11,'India',2,11698123),(12,'Bolivia',3,11876222),(13,'Peru',5,11698752),(14,'Indonesia',6,11569874),(15,'Japan',5,11589722),(16,'Mexico ',9,11369821),(17,'South Korea',8,11912536),(18,'Belgium',7,11589752),(19,'Austria',5,11456898),(20,'Sweden',11,11995588),(21,'Vietnam',2,11254678),(22,'Singapore',5,11526347),(23,'Finland',6,11368592),(24,'Poland',7,11526477),(25,'Canada',8,11698123),(26,'United Arab Emirates',9,11876222),(27,'Germany',10,11698752),(28,'France',11,11569874),(29,'Hungary',5,11698752),(30,'Russia',8,11569874);
/*!40000 ALTER TABLE `study_abroad_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umd_schools`
--

DROP TABLE IF EXISTS `umd_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `umd_schools` (
  `umd_schools_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `school_name` varchar(45) NOT NULL,
  PRIMARY KEY (`umd_schools_id`),
  KEY `fk_umd_schools_departments_idx` (`department_id`),
  CONSTRAINT `fk_umd_schools_departments` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umd_schools`
--

LOCK TABLES `umd_schools` WRITE;
/*!40000 ALTER TABLE `umd_schools` DISABLE KEYS */;
INSERT INTO `umd_schools` VALUES (1,1,'Agriculture and Natural Resources'),(2,1,'Architecture, Planning and Preservation'),(3,1,'Arts and Humanities'),(4,1,'Behavioral and Social Sciences'),(5,1,'Business (Robert H. Smith)'),(6,1,'Computer, Mathematical, and Natural Sciences'),(7,1,'Education'),(8,1,'Engineering (James A. Clark)'),(9,1,'Journalism'),(10,1,'Information Studies'),(11,1,'Public Health'),(12,1,'Public Policy'),(13,1,'Undergraduate Studies');
/*!40000 ALTER TABLE `umd_schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `big_budgets`
--

/*!50001 DROP VIEW IF EXISTS `big_budgets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `big_budgets` AS select `departments`.`department_name` AS `department_name`,`departments`.`annual_budget` AS `annual_budget` from `departments` where (`departments`.`annual_budget` > (select avg(`departments`.`annual_budget`) from `departments`)) order by `departments`.`department_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `big_majors`
--

/*!50001 DROP VIEW IF EXISTS `big_majors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `big_majors` AS select `majors`.`major_name` AS `major_name`,`majors`.`num_students` AS `num_students`,`majors`.`lep` AS `lep` from `majors` where (`majors`.`num_students` > (select avg(`majors`.`num_students`) from `majors`)) order by `majors`.`num_students` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `depart_club`
--

/*!50001 DROP VIEW IF EXISTS `depart_club`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `depart_club` AS select `clubs_orgs`.`clubs_orgs_name` AS `clubs_orgs_name`,`departments`.`department_name` AS `department_name`,`departments`.`department_id` AS `department_id` from (`departments` join `clubs_orgs` on((`departments`.`department_id` = `clubs_orgs`.`department_id`))) order by `clubs_orgs`.`clubs_orgs_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `depart_greek`
--

/*!50001 DROP VIEW IF EXISTS `depart_greek`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `depart_greek` AS select `departments`.`department_name` AS `department_name`,`greek_orgs`.`greek_orgs_name` AS `greek_orgs_name` from (`departments` join `greek_orgs` on((`departments`.`department_id` = `greek_orgs`.`department_id`))) group by `greek_orgs`.`greek_orgs_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `int_studies`
--

/*!50001 DROP VIEW IF EXISTS `int_studies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `int_studies` AS select `umd_schools`.`school_name` AS `school_name`,`study_abroad_programs`.`country_name` AS `country_name`,`departments`.`department_name` AS `department_name` from ((`study_abroad_programs` join `umd_schools` on((`study_abroad_programs`.`umd_schools_id` = `umd_schools`.`umd_schools_id`))) join `departments` on((`umd_schools`.`department_id` = `departments`.`department_id`))) order by `umd_schools`.`school_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lep_credits`
--

/*!50001 DROP VIEW IF EXISTS `lep_credits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lep_credits` AS select `majors`.`major_name` AS `major_name`,`majors`.`major_credits` AS `major_credits` from `majors` where (`majors`.`lep` = 'yes') order by `majors`.`major_name`,`majors`.`major_credits` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orgs_affiliation`
--

/*!50001 DROP VIEW IF EXISTS `orgs_affiliation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orgs_affiliation` AS select `clubs_orgs`.`clubs_orgs_name` AS `clubs_orgs_name`,`departments`.`department_name` AS `department_name`,`departments`.`department_id` AS `department_id` from (`departments` join `clubs_orgs` on((`departments`.`department_id` = `clubs_orgs`.`department_id`))) union select `umd_schools`.`school_name` AS `school_name`,`departments`.`department_name` AS `department_name`,`departments`.`department_id` AS `department_id` from (`departments` join `umd_schools` on((`departments`.`department_id` = `umd_schools`.`department_id`))) order by `clubs_orgs_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `school_abroadprog`
--

/*!50001 DROP VIEW IF EXISTS `school_abroadprog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `school_abroadprog` AS select `umd_schools`.`school_name` AS `school_name`,`study_abroad_programs`.`country_name` AS `country_name` from (`study_abroad_programs` join `umd_schools` on((`study_abroad_programs`.`umd_schools_id` = `umd_schools`.`umd_schools_id`))) order by `umd_schools`.`school_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staff_numbers`
--

/*!50001 DROP VIEW IF EXISTS `staff_numbers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `staff_numbers` AS select `departments`.`department_name` AS `Department Name`,`departments`.`number_of_staff` AS `number_of_staff` from `departments` where (`departments`.`annual_budget` is not null) order by `departments`.`department_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_greek_club`
--

/*!50001 DROP VIEW IF EXISTS `student_greek_club`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_greek_club` AS select concat(`students`.`last_name`,', ',`students`.`first_name`) AS `student_name`,`greek_orgs`.`greek_orgs_name` AS `greek_orgs_name`,`clubs_orgs`.`clubs_orgs_name` AS `clubs_orgs_name` from ((`students` join `greek_orgs` on((`students`.`greek_orgs_id` = `greek_orgs`.`greek_orgs_id`))) join `clubs_orgs` on((`students`.`clubs_orgs_id` = `clubs_orgs`.`clubs_orgs_id`))) order by `students`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_major_minor`
--

/*!50001 DROP VIEW IF EXISTS `student_major_minor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_major_minor` AS select concat(`students`.`last_name`,', ',`students`.`first_name`) AS `student_name`,`majors`.`major_name` AS `major_name`,`minors`.`minor_name` AS `minor_name` from ((`students` join `majors` on((`students`.`major_id` = `majors`.`major_id`))) join `minors` on((`students`.`minor_id` = `minors`.`minor_id`))) order by `students`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-20 15:47:54
