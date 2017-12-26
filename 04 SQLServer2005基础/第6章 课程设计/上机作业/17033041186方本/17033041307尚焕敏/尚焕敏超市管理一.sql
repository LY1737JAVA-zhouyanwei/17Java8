create database Supermarket on(
name ='marketmdf',
filename='c:\Supermarket .mdf',
size=3MB,
filegrowth=1MB
)
log on(
name ='marketldf',
filename='c:\Supermarket_log .ldf',
size=3MB,
filegrowth=10%
)
--��Ʒ����
create  table  Category(
Cid int primary key identity(1,1),
Cname nvarchar(20) not null unique,
Description nvarchar(20)
)
--��Ʒ��Ϣ��
create table Ware(
--��Ʒ���
Wid int primary key identity(1,1),
--��Ʒ������������
Cid int not null foreign key references Category(Cid),
--��Ʒ����
Wname nvarchar(20)  not null unique,
--��Ʒ����
jinPrice decimal(10,2) not null,
--��Ʒ�ۼ�
SalesPrice decimal(10,2) not null,--��Ʒ�����Amount decimal(10,2) not null 
)
--Ա����Ϣ��
create table Employee(
--Ա�����
Eid int primary key identity(1001,1),
--Ա������
Ename varchar(50) not null,--Ա������Epassword varchar(10) check(len(Epassword)>6),
Remark varchar(20)
)
--���ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������
Wid int not null foreign key references Ware(Wid),
--Ա���ı�ţ������������Eid int not null foreign key references Employee(Eid),
--��Ʒ����ʱ��
SalesDate nvarchar(20) not null,
--��Ʒ��������
SalesAmount varchar(10) check(len(SalesAmount)>0),
)
