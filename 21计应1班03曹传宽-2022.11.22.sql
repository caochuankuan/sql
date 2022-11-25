use 教务系统
go

----（1）查询student表中的所有记录的sname,ssex,class列
--select sname,ssex,class from student

----（2）查询教师所在的单位即不重复的depart列
--select distinct depart from teacher

----(3)查询student表的所有记录
--select * from student

----(4)查询score表中成绩在60到80之间的所有记录
--select * from score where degree between 60 and 80

----(5)查询score表中成绩在85，86或者88的记录
--select * from score where degree in(85,86,88)

----(6)查询student表中“95031”班或性别为“女”的同学的记录
--select * from student where class='95031' or ssex='女'

----(7)以class降序查询student表中的所有记录
--select * from student order by class desc

----(8)以cno升序、degree降序查询score表的所有记录
--select * from score order by cno asc,degree desc

----（9）查询“95031”班的学生人数
--select count(*) 学生人数 from student where class='95031'

----(10)查询score表中的最高分的学生学号和课程号
----子查询--
--select sno 学生学号,cno 课程号  from score where degree=(select max(degree) from score)
----排序--
----select sno 学生学号,cno 课程号  from score order by degree desc limit 0,1

----(11）查询每门课的平均成绩
--select cno 课程号,avg(degree) 平均成绩 from score group by cno

----(12)查询score表中只有有5名学生选修的并以3开头的课程的平均分数
--select cno 课程号,avg(degree) 平均成绩 from score where cno like '3%' group by cno having count(*)>5

----(13)查询分数大于70，小于90的sno列
--select sno from score where degree between 70 and 90

----(14)查询所有学生的sname,cno,degree列
--select sname,cno,degree from student inner join score on score.cno=score.cno

----(15)查询所有学生的sno,cname,degree列
--select s.sno,cname,degree from student s inner join score sc on s.sno=sc.sno join course c on sc.cno=c.cno

----（16）查询所有学生的sname,cname,degree列
----select sname,cname,degree from student s inner join score sc on s.sno=sc.sno join course c on sc.cno=c.cno
--（17)查询“95033”班学生的平均分
--select class,avg(degree) from student s inner join score sc on s.sno=sc.sno where class='95033' group by class

----（18）现查询所有同学的sno,cno,degree,rank列
--select S.sno,cno,degree,
--case
--when degree>=90 then 'A'
--when degree>=80 and degree<90 then 'B'
--when degree>=70 and degree<80 then 'C'
--when degree>=60 and degree<70 then 'D'
--when degree<60 then 'E'
--END 等级
-- from student s inner join score sc on s.sno=sc.sno

----（19）查询选修“3-105”课程的成绩高于“109”号同学成绩的所有同学的记录
--select degree from score where sno='109'
--select * from score  where cno='3-105'
--select * from score sc where cno='3-105' and degree> (select degree from score where sno='109')

----(20)查询score中选学多门课程的同学中分数为非最高分成绩的记录
--select * from score
--select sno 学号,count(cno) 选课门数 from score group by sno
--select sno 学号,count(cno) 选课门数 from score where degree!=(select max(degree) from score) group by sno