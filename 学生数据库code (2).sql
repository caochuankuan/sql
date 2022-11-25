create database 学生
go

Use 学生
CREATE TABLE Student
 (Sno CHAR(7) NOT NULL primary key,
Sname NCHAR(20) NOT NULL,
Ssex VARCHAR(2) NOT NULL default '男'  check(SSEX in('男','女')), 
Sbirthday SMALLDATETIME,
Sdept  NVARCHAR(20),
Memo TEXT)
go

CREATE TABLE Course
(Cno CHAR(3) primary key  NOT NULL, 
Cname NVARCHAR(10) NOT NULL, 
PreCno char(3),
Credit tinyint,
Semester tinyint)
go


CREATE TABLE SC
(Sno CHAR(7) NOT NULL, 
Cno  CHAR(3) NOT NULL, 
Grade smallint check(Grade between 0 and 100),
constraint PK_xh1 primary key(Sno,Cno),
constraint FK_1 foreign key(Sno)references Student(Sno),
constraint FK_2 foreign key(Cno)references Course(Cno),

)
go


--CREATE TABLE TEACHER 
--(TNO VARCHAR(3) NOT NULL, 
--TNAME VARCHAR(4) NOT NULL, TSEX VARCHAR(2) NOT NULL, 
--TBIRTHDAY DATETIME NOT NULL, PROF VARCHAR(6), 
--DEPART VARCHAR(10) NOT NULL)
--go

INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060101' ,'钟文辉' 
,'男' ,'1997-05-01','计算机系','优秀毕业生');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060102' ,'吴细文' 
,'女' ,'1997-03-24','计算机系','爱好：音乐');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060103' ,'吴朝西' 
,'男' ,'1998-07-01','计算机系',NULL);
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070101' ,'王冲瑞' 
,'男' ,'1998-05-04','机电系','爱好：音乐');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070102' ,'林滔滔' 
,'女' ,'1997-04-03','机电系','爱好：体育');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070103' ,'李修雨' 
,'女' ,'1996-03-03','机电系',NULL);
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070301' ,'李奇' 
,'女' ,'1998-09-17','信息管理系',NULL);
GO





INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C01' ,'高等数学',null,4,1)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C02' ,'程序设计',null,4,2)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C03' ,'数据结构','C02',3,3)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C04' ,'数据库原理','C03',3,4)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C05' ,'音乐欣赏',NULL,1,4)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C06' ,'大学物理','C01',4,2)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C07' ,'计算机网络','C02',2,4)
GO
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C01',91);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C03',88);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C04',95);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C05',NULL);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060102','C02',81);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060102','C03',76);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('060102','C04',92);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C01',50);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C03',86);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C04',90);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C05',NULL);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070103','C04',52);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070103','C06',47);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070301','C03',87);
INSERT INTO SC(Sno,Cno,Grade)VALUES ('070301','C04',93);
GO


--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
--VALUES (804,'李诚','男','1958-12-02','副教授','计算机系');
--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
--VALUES (856,'张旭','男','1969-03-12','讲师','电子工程系');
--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART)
--VALUES (825,'王萍','女','1972-05-05','助教','计算机系');
--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
--VALUES (831,'刘冰','女','1977-08-14','助教','电子工程系');

