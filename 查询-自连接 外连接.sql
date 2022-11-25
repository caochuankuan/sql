use 学生
go


--4.48查询课程“数据库原理”的先修课程名
--select * from course
--select * from course c1 join course c2 on c1.PreCno=c2.Cno
--select c1.cname 课程名,c2.cname 先修课程名 from course c1 join course c2 on c1.PreCno=c2.Cno where c1.cname='数据库原理'

--4.49查询与“钟文辉”在同一个系学习的学生的姓名和所在系
--select * from student
--select * from student s1 join student s2 on s1.Sdept=s2.Sdept where s1.Sname='钟文辉' and s2.Sname!='钟文辉'
--select s2.Sname,s1.Sdept from student s1 join student s2 on s1.Sdept=s2.Sdept where s1.Sname='钟文辉' and s2.Sname!='钟文辉'

---------------------------上面自连接------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
---------------------------下面外连接---------------------------------------------------------------------------------------------

--4.50查询计算机系全体学生的选课情况（学号、姓名、所在系、课程编号），要求包括没有选课学生的信息
--select s.Sno,sname,sdept,cno from student s left join sc on s.Sno=sc.Sno where s.Sdept='计算机系'

--4.51查询没有人选的课程的课程名
--select cname from course c left join sc on c.Cno=sc.Cno where sc.Sno is null

--4.52统计“计算机系”每个学生的选课门数，应包含没有选课的学生
--select * from student s left join sc on s.Sno=sc.Sno
--select * from student s left join sc on s.Sno=sc.Sno where sdept='计算机系'
--select s.Sno 学号,count(sc.Cno) 选课门数 from student s left join sc on s.Sno=sc.Sno where sdept='计算机系' group by s.Sno

--4.53统计“机电系”选课门数少于3门的学生的学号和选课门数，包含没选课的学生。查询结果按选课门数降序排序。
select s.Sno 学号,count(sc.Cno) 选课门数 from student s left join sc on s.Sno=sc.Sno where sdept='机电系' group by s.Sno having count(sc.cno)<3 order by count(sc.cno) desc