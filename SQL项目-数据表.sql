--������Ʒ����Category��
create table Category(
cid int primary key identity(1,1),--�������
cname nvarchar(10) not null unique,--�������--unique������ΨһԼ�����涨���е�ֵ�����ظ���
Description nvarchar(20)null --�������
)
--������Ʒ��Ϣ��Ware��
create table Ware(
wid int primary key identity(1,1),--��Ʒ�ı�ţ��������룩
wname nvarchar(20) not null unique,--��Ʒ����
cid int not null foreign key references category(cid),--��Ʒ��������������
PurchasePrice decimal(10,2) not null,--��Ʒ����SalesPrice decimal(10,2) not null,--��Ʒ�ۼ�
Amount decimal(10,2) not null --��Ʒ�����
)
--����Ա����Employee��
create table Enployee(
Eid int primary key identity(1001,1),--Ա�����
Ename nvarchar(10) not null ,--Ա������ 
Epassword varchar(10) check(len(Epassword)>6),--Ա�����룬��������λRemark nvarchar(50)null,--��ע���ɲ���
)
--�������ۼ�¼��SalesInfo��
create table SalesInfo(
Sid int primary key identity(1,1),--
wid int not null foreign key references ware(wid), --�����۵���Ʒ�ı�ţ������������
SalesDate nvarchar(30) not null,--��Ʒ���۵�ʱ��
SalesAmount int not null default 1,--��Ʒ���۵������������ұ������0
eid  int not null foreign key references Enployee(eid) --����Ա�ı�ţ������������
)
--drop table <����>ɾ����
drop table Ware 
drop table Category
drop table Employee
drop table SalesInfo


select*from ware
select*from Enployee
select*from SalesInfo
select*from Category