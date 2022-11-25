USE 学生
GO

--例.13含表达式的列:查询全体学生中年龄大于25岁的学生名单
--select * from Student where (YEAR(getdate())-YEAR(sbirthday))>25

--例.15查询计算机系全体女学生的姓名,性别和系别。
--select sname,ssex,sdept from student where sdept='计算机系' and ssex='女'

--例.16 查询考试成绩大于70小于90分的学生的学号、课程号和成绩。
--select sno,cno,grade from sc where grade between 70 and 90

--例.18―查询学分不在2~3之间的课程的课程名称、学分和开课学期。
--select cname,credit,semester from course where credit not between 2 and 3

--例.20查询“信息管理系”和“机电系”学生的学号、姓名和所在系。
--select sno,sname,sdept from student where sdept in('信息管理系','机电系')

--例.22 查询姓“王”的学生的学号、姓名和所在系。
--select sno,sname,sdept from student where sname like '王%'

--例.25 查询还没有考试的学生的学号、相应的课程号和成绩。
--select sno,cno,grade from sc where grade is null

----例.29 查询有考试挂科的学生的学号。
--select sno from sc where grade<60

--例.29 查询有考试挂科的学生的学号(去掉重复）
--select distinct sno from sc where grade<60

--例.30将“CO1”号课程的成绩按升序排列。
--select * from sc where cno='c01' order by grade asc

--例.32统计学生总人数。
--select count(*) 学生总人数 from student

--例.35 统计课程“CO2”的最高分数和平均分数。
--select max(grade) 最高分,min(grade) 最低分 from sc where cno='c02'

--例.36 统计每门课程的选课人数，列出课程号和选课人数。
--select cno 课程号,count(sno) 选课人数 from sc  group by cno

--例.37统计每个学生的选课门数，列出学号、选课门数和平均成绩。
--select sno 学号,count(cno) 选课门数,avg(grade) 平均成绩 from sc group by sno

--例.38 统计每个系的男生人数和女生人数，结果按系名的升序排序。
--select sdept 系别,ssex 性别,count(sno) 人数 from student group by sdept,ssex order by sdept asc

--例.39统计每个系的女生人数。
--select sdept 系别,count(sno) 女生人数 from student group by sdept

--例.40查询选课门数超过3门的学生的学号和选课门数。
--select sno 学号,count(cno) 选课门数 from sc group by sno having count(cno)>3

--例.41︰查询“计算机系”和“机电系”每个系的学生人数
--select sdept 系别,count(sno) 人数 from Student group by sdept having sdept in('计算机系','机电系')
--select sdept 系别,count(sno) 人数 from Student where sdept in('计算机系','机电系') group by sdept

--例.43查询优秀毕业生及其选课的详细情况，要求显示姓名，学号，系别，课程号，成绩
--select sname,s.sno,sdept,cno,grade from student s inner join sc on s.Sno=sc.Sno where Memo like '优秀毕业生'
--select sname,s.sno,sdept,cno,grade from student s inner join sc on s.Sno=sc.Sno where cast(s.Memo as varchar(max))='优秀毕业生'

--例44查询“计算机系”选修了“数据结构”课程的学生成绩单，成绩单包含姓名、课程名称、成绩信息。
--select sname,cname,grade from student s inner join sc on s.Sno=sc.Sno join course c on sc.Cno=c.Cno where sdept='计算机系' and cname='数据结构'

--例.45查询选修了“数据结构”课程的学生姓名和所在系。
--select sname,sdept from student s inner join sc on s.Sno=sc.Sno join course c on sc.Cno=c.Cno where cname='数据结构'

--例.46 统计每个系的学生的平均成绩。
--select sdept 系别,avg(grade) 平均成绩 from student s inner join sc on s.Sno=sc.Sno group by sdept


--例.47 统计“计算机系”学生中每门课程的选课人数、平均分、最高分和最低分。
--select sc.cno,count(s.sno) 选课人数,avg(grade) 平均成绩,max(grade) 最高分,min(grade) 最低分 from student s inner join sc on s.Sno=sc.Sno join course c on sc.Cno=c.Cno where sdept='计算机系' group by sc.cno

--例48查询课程“数据库原理”的先修课程名。


--例.49查询与“钟文辉”在同一个系学习的学生的姓名和所在系。

--例.50查询计算机系全体学生的选课情况（学号、姓名、所在系、课程编号)，要求包括没有选课学生的信息。


--例.51查询没有人选的课程的课程名。
--分析:如果某门课程没有人选，则必定是在Course表中有，但在SC表中没出现的课程，即--行外连接时，没有人选的课程对应在SC表中相应的Sno、Cno或Grade 列上必足是空值因--此我们在查询时只要在连接后的结果中选出SC表中Sno为空或者Cno为空的记录即可。



--例.52统计“计算机系”每个学生的选课门数，应包含没有选课的学生。


----例.53统计“机电系”选课门数少于门的学生的学亏和选课门数，包括没选课的学生。查询结果按选课门数降序排序。

