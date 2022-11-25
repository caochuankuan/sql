use 教务系统
go

----（1）--
--select sname,ssex,class from student

----（2）--
--select distinct depart from teacher

----(3)--
--select * from student

----(4)--
--select * from score where degree between 60 and 80

----(5)--
--select * from score where degree in(85,86,88)

----(6)--
--select * from student where class='95031' or ssex='女'

----(7)--
--select * from student order by class desc

----(8)--
--select * from score order by cno asc,degree desc

----（9）--
--select count(*) 学生人数 from student where class='95031'

----(10)--
----子查询--
--select sno 学生学号,cno 课程号  from score where degree=(select max(degree) from score)
----排序--
----select sno 学生学号,cno 课程号  from score order by degree desc limit 0,1

----(11)--
--select cno 课程号,avg(degree) 平均成绩 from score group by cno

----(12)--
--select cno 课程号,avg(degree) 平均成绩 from score where cno like '3%' group by cno having count(*)>5

----(13)--
--select sno from score where degree between 70 and 90

----(14)--
--select sname,cno,degree from student inner join score on score.cno=score.cno

--(15)--
--select s.sno,cname,degree from student s inner join score sc on s.sno=sc.sno join course c on sc.cno=c.cno