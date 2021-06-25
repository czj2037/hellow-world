#0623
USE school;
CREATE TABLE `grade` (
  `subjectNo` int(20) NOT NULL,
  `studentNo` int(11) NOT NULL,
  `score` int(3) DEFAULT NULL,
  PRIMARY KEY (`subjectNo`,`studentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `grade` (
  `subjectNo` int(20) NOT NULL,
  `studentNo` int(11) NOT NULL,
  `score` int(3) DEFAULT NULL,
  PRIMARY KEY (`subjectNo`,`studentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `grade` (
  `subjectNo` int(20) NOT NULL,
  `studentNo` int(11) NOT NULL,
  `score` int(3) DEFAULT NULL,
  PRIMARY KEY (`subjectNo`,`studentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

INSERT INTO `student` (
 `id`,
 `name`,
 `address`,
 `grade`,
 `headTeacherId`
)
 VALUES
 (10001,"Jack","Uk","3.1",20001),
 (10002,"Ben","Uk","3.1",20001),
 (10003,"Tom","Uk","3.1",20001),
 (10004,"Bill","Uk","3.1",20001),
 (10005,"Lily","Uk","3.1",20001),
 (10006,"Lucy","Uk","3.1",20001),
 (10007,"Tony","USA","3.2",20002),
 (10008,"Rose","USA","3.2",20002),
 (10009,"Jessie","USA","3.2",20002),
 (10010,"Carter","USA","3.2",20002),
 (10011,"Jackson","USA","3.2",20002),
 (10013,"Xiaoming","Shanghai","3.2",20002),
 (10014,"Xiaohong","Shanghai","3.2",20002),
 (10015,"Lisi","Shanghai","3.2",20002),
 (10016,"Zhangsan","Shanghai","3.2",20002);
 
 
insert into `teacher`(
 `id`,`name`,`address`,`email`,`cellPhone`,`subjectNo`
 )
 values
 (20001,"张水水","Jiqiao","zhang@123.com",12345678901,01),
 (20001,"王火火","Caolu","wang@123.com",12345678902,02),
 (20001,"赵金金","Gaohang","zhao@123.com",12345678904,03),
 (20001,"孙土土","Zhangjiang","sun@123.com",12345678904,04)

 
INSERT INTO `grade`(
 `subjectNo`,`studentNo`,`score`
 )
 VALUES
(01,10001,80),
(01,10002,81),
(01,10003,82),
(01,10004,83),
(01,10005,84),
(01,10006,85),
(01,10007,86),
(01,10008,87),
(01,10009,100),
(01,10010,99),
(01,10011,98),
(01,10012,97),
(01,10013,96),
(01,10014,95),
(01,10015,94),

(02,10001,90),
(02,10002,91),
(02,10003,92),
(02,10004,93),
(02,10005,94),
(02,10006,95),
(02,10007,96),
(02,10008,97),
(02,10009,100),
(02,10010,99),
(02,10011,98),
(02,10012,97),
(02,10013,96),
(02,10014,85),
(02,10015,94),
(02,10016,99),

(03,10001,60),
(03,10002,61),
(03,10003,62),
(03,10004,63),
(03,10005,84),
(03,10006,85),
(03,10007,86),
(03,10008,87),
(03,10009,100),
(03,10010,79),
(03,10011,78),
(03,10012,77),
(03,10013,76),
(03,10014,75),
(03,10015,74),
(03,10016,99)

SELECT st.`name`,AVG(`score`) AS `ascore`, MAX(`score`) AS `maxscore`,MIN(`score`) AS `minscore`
FROM student AS st INNER JOIN   `grade` AS gr ON st.`id`=gr.`studentNo`
INNER JOIN  teacher AS te ON te.`subjectNo`=gr.`subjectNo`
GROUP BY st.`name` 
ORDER BY ascore DESC

#2021-06-24 school.sql
-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `subjectNo` int(20) NOT NULL,
  `studentNo` int(11) NOT NULL,
  `score` int(3) DEFAULT NULL,
  `subjectName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`subjectNo`,`studentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,10001,80,'English'),(1,10002,81,'English'),(1,10003,82,'English'),(1,10004,83,'English'),(1,10005,84,'English'),(1,10006,85,'English'),(1,10007,86,'English'),(1,10008,87,'English'),(1,10009,100,'English'),(1,10010,99,'English'),(1,10011,98,'English'),(1,10012,97,'English'),(1,10013,96,'English'),(1,10014,95,'English'),(1,10015,94,'English'),(2,10001,90,'Math'),(2,10002,91,'Math'),(2,10003,92,'Math'),(2,10004,93,'Math'),(2,10005,94,'Math'),(2,10006,95,'Math'),(2,10007,96,'Math'),(2,10008,97,'Math'),(2,10009,100,'Math'),(2,10010,99,'Math'),(2,10011,98,'Math'),(2,10012,97,'Math'),(2,10013,96,'Math'),(2,10014,85,'Math'),(2,10015,94,'Math'),(2,10016,99,'Math'),(3,10001,60,'Science'),(3,10002,61,'Science'),(3,10003,62,'Science'),(3,10004,63,'Science'),(3,10005,84,'Science'),(3,10006,85,'Science'),(3,10007,86,'Science'),(3,10008,87,'Science'),(3,10009,100,'Science'),(3,10010,79,'Science'),(3,10011,78,'Science'),(3,10012,77,'Science'),(3,10013,76,'Science'),(3,10014,75,'Science'),(3,10015,74,'Science'),(3,10016,99,'Science');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `headTeacherId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (10001,'Jack','Uk','3.1',20001),(10002,'Ben','Uk','3.1',20001),(10003,'Tom','Uk','3.1',20001),(10004,'Bill','Uk','3.1',20001),(10005,'Lily','Uk','3.1',20001),(10006,'Lucy','Uk','3.1',20001),(10007,'Tony','USA','3.2',20002),(10008,'Rose','USA','3.2',20002),(10009,'Jessie','USA','3.2',20002),(10010,'Carter','USA','3.2',20002),(10011,'Jackson','USA','3.2',20002),(10013,'Xiaoming','Shanghai','3.2',20002),(10014,'Xiaohong','Shanghai','3.2',20002),(10015,'Lisi','Shanghai','3.2',20002),(10016,'Zhangsan','Shanghai','3.2',20002);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cellPhone` int(22) NOT NULL,
  `subjectNo` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (20001,'张水水','Jiqiao','zhang@123.com',678901,1),(20002,'王火火','Caolu','wang@123.com',678902,2),(20003,'赵金金','Gaohang','zhao@123.com',678903,3),(20004,'孙土土','Zhangjiang','sun@123.com',678904,4),(20010,'张三','zhangjiang','zhangsan@123.com',678922,10);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`skip-grants user`@`skip-grants host`*/ /*!50003 trigger teacher_insert after insert on `teacher` for each row

begin  

  SELECT NEW.`name` into @name;

  select NEW.`id` INTO @id;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 19:13:29

###2021/0605
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/school?useUnicode=true&characterEncoding=utf8&useSSL=true";
        String username="root";
        String password="123456";
        Connection connection= getConnection(url,username,password);
        Statement statement=connection.createStatement();
        String sql="select * from teacher";
        ResultSet resultSet=statement.executeQuery(sql);
        List<String> names=new ArrayList<String>();
        while (resultSet.next()){
            names.add(resultSet.getString("name"));
        }
        System.out.println(String.join(";",names));

    }
