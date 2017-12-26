--������Ʒ���� ��Category��
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(20) unique not null,
Description nvarchar(25) null 
)
--������Ʒ��Ϣ�� ��Ware��
create table Ware(
Wid int primary key,
Wname nvarchar(30) unique not null,
Cid int not null foreign key references Category(Cid),
PurchasePrice decimal(10,2) not null,--����
SalesPrice decimal(10,2) not null,--�ۼ�
Amount decimal(10,2) not null--�����
)

--����Ա���� ��Employee��
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(4) not null,
Epassword nvarchar(10) check(len(Epassword)>6),
Remark nvarchar(50)
)

--�������ۼ�¼�� ��Salesinfo��
create table Salesinfo(
Sid int primary key identity(1,1),
Wid int foreign key references Ware(Wid) not null,
SalesDate datetime not null,
SalesAmount decimal(10,2) not null,
Eid int not null foreign key references Employee(Eid)
)

--��������� ��Ʒ����Category��
insert into Category(cname,description) values('ʳƷ��')
insert into Category(cname,description) values('�ջ���')
insert into Category(cname,description) values('��װ��')
insert into Category(cname,description) values('�ҵ���')

--��������� ��Ʒ��Ϣ�� ��Ware��
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61601','��˧��������',1,'3.8','5','500')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61602','ũ����Ȫ��Ȫˮ',1,'0.1','2','6000')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61603','��������',2,'2.3','6','2333')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61604','ư��ϴ��¶',2,'10','18','2333')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61605','adivas�˶���',3,'50','388','200')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61606','HIKE�˶�Ь',3,'20','288','150')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61607','�� ���� �����',4,'100','258','100')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amount)values('61608','�� ľ�� �����̻�',4,'1500','3000','50')

--��������� Ա���� ��Employee��
insert into Employee(Ename,Epassword)values('��������','1234567896')
insert into Employee(Ename,Epassword)values('Ϭ����','1234567897')
insert into Employee(Ename,Epassword)values('���Ƿ�','1234567898')
insert into Employee(Ename,Epassword)values('����','1234567899')

--��������� ���ۼ�¼�� ��Salesinfo��
update Ware set Amount=Amount-1 where Wname='��������'
insert into Salesinfo(Wid,SalesDate,SalesAmount,Eid)values('61603','2017-12-03','1',1001)
update Ware set Amount=Amount-20 where Wname='ũ����Ȫ��Ȫˮ'
insert into Salesinfo(Wid,SalesDate,SalesAmount,Eid)values('61602','2017-12-19','1',1002)

--��ѯ��
select*from Category
select*from Ware
select*from Employee
select*from Salesinfo


--1.��ѯÿ����Ʒ�ı�ţ����ƣ���Ʒ���󲢴Ӹߵ��׽�������
select wid,Wname,SalesPrice-PurchasePrice as ���� from ware order by ���� desc
--2.ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ�����������������Ӹߵ�������
select Wname,sum(SalesAmount) as ������ from Ware W,SalesInfo S where
W.wid=S.wid group by Wname order by sum(SalesAmount) desc
--3.ͳ��ÿ����Ʒ��������,��ʾ��Ʒ���������
select cname,sum(SalesAmount) as  ������
from Category c,Ware w,SalesInfo s
where c.cid=w.cid and w.wid=s.wid 
group by c.cname
--4.ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.wname,sum(s.salesamount*(w.salesprice-w.purchaseprice))
from ware w,salesInfo s
where w.wid=s.wid group by w.wname
--5.����Ա2������5��1����Ʒ
update ware set amount=amount-5 where wid=61602
insert into salesInfo(Wid,eid,salesdate,salesamount) values(61602,1002,'2012-06-30',5)
--6.���������ܶ������Ա����
select e.ename,sum((w.salesprice-w.purchaseprice)*s.salesamount) as �����ܶ�
from employee e,salesInfo s,ware w where e.eid=s.eid and w.wid=s.wid
group by e.ename order by �����ܶ� desc
--7.��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.wname,sum(s.salesamount) ����
from ware w,salesInfo s where w.wid=s.wid
group by w.wname order by ���� desc
--8.ͳ��2017�����Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.wname,sum(s.salesamount) ����
from ware w,salesInfo s where w.wid=s.wid and s.salesdate
between'2017-12-03'and '2017-12-19' group by w.wname
order by ���� desc
--9.ͳ��ÿ��Ա����2017�����������ʾԱ�����Ƽ���������
select e.ename,sum(s.salesamount) ���� from employee e,salesInfo s
where e.eid=s.eid and s.salesdate between'2017-12-03'and '2017-12-19' 
group by e.ename order by ���� desc
--10.ͳ��2017���������
select sum((w.salesprice-w.purchaseprice)*s.salesamount)
from ware w,salesInfo s where w.wid=s.wid and s.salesdate
between'2017-12-03'and '2017-12-19'









