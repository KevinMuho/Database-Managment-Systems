-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: student_management
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chooses`
--

DROP TABLE IF EXISTS `chooses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chooses` (
  `Student_ID` int NOT NULL,
  `Course_ID` int NOT NULL,
  PRIMARY KEY (`Student_ID`,`Course_ID`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `chooses_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  CONSTRAINT `chooses_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chooses`
--

LOCK TABLES `chooses` WRITE;
/*!40000 ALTER TABLE `chooses` DISABLE KEYS */;
INSERT INTO `chooses` VALUES (1,1),(2,1),(7,1),(1,2),(7,2),(10,2),(3,3),(6,3),(5,4),(4,5),(4,6),(6,6),(1,7),(8,7),(10,7),(2,8),(8,8),(9,8),(3,9),(5,9),(9,9);
/*!40000 ALTER TABLE `chooses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `Course_ID` int NOT NULL AUTO_INCREMENT,
  `Course_Name` varchar(100) DEFAULT NULL,
  `Credits` int DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Lecturer` varchar(100) DEFAULT NULL,
  `Department_Email` varchar(100) DEFAULT NULL,
  `Department_Name` varchar(100) DEFAULT NULL,
  `Program_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Database Management Systems',6,'Core','Prof. Gjerazi','cs@uni.edu.al','Computer Science','Software Engineering'),(2,'Object Oriented Programing',6,'Core','Prof. Bedalli','cs@uni.edu.al','Computer Science','Software Engineering'),(3,'Constitutional Law',5,'Core','Dr. Bashkurti','law@uni.edu.al','Law','Law Studies'),(4,'Criminal Law',5,'Core','Dr. Hoxha','law@uni.edu.al','Law','Law Studies'),(5,'Architectural Design I',6,'Core','Prof. Zotaj','arch@uni.edu.al','Architecture','Architecture'),(6,'Urban Planning',5,'Elective','Prof. Manaj','arch@uni.edu.al','Architecture','Architecture'),(7,'Computer Organization',6,'Core','Prof. Fida','cs@uni.edu.al','Computer Science','Computer Science'),(8,'Fundementals of Probability',6,'Core','Prof. Manaj','cs@uni.edu.al','Computer Science','Software Engineering'),(9,'Business',5,'Elective','Prof. Cekani','cs@uni.edu.al','Law','Software Engineering');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `Enrollment_ID` int NOT NULL AUTO_INCREMENT,
  `Enrollment_Date` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Student_ID` int DEFAULT NULL,
  `Semester_ID` int DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  PRIMARY KEY (`Enrollment_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `Semester_ID` (`Semester_ID`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`Semester_ID`) REFERENCES `semester` (`Semester_ID`),
  CONSTRAINT `enrollment_ibfk_3` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,'2023-09-10','Completed',5,1,4),(2,'2024-02-15','Completed',5,2,9),(3,'2023-09-10','Completed',6,1,6),(4,'2024-02-15','Completed',6,2,3),(5,'2024-09-10','Enrolled',1,3,1),(6,'2024-09-10','Enrolled',1,3,7),(7,'2025-02-15','Enrolled',1,4,2),(8,'2024-09-10','Enrolled',2,3,1),(9,'2025-02-15','Enrolled',2,4,8),(10,'2024-09-10','Enrolled',3,3,3),(11,'2025-02-15','Enrolled',3,4,4),(12,'2024-09-10','Enrolled',4,3,5),(13,'2025-02-15','Enrolled',4,4,6),(14,'2024-09-10','Enrolled',7,3,1),(15,'2025-02-15','Enrolled',7,4,7),(16,'2024-09-10','Enrolled',8,3,7),(17,'2025-02-15','Enrolled',8,4,8),(18,'2024-09-10','Enrolled',9,3,8),(19,'2025-02-15','Enrolled',9,4,9),(20,'2024-09-10','Enrolled',10,3,2),(21,'2025-02-15','Enrolled',10,4,7);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `Grade_ID` int NOT NULL AUTO_INCREMENT,
  `Evaluation` varchar(10) DEFAULT NULL,
  `Enrollment_ID` int DEFAULT NULL,
  PRIMARY KEY (`Grade_ID`),
  KEY `Enrollment_ID` (`Enrollment_ID`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`Enrollment_ID`) REFERENCES `enrollment` (`Enrollment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,'BB',1),(2,'CB',2),(3,'BA',3),(4,'CC',4),(5,'AA',5),(6,'BA',6),(7,'BB',7),(8,'DC',8),(9,'DD',9),(10,'FD',10),(11,'BB',11),(12,'CB',12),(13,'AA',13),(14,'BA',14),(15,'BB',15),(16,'CB',16),(17,'FD',17),(18,'BA',18),(19,'BB',19),(20,'FF',20);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `Schedule_ID` int NOT NULL AUTO_INCREMENT,
  `Classroom` varchar(50) DEFAULT NULL,
  `Day` varchar(20) DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `End_Time` time DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  PRIMARY KEY (`Schedule_ID`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'Room 101','Monday','08:30:00','10:00:00',1),(2,'Room 101','Wednesday','08:30:00','10:00:00',1),(3,'Room 202','Tuesday','10:00:00','12:00:00',2),(4,'Room 202','Thursday','10:00:00','12:00:00',2),(5,'Room 103','Monday','10:30:00','12:00:00',3),(6,'Room 202','Wednesday','12:30:00','14:00:00',4),(7,'Room 304','Tuesday','08:30:00','10:00:00',5),(8,'Room 101','Friday','10:00:00','12:00:00',6),(9,'Room 101','Friday','08:30:00','10:00:00',7),(10,'Room 202','Thursday','14:00:00','16:00:00',8),(11,'Room 103','Monday','12:30:00','14:00:00',9);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `Semester_ID` int NOT NULL AUTO_INCREMENT,
  `Semester_Name` varchar(50) DEFAULT NULL,
  `Semester_Start` date DEFAULT NULL,
  `Semester_End` date DEFAULT NULL,
  PRIMARY KEY (`Semester_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,'Fall 2023','2023-09-01','2023-12-20'),(2,'Spring 2024','2024-02-10','2024-06-01'),(3,'Fall 2024','2024-09-01','2024-12-20'),(4,'Spring 2025','2025-02-10','2025-06-01');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Student_ID` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL,
  `Student_First_Name` varchar(50) DEFAULT NULL,
  `Student_Last_Name` varchar(50) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Exam_ID` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Enrollment_Year` year DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'ikacanja23@uni.edu.al','Izabela','Kacanja','2006-05-25',148,'Female',2023,'Active'),(2,'kmuho22@uni.edu.al','Kevin','Muho','2004-09-20',275,'Male',2022,'Active'),(3,'htoto23@uni.edu.al','Hajdi','Toto','2005-03-18',200,'Female',2023,'Active'),(4,'dlybeshari24@uni.edu.al','Desard','Lybeshari','2007-11-10',98,'Male',2024,'Active'),(5,'ltafciu21@uni.edu.al','Ledio','Tafciu','2000-04-22',768,'Male',2021,'Inactive'),(6,'ffejzo20@uni.edu.al','Fatime','Fejzo','1999-04-22',123,'Female',2020,'Inactive'),(7,'adomi24@uni.edu.al','Anisa','Domi','2006-12-05',108,'Female',2024,'Active'),(8,'mtahiri23@uni.edu.al','Melisa','Tahiri','2005-02-18',710,'Female',2023,'Active'),(9,'gmeka24@euni.edu.al','Grei','Meka','2006-08-09',678,'Female',2024,'Active'),(10,'jbrame22@uni.edu.al','Joni','Brame','2004-04-11',779,'Male',2022,'Active');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-17 23:38:51
