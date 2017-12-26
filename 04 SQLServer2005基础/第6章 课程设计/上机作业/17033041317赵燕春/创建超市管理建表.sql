--1.��Ʒ����
 create table Category(
--�������
     cid int primary key identity(1,1),
--�������
      cnam nvarchar(20) not null unique,
--�������
      Description nvarchar(50)
)
 

--2.��Ʒ��Ϣ��
create  table Ware(
--��Ʒ����   
     wid int primary key identity(1,1),
--������
      cid int foreign key references Category(cid),
--��Ʒ����
      wname nvarchar(50) not null unique,
--��Ʒ����
      PurchasePrice decimal(10,2 )not null,
--��Ʒ�ۼ�
       SalesPrice decimal(10,2 )not null,
--�����
      Amount int not null 
)
  
--3.Ա����Employee��
create table Employee(
--Ա������
      Eid int primary key identity(1001,1),
--Ա������
      Ename nvarchar(20) not null,
--Ա������
      Epassword varchar(20) not null,
--��ע
      Remark varchar(20)
)


--4.���ۼ�¼��SalesInfo��
create table SalesInfo(
--���ۼ�¼����
      Sid int primary key identity(1,1),
--��Ʒ���
      Wid int foreign key references ware(wid),
--����ʱ��
      SalesDate nvarchar(30)  not null,
--��������
       SalesAmount  int not null  default 1 ,
--����Ա��ţ������
        Eid int foreign key references Employee(eid)
)
