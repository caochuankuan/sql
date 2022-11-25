use 学生
go

--4.54查询“c04”号课程成绩的前三名的学号和成绩
--select top 3 sno 学号,grade 成绩 from sc where cno='c04' order by grade desc

--4.55查询学分最多的4门课程的课程名称、学分、开课学期
--select top 4 cname 课程名称,credit 学分,semester 开课学期 from course order by credit desc
	--区别(如果在top子句中使用了with ties,必须使用order by子句排序)
	--select top 4 with ties cname 课程名称,credit 学分,semester 开课学期 from course order by credit desc

--4.56查询选课人数最多的两门课程，列出课程号和选课人数
--select top 2 cno,count(cno) from sc group by cno order by count(cno) desc