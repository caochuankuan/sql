--�α�113ҳ����
--create database ��ҵ1101
--go

--use ��ҵ1101
--go
--create table student
--(sno char(3) not null primary key,
--sname char(8) not null,
--ssex char(2) not null,
--sbirthday datetime null,
--class char(5) null
--)

--create table teacher
--(tno char(3) not null constraint pk_t primary key,
--tname char(4) not null,
--tsex char(2) not null,
--tbirthday datetime null,
--prof char(6) null,
--depart varchar(10) not null)

--create table course
--(cno char(5) not null constraint pk1 primary key,
--cname varchar(10) not null,
--tno char(3) not null constraint fk1 foreign key references teacher(tno) 
--)

--create  table score
--(sno char(3) not null,
--cno char(5) not null,
--degree decimal(4,1) null,
--constraint pk_c primary key(sno,cno),
--constraint fk_c1 foreign key(sno) references student(sno),
--constraint fk_c2 foreign key(cno) references course(cno)
--)


----------------------------------------------------------------------------------------------------
-------------------------------�����ǽ��������ǲ�ѯ-----------------------------------------------
----------------------------------------------------------------------------------------------------
use ��ҵ1101
go

--��1��--
select sname,ssex,class from student

--��2��--
select distinct depart from teacher

--(3)--
select * from student

--(4)--
select * from score where degree between 60 and 80

--(5)--
select * from score where degree in(85,86,88)

--(6)--
select * from student where class='95031' or ssex='Ů'

--(7)--
select * from student order by class desc

--(8)--
select * from score order by cno asc,degree desc

--��9��--
select count(*) ѧ������ from student where class='95031'

--(10)--
--�Ӳ�ѯ--
select sno ѧ��ѧ��,cno �γ̺�  from score where degree=(select max(degree) from score)
--����--
select sno ѧ��ѧ��,cno �γ̺�  from score order by degree desc limit 0,1

--(11)--
select cno �γ̺�,avg(degree) ƽ���ɼ� from score group by cno

--(12)--
select cno �γ̺�,avg(degree) ƽ���ɼ� from score where cno like '3%' group by cno having count(*)>5

--(13)--
select sno from score where degree between 70 and 90

--(14)--
select sname,cno,degree from student inner join score
on score.cno=score.cno

--(15)--
select sname,cname,degree from student
inner join course on student.sname=course.cname 
join score on course.cno=score.cno