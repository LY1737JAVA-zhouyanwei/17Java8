--��ѯ��Ʒ���������
select*from Category
--��ѯ��Ʒ������
select*from Ware
--��ѯԱ����Ϣ������
select*from Employee
--��ѯ���ۼ�¼���select*from SalesInfo
--��Ʒ������
insert into Category (cname,Description)values('ʳƷ��','���ԳԵĶ���')
insert into Category(cname,Description)values('���û�Ʒ','�ճ���Ʒ')
insert into Category(cname,Description)values('��װ��','�·�')
insert into Category(cname,Description)values('�ҵ���','')

----��Ʒ���
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('��¶������',2,'13','20','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('ϴ�»�',4,'1320','3000','500')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('����',1,'5','10','10000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('ë��',3,'50','280','350')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('����ϴ��ˮ',2,'20','50','1200')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('���',1,'2','3','10000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('ϴ�ྫ',2,'2','3','10000')

----Ա����Ϣ���
insert into Employee(Ename,Epassword,Remark)values('�ϴ�','1234567','')
insert into Employee(Ename,Epassword,Remark)values('������','1234568','��')
insert into Employee(Ename,Epassword,Remark)values('������','1234569','')
insert into Employee(Ename,Epassword,Remark)values('������','1234560','')

----���ۼ�¼
update Ware set Amount=Amount-50 where Wname='��¶������'
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values(2,'2010-08-15','50',1002)
update Ware set Amount=Amount-50 where Wname='ϴ�»�'
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values(2,'2010-03-15','50',1002)
update Ware set Amount=Amount-50 where Wname='����'
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values(3,'2010-04-15','500',1003)
update Ware set Amount=Amount-50 where Wname='����ϴ��ˮ'
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values(4,'2010-08-15','50',1004)update Ware set Amount=Amount-50 where Wname='���'insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values(5,'2010-09-15','500',1004)-- ɾ�����е�����delete from Ware where Wname='ϴ�ྫ' 