--��ѯ��ҵ��

use ѧ��
go
--������ϵ���������м�¼
--select * from Student where ssex='��' and Sdept='�����ϵ'

--��ѯ����ѧ��������������
--select sname,YEAR(getdate())-YEAR(sbirthday) from student

--��ѯ����ѧ��������������,�������������age
--select sname,YEAR(getdate())-YEAR(sbirthday) as age from student 

--��ѯǰ������¼
--select top 3 * from Student

--��ѯ�����ϵ��Ů����¼
--select * from student where ssex='Ů' and Sdept='�����ϵ'

--��ѯ�γ̱���ǰ���γ�Ϊ�޵ļ�¼
--select * from Course where PreCno is null

--��ѯ�ɼ����гɼ�����80�ֵļ�¼
--select * from SC where grade>80

--��ѯ�ɼ����гɼ�����80�ֵļ�¼
--select * from SC where grade between 80 and 100

--��ѯ�ɼ����гɼ�����80�ֵļ�¼������������
--select * from SC where grade>80 order by grade desc

--��ѯȫ��ѧ��������,���䣬�ַ����������ǡ��Լ��������ݡ�
--select sname ����, year(getdate())-year(sbirthday) ����,'������' ������,YEAR(getdate()) ��� from student

--��ѯ�����ϵȫ��ѧ��������
--select sname from Student where Sdept='�����ϵ'

--��ѯ���Գɼ�����90��ѧ��ѧ�ţ��γ̺ţ��ɼ�
--select sno,cno,grade from SC where Grade>90

--��ѯѧ����2-3֮��Ŀγ̵Ŀγ����ƣ�ѧ�֣�����ʱ��
--select cname,credit,semester from course where Credit between 2 and 3
--��:
--select cname,credit,semester from course where Credit>=2 and Credit<=3

----��ѯѧ����2-3֮��Ŀγ̵Ŀγ����ƣ�ѧ�֣�����ʱ��
--select cname,credit,semester from course where Credit not between 2 and 3
--��:
--select cname,credit,semester from course where Credit<2 or Credit>3

--��ѯ������1997��ѧ����ȫ����Ϣ
--select * from Student where Sbirthday between '1997-01-01' and '1997-12-31'

--��ѯ�������ϵ���͡�����ϵ��ѧ����ѧ�ţ����������ڵ�
--select sno,sname,Sdept from Student where Sdept in ('�����ϵ','����ϵ')

--��ѯ�������ϵ���͡�����ϵ��ѧ����ѧ�ţ����������ڵ�
--select sno,sname,Sdept from Student where Sdept not in ('�����ϵ','����ϵ')

--��ѯ�ա����ѧ����ѧ�ţ�����������ϵ
--select sno,sname,Sdept from Student where Sname like '��%'

--��ѯ�����еڶ������ǡ��塱��ѧ����ѧ�ţ�����������ϵ
--select sno,sname,Sdept from Student where Sname like '_��%'

--��ѯѧ�ŵ����һλ���ǡ�2����3����ѧ����ѧ�ţ�����������ϵ
--select sno,sname,Sdept from Student where Sno not like '%[2,3]'

--��ѯ��û�п��Ե�ѧ����ѧ�ţ���Ӧ�Ŀγ̺�
--select sno,cno from SC where grade is null

--��ѯ�б�ע��ѧ����ѧ��,�����ͱ�ע
--select sno,sname,memo from student where memo is not null

--��ѯ������ϵ���б�ע��ѧ����ѧ�š�����������ϵ�ͱ�ע
--select sno,sname,Sdept,memo from student where Sdept='����ϵ' and memo is not null

--��ѯ������ϵ���͡������ϵ��1997�������ѧ����ѧ�ţ�����������ϵ�ͳ�������
--select sno,sname,Sdept,sbirthday from student where (Sdept='����ϵ' or Sdept='�����ϵ') and sbirthday between '1997-01-01' and '1997-12-31'

--��ѯ�п��ԹҿƵ�ѧ����ѧ�ţ�distinct����ȡֵ��ͬ���У�
--select distinct sno from SC where grade<60

--����c01���ſγ̵ĳɼ�����������
--select cno,grade from sc  where cno='c01' order by grade asc

--����060101����ѧ���ĳɼ�����������
--select cno,grade from sc where sno='060101' order by grade desc

--ͳ��ѧ��������
--select count(*) ѧ�������� from student

--ͳ��ѧ����060101�����ܳɼ�
--select sum(grade) �ܳɼ� from sc where sno='060101'

--ͳ��ѧ����060101����ƽ���ɼ�
--select avg(grade) ƽ���ɼ� from sc where sno='060101'

--ͳ�ƿγ̡�c01������߷�������ͷ���
--select max(grade) ��߷���,min(grade) ��ͷ��� from sc where cno='c01'

--ͳ��ÿ�ſγ̵�ѡ���������г��γ̺ź�ѡ������
--select cno �γ̺�,count(cno) ѡ������ from sc group by cno

--ͳ��ÿ��ѧ����ѡ���������г�ѧ�š�ѡ��������ƽ���ɼ�
--select sno ѧ��,count(sno) ѡ������,avg(grade) ƽ���ɼ� from sc group by sno

--ͳ��ÿ��ϵ������������Ů�������������ϵ������������
--select sdept ϵ,ssex �Ա�,count(*) from student group by sdept,ssex order by sdept

--ͳ��ÿ��ϵ����������
--select sdept ϵ,count(*) �������� from student where ssex='��' group by sdept

--��ѯѡ����������3�ŵ�ѧ����ѧ�ź�ѡ������
--select sno ѧ��,count(cno) ѡ������ from sc group by sno having count(*)>3

--��ѯ�������ϵ���͡�����ϵ��ÿ��ϵ��ѧ������
--select sdept ϵ,count(*) ѧ������ from student where sdept in('�����ϵ','����ϵ') group by sdept
--select sdept ϵ,count(*) ѧ������ from student group by sdept having sdept in('�����ϵ','����ϵ')