use ѧ��
go


--4.48��ѯ�γ̡����ݿ�ԭ�������޿γ���
--select c1.Cname �γ���,c2.Cname ���޿γ��� from course c1 join course c2 on c1.PreCno=c2.Cno where c1.Cname='���ݿ�ԭ��'

--4.49��ѯ�롰���Ļԡ���ͬһ��ϵѧϰ��ѧ��������������ϵ
--select s2.Sname,s1.Sdept from student s1 join student s2 on s1.Sdept=s2.Sdept where s1.Sname='���Ļ�' and s2.Sname!='���Ļ�'

--4.50��ѯ�����ϵȫ��ѧ����ѡ�������ѧ�š�����������ϵ���γ̱�ţ���Ҫ�����û��ѡ��ѧ������Ϣ
--select s.Sno,Sname,Sdept,Cno from student s left join sc on s.Sno=sc.sno where sdept='�����ϵ'


--4.51��ѯû����ѡ�Ŀγ̵Ŀγ���
--select Cname from course c left join sc on c.Cno=sc.Cno where sc.Cno is null

--4.52ͳ�ơ������ϵ��ÿ��ѧ����ѡ��������Ӧ����û��ѡ�ε�ѧ��
--select s.Sno ѧ��,count(Cno) ѡ������ from student s left join sc on s.Sno=sc.Sno where Sdept='�����ϵ' group by s.Sno


--4.53ͳ�ơ�����ϵ��ѡ����������3�ŵ�ѧ����ѧ�ź�ѡ������������ûѡ�ε�ѧ������ѯ�����ѡ��������������
--select s.Sno ѧ��,count(cno) ѡ������ from student s left join sc on s.Sno=sc.Sno where Sdept='����ϵ' group by s.Sno having count(cno)<3 order by count(cno) desc