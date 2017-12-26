--��Ʒ����
create table Category(
--�Զ���������1��ʼ������
    Cid int primary key identity(1,1),--�������ƣ�����Ϊ���Ҳ����ظ�    cname nvarchar(10) not null unique,--�������������Ϊ��    Description nvarchar(20)
) 
--��Ʒ��Ϣ��
create table Ware(
--��Ʒ�ı�ţ��������룩������
   Wid int primary key identity(1,1),--��Ʒ���ƣ������Ҳ����ظ�   Wname nvarchar(20) not null unique,
--��Ʒ��������������������
   Cid int not null foreign key references Category(Cid),
--��Ʒ���ۣ��������0
   PurchasePrice nvarchar(30)  check(len(PurchasePrice)>0),--��Ʒ�ۼۣ��������0   SalesPrice decimal(10,2) not null,--��Ʒ��������������0   Amount decimal(10,2) not null
)
--Ա����
create table Employee(
--Ա����ţ��������Զ���������1001��ʼ
    Eid int primary key identity(1001,1),--Ա������������    Ename nvarchar(3) not null,--Ա�����룬��������λ    Epassword varchar(10) check(len(Epassword)>6),--��ע���ɲ���    Remark nvarchar(30) 
)  
--���ۼ�¼��
create table SalesInfo(
--�������Զ���������1��ʼ
    Sid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������
    Wid  int not null foreign key references ware(Wid),
--��Ʒ���۵�ʱ�䣬����
    SalesDate nvarchar(20) not null,--��Ʒ���۵������������ұ������0    SalesAmount decimal(10,2) not null,--����Ա�ı�ţ������������    Eid int not null foreign key references Employee(Eid)
)
--ɾ����                                                                                                                                                                                                                 
drop table Employee
drop table Ware
drop table Category
drop table SalesInfo
