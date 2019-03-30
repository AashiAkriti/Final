-- MySQL dump 10.13  Distrib 5.6.13, for Win64 (x86_64)
--
-- Host: localhost    Database: education_portal
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Current Database: `education_portal`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `education_portal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `education_portal`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `associate_id` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,30,'12345','1234567890','admin@gmail.com','Admin','Male','Admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_info` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_duration` varchar(255) NOT NULL,
  `course_fees` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `stream_name` varchar(255) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES (101,'1','60000','Digital','ECE');
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_record`
--

DROP TABLE IF EXISTS `exam_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_record` (
  `Exam_Id` int(11) NOT NULL,
  `Course` varchar(255) DEFAULT NULL,
  `End_Date` varchar(255) DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  `Start_Date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Exam_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_record`
--

LOCK TABLES `exam_record` WRITE;
/*!40000 ALTER TABLE `exam_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_record`
--

DROP TABLE IF EXISTS `faculty_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_record` (
  `id` int(11) NOT NULL,
  `a` tinyblob,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Qualifications` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_record`
--

LOCK TABLES `faculty_record` WRITE;
/*!40000 ALTER TABLE `faculty_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_master`
--

DROP TABLE IF EXISTS `payment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_fine` double DEFAULT NULL,
  `stud_first_name` varchar(255) NOT NULL,
  `last_payment_date` date DEFAULT NULL,
  `stud_last_name` varchar(255) NOT NULL,
  `mode_of_payment` varchar(255) DEFAULT NULL,
  `s_balance` double DEFAULT NULL,
  `stream_name` varchar(255) NOT NULL,
  `total_fees` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_master`
--

LOCK TABLES `payment_master` WRITE;
/*!40000 ALTER TABLE `payment_master` DISABLE KEYS */;
INSERT INTO `payment_master` VALUES (1001,1000,'Raj','2019-12-31','Singh','online',5000,'ECE',66000,NULL),(1002,1000,'Reetika','2019-12-31','Singh','cash',9600,'CSE',69600,NULL),(1003,1120,'Aashi ','2019-06-30','Akriti','online',15000,'ECE',78312,NULL),(1004,1400,'Rochit','2019-06-30','Jain','online',14000,'CSE',64400,NULL),(1005,1500,'Mukul','2019-08-09','Manchanda','DD',15000,'ME',65500,NULL),(1006,100,'Shalini','2019-08-31','Priya','Online',12000,'ECE',72100,NULL),(1007,1100,'Faizan','2019-06-06','Khan','Cash',11000,'CE',31100,NULL),(1008,50,'Avi','2019-06-09','Tiwari','DD',18000,'ECE',78050,NULL),(1009,120,'Doll','2019-09-09','Malviya','Online',15000,'CSE',65000,NULL);
/*!40000 ALTER TABLE `payment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_info`
--

DROP TABLE IF EXISTS `stream_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stream_info` (
  `stream_course_id` int(11) NOT NULL,
  `stream_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stream_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_info`
--

LOCK TABLES `stream_info` WRITE;
/*!40000 ALTER TABLE `stream_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `stream_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_contact` varchar(255) NOT NULL,
  `stud_date` varchar(255) NOT NULL,
  `stud_email` varchar(255) NOT NULL,
  `stud_first_name` varchar(255) NOT NULL,
  `stud_guardian` varchar(255) DEFAULT NULL,
  `stud_last_name` varchar(255) NOT NULL,
  `stud_password` varchar(255) NOT NULL,
  `stud_payment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (1001,'9431386488','03-12-2016','raj@gmail.com','Raj','Ajay','Singh','raj123','online'),(1002,'9856113468','05-01-2019','rs@gmail.com','Reetika','Gyan Singh','Singh','reetika123','cash'),(1003,'9874563210','1-04-2019','aa@gmail.com','Aashi','Raj','Akriti','aashi123','online'),(1004,'9874125630','20-7-2019','rj@gmail.com','Rochit','Roli','Jain','rochit123','cash'),(1005,'7894563210','07-03-2019','mm@gmail.com','Mukul','Riya','Manchanda','mukul123','dd'),(1006,'8056497130','12-12-2018','sp@gmail.com','Shalini','Supriya','Priya','shalini123','online'),(1007,'8456321790','12-01-2019','fk@gmail.com','Faizan','Faisal','Khan','faizan123','cash'),(1008,'8456973210','12-01-2019','fk@gmail.com','Faizan','Faizal','Khan','faizan123','cash'),(1009,'9784651320','03-05-2019','at@gmail.com','Avi','Avinash','Tiwari','avi123','dd'),(1010,'9632587410','09-02-2019','dm@gmail.com','Doll','Shailendra','Malviya','doll123','online');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-30 10:18:25
