create database ����ϵͳ
go

use ����ϵͳ
go
create table student
(sno char(3) not null primary key,
sname char(8) not null,
ssex char(2) not null,
sbirthday datetime null,
class char(10) null
)
go

create table teacher
(tno char(3) not null constraint pk_t primary key,
tname char(4) not null,
tsex char(2) not null,
tbirthday datetime null,
prof char(6) null,
depart varchar(10) not null)

create table course
(cno char(5) not null constraint pk1 primary key,
cname varchar(10) not null,
tno char(3) not null constraint fk1 foreign key references teacher(tno) 
)
go

create table score
(sno char(3) not null,
cno char(5) not null,
degree decimal(4,1) null,
constraint pk_c primary key(sno,cno),
constraint fk_c1 foreign key(sno) references student(sno),
constraint fk_c2 foreign key(cno) references course(cno)
)
go


--��student���в�������
insert into student values('101','����','Ů','1993-05-03 00:00:00',
'95031');
insert into student values('102','����','Ů','1994-10-20 00:00:00',
'95031');
insert into student values('103','����','��','1982-05-30 00:00:00',
'95032');
insert into student values('104','��Խ','��','1991-09-19 00:00:00',
'95032');
insert into student values('105','���','Ů','1995-03-16 00:00:00',
'95031');
insert into student values('106','����','��','1992-07-03 00:00:00',
'95031');
insert into student values('107','�','��','1990-10-01 00:00:00',
'95032');
insert into student values('108','���','��','1996-07-26 00:00:00',
'95033');
insert into student values('109','����','Ů','1992-09-03 00:00:00',
'95034');
insert into student values('110','����','��','1990-10-26 00:00:00',
'95034');
go


--���ʦ���в�������
insert into teacher values('001','����','��','1965-3-9','���߼�','�����ϵ');
insert into teacher values('002','־��','Ů','1980-7-12','�߼�','�����ϵ');
insert into teacher values('003','����','��','1975-5-18','һ��','�����ϵ');
insert into teacher values('004','����','��','1953-10-30','����','�����ϵ');
insert into teacher values('005','����','Ů','1973-8-27','��','���ӹ���ϵ');
insert into teacher values('006','����','Ů','1983-5-27','�߼�','���ӹ���ϵ');
insert into teacher values('007','�ݷ�','��','1978-8-22','���߼�','���ӹ���ϵ');
insert into teacher values('008','����','��','1983-5-27','����','����ϵ');
insert into teacher values('009','�','Ů','1999-11-16','����','����ϵ');
insert into teacher values('010','����','��','2001-3-6','��','����ϵ');
go


--��γ̱��в�������
insert into Course values('3-001','��ѧӢ��','001');
insert into Course values('3-125','���ݿ�ԭ��','002');
insert into Course values('2-566','��վ����','003');
insert into Course values('1-314','�������','004');
insert into Course values('3-245','�ߵ���ѧ','005');
insert into Course values('3-105','����ϵͳ','006');
insert into Course values('0-007','���������','007');
insert into Course values('3-245','�������','008');
insert into Course values('0-009','��ѧ����','009');
insert into Course values('0-010','��ɢ��ѧ','010');
insert into Course values('0-011','���Դ���','010');
go


--��ɼ�����¼������
insert into score values('101','3-001',95);
insert into score values('101','3-125',98);
insert into score values('101','2-566',89);
insert into score values('102','3-001',93);
insert into score values('102','3-125',99);
insert into score values('102','2-566',95);
insert into score values('103','3-001',84);
insert into score values('103','3-125',80);
insert into score values('103','2-566',94);
insert into score values('104','0-005',95);
insert into score values('104','3-105',80);
insert into score values('105','3-245',23);
insert into score values('106','1-314',86);
insert into score values('106','0-007',75);
insert into score values('107','0-005',66);
insert into score values('108','3-105',84);
insert into score values('109','3-001',56);
insert into score values('110','3-125',84);
go