--create database 学生书后
--go

Use 学生书后
go
--CREATE TABLE Student
-- (Sno CHAR(3) NOT NULL primary key,
--Sname  CHAR(8) NOT NULL,
--Ssex  CHAR(2) NOT NULL default '男'  check(SSEX in('男','女')), 
--Sbirthday  DATETIME,
--Class char(5))
--go

--CREATE TABLE Course
--(Cno CHAR(5) primary key  NOT NULL, 
--Cname  VARCHAR(10) NOT NULL, 
--Tno char(3) not null,
--constraint FK_3 foreign key(Tno)references TEACHER (Tno),
--)
--go


--CREATE TABLE SCORE
--(Sno CHAR(3) NOT NULL, 
--Cno  CHAR(5) NOT NULL, 
--Degree decimal(4,1) ,
--constraint PK_xh1 primary key(Sno,Cno),
--constraint FK_1 foreign key(Sno)references Student(Sno),
--constraint FK_2 foreign key(Cno)references Course(Cno),
--)
--go
--CREATE TABLE TEACHER 
--(TNO  CHAR(3) NOT NULL primary key, 
--TNAME  CHAR(4) NOT NULL, 
--TSEX  CHAR(2)  NOT NULL, 
--TBIRTHDAY DATETIME NOT NULL, 
--PROF  CHAR(6), 
--DEPART  CHAR(10) NOT NULL)
--go

INSERT INTO Student  VALUES ('001' ,'钟文辉' ,'男' ,1997-05-01,'计算机1班');
--INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060102' ,'吴细文' 
--,'女' ,'1997-03-24','计算机系','爱好：音乐');
--INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060103' ,'吴朝西' 
--,'男' ,'1998-07-01','计算机系',NULL);
--INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070101' ,'王冲瑞' 
--,'男' ,'1998-05-04','机电系','爱好：音乐');
--INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070102' ,'林滔滔' 
--,'女' ,'1997-04-03','机电系','爱好：体育');
--INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070103' ,'李修雨' 
--,'女' ,'1996-03-03','机电系',NULL);
--INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070301' ,'李奇' 
--,'女' ,'1998-09-17','信息管理系',NULL);
--GO





--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C01' ,'高等数学',null,4,1)
--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C02' ,'程序设计',null,4,2)
--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C03' ,'数据结构','C02',3,3)
--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C04' ,'数据库原理','C03',3,4)
--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C05' ,'音乐欣赏',NULL,1,4)
--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C06' ,'大学物理','C01',4,2)
--INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C07' ,'计算机网络','C02',2,4)
--GO
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C01',91);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C03',88);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C04',95);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060101','C05',NULL);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060102','C02',81);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060102','C03',76);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('060102','C04',92);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C01',50);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C03',86);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C04',90);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070101','C05',NULL);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070103','C04',52);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070103','C06',47);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070301','C03',87);
--INSERT INTO SC(Sno,Cno,Grade)VALUES ('070301','C04',93);
--GO


----INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
----VALUES (804,'李诚','男','1958-12-02','副教授','计算机系');
----INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
----VALUES (856,'张旭','男','1969-03-12','讲师','电子工程系');
----INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART)
----VALUES (825,'王萍','女','1972-05-05','助教','计算机系');
----INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
----VALUES (831,'刘冰','女','1977-08-14','助教','电子工程系');

