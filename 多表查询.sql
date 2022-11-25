--例4.42查询每个学生及其选课的详细。
--select * from Student inner join SC on student.Sno=sc.Sno

--例4.43查询每个学生及其选课的详细，要求去掉重复的列。
--select s.sno,Sname,Ssex,Sbirthday,Sdept,Memo,Cno,grade from Student s inner join SC on s.Sno=sc.Sno

--例444查询“计算机系”选修了“数据库原理”课程的学生成绩单，成绩单包含姓名、课程名称、成绩信息。
--说明:在此例中涉及的数据来自三个表，三个表的连接，可先用两个表连接，再和第三个表连接的方式进行处理。
--select Sname,Cname,grade from Student s inner join SC on s.Sno=sc.Sno join Course c on sc.Cno=c.Cno where Sdept='计算机系' and Cname='数据库原理'

--查询机电系学生的选课情况，包括课程名称，前续课程，成绩，学生姓名，系别，学号
--select Cname,PreCno,Grade,Sname,Sdept,s.Sno from Student s inner join SC on s.Sno=sc.Sno join Course c on sc.Cno=c.Cno where Sdept='计算机系'

--例4.45查询选修了“数据库原理”课程的学生姓名和所在系。
--说明:在此例中涉及的数据来自Course表和 Student表，但因这两个表本身没有关联，在连接操作时需要利于SC表关联。
--select Sname,sdept from Student s inner join SC on s.Sno=sc.Sno join Course c on sc.Cno=c.Cno where Cname='数据库原理'


--例4.46 统计每个系的学生的平均成绩。
--说明:在此例中涉及的数据来自SC表和Student表，而且是做分组统计，我们可认为，当把SC表和Student表连接起来后，它就成了一个新表，接下来的分组统计就和基于单表的分组统计处理方式类似。
--select sdept 系,AVG(grade) 平均成绩 from Student s inner join SC on s.Sno=sc.Sno group by Sdept

--例4.47 统计“计算机系”学生中每门课程的选课人数、平均分、最高分和最低分。
--select cno 课程,COUNT(*) 选课人数,AVG(grade) 平均分数,MAX(grade) 最高分,MIN(grade) 最低分 from Student s inner join SC on s.Sno=sc.Sno where Sdept='计算机系' group by cno
