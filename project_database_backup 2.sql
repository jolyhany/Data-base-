-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: university_system_main
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cources`
--

DROP TABLE IF EXISTS `cources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cources` (
  `cources_name` varchar(30) DEFAULT NULL,
  `pro_id` varchar(20) DEFAULT NULL,
  `cources_id` char(5) DEFAULT NULL,
  `department_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cources`
--

LOCK TABLES `cources` WRITE;
/*!40000 ALTER TABLE `cources` DISABLE KEYS */;
INSERT INTO `cources` VALUES ('Database Systems','2030','11','AI101'),('Web Development','2060','12','AI101'),('AI Fundamentals','2080','13','AI101'),('Cybersecurity Basics','2070','14','CS102'),('Data Mining','2040','15','CS102'),('Networks','2022','16','IT103'),('Software Engineering','2099','17','IT103'),('Programming','2086','18','IS104'),('Machine Learning','2045','19','AI101'),('Information Ethics','2056','20','CS102');
/*!40000 ALTER TABLE `cources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` char(5) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pro_id` varchar(50) DEFAULT NULL,
  `std_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('AI101','AI','2030','S001'),('AI101','AI','2060','S002'),('AI101','AI','2080','S003'),('CS102','CS','2070','S004'),('CS102','CS','2040','S005'),('IT103','IT','2022','S006'),('IT103','IT','2099','S007'),('IS104','IS','2086','S008'),('AI101','AI','2045','S009'),('CS102','CS','2056','S010');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `std_id` char(5) DEFAULT NULL,
  `ssn` varchar(14) DEFAULT NULL,
  `id` char(5) DEFAULT NULL,
  `birth_day` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES ('S001','123456789','12345','2002-05-14'),('S002','987654321','12346','2001-12-20'),('S003','456789123','12349','2003-03-10'),('S004','321456987','12337','2000-07-25'),('S005','789123456','12334','2002-01-01'),('S006','147852369','12325','2003-08-08'),('S007','963852741','12323','2001-09-30'),('S008','753159846','12349','2000-11-15'),('S009','852963741','12396','2002-06-05'),('S010','159357486','12388','2001-02-17');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pro_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES ('mona.ali@example.com','Dr.Mona_Ali','2030'),('tamer.h@example.com','Dr. Tamer Hassan','2060'),('rania.s@example.com','Dr. Rania Saeed','2080'),('huda.m@example.com','Dr. Huda Mansour','2070'),('fady.n@example.com','Dr. Fady Nabil','2040'),('laila.s@example.com','Dr. Laila Sami','2022'),('walid.i@example.com','Dr. Walid Ibrahim','2099'),('amr.k@example.com','Dr. Amr Khaled','2086'),('hany.o@example.com','Dr. Hany Omar','2045'),('nouran.a@example.com','Dr. Nouran Adel','2056');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `std_id` char(5) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `department_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('S001','Nada Ahmed','nada.a@student.com','AI101'),('S002','Youssef Tarek','youssef.t@student.com','AI101'),('S003','Sara Mohamed','sara.m@student.com','AI101'),('S004','Kareem Samir','kareem.s@student.com','CS102'),('S005','Lina Mahmoud','lina.m@student.com','CS102'),('S006','Ali Hossam','ali.h@student.com','IT103'),('S007','Mariam Fathy','mariam.f@student.com','IT103'),('S008','Tamer Khaled','tamer.k@student.com','IS104'),('S009','Aya Saad','aya.s@student.com','AI101'),('S010','Mohamed Adel','mohamed.a@student.com','CS102');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15  0:41:41
SELECT * FROM enrollment WHERE id = 12345 ;
 SELECT * FROM professors WHERE pro_id = 2022 ;
  SELECT * FROM enrollment WHERE std_id = 'S005';
  SELECT cources.cources_name , professors.name AS pro_id FROM cources JOIN professors ON cources.pro_id = professors.pro_id;
  SELECT department_id,COUNT(Students.std_id) AS num_students FROM Students JOIN department ON Students.department_id = department.id GROUP BY  department.id;
  SELECT * FROM cources WHERE cources_name='Database Systems';
   SELECT * FROM Students;
    
