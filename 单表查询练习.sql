USE ѧ��
GO

--��4.13�����ʽ����:��ѯȫ��ѧ�������������䡣
--select sname ����,YEAR(getdate())-YEAR(sbirthday) ���� from Student


--��4.14��ѯȫ��ѧ�������������䡢�ַ����������ǡ��Լ��������ݡ�
--select sname ����,YEAR(getdate())-YEAR(sbirthday) ����,'������' ������,year(GETDATE()) ��� from Student

--��4.15��ѯ�����ϵȫ��ѧ����������
--select sname from Student where Sdept='�����ϵ'

--��4.16 ��ѯ���Գɼ�����90��ѧ����ѧ�š��γ̺źͳɼ���
--select sno,cno,grade from SC where Grade>90

--��4.17��ѯѧ����2~3֮��Ŀγ̵Ŀγ����ơ�ѧ�ֺͿ���ѧ�ڡ�
--select cname,credit,semester from Course where Semester between 2 and 3
--�˾�ȼ���:
--select cname,credit,semester from Course where Semester>=2 and Semester<=3

--��4.18�D��ѯѧ�ֲ���2~3֮��Ŀγ̵Ŀγ����ơ�ѧ�ֺͿ���ѧ�ڡ�
--select cname,credit,semester from Course where Semester not between 2 and 3
--�˾�ȼ���:
--select cname,credit,semester from Course where Semester<2 or Semester>3

--��4.19��ѯ������1997��ѧ����ȫ����Ϣ��
--select * from Student where Sbirthday between '1997-01-01' and '1997-12-31'

--��4.20��ѯ�������ϵ���͡�����ϵ��ѧ����ѧ�š�����������ϵ��
--select sno,sname,sdept from Student where Sdept in('�����ϵ','����ϵ')

--��4.21 ��ѯ���ڡ������ϵ���͡�����ϵ��ѧ����ѧ�š�����������ϵ��
--select sno,sname,sdept from Student where Sdept not in('�����ϵ','����ϵ')

--��4.22 ��ѯ�ա����ѧ����ѧ�š�����������ϵ��
--select sno,sname,sdept from Student where Sname like '��%'

--��4.23��ѯ�����еڶ������ǡ��塱��ѧ����ѧ�š�����������ϵ��
--select sno,sname,sdept from Student where Sname like '_��%'

--��4.24 ��ѯѧ�ŵ����һλ���ǡ�2����3����ѧ����ѧ�š�����������ϵ
--select sno,sname,sdept from Student where Sno not like '%[2,3]'


--��4.25 ��ѯ��û�п��Ե�ѧ����ѧ�š���Ӧ�Ŀγ̺źͳɼ���
--select cno,sno,grade from SC where Grade is null

--��4.26��ѯ�б�ע��ѧ����ѧ�š������ͱ�ע
--select sno,sname,memo from Student where Memo is not null

--��4.27��ѯ������ϵ���б�ע��ѧ����ѧ�š�����������ϵ�ͱ�ע��
--select sno,sname,sdept,memo from Student where Sdept='����ϵ' and memo is not null


--��4.28��ѯ������ϵ���͡������ϵ��1997�������ѧ����ѧ�š�����������ϵ�ͳ������ڡ�
--select sno,sname,sdept,sbirthday from Student where (Sdept in ('����ϵ','�����ϵ')) and Sbirthday between '1997-01-01' and '1997-12-31' 

--��4.29 ��ѯ�п��ԹҿƵ�ѧ����ѧ�š�
--select sno from SC where Grade<60

--��4.30����CO1���ſγ̵ĳɼ����������С�
--select cno,grade from SC where Cno='c01' order by Grade

--��4.31����060101����ѧ���ĳɼ����������С�
--select cno,grade from SC where sno='060101' order by Grade desc

--��4.32ͳ��ѧ����������
--select COUNT(*) ѧ�������� from Student

--��4.33ͳ��ѧ����060101�����ܳɼ���
--select SUM(grade) �ܳɼ� from SC where Sno='060101'

--��4.34ͳ��ѧ����060101����ƽ���ɼ���
--select avg(grade) ƽ���ɼ� from SC where Sno='060101'

--��4.35 ͳ�ƿγ̡�CO1������߷�������ͷ�����
--select MAX(grade) ��߷�,MIN(grade) ��ͷ� from SC where Cno='c01'

--��4.36 ͳ��ÿ�ſγ̵�ѡ���������г��γ̺ź�ѡ��������
--select cno �γ̺�,COUNT(sno) ѡ������ from SC group by Cno

--��4.37ͳ��ÿ��ѧ����ѡ���������г�ѧ�š�ѡ��������ƽ���ɼ���
--select sno ѧ��,COUNT(cno) ѡ������,AVG(grade) ƽ���ɼ� from SC group by sno

--��4.38 ͳ��ÿ��ϵ������������Ů�������������ϵ������������
--select sdept ϵ,ssex �Ա�,COUNT(*) ���� from Student group by Sdept,Ssex order by Sdept
--select sdept ϵ,ssex �Ա�,COUNT(sno) ���� from Student group by Sdept,Ssex order by Sdept

--��4.39ͳ��ÿ��ϵ������������
--select sdept ϵ��,COUNT(*) �������� from Student where Ssex='��' group by sdept

--��4.40��ѯѡ����������3�ŵ�ѧ����ѧ�ź�ѡ��������
--select sno ѧ��,COUNT(cno) ѡ������ from SC group by sno having COUNT(*)>3

--��4.41�U��ѯ�������ϵ���͡�����ϵ��ÿ��ϵ��ѧ����������������������д����
--��һ��:
--select sdept ϵ��,COUNT(sno) ѧ������ from Student where Sdept in ('�����ϵ','����ϵ') group by Sdept

--�ڶ���:
--select sdept ϵ��,COUNT(sno) ѧ������ from Student group by Sdept having Sdept in('�����ϵ','����ϵ')