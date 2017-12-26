--�½����ݿ� supermarket
create database supermarket on (
name= 'supermarket',
filename = 'd:\supermarket.mdf',
size = 3MB,
maxsize = 50MB,
filegrowth = 2MB
)
--�½���־�ļ�
log on(name = 'supermarket_log',
 filename = 'd:\supermarket_log.ldf',
 size = 2MB,
  maxsize = 50MB,
filegrowth = 10%
)


--������  �½���Ʒ����
create table Category(
--�Զ����� ��һ��ʼ ����
Cid int primary key identity(1,1),
-- �������� ���ܿ��в����ظ�
Cname nvarchar(10)not null unique,
--�����������Ϊ��
Description nvarchar(10)null
)

--������Ʒ��Ϣ��
create table Ware(
--��� ����
Wid int primary key ,
--��Ʒ���� �����Ҳ����ظ�
Wname nvarchar(10)not null unique,
--��Ʒ������������������
Cid int foreign key references Category (cid) null,
--��Ʒ���� ����������㡣
PurchasePrice  decimal (10,2) not null,
--��Ʒ�ۼۣ����������SalesPrice decimal (10,2) not null,--��Ʒ����������������
Amount decimal (10,2) not null
)
--����Ա����
create table Employee(
--Ա����ţ����� �Զ�������1001��ʼ
Eid int primary key identity(1000,1),
--Ա������ ����
Ename nvarchar(10)not null,
--Ա������ ��������λ
Epassword varchar(10) check(len(Epassword)>6),--��ע���Բ���Remark nvarchar(10)null,
)
--�������ۼ�¼��
create table Salesinfo (
--�������Զ�������1��ʼ 
sid int primary key identity(1,1),
--�����۵���Ʒ��ţ������������
Wid int foreign key references Ware(Wid) not null,
--��Ʒ������ʱ�䣬����
SalesDate datetime not null,
--��Ʒ���۵������������ұ������0
SalesAmount decimal(10,2) not null,
--����Ա�ı�� �������������
Eid int not null foreign key references Employee(Eid)
)
--������ݵ���Ʒ����
insert into Category (cname ) values('ʳƷ��')insert into Category (cname ) values('�ջ���')
insert into Category (cname ) values('������')
insert into Category (cname ) values('�ҵ���')

--������ݵ� ��Ʒ��Ϣ��
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61601','������������',1,'1.5','2','500')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61602','С�ܱ���',1,'2','3','500')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61603','Ʈ��ϴ��ˮ',2,'8','10','500')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61604','ŷ������ʿϴ����',2,'10','20','300')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61605','���ϴ�˹�˶�Ь',3,'300','500','100')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61606','��˻��Ƽп�',3,'300','1000','100')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61607','ȫ�Զ�ϴ�»�',4,'1500','2500','50')
insert into Ware (Wid ,Wname, Cid ,PurchasePrice ,SalesPrice, Amount) values ('61608','�����������',4,'150','300','100')
--������ݵ�Ա����
insert into  Employee (Ename,Epassword)values('������','1234567')
insert into  Employee (Ename,Epassword)values('Ԭ�ӽ�','12345678')
insert into  Employee (Ename,Epassword)values('�Ŵ�','123456789')
insert into  Employee (Ename,Epassword)values('�����','0123456789')

--���ۼ�¼��SalesInfo�����£�
Update Ware set Amount=Amount-1 where Wname='Ʈ��ϴ��ˮ'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid) values(61603,'2017-11-21','2',1001)
--��ѯ��
select*from Category 
select*from Ware
select*from Employee
select*from Salesinfo
delete from 

--��ѯÿ����Ʒ�ı�� ���ƣ� ��Ʒ���󣬲���������Ӹߵ������С�
select  wid,wname,salesPrice-purchasePrice as ���� from  ware order by ���� desc  
--ͳ��ÿ����Ʒ������������ʾ��Ʒ�����Ƽ����������������������Ӹߵ�������
select w.wname,sum(s.salesamount)as ������ from
ware w, salesinfo s where w.wid=s.wid group by wname order by ������ desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select c.cname,sum(s.salesamount)as ������ from
category c,salesinfo s,ware w where c.cid=w.cid and w.wid=s.wid group by c.cname
--ͳ��ÿ����Ʒ��ĿǰΪֹ��������
select w.wname,sum((w.salesprice-w.purchaseprice)*s.salesamount) as ������ from
ware w,salesinfo s where w.wid=s.wid group by wname
--����Ա1002������5��61604����Ʒ
update ware set amount=amount-5 where wname='ư��ϴ��¶'
insert into salesinfo(Wid,SalesDate,SalesAmount,Eid)values('61604','2017-12-21','2',1002)
--�������ܶ������Ա��������
select e.ename,sum((w.salesprice-w.purchaseprice)*s.salesamount) as ���۶� from
employee e,salesinfo s,ware w where e.eid=s.eid group by e.ename order by ���۶� desc 

--��ѯ��Ʒ����������ǰ�����Ʒ���Ƽ�����
select top 5 w.wname,sum(s.salesamount) as ������ from
ware w,salesinfo s where w.wid=s.wid group by w.wname order by ������ desc
--ͳ��2017����Ʒ����������ǰ�����Ʒ���Ƽ�����
select top 5 w.wname,sum(s.salesamount) as ������ from
ware w,salesinfo s where w.wid=s.wid and S.SalesDate between'2017-12-03' and '2017-12-21'
group by w.wname order by ������ desc

--ͳ��ÿ��Ա����2017�����������ʾԱ������������Ʒ����
select e.ename,sum(s.salesamount) as ������ from
employee e,salesinfo s where e.eid=s.eid
group by e.ename order by ������ desc

select sum((w.salesprice-w.purchaseprice)*s.salesamount) as ������ from
ware w,salesinfo s where w.wid=s.wid  and S.salesdate between'2017-01-001'and'2017-12-31'

