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
