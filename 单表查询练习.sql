USE 学生
GO

--例4.13含表达式的列:查询全体学生的姓名及年龄。
--select sname 姓名,YEAR(getdate())-YEAR(sbirthday) 年龄 from Student


--例4.14查询全体学生的姓名、年龄、字符串“今年是”以及今年的年份。
--select sname 姓名,YEAR(getdate())-YEAR(sbirthday) 年龄,'今年是' 今年是,year(GETDATE()) 年份 from Student

--例4.15查询计算机系全体学生的姓名。
--select sname from Student where Sdept='计算机系'

--例4.16 查询考试成绩大于90的学生的学号、课程号和成绩。
--select sno,cno,grade from SC where Grade>90

--例4.17查询学分在2~3之间的课程的课程名称、学分和开课学期。
--select cname,credit,semester from Course where Semester between 2 and 3
--此句等价于:
--select cname,credit,semester from Course where Semester>=2 and Semester<=3

--例4.18―查询学分不在2~3之间的课程的课程名称、学分和开课学期。
--select cname,credit,semester from Course where Semester not between 2 and 3
--此句等价于:
--select cname,credit,semester from Course where Semester<2 or Semester>3

--例4.19查询出生在1997年学生的全部信息。
--select * from Student where Sbirthday between '1997-01-01' and '1997-12-31'

--例4.20查询“计算机系”和“机电系”学生的学号、姓名和所在系。
--select sno,sname,sdept from Student where Sdept in('计算机系','机电系')

--例4.21 查询不在“计算机系”和“机电系”学生的学号、姓名和所在系。
--select sno,sname,sdept from Student where Sdept not in('计算机系','机电系')

--例4.22 查询姓“李”的学生的学号、姓名和所在系。
--select sno,sname,sdept from Student where Sname like '李%'

--例4.23查询姓名中第二个字是“冲”的学生的学号、姓名和所在系。
--select sno,sname,sdept from Student where Sname like '_冲%'

--例4.24 查询学号的最后一位不是“2”或“3”的学生的学号、姓名和所在系
--select sno,sname,sdept from Student where Sno not like '%[2,3]'


--例4.25 查询还没有考试的学生的学号、相应的课程号和成绩。
--select cno,sno,grade from SC where Grade is null

--例4.26查询有备注的学生的学号、姓名和备注
--select sno,sname,memo from Student where Memo is not null

--例4.27查询“机电系”有备注的学生的学号、姓名、所在系和备注。
--select sno,sname,sdept,memo from Student where Sdept='机电系' and memo is not null


--例4.28查询“机电系”和“计算机系”1997年出生的学生的学号、姓名、所在系和出生日期。
--select sno,sname,sdept,sbirthday from Student where (Sdept in ('机电系','计算机系')) and Sbirthday between '1997-01-01' and '1997-12-31' 

--例4.29 查询有考试挂科的学生的学号。
--select sno from SC where Grade<60

--例4.30将“CO1”号课程的成绩按升序排列。
--select cno,grade from SC where Cno='c01' order by Grade

--例4.31将“060101”号学生的成绩按降序排列。
--select cno,grade from SC where sno='060101' order by Grade desc

--例4.32统计学生总人数。
--select COUNT(*) 学生总人数 from Student

--例4.33统计学生“060101”的总成绩。
--select SUM(grade) 总成绩 from SC where Sno='060101'

--例4.34统计学生“060101”的平均成绩。
--select avg(grade) 平均成绩 from SC where Sno='060101'

--例4.35 统计课程“CO1”的最高分数和最低分数。
--select MAX(grade) 最高分,MIN(grade) 最低分 from SC where Cno='c01'

--例4.36 统计每门课程的选课人数，列出课程号和选课人数。
--select cno 课程号,COUNT(sno) 选课人数 from SC group by Cno

--例4.37统计每个学生的选课门数，列出学号、选课门数和平均成绩。
--select sno 学号,COUNT(cno) 选课门数,AVG(grade) 平均成绩 from SC group by sno

--例4.38 统计每个系的男生人数和女生人数，结果按系名的升序排序。
--select sdept 系,ssex 性别,COUNT(*) 人数 from Student group by Sdept,Ssex order by Sdept
--select sdept 系,ssex 性别,COUNT(sno) 人数 from Student group by Sdept,Ssex order by Sdept

--例4.39统计每个系的男生人数。
--select sdept 系别,COUNT(*) 男生人数 from Student where Ssex='男' group by sdept

--例4.40查询选课门数超过3门的学生的学号和选课门数。
--select sno 学号,COUNT(cno) 选课门数 from SC group by sno having COUNT(*)>3

--例4.41︰查询“计算机系”和“机电系”每个系的学生人数，可以有如下两种写法。
--第一种:
--select sdept 系别,COUNT(sno) 学生人数 from Student where Sdept in ('计算机系','机电系') group by Sdept

--第二种:
--select sdept 系别,COUNT(sno) 学生人数 from Student group by Sdept having Sdept in('计算机系','机电系')