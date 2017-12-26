--�½����ݿ�
create database SuperMarket on(
name = 'marketmdf',
filename='c:\SuperMarket.mdf',
size = 3MB,
filegrowth=2MB
)
log on(
name='marketldf',
filename='c:\SuperMarket.ldf',
size=2MB,
filegrowth=10%
)

--�½����ݱ�
--��Ʒ����
create table Category(
cid int primary key identity(1,1),--�������
Cname nvarchar(20) not null unique,--�������
Description nvarchar(20) null --���
)
select*from Category
--��Ʒ��Ϣ��
create table Ware(
wid int primary key identity(1,1),--��Ʒ����
Wname nvarchar(10) not null unique,--��Ʒ����
Cid int not null foreign key references Category(cid),--������
PurchasePrice decimal(10,2) not null,--��Ʒ����
SalesPrice decimal(10,2) not null,--��Ʒ�ۼ�
Amount int not null--��Ʒ�����
)

select*from Ware
--Ա����
create table Employee(
Eid int primary key identity(1001,1),--Ա�����
Ename nvarchar(10) not null,--Ա������
Epassword nvarchar(10)check(len(Epassword)>6),--Ա������
Remark nvarchar(50) null--��ע
)
Select*from Employee
--���ۼ�¼��
create table saleslnfo(
Sid int primary key identity(1,1),--���ۼ�¼����
Wid int not null foreign key references ware (wid),--��Ʒ���
SalesDate nvarchar(10) not null,--��Ʒ����ʱ��
SalesAmount int not null default 1,--��Ʒ��������
Eid int not null foreign key references Employee(Eid )
)
Select*from saleslnfo
select*from Category
select*from Ware
Select*from  Employee

drop database Category
drop database Ware
drop database  Employee
drop database saleslnfo

insert into Category (cname)values('ʳƷ')
insert into Category (cname)values('����')
insert into Category (cname)values('����Ʒ')
insert into Category (cname)values('��װ')


insert into ware(wname,cid,purchaseprice,salesprice,amount)values('����',1,3,5,232)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('�����յ�',2,1200,2400,30)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('Ʈ��ϴ��ˮ',3,1000,1800,70)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('�Ϳ��˶�Ь',4,200,500,300)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('����',1,0.3,1,300)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('��������',2,1500,2875,25)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('���ϰ�ҩ����',3,6.8,15,300)
insert into ware(wname,cid,purchaseprice,salesprice,amount)values('�ز���Ь',4,158,307,300)

insert into Employee(Ename,Epassword)values('tom',11111111)
insert into Employee(Ename,Epassword)values('jake',1234567)
insert into Employee(Ename,Epassword)values('����',2222222)
insert into Employee(Ename,Epassword)values('����',3333333)
insert into Employee(Ename,Epassword)values('����',4444444)



--insert into saleslnfo(wid,Salesdate,salesamount,eid)values(2,'2017-11-11',5,1001)
--insert into saleslnfo(wid,Salesdate,salesamount,eid)values(5,'2017-11-11',3,1002)
--insert into saleslnfo(wid,Salesdate,salesamount,eid)values(5,'2017-12-07',5,1004)

update ware set amount=amount-1 where wname='�ز���Ь'
insert into saleslnfo values(8,'2009-10-1',5,1003)


select*from Ware
Select*from saleslnfo

--ÿ����Ʒ����
select wid,wname,salesprice-purchaseprice as���� from ware order by salesprice-purchaseprice  desc


--��Ʒ������
select wname,sum(salesamount)as������ from ware w,saleslnfo s
where w.wid=s.wid group by wname order by sum(salesamount)desc





--��Ʒ����������
select Cname,sum(SalesAmount) as ������ from Category c,Ware w,Saleslnfo s
where c.Cid=w.Cid and w.Wid=s.Wid group by Cname


--ÿ����Ʒӯ���ܶ�
select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ�
from Ware w,Saleslnfo s where w.Wid=s.Wid group by Wname

