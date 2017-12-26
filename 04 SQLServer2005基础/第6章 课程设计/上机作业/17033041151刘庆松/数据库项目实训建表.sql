--������Ʒ����
create table Category(
--�Զ���������1��ʼ������
Cid int primary key identity(1,1),--�������ƣ�����Ϊ���Ҳ����ظ�Cname nvarchar(10) not null unique,--�������������Ϊ��Description nvarchar(20) null
)
--��Ʒ��Ϣ��Ware��
create table Ware(
--��Ʒ�ı�ţ��������룩������
Wid int primary key identity(1,1),--��Ʒ���ƣ������Ҳ����ظ�Wname nvarchar(20) not null unique,--��Ʒ��������������������Cid int not null foreign key references Category(cid),
--��Ʒ���ۣ��������0
PurchasePrice decimal(10,2) not null,--��Ʒ�ۼۣ��������0SalesPrice decimal(10,2) not null,--��Ʒ��������������0Amount decimal(10,2) not null
)
--Ա����Employee��
create table Employee(
--Ա����ţ��������Զ���������1001��ʼ
Eid int primary key identity(1001,1),
--Ա������������
Ename nvarchar(10) not null,
--Ա�����룬��������λ
Epassword varchar(10) check(len(Epassword)>6),--��ע���ɲ���Remark nvarchar(20) not null
)
--���ۼ�¼��SalesInfo��
create table SalesInfo(
--�������Զ���������1��ʼ
Sid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������
Wid int foreign key references ware(Wid),
--��Ʒ���۵�ʱ�䣬����
SalesDate datetime not null,
--��Ʒ���۵������������ұ������0
SalesAmount int not null default 1,
--����Ա�ı�ţ������������
Eid int not null foreign key references Employee(Eid)
)
select*from Category
select*from ware
select*from Employee
select*from SalesInfo