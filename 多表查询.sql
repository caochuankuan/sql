--��4.42��ѯÿ��ѧ������ѡ�ε���ϸ��
--select * from Student inner join SC on student.Sno=sc.Sno

--��4.43��ѯÿ��ѧ������ѡ�ε���ϸ��Ҫ��ȥ���ظ����С�
--select s.sno,Sname,Ssex,Sbirthday,Sdept,Memo,Cno,grade from Student s inner join SC on s.Sno=sc.Sno

--��444��ѯ�������ϵ��ѡ���ˡ����ݿ�ԭ���γ̵�ѧ���ɼ������ɼ��������������γ����ơ��ɼ���Ϣ��
--˵��:�ڴ������漰��������������������������ӣ����������������ӣ��ٺ͵����������ӵķ�ʽ���д���
--select Sname,Cname,grade from Student s inner join SC on s.Sno=sc.Sno join Course c on sc.Cno=c.Cno where Sdept='�����ϵ' and Cname='���ݿ�ԭ��'

--��ѯ����ϵѧ����ѡ������������γ����ƣ�ǰ���γ̣��ɼ���ѧ��������ϵ��ѧ��
--select Cname,PreCno,Grade,Sname,Sdept,s.Sno from Student s inner join SC on s.Sno=sc.Sno join Course c on sc.Cno=c.Cno where Sdept='�����ϵ'

--��4.45��ѯѡ���ˡ����ݿ�ԭ���γ̵�ѧ������������ϵ��
--˵��:�ڴ������漰����������Course��� Student����������������û�й����������Ӳ���ʱ��Ҫ����SC�������
--select Sname,sdept from Student s inner join SC on s.Sno=sc.Sno join Course c on sc.Cno=c.Cno where Cname='���ݿ�ԭ��'


--��4.46 ͳ��ÿ��ϵ��ѧ����ƽ���ɼ���
--˵��:�ڴ������漰����������SC���Student��������������ͳ�ƣ����ǿ���Ϊ������SC���Student���������������ͳ���һ���±��������ķ���ͳ�ƾͺͻ��ڵ���ķ���ͳ�ƴ���ʽ���ơ�
--select sdept ϵ,AVG(grade) ƽ���ɼ� from Student s inner join SC on s.Sno=sc.Sno group by Sdept

--��4.47 ͳ�ơ������ϵ��ѧ����ÿ�ſγ̵�ѡ��������ƽ���֡���߷ֺ���ͷ֡�
--select cno �γ�,COUNT(*) ѡ������,AVG(grade) ƽ������,MAX(grade) ��߷�,MIN(grade) ��ͷ� from Student s inner join SC on s.Sno=sc.Sno where Sdept='�����ϵ' group by cno
