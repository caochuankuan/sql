create database 教务系统
go

use 教务系统
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


--向student表中插入数据
insert into student values('101','张曼','女','1993-05-03 00:00:00',
'95031');
insert into student values('102','刘迪','女','1994-10-20 00:00:00',
'95031');
insert into student values('103','刘凯','男','1982-05-30 00:00:00',
'95032');
insert into student values('104','王越','男','1991-09-19 00:00:00',
'95032');
insert into student values('105','李楠','女','1995-03-16 00:00:00',
'95031');
insert into student values('106','胡栋','男','1992-07-03 00:00:00',
'95031');
insert into student values('107','杨超','男','1990-10-01 00:00:00',
'95032');
insert into student values('108','李军','男','1996-07-26 00:00:00',
'95033');
insert into student values('109','李四','女','1992-09-03 00:00:00',
'95034');
insert into student values('110','王五','男','1990-10-26 00:00:00',
'95034');
go


--向教师表中插入数据
insert into teacher values('001','王庆','男','1965-3-9','正高级','计算机系');
insert into teacher values('002','志玲','女','1980-7-12','高级','计算机系');
insert into teacher values('003','黎明','男','1975-5-18','一级','计算机系');
insert into teacher values('004','郭靖','男','1953-10-30','二级','计算机系');
insert into teacher values('005','黄蓉','女','1973-8-27','无','电子工程系');
insert into teacher values('006','黛玉','女','1983-5-27','高级','电子工程系');
insert into teacher values('007','逸风','男','1978-8-22','正高级','电子工程系');
insert into teacher values('008','张三','男','1983-5-27','三级','机电系');
insert into teacher values('009','李华','女','1999-11-16','二级','机电系');
insert into teacher values('010','张旭','男','2001-3-6','无','机电系');
go


--向课程表中插入数据
insert into Course values('3-001','大学英语','001');
insert into Course values('3-125','数据库原理','002');
insert into Course values('2-566','网站建设','003');
insert into Course values('1-314','程序设计','004');
insert into Course values('3-245','高等数学','005');
insert into Course values('3-105','操作系统','006');
insert into Course values('0-007','计算机导论','007');
insert into Course values('3-245','网络基础','008');
insert into Course values('0-009','大学语文','009');
insert into Course values('0-010','离散数学','010');
insert into Course values('0-011','线性代数','010');
go


--向成绩表中录入数据
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