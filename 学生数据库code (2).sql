create database ѧ��
go

Use ѧ��
CREATE TABLE Student
 (Sno CHAR(7) NOT NULL primary key,
Sname NCHAR(20) NOT NULL,
Ssex VARCHAR(2) NOT NULL default '��'  check(SSEX in('��','Ů')), 
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

INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060101' ,'���Ļ�' 
,'��' ,'1997-05-01','�����ϵ','�����ҵ��');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060102' ,'��ϸ��' 
,'Ů' ,'1997-03-24','�����ϵ','���ã�����');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('060103' ,'�⳯��' 
,'��' ,'1998-07-01','�����ϵ',NULL);
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070101' ,'������' 
,'��' ,'1998-05-04','����ϵ','���ã�����');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070102' ,'������' 
,'Ů' ,'1997-04-03','����ϵ','���ã�����');
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070103' ,'������' 
,'Ů' ,'1996-03-03','����ϵ',NULL);
INSERT INTO Student (Sno,Sname,Ssex,Sbirthday,Sdept,Memo) VALUES ('070301' ,'����' 
,'Ů' ,'1998-09-17','��Ϣ����ϵ',NULL);
GO





INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C01' ,'�ߵ���ѧ',null,4,1)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C02' ,'�������',null,4,2)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C03' ,'���ݽṹ','C02',3,3)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C04' ,'���ݿ�ԭ��','C03',3,4)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C05' ,'��������',NULL,1,4)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C06' ,'��ѧ����','C01',4,2)
INSERT INTO Course (CNO,CNAME,PreCno,Credit,Semester)VALUES ('C07' ,'���������','C02',2,4)
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
--VALUES (804,'���','��','1958-12-02','������','�����ϵ');
--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
--VALUES (856,'����','��','1969-03-12','��ʦ','���ӹ���ϵ');
--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART)
--VALUES (825,'��Ƽ','Ů','1972-05-05','����','�����ϵ');
--INSERT INTO TEACHER(TNO,TNAME,TSEX,TBIRTHDAY,PROF,DEPART) 
--VALUES (831,'����','Ů','1977-08-14','����','���ӹ���ϵ');

