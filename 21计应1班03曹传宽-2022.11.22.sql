use ����ϵͳ
go

----��1����ѯstudent���е����м�¼��sname,ssex,class��
--select sname,ssex,class from student

----��2����ѯ��ʦ���ڵĵ�λ�����ظ���depart��
--select distinct depart from teacher

----(3)��ѯstudent������м�¼
--select * from student

----(4)��ѯscore���гɼ���60��80֮������м�¼
--select * from score where degree between 60 and 80

----(5)��ѯscore���гɼ���85��86����88�ļ�¼
--select * from score where degree in(85,86,88)

----(6)��ѯstudent���С�95031������Ա�Ϊ��Ů����ͬѧ�ļ�¼
--select * from student where class='95031' or ssex='Ů'

----(7)��class�����ѯstudent���е����м�¼
--select * from student order by class desc

----(8)��cno����degree�����ѯscore������м�¼
--select * from score order by cno asc,degree desc

----��9����ѯ��95031�����ѧ������
--select count(*) ѧ������ from student where class='95031'

----(10)��ѯscore���е���߷ֵ�ѧ��ѧ�źͿγ̺�
----�Ӳ�ѯ--
--select sno ѧ��ѧ��,cno �γ̺�  from score where degree=(select max(degree) from score)
----����--
----select sno ѧ��ѧ��,cno �γ̺�  from score order by degree desc limit 0,1

----(11����ѯÿ�ſε�ƽ���ɼ�
--select cno �γ̺�,avg(degree) ƽ���ɼ� from score group by cno

----(12)��ѯscore����ֻ����5��ѧ��ѡ�޵Ĳ���3��ͷ�Ŀγ̵�ƽ������
--select cno �γ̺�,avg(degree) ƽ���ɼ� from score where cno like '3%' group by cno having count(*)>5

----(13)��ѯ��������70��С��90��sno��
--select sno from score where degree between 70 and 90

----(14)��ѯ����ѧ����sname,cno,degree��
--select sname,cno,degree from student inner join score on score.cno=score.cno

----(15)��ѯ����ѧ����sno,cname,degree��
--select s.sno,cname,degree from student s inner join score sc on s.sno=sc.sno join course c on sc.cno=c.cno

----��16����ѯ����ѧ����sname,cname,degree��
----select sname,cname,degree from student s inner join score sc on s.sno=sc.sno join course c on sc.cno=c.cno
--��17)��ѯ��95033����ѧ����ƽ����
--select class,avg(degree) from student s inner join score sc on s.sno=sc.sno where class='95033' group by class

----��18���ֲ�ѯ����ͬѧ��sno,cno,degree,rank��
--select S.sno,cno,degree,
--case
--when degree>=90 then 'A'
--when degree>=80 and degree<90 then 'B'
--when degree>=70 and degree<80 then 'C'
--when degree>=60 and degree<70 then 'D'
--when degree<60 then 'E'
--END �ȼ�
-- from student s inner join score sc on s.sno=sc.sno

----��19����ѯѡ�ޡ�3-105���γ̵ĳɼ����ڡ�109����ͬѧ�ɼ�������ͬѧ�ļ�¼
--select degree from score where sno='109'
--select * from score  where cno='3-105'
--select * from score sc where cno='3-105' and degree> (select degree from score where sno='109')

----(20)��ѯscore��ѡѧ���ſγ̵�ͬѧ�з���Ϊ����߷ֳɼ��ļ�¼
--select * from score
--select sno ѧ��,count(cno) ѡ������ from score group by sno
--select sno ѧ��,count(cno) ѡ������ from score where degree!=(select max(degree) from score) group by sno