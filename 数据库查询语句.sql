--查询作业：

use 学生
go
--查计算机系的男生所有记录
--select * from Student where ssex='男' and Sdept='计算机系'

--查询所有学生的姓名及年龄
--select sname,YEAR(getdate())-YEAR(sbirthday) from student

--查询所有学生的姓名及年龄,并标记年龄列名age
--select sname,YEAR(getdate())-YEAR(sbirthday) as age from student 

--查询前三条记录
--select top 3 * from Student

--查询计算机系的女生记录
--select * from student where ssex='女' and Sdept='计算机系'

--查询课程表中前续课程为无的记录
--select * from Course where PreCno is null

--查询成绩表中成绩大于80分的记录
--select * from SC where grade>80

--查询成绩表中成绩大于80分的记录
--select * from SC where grade between 80 and 100

--查询成绩表中成绩大于80分的记录并按降序排序
--select * from SC where grade>80 order by grade desc

--查询全体学生的姓名,年龄，字符串”今年是“以及今年的年份。
--select sname 姓名, year(getdate())-year(sbirthday) 年龄,'今年是' 今年是,YEAR(getdate()) 年份 from student

--查询计算机系全体学生的姓名
--select sname from Student where Sdept='计算机系'

--查询考试成绩大于90的学生学号，课程号，成绩
--select sno,cno,grade from SC where Grade>90

--查询学分在2-3之间的课程的课程名称，学分，开课时间
--select cname,credit,semester from course where Credit between 2 and 3
--或:
--select cname,credit,semester from course where Credit>=2 and Credit<=3

----查询学分在2-3之间的课程的课程名称，学分，开课时间
--select cname,credit,semester from course where Credit not between 2 and 3
--或:
--select cname,credit,semester from course where Credit<2 or Credit>3

--查询出生在1997年学生的全部信息
--select * from Student where Sbirthday between '1997-01-01' and '1997-12-31'

--查询“计算机系”和“机电系”学生的学号，姓名和所在地
--select sno,sname,Sdept from Student where Sdept in ('计算机系','机电系')

--查询“计算机系”和“机电系”学生的学号，姓名和所在地
--select sno,sname,Sdept from Student where Sdept not in ('计算机系','机电系')

--查询姓“李”的学生的学号，姓名，所在系
--select sno,sname,Sdept from Student where Sname like '李%'

--查询姓名中第二个字是“冲”的学生的学号，姓名，所在系
--select sno,sname,Sdept from Student where Sname like '_冲%'

--查询学号的最后一位不是“2”或“3”的学生的学号，姓名，所在系
--select sno,sname,Sdept from Student where Sno not like '%[2,3]'

--查询还没有考试的学生的学号，相应的课程号
--select sno,cno from SC where grade is null

--查询有备注的学生的学号,姓名和备注
--select sno,sname,memo from student where memo is not null

--查询“机电系”有备注的学生的学号、姓名、所在系和备注
--select sno,sname,Sdept,memo from student where Sdept='机电系' and memo is not null

--查询“机电系”和“计算机系”1997年出生的学生的学号，姓名，所在系和出生日期
--select sno,sname,Sdept,sbirthday from student where (Sdept='机电系' or Sdept='计算机系') and sbirthday between '1997-01-01' and '1997-12-31'

--查询有考试挂科的学生的学号（distinct消除取值相同的行）
--select distinct sno from SC where grade<60

--将‘c01’号课程的成绩按升序排序。
--select cno,grade from sc  where cno='c01' order by grade asc

--将“060101”号学生的成绩按降序排序
--select cno,grade from sc where sno='060101' order by grade desc

--统计学生总人数
--select count(*) 学生总人数 from student

--统计学生“060101”的总成绩
--select sum(grade) 总成绩 from sc where sno='060101'

--统计学生“060101”的平均成绩
--select avg(grade) 平均成绩 from sc where sno='060101'

--统计课程“c01”的最高分数和最低分数
--select max(grade) 最高分数,min(grade) 最低分数 from sc where cno='c01'

--统计每门课程的选课人数，列出课程号和选课人数
--select cno 课程号,count(cno) 选课人数 from sc group by cno

--统计每个学生的选课门数，列出学号、选课门数和平均成绩
--select sno 学号,count(sno) 选课门数,avg(grade) 平均成绩 from sc group by sno

--统计每个系的男生人数和女生人数，结果按系名的升序排列
--select sdept 系,ssex 性别,count(*) from student group by sdept,ssex order by sdept

--统计每个系的男生个数
--select sdept 系,count(*) 男生个数 from student where ssex='男' group by sdept

--查询选课门数超过3门的学生的学号和选课门数
--select sno 学号,count(cno) 选课门数 from sc group by sno having count(*)>3

--查询“计算机系”和“机电系”每个系的学生人数
--select sdept 系,count(*) 学生人数 from student where sdept in('计算机系','机电系') group by sdept
--select sdept 系,count(*) 学生人数 from student group by sdept having sdept in('计算机系','机电系')