USE 学生
GO

----例4.13含表达式的列:查询全体学生的姓名及年龄。

--SELECT Sname,YEAR(GETDATE())-YEAR(Sbirthday) 年龄 FROM student

----例4.14查询全体学生的姓名、年龄、字符串“今年是”以及今年的年份。

--SELECT Sname 姓名,YEAR(GETDATE())-YEAR(Sbirthday) 年龄,'今年是' 今年是,  YEAR (GETDATE( ))年份 FROM Student

------例4.15查询计算机系全体学生的姓名。

--SELECT Sname FROM Student where Sdept ='计算机系'

--例4.16 查询考试成绩大于90的学生的学号、课程号和成绩。

----SELECT Sno,Cno,Grade FROM SC  WHERE Grade > 90

----例4.17查询学分在2~3之间的课程的课程名称、学分和开课学期。
--SELECT Cname,Credit,Semester FROM Course WHERE Credit BETWEEN 2 AND 3

----此句等价于:
--SELECT Cname,Credit ,Semester FROM Course WHERE Credit >= 2 AND Credit<=3

----例4.18―查询学分不在2~3之间的课程的课程名称、学分和开课学期。
--SELECT Cname,Credit,Semester FROM Course WHERE Credit NOT BETWEEN 2 AND 3
----此句等价于:
--SELECT Cname,Credit,Semester FROM Course WHERE Credit<2 OR Credit>3


----例4.19查询出生在1997年学生的全部信息。
--SELECT * FROM Student WHERE Sbirthday BETWEEN '1997-01-01' AND '1997-12-31'

----例4.20查询“计算机系”和“机电系”学生的学号、姓名和所在系。

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sdept  IN('计算机系','机电系')

----例4.21 查询不在“计算机系”和“机电系”学生的学号、姓名和所在系。

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sdept NOT IN('计算机系','机电系')

----例4.22 查询姓“李”的学生的学号、姓名和所在系。

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sname LIKE'李%'

--例4.23查询姓名中第二个字是“冲”的学生的学号、姓名和所在系。

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sname LIKE '_冲%'

--例4.24 查询学号的最后一位不是“2”或“3”的学生的学号、姓名和所在系

--SELECT Sno,Sname,Sdept  FROM Student WHERE   Sno NOT LIKE'%[2,3]'


--例4.25 查询还没有考试的学生的学号、相应的课程号和成绩。
--SELECT Sno,Cno FROM SC WHERE Grade IS NULL

--例4.26查询有备注的学生的学号、姓名和备注

--SELECT Sno,Sname,Sdept  FROM Student WHERE Memo IS NOT NULL

--例4.27查询“机电系”有备注的学生的学号、姓名、所在系和备注。

--SELECT Sno,Sname,Sdept,Memo FROM Student WHERE Memo IS NOT NULL AND Sdept ='机电系'



--例4.28查询“机电系”和“计算机系”1997年出生的学生的学号、姓名、所在系和出生日期。
--SELECT Sno,Sname,Sdept,Sbirthday FROM Student WHERE (Sdept ='计算机系' or Sdept ='机电系')AND Sbirthday BETWEEN '1997-01-01' AND '1997-12-31'

--例4.29 查询有考试挂科的学生的学号。
--SELECT DISTINCT Sno FROM SC  WHERE Grade < 60

--例4.30将“CO1”号课程的成绩按升序排列。

--SELECT Cno,Grade FROM SC WHERE Cno='c01' ORDER BY  Grade


--例4.31将“060101”号学生的成绩按降序排列。
--SELECT Cno,grade FROM SC  WHERE Sno='060101' ORDER BY Grade  DESC


--例4.32统计学生总人数。
--SELECT COUNT(*)学生总人数 FROM Student

--例4.33统计学生“060101”的总成绩。

--SELECT SUM ( Grade)总成绩 FROM SC  WHERE Sno ='060101'
--例4.34统计学生“060101”的平均成绩。
--SELECT AVG ( Grade)平均成绩 FROM SC WHERE Sno='060101'


--例4.35 统计课程“CO1”的最高分数和最低分数。
--SELECT MAX(Grade) 最高,MIN ( Grade) 最低分 FROM SC WHERE Cno='C01'
--例4.36 统计每门课程的选课人数，列出课程号和选课人数。
--SELECT Cno 课程号,COUNT (Sno)选课人数 FROM SC GROUP BY Cno 

--例4.37统计每个学生的选课门数，列出学号、选课门数和平均成绩。

--SELECT Sno 学号,COUNT( Cno)选课门数,AVG( Grade)平均成绩 FROM SC GROUP BY Sno

--例4.38 统计每个系的男生人数和女生人数，结果按系名的升序排序。
--SELECT Sdept,Ssex,Count(*) 人数 FROM Student GROUP BY Sdept,Ssex Order by Sdept
--例4.39统计每个系的男生人数。
--SELECT Sdept,Count(*) 男生人数 FROM Student WHERE Ssex='男' GROUP BY Sdept
--例4.40查询选课门数超过3门的学生的学号和选课门数。

--SELECT Sno,COUNT(*) 选课门数 FROM SC GROUP BY Sno HAVING COUNT(*) >3

--例4.41︰查询“计算机系”和“机电系”每个系的学生人数，可以有如下两种写法。第一种:

--SELECT Sdept,COUNT(*) FROM Student GROUP BY Sdept HAVING Sdept in ( '计算机系','机电系')

--第二种:
--SELECT Sdept ,COUNT ( * )FROM Student WHERE Sdept in ( '计算机系','机电系')GROUP BY Sdept

--例4.42查询每个学生及其选课的详细。

--SELECT * FROM Student INNER JOIN SC ON Student.Sno=SC. Sno

--例4.43查询每个学生及其选课的详细，要求去掉重复的列。

--SELECT S.Sno,Sname,Ssex,Sbirthday,Sdept ,Memo,Cno,Grade FROM Student S INNER JOIN SC  ON S.Sno=SC .Sno

--例444查询“计算机系”选修了“数据库原理”课程的学生成绩单，成绩单包含姓名、课程名称、成绩信息。
--说明:在此例中涉及的数据来自三个表，三个表的连接，可先用两个表连接，再和第三个表连接的方式进行处理。

--SELECT Sname,Cname,Grade  FROM Student S INNER JOIN SC ON S.Sno =SC.SNO  JOIN Course C ON SC.Cno=C.Cno WHERE Sdept='计算机系' AND Cname='数据库原理'

--例4.45查询选修了“数据库原理”课程的学生姓名和所在系。
--说明:在此例中涉及的数据来自Course表和 Student表，但因这两个表本身没有关联，在连接操作时需要利于SC表关联。

--SELECT Sname,Sdept FROM Student S INNER JOIN SC ON S.Sno=SC. Sno JOIN Course C ON SC.Cno=C.Cno WHERE Cname='数据库原理'

--例4.46 统计每个系的学生的平均成绩。

--说明:在此例中涉及的数据来自SC表和Student表，而且是做分组统计，我们可认为，当把SC表和Student表连接起来后，它就成了一个新表，接下来的分组统计就和基于单表的分组统计处理方式类似。

--SELECT Sdept ,AVG (Grade) 系平均成绩 FROM Student S INNER JOIN SC oN S.Sno=SC.Sno JOIN Course C ON SC.Cno=C.Cno GROUP BY Sdept
--SELECT Sdept ,AVG (Grade) 系平均成绩 FROM Student S INNER JOIN SC oN S.Sno=SC.Sno  GROUP BY Sdept

--例4.47 统计“计算机系”学生中每门课程的选课人数、平均分、最高分和最低分。

SELECT sc.Cno ,COUNT(*) 选课人数,AVG (grade) 平均分,MAX (Grade)最高分,MIN(Grade)最低分  ,Course .Cname 课程名 FROM Student s JOIN sC ON S.Sno = SC.Sno JOIN Course ON SC.Cno =Course .Cno  WHERE Sdept = '计算机系' GROUP BY Cno


--例448查询课程“数据库原理”的先修课程名。

--SELECT C1.Cname 课程名,C2.Cname 先修课程名 FROM Course C1 JOIN Course C2 ON C1.PreCno= C2.Cno WHERE C1.Cname='数据库原理'

--例4.49查询与“钟文辉”在同一个系学习的学生的姓名和所在系。

--SELECT S2.Sname,S1.Sdept  FROM Student S1 JOIN Student S2 ON S1.Sdept  = S2.Sdept  WHERE S1.Sname='钟文辉' AND S2.Sname! ='钟文辉'

--例4.50查询计算机系全体学生的选课情况（学号、姓名、所在系、课程编号)，要求包括没有选课学生的信息。

--SELECT S.Sno,Sname,Sdept,SC.Cno FROM Student S LEFT JOIN SC ON S.Sno=SC.Sno WHERE Sdept='计算机系' 

--例4.51查询没有人选的课程的课程名。
--分析:如果某门课程没有人选，则必定是在Course表中有，但在SC表中没出现的课程，即在进行外连接时，没有人选的课程对应在SC表中相应的 Sno、Cno或Grade 列上必足是空值，
--因此我们在查询时只要在连接后的结果中选出 SC表中Sno为空或者Cno为空的记录即可。

--SELECT Cname ,Sno FROM Course C LEFT JOIN SC ON C.Cno = SC.Cno WHERE SC.Cno IS NULL

--例4.52统计“计算机系”每个学生的选课门数，应包含没有选课的学生。

--SELECT S.Sno 学号,COUNT (SC.Cno) 选课门数 FROM Student S LEFT JOIN SC oN S. Sno = sC.Sno WHERE Sdept = '计算机系' GROUP BY S.Sno

---例4.53统计“机电系”选课门数少于3门的学生的学亏和选课门数，包括没选课的学生。查询结果按选课门数降序排序。

--SELECT S. Sno 学号,COUNT( SC.Cno) 选课门数 FROM Student S LEFT JOIN SC ON S.Sno = SC.Sno WHERE Sdept  = '机电系' GROUP BY S. Sno HAVING COUNT ( SC.Cno)< 3 ORDER BY COUNT ( SC.Cno) DESC

--例4.54 查询“C04”号课程成绩的前三名的学号和成绩。

--SELECT TOP 3 Sno,Grade FROM sc WHERE Cno='C04' ORDER BY Grade DESC

--例4.55查询学分最多的四门课程的课程名称、学分和开课学期。

--SELECT TOP 4 Cname,Credit,Semester FROM Course ORDER BY Credit DESC

--例4.56查询选课人数最多的两门课程，列出课程号和选课人数。

--SELECT TOP 2 WITH TIES Cno,COUNT(*)选课人数 FROM sc GROUP BY Cno ORDER BY COUNT (Cno) DESC

--例4.57查询全体学生的信息，并对所在系用代码显示:“计算机系”代码为“CS”，“机电系”代码为“JD”，“信息管理系”代码为“IM

--SELECT Sno 学号,Sname 姓名,Ssex 性别,
--CASE Sdept 
-- WHEN '计算机系' THEN 'CS'
-- WHEN '机电系' THEN 'JD'
-- WHEN'信息管理系' THEN 'IM'
 
-- END 所在系
--  FROM Student

--例4.58 查询“C04”号课程的考试情况列出学号和成绩﹑同时对成绩进行如下处理。
--	如果成绩大于等于90，则在查询结果中显示“优”;
--	如果成绩在80到89分之间，则在查询结果中显示“良”;
--	如果成绩在70到79分之间，则在查询结果中显示“中”;
--	如果成绩在60到69分之间，则在查询结果中显示“及格”;
--	如果成绩小于60分，则在查询结果中显示“不及格”。
--	这个查询需要对成绩进行分情况判断．而且是将成绩与一个范围的数值进行比较，因此，需要使用搜索CASE表达式实现。具体如下:
	
--SELECT Sno,Grade,
--CASE
--WHEN Grade> =90 THEN '优'
--WHEN Grade> =80 AND Grade<90 THEN '良'
--WHEN Grade> =70 AND Grade<80 THEN '中'
--WHEN Grade>=60 AND Grade<70 THEN '及格'
--WHEN Grade<60 THEN  '不及格'
--END 等级
--FROM SC
--WHERE Cno='C04'



--例4.59统计“计算机系”每个学生的选课门数，包括没有选课的学生。列出学号、选课门数和选课情况，其中对选课情况的处理为:
--	如果选课门数超过4门，则选课情况为“多”;
--	如果选课门数在2~4门范围内，则选课情况为“一般”;
--	如果选课门数少于2门、则选课情况为“少”;
--	如果学生没有选课，则选课情况为“未选”。并将查询结果按选课门数降序排序。
--	分析:①由于这个查询需要考虑有选课的学生和没有选课的学生，因此，需要用外连接来实现。②需要对选课门数进行分情况处理，因此需要用CASE表达式。
--	具体代码如下:
	
--SELECT S.Sno 学号,COUNT ( CNO) 选课门数,
--CASE
--	WHEN COUNT ( CNO) >3 THEN '多'
--	WHEN COUNT ( CNO) >=2 AND COUNT (CNO)< = 3 THEN '一般' WHEN COUNT (CNO) = 1 THEN '少'
--	WHEN COUNT ( CNO) = 0 THEN '未选'
--END 选课情况
--FROM Student s LEFT JOIN SC oN S. Sno =SC. Sno WHERE Sdept ='计算机系'
--GROUP BY S. Sno

--例4.60将“计算机系”学生的学号、姓名、性别、年龄，保存到新表Student_CS 中。具体代码如下:

--SELECT Sno,Sname,Ssex,YEAR (GETDATE ( ) ) -YEAR ( Sbirthday) Sage INTO Student_CS FROM Student WHERE Sdept = '计算机系'

--例4.61查询与“钟文辉”在同一个系学习的学生学号、姓名、性别、所在系o
--分析:①可以通过一个子查询，先把钟文辉同学的所有系找出来;②然后把它作为一个已知条件．把这个问题转换成为“所在系”在某个集合中的学生的相关信息。
--问题①的SQL语句为:

--SELECT Sdept FROM Student Where Sname ='钟文辉'
--问题②的SQL语句为:

--SELECT Sno,Sname,Ssex,Sdept FROM Student WHERE Sdept IN ('***')

----综合①和②的SQL语句得到:

--SELECT Sno,Sname,Ssex,Sdept FROM Student WHERE Sdept IN (SELECT Sdept FROM Student Where Sname='钟文辉')

--例4.62查询选了“C04”号课程且成绩高于此课程的平均成绩的学生的学号和该门课程成绩。
--分析:①可以通过一个子查询，先把“CO4”号课程的平均成绩找出来;②然后把它作为一个已知条件，把这个问题转换成为选了“C04”号课程且成绩高于平均成绩的学生的学号和成绩。
--问题①的SQL语句为:

--SELECT AVG (Grade) FROM sC WHERE Cno='C04'

--问题②的SQL语句为:

--SELECT Sno,Grade FROM SC WHERE Cno='C04’ AND Grade> ***

--综合①和②的SQL语句得到:

--SELECT Sno,Grade FROM Sc WHERE Cno='C04' AND Grade >(SELECT AVG (Grade) FROM sC Where Cno='C04')

--例4.63查询比“C03”课程成绩都高的选了“C04”课程的学生的学号和成绩。

--SELECT Sno,Grade FROM SC WHERE Cno='C04' AND Grade> ALL ( SELECT Grade FROM SC Where Cno='C03')

--例4.64查询选了“C04”号课程的学生姓名。分析:这个查询涉及Student 表和SC表，可用多种方式实现，下面给出用EXISTS形式的子查询实现。

--SELECT Sname FROM Student WHERE EXISTS (SELECT * FROM sc Where SC. Sno =Student.Sno AND Cno='C04')

--例4.65查询至少选修了第三学期开设的全部课程的学生姓名。
--分析:在此例中，使用了双重否定，最外层查询的含义是找符合条件的学生、中间层查询的含义是找第三学期开设的课程、里层查询的含义是
--通过外层和中间层传入的学号和课程号，看在SC表中有没有对应的选课记录。
--整个SQL语句的含义可以这样理解;某个学生,不存在第三学期开设的课程中，他没有选课记录，即为选修了第三学期开设的全部课程的学生。

--SELECT Sname FROM Student WHERE NOT EXISTS (
--SELECT * FROM Course
--WHERE Semester= 3 AND NOT EXISTS (SELECT * FROM sC
--WHERE SC.Sno= Student. Sno AND Course.Cno=sC. Cno) )

--例4.65查询至少选修了第三学期开设的全部课程的学生姓名。
--分析:在此例中，使用了双重否定，最外层查询的含义是找符合条件的学生、中间层查询的含义是找第三学期开设的课程、里层查询的含义是通过外层和中间层传入的学号和课程号，
--看在SC表中有没有对应的选课记录。
--整个SQL语句的含义可以这样理解:某个学生，不存在第三学期开设的课程中，他没有选课记录，即为选修了第三学期开设的全部课程的学生。

--SELECT Sname FROM Student
--WHERE NOT EXISTS(
--SELECT * FROM Course
--WHERE Semester= 3 AND NOT EXISTS (SELECT * FROM sC
--WHERE SC. Sno=Student.Sno AND Course.Cno=SC.Cno))

--例4.66查询“计算机系”和“机电系”的所有学生信息。分析:除了以上各节中介绍的方法外，也可通过并运算来完成。

--( SELECT Sno,Sname,Ssex,Sdept
--FROM Student WHERE Sdept='计算机系') UNION
--(SELECT Sno,Sname,Ssex,Sdept FROM Student WHERE Sdept ='机电系')

--例4.67查询同时选修了“CO3”与“C04”课程的学生的学号。分析:除了以上各节中介绍的方法外，也可通过交运算来完成。

--( SELECT Sno FROM sC WHERE Cno='C03')
--INTERSECT
--( SELECT Sno FROM sc WHERE Cno='C04')

--例4.68查询选修了“CO1”但没选“CO2”课程的学生的学号。分析:除了以上各节中介绍的方法外，也可通过差运算来完成。

--(SELECT Sno FROM sC WHERE Cno ='CO1')
--EXCEPT
--(SELECT Sno FROM sC WHERE Cno='C02')

--例4.69创建一个包含“计算机系”学生的成绩单视图，视图中应有学生的学号、姓名、课程号、课程名和成绩信息。
--首先创建名为V_Grade_CS 的视图，SQL语句如下:

--CREATE VIEW V_Grade_Cs
--AS
--SELECT S.Sno,Sname,C. Cno,Cname,Grade FROM Student s, sc,Course C
--WHERE S. Sno =SC. Sno AND SC.Cno=C.Cno AND Sdept='计算机系'

--例4.70修改上个例题创建的祧图，便具包含学生的年龄信息。

--ALTER VIEW  V_Grade_CS
--AS
--SELECT S. Sno,Sname,YEAR ( GETDATE ( ) ) -YEAR ( Sbirthday) Sage,C.Cno,Cname,Grade
--FROM Student s,sc,Course C
--WHERE S. Sno=SC. Sno AND SC.Cno=C.Cno AND Sdept='计算机系'

--例4.71删除上个例题创建的视图V_Grade_CS。
--  DROP VIEW V_Grade_CS
  
--  例4.72向Student表中插入(050101，赵林，男，1999-09-08，计算机系)的记录。
--  INSERT INTO Student VALUES ('050101','赵林','男',1999-09-08,'计算机系',null)
  
--  例4.73用CREATE语句建立表 StudentBAK，包含（与Student 的 Sno、Sname、Sdept相同)3个字段,然后向StudentBAK添加Students表中的计算机系学生的学号、姓名
----所在系的信息。
--①先创建StudentBAK表。
--CREATE TABLE StudentBAK (Sno CHAR (6) PRIMARY KEY,Sname NVARCHAR (20),Sdept NVARCHAR (20))
--2向StudentBAK表批量插入“计算机系”的学生信息。
-- INSERT INTO StudentBAK  SELECT Sno,Sname,Sdept FROM Student WHERE Sdept='计算机系'
--例4.74将例4.60 中创建的Student_CS表中学生的年龄加1。sQL语句为:

--UPDATE Student_CS SET Sage = Sage +1 

--例4.75把“C04”号课程的学分加1。SQL语句为:
--UPDATE Course SET Credit = Credit+1  WHERE Cno='C04'
--(2）基于他表条件的更新。
--例4.76﹐将数据库原理课程的成绩都减5分。用子查询实现。
--SQL语句为:
--UPDATE SC SET Grade = Grade- 5WHERE Cno IN
--( SELECT Cno FROM Course WHERE Cname='数据库原理')

--②用多表连接实现。--SQL语句为:

--UPDATE SC SET Grade = Grade-5 FROM SC JoIN CoursE ON SC. Cno = COURSE.Cno WHERE Cname ='数据库原理'
--1．无条件删除
--例4.77将例4.59中创建的Student_CS表中的数据删除。sQL语句为:
--DELETE FROM  Student_CS
--2有条件删除
--例4.78将StudentBAK表中学号为“050101”的学生信息删除。sQL语句为:

--DELETE FROM StudentBAK WHERE  Sno='050101'

--(2)基于他表条件的删除。
--例4.79―删除数据库原理的选课记录。①用子查询实现。

--sQL语句为:

--DELETE FROM SC WHERE Cno IN
--(SELECT Cno FROM Course WHERE Cname='数据库原理')
 
--②用多表连接实现。
--SQL语句为:
--DELETE FROM SC
--FROM SC JOIN Course ON SC.Cno =Course.Cno WHERE Cname ='数据库原理'

--例4.80给用户Mary和 John授予创建数据库和创建表的权限。

--GRANT CREATE DATABASE,CREATE TABLE
--TO Mary,John
