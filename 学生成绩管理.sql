--�������ݿ⡰ѧ���ɼ�����
create database ѧ���ɼ�����
go

--����ѧ����
use ѧ���ɼ�����
go
create table ѧ����
(ѧ�� char(9) not null constraint pk_xh primary key,
���� char(8) not null,
�Ա� char(2) not null,
רҵ varchar(50) null,
�������� smalldatetime null,
��ͥ��ַ varchar(100) null,
��ϵ�绰 char(12) null,
��ѧ�� float constraint de_2 default 0)

--�����γ̱�
use ѧ���ɼ�����
go
create table �γ̱�
(�γ̺� char(9) not null,
���� varchar(50) not null,
ѧʱ int not null constraint check1 check(ѧʱ>=0),
ѧ�� int not null check(ѧ��>=0),
��ע text,
constraint pk_kh primary key(�γ̺�))

--����ѡ�α�
use ѧ���ɼ�����
go
create table ѡ�α�
(ѧ�� char(9) not null,
�γ̺� char(9) not null constraint FK_1 foreign key references �γ̱�(�γ̺�),
�ɼ� float null,
constraint ch_cj check(�ɼ�>=0 and �ɼ�<=100),
constraint PK_xh1 primary key(ѧ��,�γ̺�),
constraint FK_2 foreign key(ѧ��) references ѧ����(ѧ��))

--�������ű�
use ѧ���ɼ�����
go
create table ���ű�
(���ű�� varchar(50) not null primary key,
�������� varchar(50) not null,
���ŵ�ַ varchar(100) null)

--������ʦ��
use ѧ���ɼ�����
go
create table ��ʦ��
(��ʦ�� char(6) not null primary key,
���� char(8) not null,
ְ�� char(8) not null,
���ű�� varchar(50) not null foreign key references ���ű�(���ű��),
��ϵ��ʽ char(12) null)

--�����ڿα�
use ѧ���ɼ�����
go
create table �ڿα�
(��ʦ�� char(6) not null foreign key references ��ʦ��(��ʦ��),
�γ̺� char(9) not null foreign key references �γ̱�(�γ̺�),
����ʱ�� smalldatetime null,
primary key(��ʦ��,�γ̺�))

--ɾ�����ݱ�
--drop table �ڿα�
--drop table ��ʦ��
--drop table ���ű�
--drop table ѡ�α�
--drop table �γ̱�
--drop table ѧ����

--ɾ�����ݿ�
--use master
--go
--drop database ѧ���ɼ�����