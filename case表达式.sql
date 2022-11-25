use 学生
go

--4.57查询全体学生的信息，并对所在系用代码显示：“计算机系”代码为“CS”，“机电系”代码为“JD”，“信息管理系”代码为“IM”。
			--（1）简单case函数（简单表达式）--
--select sno 学号,sname 姓名,ssex 性别,
--case
--sdept when '计算机系' then 'CS' when '机电系' then 'JD' when '信息管理系' then 'IM'
--END 所在系
--from Student
			--（2）搜索case函数（布尔表达式）--
--select sno 学号,sname 姓名,ssex 性别,
--case
--when sdept= '计算机系' then 'CS' when sdept='机电系' then 'JD' when sdept= '信息管理系' then 'IM'
--END 所在系
--from Student

--5.58查询“C04”号课程的考试情况，列出学号和成绩，同时对成绩进行如下处理：
--如果成绩大于等于90，则在查询结果中显示“优”；
--如果成绩在80到89分之间，则在查询结果中显示“良”；
--如果成绩在70到79分之间，则在查询结果中显示“中”；
--如果成绩在60到69分之间，则在查询结果中显示“及格”；
--如果成绩小于60分，则在查询结果中显示“不及格”。