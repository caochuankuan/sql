use ����ϵͳ
go

----��1��--
--select sname,ssex,class from student

----��2��--
--select distinct depart from teacher

----(3)--
--select * from student

----(4)--
--select * from score where degree between 60 and 80

----(5)--
--select * from score where degree in(85,86,88)

----(6)--
--select * from student where class='95031' or ssex='Ů'

----(7)--
--select * from student order by class desc

----(8)--
--select * from score order by cno asc,degree desc

----��9��--
--select count(*) ѧ������ from student where class='95031'

----(10)--
----�Ӳ�ѯ--
--select sno ѧ��ѧ��,cno �γ̺�  from score where degree=(select max(degree) from score)
----����--
----select sno ѧ��ѧ��,cno �γ̺�  from score order by degree desc limit 0,1

----(11)--
--select cno �γ̺�,avg(degree) ƽ���ɼ� from score group by cno

----(12)--
--select cno �γ̺�,avg(degree) ƽ���ɼ� from score where cno like '3%' group by cno having count(*)>5

----(13)--
--select sno from score where degree between 70 and 90

----(14)--
--select sname,cno,degree from student inner join score on score.cno=score.cno

--(15)--
--select s.sno,cname,degree from student s inner join score sc on s.sno=sc.sno join course c on sc.cno=c.cno