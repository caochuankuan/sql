use ѧ��
go

--4.54��ѯ��c04���ſγ̳ɼ���ǰ������ѧ�źͳɼ�
--select top 3 sno ѧ��,grade �ɼ� from sc where cno='c04' order by grade desc

--4.55��ѯѧ������4�ſγ̵Ŀγ����ơ�ѧ�֡�����ѧ��
--select top 4 cname �γ�����,credit ѧ��,semester ����ѧ�� from course order by credit desc
	--����(�����top�Ӿ���ʹ����with ties,����ʹ��order by�Ӿ�����)
	--select top 4 with ties cname �γ�����,credit ѧ��,semester ����ѧ�� from course order by credit desc

--4.56��ѯѡ�������������ſγ̣��г��γ̺ź�ѡ������
--select top 2 cno,count(cno) from sc group by cno order by count(cno) desc