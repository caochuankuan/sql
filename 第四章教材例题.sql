USE ѧ��
GO

----��4.13�����ʽ����:��ѯȫ��ѧ�������������䡣

--SELECT Sname,YEAR(GETDATE())-YEAR(Sbirthday) ���� FROM student

----��4.14��ѯȫ��ѧ�������������䡢�ַ����������ǡ��Լ��������ݡ�

--SELECT Sname ����,YEAR(GETDATE())-YEAR(Sbirthday) ����,'������' ������,  YEAR (GETDATE( ))��� FROM Student

------��4.15��ѯ�����ϵȫ��ѧ����������

--SELECT Sname FROM Student where Sdept ='�����ϵ'

--��4.16 ��ѯ���Գɼ�����90��ѧ����ѧ�š��γ̺źͳɼ���

----SELECT Sno,Cno,Grade FROM SC  WHERE Grade > 90

----��4.17��ѯѧ����2~3֮��Ŀγ̵Ŀγ����ơ�ѧ�ֺͿ���ѧ�ڡ�
--SELECT Cname,Credit,Semester FROM Course WHERE Credit BETWEEN 2 AND 3

----�˾�ȼ���:
--SELECT Cname,Credit ,Semester FROM Course WHERE Credit >= 2 AND Credit<=3

----��4.18�D��ѯѧ�ֲ���2~3֮��Ŀγ̵Ŀγ����ơ�ѧ�ֺͿ���ѧ�ڡ�
--SELECT Cname,Credit,Semester FROM Course WHERE Credit NOT BETWEEN 2 AND 3
----�˾�ȼ���:
--SELECT Cname,Credit,Semester FROM Course WHERE Credit<2 OR Credit>3


----��4.19��ѯ������1997��ѧ����ȫ����Ϣ��
--SELECT * FROM Student WHERE Sbirthday BETWEEN '1997-01-01' AND '1997-12-31'

----��4.20��ѯ�������ϵ���͡�����ϵ��ѧ����ѧ�š�����������ϵ��

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sdept  IN('�����ϵ','����ϵ')

----��4.21 ��ѯ���ڡ������ϵ���͡�����ϵ��ѧ����ѧ�š�����������ϵ��

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sdept NOT IN('�����ϵ','����ϵ')

----��4.22 ��ѯ�ա����ѧ����ѧ�š�����������ϵ��

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sname LIKE'��%'

--��4.23��ѯ�����еڶ������ǡ��塱��ѧ����ѧ�š�����������ϵ��

--SELECT Sno,Sname,Sdept  FROM Student WHERE Sname LIKE '_��%'

--��4.24 ��ѯѧ�ŵ����һλ���ǡ�2����3����ѧ����ѧ�š�����������ϵ

--SELECT Sno,Sname,Sdept  FROM Student WHERE   Sno NOT LIKE'%[2,3]'


--��4.25 ��ѯ��û�п��Ե�ѧ����ѧ�š���Ӧ�Ŀγ̺źͳɼ���
--SELECT Sno,Cno FROM SC WHERE Grade IS NULL

--��4.26��ѯ�б�ע��ѧ����ѧ�š������ͱ�ע

--SELECT Sno,Sname,Sdept  FROM Student WHERE Memo IS NOT NULL

--��4.27��ѯ������ϵ���б�ע��ѧ����ѧ�š�����������ϵ�ͱ�ע��

--SELECT Sno,Sname,Sdept,Memo FROM Student WHERE Memo IS NOT NULL AND Sdept ='����ϵ'



--��4.28��ѯ������ϵ���͡������ϵ��1997�������ѧ����ѧ�š�����������ϵ�ͳ������ڡ�
--SELECT Sno,Sname,Sdept,Sbirthday FROM Student WHERE (Sdept ='�����ϵ' or Sdept ='����ϵ')AND Sbirthday BETWEEN '1997-01-01' AND '1997-12-31'

--��4.29 ��ѯ�п��ԹҿƵ�ѧ����ѧ�š�
--SELECT DISTINCT Sno FROM SC  WHERE Grade < 60

--��4.30����CO1���ſγ̵ĳɼ����������С�

--SELECT Cno,Grade FROM SC WHERE Cno='c01' ORDER BY  Grade


--��4.31����060101����ѧ���ĳɼ����������С�
--SELECT Cno,grade FROM SC  WHERE Sno='060101' ORDER BY Grade  DESC


--��4.32ͳ��ѧ����������
--SELECT COUNT(*)ѧ�������� FROM Student

--��4.33ͳ��ѧ����060101�����ܳɼ���

--SELECT SUM ( Grade)�ܳɼ� FROM SC  WHERE Sno ='060101'
--��4.34ͳ��ѧ����060101����ƽ���ɼ���
--SELECT AVG ( Grade)ƽ���ɼ� FROM SC WHERE Sno='060101'


--��4.35 ͳ�ƿγ̡�CO1������߷�������ͷ�����
--SELECT MAX(Grade) ���,MIN ( Grade) ��ͷ� FROM SC WHERE Cno='C01'
--��4.36 ͳ��ÿ�ſγ̵�ѡ���������г��γ̺ź�ѡ��������
--SELECT Cno �γ̺�,COUNT (Sno)ѡ������ FROM SC GROUP BY Cno 

--��4.37ͳ��ÿ��ѧ����ѡ���������г�ѧ�š�ѡ��������ƽ���ɼ���

--SELECT Sno ѧ��,COUNT( Cno)ѡ������,AVG( Grade)ƽ���ɼ� FROM SC GROUP BY Sno

--��4.38 ͳ��ÿ��ϵ������������Ů�������������ϵ������������
--SELECT Sdept,Ssex,Count(*) ���� FROM Student GROUP BY Sdept,Ssex Order by Sdept
--��4.39ͳ��ÿ��ϵ������������
--SELECT Sdept,Count(*) �������� FROM Student WHERE Ssex='��' GROUP BY Sdept
--��4.40��ѯѡ����������3�ŵ�ѧ����ѧ�ź�ѡ��������

--SELECT Sno,COUNT(*) ѡ������ FROM SC GROUP BY Sno HAVING COUNT(*) >3

--��4.41�U��ѯ�������ϵ���͡�����ϵ��ÿ��ϵ��ѧ����������������������д������һ��:

--SELECT Sdept,COUNT(*) FROM Student GROUP BY Sdept HAVING Sdept in ( '�����ϵ','����ϵ')

--�ڶ���:
--SELECT Sdept ,COUNT ( * )FROM Student WHERE Sdept in ( '�����ϵ','����ϵ')GROUP BY Sdept

--��4.42��ѯÿ��ѧ������ѡ�ε���ϸ��

--SELECT * FROM Student INNER JOIN SC ON Student.Sno=SC. Sno

--��4.43��ѯÿ��ѧ������ѡ�ε���ϸ��Ҫ��ȥ���ظ����С�

--SELECT S.Sno,Sname,Ssex,Sbirthday,Sdept ,Memo,Cno,Grade FROM Student S INNER JOIN SC  ON S.Sno=SC .Sno

--��444��ѯ�������ϵ��ѡ���ˡ����ݿ�ԭ���γ̵�ѧ���ɼ������ɼ��������������γ����ơ��ɼ���Ϣ��
--˵��:�ڴ������漰��������������������������ӣ����������������ӣ��ٺ͵����������ӵķ�ʽ���д���

--SELECT Sname,Cname,Grade  FROM Student S INNER JOIN SC ON S.Sno =SC.SNO  JOIN Course C ON SC.Cno=C.Cno WHERE Sdept='�����ϵ' AND Cname='���ݿ�ԭ��'

--��4.45��ѯѡ���ˡ����ݿ�ԭ���γ̵�ѧ������������ϵ��
--˵��:�ڴ������漰����������Course��� Student����������������û�й����������Ӳ���ʱ��Ҫ����SC�������

--SELECT Sname,Sdept FROM Student S INNER JOIN SC ON S.Sno=SC. Sno JOIN Course C ON SC.Cno=C.Cno WHERE Cname='���ݿ�ԭ��'

--��4.46 ͳ��ÿ��ϵ��ѧ����ƽ���ɼ���

--˵��:�ڴ������漰����������SC���Student��������������ͳ�ƣ����ǿ���Ϊ������SC���Student���������������ͳ���һ���±��������ķ���ͳ�ƾͺͻ��ڵ���ķ���ͳ�ƴ���ʽ���ơ�

--SELECT Sdept ,AVG (Grade) ϵƽ���ɼ� FROM Student S INNER JOIN SC oN S.Sno=SC.Sno JOIN Course C ON SC.Cno=C.Cno GROUP BY Sdept
--SELECT Sdept ,AVG (Grade) ϵƽ���ɼ� FROM Student S INNER JOIN SC oN S.Sno=SC.Sno  GROUP BY Sdept

--��4.47 ͳ�ơ������ϵ��ѧ����ÿ�ſγ̵�ѡ��������ƽ���֡���߷ֺ���ͷ֡�

SELECT sc.Cno ,COUNT(*) ѡ������,AVG (grade) ƽ����,MAX (Grade)��߷�,MIN(Grade)��ͷ�  ,Course .Cname �γ��� FROM Student s JOIN sC ON S.Sno = SC.Sno JOIN Course ON SC.Cno =Course .Cno  WHERE Sdept = '�����ϵ' GROUP BY Cno


--��448��ѯ�γ̡����ݿ�ԭ�������޿γ�����

--SELECT C1.Cname �γ���,C2.Cname ���޿γ��� FROM Course C1 JOIN Course C2 ON C1.PreCno= C2.Cno WHERE C1.Cname='���ݿ�ԭ��'

--��4.49��ѯ�롰���Ļԡ���ͬһ��ϵѧϰ��ѧ��������������ϵ��

--SELECT S2.Sname,S1.Sdept  FROM Student S1 JOIN Student S2 ON S1.Sdept  = S2.Sdept  WHERE S1.Sname='���Ļ�' AND S2.Sname! ='���Ļ�'

--��4.50��ѯ�����ϵȫ��ѧ����ѡ�������ѧ�š�����������ϵ���γ̱��)��Ҫ�����û��ѡ��ѧ������Ϣ��

--SELECT S.Sno,Sname,Sdept,SC.Cno FROM Student S LEFT JOIN SC ON S.Sno=SC.Sno WHERE Sdept='�����ϵ' 

--��4.51��ѯû����ѡ�Ŀγ̵Ŀγ�����
--����:���ĳ�ſγ�û����ѡ����ض�����Course�����У�����SC����û���ֵĿγ̣����ڽ���������ʱ��û����ѡ�Ŀγ̶�Ӧ��SC������Ӧ�� Sno��Cno��Grade ���ϱ����ǿ�ֵ��
--��������ڲ�ѯʱֻҪ�����Ӻ�Ľ����ѡ�� SC����SnoΪ�ջ���CnoΪ�յļ�¼���ɡ�

--SELECT Cname ,Sno FROM Course C LEFT JOIN SC ON C.Cno = SC.Cno WHERE SC.Cno IS NULL

--��4.52ͳ�ơ������ϵ��ÿ��ѧ����ѡ��������Ӧ����û��ѡ�ε�ѧ����

--SELECT S.Sno ѧ��,COUNT (SC.Cno) ѡ������ FROM Student S LEFT JOIN SC oN S. Sno = sC.Sno WHERE Sdept = '�����ϵ' GROUP BY S.Sno

---��4.53ͳ�ơ�����ϵ��ѡ����������3�ŵ�ѧ����ѧ����ѡ������������ûѡ�ε�ѧ������ѯ�����ѡ��������������

--SELECT S. Sno ѧ��,COUNT( SC.Cno) ѡ������ FROM Student S LEFT JOIN SC ON S.Sno = SC.Sno WHERE Sdept  = '����ϵ' GROUP BY S. Sno HAVING COUNT ( SC.Cno)< 3 ORDER BY COUNT ( SC.Cno) DESC

--��4.54 ��ѯ��C04���ſγ̳ɼ���ǰ������ѧ�źͳɼ���

--SELECT TOP 3 Sno,Grade FROM sc WHERE Cno='C04' ORDER BY Grade DESC

--��4.55��ѯѧ���������ſγ̵Ŀγ����ơ�ѧ�ֺͿ���ѧ�ڡ�

--SELECT TOP 4 Cname,Credit,Semester FROM Course ORDER BY Credit DESC

--��4.56��ѯѡ�������������ſγ̣��г��γ̺ź�ѡ��������

--SELECT TOP 2 WITH TIES Cno,COUNT(*)ѡ������ FROM sc GROUP BY Cno ORDER BY COUNT (Cno) DESC

--��4.57��ѯȫ��ѧ������Ϣ����������ϵ�ô�����ʾ:�������ϵ������Ϊ��CS����������ϵ������Ϊ��JD��������Ϣ����ϵ������Ϊ��IM

--SELECT Sno ѧ��,Sname ����,Ssex �Ա�,
--CASE Sdept 
-- WHEN '�����ϵ' THEN 'CS'
-- WHEN '����ϵ' THEN 'JD'
-- WHEN'��Ϣ����ϵ' THEN 'IM'
 
-- END ����ϵ
--  FROM Student

--��4.58 ��ѯ��C04���ſγ̵Ŀ�������г�ѧ�źͳɼ��pͬʱ�Գɼ��������´���
--	����ɼ����ڵ���90�����ڲ�ѯ�������ʾ���š�;
--	����ɼ���80��89��֮�䣬���ڲ�ѯ�������ʾ������;
--	����ɼ���70��79��֮�䣬���ڲ�ѯ�������ʾ���С�;
--	����ɼ���60��69��֮�䣬���ڲ�ѯ�������ʾ������;
--	����ɼ�С��60�֣����ڲ�ѯ�������ʾ�������񡱡�
--	�����ѯ��Ҫ�Գɼ����з�����жϣ������ǽ��ɼ���һ����Χ����ֵ���бȽϣ���ˣ���Ҫʹ������CASE���ʽʵ�֡���������:
	
--SELECT Sno,Grade,
--CASE
--WHEN Grade> =90 THEN '��'
--WHEN Grade> =80 AND Grade<90 THEN '��'
--WHEN Grade> =70 AND Grade<80 THEN '��'
--WHEN Grade>=60 AND Grade<70 THEN '����'
--WHEN Grade<60 THEN  '������'
--END �ȼ�
--FROM SC
--WHERE Cno='C04'



--��4.59ͳ�ơ������ϵ��ÿ��ѧ����ѡ������������û��ѡ�ε�ѧ�����г�ѧ�š�ѡ��������ѡ����������ж�ѡ������Ĵ���Ϊ:
--	���ѡ����������4�ţ���ѡ�����Ϊ���ࡱ;
--	���ѡ��������2~4�ŷ�Χ�ڣ���ѡ�����Ϊ��һ�㡱;
--	���ѡ����������2�š���ѡ�����Ϊ���١�;
--	���ѧ��û��ѡ�Σ���ѡ�����Ϊ��δѡ����������ѯ�����ѡ��������������
--	����:�����������ѯ��Ҫ������ѡ�ε�ѧ����û��ѡ�ε�ѧ������ˣ���Ҫ����������ʵ�֡�����Ҫ��ѡ���������з�������������Ҫ��CASE���ʽ��
--	�����������:
	
--SELECT S.Sno ѧ��,COUNT ( CNO) ѡ������,
--CASE
--	WHEN COUNT ( CNO) >3 THEN '��'
--	WHEN COUNT ( CNO) >=2 AND COUNT (CNO)< = 3 THEN 'һ��' WHEN COUNT (CNO) = 1 THEN '��'
--	WHEN COUNT ( CNO) = 0 THEN 'δѡ'
--END ѡ�����
--FROM Student s LEFT JOIN SC oN S. Sno =SC. Sno WHERE Sdept ='�����ϵ'
--GROUP BY S. Sno

--��4.60���������ϵ��ѧ����ѧ�š��������Ա����䣬���浽�±�Student_CS �С������������:

--SELECT Sno,Sname,Ssex,YEAR (GETDATE ( ) ) -YEAR ( Sbirthday) Sage INTO Student_CS FROM Student WHERE Sdept = '�����ϵ'

--��4.61��ѯ�롰���Ļԡ���ͬһ��ϵѧϰ��ѧ��ѧ�š��������Ա�����ϵo
--����:�ٿ���ͨ��һ���Ӳ�ѯ���Ȱ����Ļ�ͬѧ������ϵ�ҳ���;��Ȼ�������Ϊһ����֪���������������ת����Ϊ������ϵ����ĳ�������е�ѧ���������Ϣ��
--����ٵ�SQL���Ϊ:

--SELECT Sdept FROM Student Where Sname ='���Ļ�'
--����ڵ�SQL���Ϊ:

--SELECT Sno,Sname,Ssex,Sdept FROM Student WHERE Sdept IN ('***')

----�ۺϢٺ͢ڵ�SQL���õ�:

--SELECT Sno,Sname,Ssex,Sdept FROM Student WHERE Sdept IN (SELECT Sdept FROM Student Where Sname='���Ļ�')

--��4.62��ѯѡ�ˡ�C04���ſγ��ҳɼ����ڴ˿γ̵�ƽ���ɼ���ѧ����ѧ�ź͸��ſγ̳ɼ���
--����:�ٿ���ͨ��һ���Ӳ�ѯ���Ȱѡ�CO4���ſγ̵�ƽ���ɼ��ҳ���;��Ȼ�������Ϊһ����֪���������������ת����Ϊѡ�ˡ�C04���ſγ��ҳɼ�����ƽ���ɼ���ѧ����ѧ�źͳɼ���
--����ٵ�SQL���Ϊ:

--SELECT AVG (Grade) FROM sC WHERE Cno='C04'

--����ڵ�SQL���Ϊ:

--SELECT Sno,Grade FROM SC WHERE Cno='C04�� AND Grade> ***

--�ۺϢٺ͢ڵ�SQL���õ�:

--SELECT Sno,Grade FROM Sc WHERE Cno='C04' AND Grade >(SELECT AVG (Grade) FROM sC Where Cno='C04')

--��4.63��ѯ�ȡ�C03���γ̳ɼ����ߵ�ѡ�ˡ�C04���γ̵�ѧ����ѧ�źͳɼ���

--SELECT Sno,Grade FROM SC WHERE Cno='C04' AND Grade> ALL ( SELECT Grade FROM SC Where Cno='C03')

--��4.64��ѯѡ�ˡ�C04���ſγ̵�ѧ������������:�����ѯ�漰Student ���SC�����ö��ַ�ʽʵ�֣����������EXISTS��ʽ���Ӳ�ѯʵ�֡�

--SELECT Sname FROM Student WHERE EXISTS (SELECT * FROM sc Where SC. Sno =Student.Sno AND Cno='C04')

--��4.65��ѯ����ѡ���˵���ѧ�ڿ����ȫ���γ̵�ѧ��������
--����:�ڴ����У�ʹ����˫�ط񶨣�������ѯ�ĺ������ҷ���������ѧ�����м���ѯ�ĺ������ҵ���ѧ�ڿ���Ŀγ̡�����ѯ�ĺ�����
--ͨ�������м�㴫���ѧ�źͿγ̺ţ�����SC������û�ж�Ӧ��ѡ�μ�¼��
--����SQL���ĺ�������������;ĳ��ѧ��,�����ڵ���ѧ�ڿ���Ŀγ��У���û��ѡ�μ�¼����Ϊѡ���˵���ѧ�ڿ����ȫ���γ̵�ѧ����

--SELECT Sname FROM Student WHERE NOT EXISTS (
--SELECT * FROM Course
--WHERE Semester= 3 AND NOT EXISTS (SELECT * FROM sC
--WHERE SC.Sno= Student. Sno AND Course.Cno=sC. Cno) )

--��4.65��ѯ����ѡ���˵���ѧ�ڿ����ȫ���γ̵�ѧ��������
--����:�ڴ����У�ʹ����˫�ط񶨣�������ѯ�ĺ������ҷ���������ѧ�����м���ѯ�ĺ������ҵ���ѧ�ڿ���Ŀγ̡�����ѯ�ĺ�����ͨ�������м�㴫���ѧ�źͿγ̺ţ�
--����SC������û�ж�Ӧ��ѡ�μ�¼��
--����SQL���ĺ�������������:ĳ��ѧ���������ڵ���ѧ�ڿ���Ŀγ��У���û��ѡ�μ�¼����Ϊѡ���˵���ѧ�ڿ����ȫ���γ̵�ѧ����

--SELECT Sname FROM Student
--WHERE NOT EXISTS(
--SELECT * FROM Course
--WHERE Semester= 3 AND NOT EXISTS (SELECT * FROM sC
--WHERE SC. Sno=Student.Sno AND Course.Cno=SC.Cno))

--��4.66��ѯ�������ϵ���͡�����ϵ��������ѧ����Ϣ������:�������ϸ����н��ܵķ����⣬Ҳ��ͨ������������ɡ�

--( SELECT Sno,Sname,Ssex,Sdept
--FROM Student WHERE Sdept='�����ϵ') UNION
--(SELECT Sno,Sname,Ssex,Sdept FROM Student WHERE Sdept ='����ϵ')

--��4.67��ѯͬʱѡ���ˡ�CO3���롰C04���γ̵�ѧ����ѧ�š�����:�������ϸ����н��ܵķ����⣬Ҳ��ͨ������������ɡ�

--( SELECT Sno FROM sC WHERE Cno='C03')
--INTERSECT
--( SELECT Sno FROM sc WHERE Cno='C04')

--��4.68��ѯѡ���ˡ�CO1����ûѡ��CO2���γ̵�ѧ����ѧ�š�����:�������ϸ����н��ܵķ����⣬Ҳ��ͨ������������ɡ�

--(SELECT Sno FROM sC WHERE Cno ='CO1')
--EXCEPT
--(SELECT Sno FROM sC WHERE Cno='C02')

--��4.69����һ�������������ϵ��ѧ���ĳɼ�����ͼ����ͼ��Ӧ��ѧ����ѧ�š��������γ̺š��γ����ͳɼ���Ϣ��
--���ȴ�����ΪV_Grade_CS ����ͼ��SQL�������:

--CREATE VIEW V_Grade_Cs
--AS
--SELECT S.Sno,Sname,C. Cno,Cname,Grade FROM Student s, sc,Course C
--WHERE S. Sno =SC. Sno AND SC.Cno=C.Cno AND Sdept='�����ϵ'

--��4.70�޸��ϸ����ⴴ������ͼ����߰���ѧ����������Ϣ��

--ALTER VIEW  V_Grade_CS
--AS
--SELECT S. Sno,Sname,YEAR ( GETDATE ( ) ) -YEAR ( Sbirthday) Sage,C.Cno,Cname,Grade
--FROM Student s,sc,Course C
--WHERE S. Sno=SC. Sno AND SC.Cno=C.Cno AND Sdept='�����ϵ'

--��4.71ɾ���ϸ����ⴴ������ͼV_Grade_CS��
--  DROP VIEW V_Grade_CS
  
--  ��4.72��Student���в���(050101�����֣��У�1999-09-08�������ϵ)�ļ�¼��
--  INSERT INTO Student VALUES ('050101','����','��',1999-09-08,'�����ϵ',null)
  
--  ��4.73��CREATE��佨���� StudentBAK����������Student �� Sno��Sname��Sdept��ͬ)3���ֶ�,Ȼ����StudentBAK���Students���еļ����ϵѧ����ѧ�š�����
----����ϵ����Ϣ��
--���ȴ���StudentBAK��
--CREATE TABLE StudentBAK (Sno CHAR (6) PRIMARY KEY,Sname NVARCHAR (20),Sdept NVARCHAR (20))
--2��StudentBAK���������롰�����ϵ����ѧ����Ϣ��
-- INSERT INTO StudentBAK  SELECT Sno,Sname,Sdept FROM Student WHERE Sdept='�����ϵ'
--��4.74����4.60 �д�����Student_CS����ѧ���������1��sQL���Ϊ:

--UPDATE Student_CS SET Sage = Sage +1 

--��4.75�ѡ�C04���ſγ̵�ѧ�ּ�1��SQL���Ϊ:
--UPDATE Course SET Credit = Credit+1  WHERE Cno='C04'
--(2���������������ĸ��¡�
--��4.76�o�����ݿ�ԭ��γ̵ĳɼ�����5�֡����Ӳ�ѯʵ�֡�
--SQL���Ϊ:
--UPDATE SC SET Grade = Grade- 5WHERE Cno IN
--( SELECT Cno FROM Course WHERE Cname='���ݿ�ԭ��')

--���ö������ʵ�֡�--SQL���Ϊ:

--UPDATE SC SET Grade = Grade-5 FROM SC JoIN CoursE ON SC. Cno = COURSE.Cno WHERE Cname ='���ݿ�ԭ��'
--1��������ɾ��
--��4.77����4.59�д�����Student_CS���е�����ɾ����sQL���Ϊ:
--DELETE FROM  Student_CS
--2������ɾ��
--��4.78��StudentBAK����ѧ��Ϊ��050101����ѧ����Ϣɾ����sQL���Ϊ:

--DELETE FROM StudentBAK WHERE  Sno='050101'

--(2)��������������ɾ����
--��4.79�Dɾ�����ݿ�ԭ���ѡ�μ�¼�������Ӳ�ѯʵ�֡�

--sQL���Ϊ:

--DELETE FROM SC WHERE Cno IN
--(SELECT Cno FROM Course WHERE Cname='���ݿ�ԭ��')
 
--���ö������ʵ�֡�
--SQL���Ϊ:
--DELETE FROM SC
--FROM SC JOIN Course ON SC.Cno =Course.Cno WHERE Cname ='���ݿ�ԭ��'

--��4.80���û�Mary�� John���贴�����ݿ�ʹ������Ȩ�ޡ�

--GRANT CREATE DATABASE,CREATE TABLE
--TO Mary,John
