USE ѧ��
GO

--��.13�����ʽ����:��ѯȫ��ѧ�����������25���ѧ������
--select * from Student where (YEAR(getdate())-YEAR(sbirthday))>25

--��.15��ѯ�����ϵȫ��Ůѧ��������,�Ա��ϵ��
--select sname,ssex,sdept from student where sdept='�����ϵ' and ssex='Ů'

--��.16 ��ѯ���Գɼ�����70С��90�ֵ�ѧ����ѧ�š��γ̺źͳɼ���
--select sno,cno,grade from sc where grade between 70 and 90

--��.18�D��ѯѧ�ֲ���2~3֮��Ŀγ̵Ŀγ����ơ�ѧ�ֺͿ���ѧ�ڡ�
--select cname,credit,semester from course where credit not between 2 and 3

--��.20��ѯ����Ϣ����ϵ���͡�����ϵ��ѧ����ѧ�š�����������ϵ��
--select sno,sname,sdept from student where sdept in('��Ϣ����ϵ','����ϵ')

--��.22 ��ѯ�ա�������ѧ����ѧ�š�����������ϵ��
--select sno,sname,sdept from student where sname like '��%'

--��.25 ��ѯ��û�п��Ե�ѧ����ѧ�š���Ӧ�Ŀγ̺źͳɼ���
--select sno,cno,grade from sc where grade is null

----��.29 ��ѯ�п��ԹҿƵ�ѧ����ѧ�š�
--select sno from sc where grade<60

--��.29 ��ѯ�п��ԹҿƵ�ѧ����ѧ��(ȥ���ظ���
--select distinct sno from sc where grade<60

--��.30����CO1���ſγ̵ĳɼ����������С�
--select * from sc where cno='c01' order by grade asc

--��.32ͳ��ѧ����������
--select count(*) ѧ�������� from student

--��.35 ͳ�ƿγ̡�CO2������߷�����ƽ��������
--select max(grade) ��߷�,min(grade) ��ͷ� from sc where cno='c02'

--��.36 ͳ��ÿ�ſγ̵�ѡ���������г��γ̺ź�ѡ��������
--select cno �γ̺�,count(sno) ѡ������ from sc  group by cno

--��.37ͳ��ÿ��ѧ����ѡ���������г�ѧ�š�ѡ��������ƽ���ɼ���
--select sno ѧ��,count(cno) ѡ������,avg(grade) ƽ���ɼ� from sc group by sno

--��.38 ͳ��ÿ��ϵ������������Ů�������������ϵ������������
--select sdept ϵ��,ssex �Ա�,count(sno) ���� from student group by sdept,ssex order by sdept asc

--��.39ͳ��ÿ��ϵ��Ů��������
--select sdept ϵ��,count(sno) Ů������ from student group by sdept

--��.40��ѯѡ����������3�ŵ�ѧ����ѧ�ź�ѡ��������
--select sno ѧ��,count(cno) ѡ������ from sc group by sno having count(cno)>3

--��.41�U��ѯ�������ϵ���͡�����ϵ��ÿ��ϵ��ѧ������
--select sdept ϵ��,count(sno) ���� from Student group by sdept having sdept in('�����ϵ','����ϵ')
--select sdept ϵ��,count(sno) ���� from Student where sdept in('�����ϵ','����ϵ') group by sdept

--��.43��ѯ�����ҵ������ѡ�ε���ϸ�����Ҫ����ʾ������ѧ�ţ�ϵ�𣬿γ̺ţ��ɼ�
--select sname,s.sno,sdept,cno,grade from student s inner join sc on s.Sno=sc.Sno where Memo like '�����ҵ��'
--select sname,s.sno,sdept,cno,grade from student s inner join sc on s.Sno=sc.Sno where cast(s.Memo as varchar(max))='�����ҵ��'

--��44��ѯ�������ϵ��ѡ���ˡ����ݽṹ���γ̵�ѧ���ɼ������ɼ��������������γ����ơ��ɼ���Ϣ��
--select sname,cname,grade from student s inner join sc on s.Sno=sc.Sno join course c on sc.Cno=c.Cno where sdept='�����ϵ' and cname='���ݽṹ'

--��.45��ѯѡ���ˡ����ݽṹ���γ̵�ѧ������������ϵ��
--select sname,sdept from student s inner join sc on s.Sno=sc.Sno join course c on sc.Cno=c.Cno where cname='���ݽṹ'

--��.46 ͳ��ÿ��ϵ��ѧ����ƽ���ɼ���
--select sdept ϵ��,avg(grade) ƽ���ɼ� from student s inner join sc on s.Sno=sc.Sno group by sdept


--��.47 ͳ�ơ������ϵ��ѧ����ÿ�ſγ̵�ѡ��������ƽ���֡���߷ֺ���ͷ֡�
--select sc.cno,count(s.sno) ѡ������,avg(grade) ƽ���ɼ�,max(grade) ��߷�,min(grade) ��ͷ� from student s inner join sc on s.Sno=sc.Sno join course c on sc.Cno=c.Cno where sdept='�����ϵ' group by sc.cno

--��48��ѯ�γ̡����ݿ�ԭ�������޿γ�����


--��.49��ѯ�롰���Ļԡ���ͬһ��ϵѧϰ��ѧ��������������ϵ��

--��.50��ѯ�����ϵȫ��ѧ����ѡ�������ѧ�š�����������ϵ���γ̱��)��Ҫ�����û��ѡ��ѧ������Ϣ��


--��.51��ѯû����ѡ�Ŀγ̵Ŀγ�����
--����:���ĳ�ſγ�û����ѡ����ض�����Course�����У�����SC����û���ֵĿγ̣���--��������ʱ��û����ѡ�Ŀγ̶�Ӧ��SC������Ӧ��Sno��Cno��Grade ���ϱ����ǿ�ֵ��--�������ڲ�ѯʱֻҪ�����Ӻ�Ľ����ѡ��SC����SnoΪ�ջ���CnoΪ�յļ�¼���ɡ�



--��.52ͳ�ơ������ϵ��ÿ��ѧ����ѡ��������Ӧ����û��ѡ�ε�ѧ����


----��.53ͳ�ơ�����ϵ��ѡ�����������ŵ�ѧ����ѧ����ѡ������������ûѡ�ε�ѧ������ѯ�����ѡ��������������

