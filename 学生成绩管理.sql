--创建数据库“学生成绩管理”
create database 学生成绩管理
go

--创建学生表
use 学生成绩管理
go
create table 学生表
(学号 char(9) not null constraint pk_xh primary key,
姓名 char(8) not null,
性别 char(2) not null,
专业 varchar(50) null,
出生年月 smalldatetime null,
家庭地址 varchar(100) null,
联系电话 char(12) null,
总学分 float constraint de_2 default 0)

--创建课程表
use 学生成绩管理
go
create table 课程表
(课程号 char(9) not null,
课名 varchar(50) not null,
学时 int not null constraint check1 check(学时>=0),
学分 int not null check(学分>=0),
备注 text,
constraint pk_kh primary key(课程号))

--创建选课表
use 学生成绩管理
go
create table 选课表
(学号 char(9) not null,
课程号 char(9) not null constraint FK_1 foreign key references 课程表(课程号),
成绩 float null,
constraint ch_cj check(成绩>=0 and 成绩<=100),
constraint PK_xh1 primary key(学号,课程号),
constraint FK_2 foreign key(学号) references 学生表(学号))

--创建部门表
use 学生成绩管理
go
create table 部门表
(部门编号 varchar(50) not null primary key,
部门名称 varchar(50) not null,
部门地址 varchar(100) null)

--创建教师表
use 学生成绩管理
go
create table 教师表
(教师号 char(6) not null primary key,
姓名 char(8) not null,
职称 char(8) not null,
部门编号 varchar(50) not null foreign key references 部门表(部门编号),
联系方式 char(12) null)

--创建授课表
use 学生成绩管理
go
create table 授课表
(教师号 char(6) not null foreign key references 教师表(教师号),
课程号 char(9) not null foreign key references 课程表(课程号),
开课时间 smalldatetime null,
primary key(教师号,课程号))

--删除数据表
--drop table 授课表
--drop table 教师表
--drop table 部门表
--drop table 选课表
--drop table 课程表
--drop table 学生表

--删除数据库
--use master
--go
--drop database 学生成绩管理