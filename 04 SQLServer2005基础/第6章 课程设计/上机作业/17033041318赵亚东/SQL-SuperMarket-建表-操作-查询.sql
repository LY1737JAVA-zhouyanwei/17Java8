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
PurchasePrice decimal(10,2) not null,
SalesPrice decimal(10,2) not null,
Amount decimal(10,2) not null
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
insert into Category(cname,description) values('ʳƷ��','�Ե�')
insert into Category(cname,description) values('�ջ���','�õ�')
insert into Category(cname,description) values('��װ��','����')
insert into Category(cname,description) values('�ҵ���','���')

--��������� ��Ʒ��Ϣ�� ��Ware��
insert into Ware values('10001','��������',1,'3.8','5','500')
insert into Ware values('10002','�ǳ�����',1,'0.1','2','500')
insert into Ware values('10003','��SOD��',2,'2.3','6','500')
insert into Ware values('10004','ư��ϴ��¶',2,'10','18','500')
insert into Ware values('10005','���ϴ�˹�˶���',3,'50','388','200')
insert into Ware values('10006','�ǵ��˶�Ь',3,'20','288','200')
insert into Ware values('10007','���������',4,'100','258','100')
insert into Ware values('10008','���Ƶ��ӻ�',4,'1500','3000','100')

--��������� Ա���� ��Employee��
insert into Employee values('����','1234567','���')
insert into Employee values('������','3456789','���')
insert into Employee values('������','4567898','����')

--��������� ���ۼ�¼�� ��Salesinfo��
update Ware set Amount=Amount-1 where Wname='��������'
insert into Salesinfo values('10001','2017-12-03','1',1007)

update Ware set Amount=Amount-1 where Wname='Ʈ��ϴ��ˮ'
insert into Salesinfo values('10004','2017-12-03','1',1008)

update Ware set Amount=Amount-1 where Wname='���������'
insert into Salesinfo values('10007','2017-12-03','1',1009)



--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������select wid,Wname,SalesPrice-PurchasePrice As '����'from Ware order by SalesPrice-PurchasePrice desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������select Wname,sum(SalesAmount)As '������'
from Ware W, Salesinfo S 
where w.wid=s.wid group by Wname
--ͳ��ÿ����Ʒ������������ʾ��Ʒ��������������������Ӹߵ�������select Cname,sum(SalesAmount) as '������'from Category c,Ware w,SalesInfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount)AS 'ӯ���ܶ�' 
from Ware W,Salesinfo S
where W.wid=S.wid group by Wname



--��Ʒ���ѯ
select*from Category
--��Ʒ��Ϣ��ѯ
select*from Ware
--Ա����Ϣ��ѯ
select*from Employee
--���ۼ�¼��ѯ
select*from Salesinfo






--���������ܶ������Ա����
select Ename, sum((salesprice-purchaseprice)*salesamount)as '�����ܶ�'
from employee E,salesinfo S,ware W
where w.wid=s.wid and e.eid=s.eid
group by Ename order by '�����ܶ�' desc
--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 Wname ,sum(s.salesamount)as '������'from Ware w,Salesinfo swhere w.wid=s.widgroup by w.wname order by '������' desc--ͳ��2010�����Ʒ����������ǰ��������Ʒ���Ƽ�������select top 5 w.Wname ,sum(salesamount)as '������'from Ware w,Salesinfo swhere w.wid=s.wid and s.SalesDate  between'2015-01-01'and'2019-12-31'group by w.wname order by '������' desc--ͳ��ÿ��Ա����2010�������������ʾԱ�����Ƽ���������select wname ,sum(salesamount)as '������'from ware w,salesinfo swhere w.wid=s.wid and s.SalesDate between '2016-01-01'and'2019-12-31'group by w.wname order by '������' desc--ͳ��2010���������select sum((w.salesprice-w.purchaseprice)*salesamount)������from ware w,Salesinfo swhere w.wid = s.wid and s.SalesDate between'2016-01-01'and'2018-12-31'