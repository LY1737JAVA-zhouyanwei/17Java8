
--��Ʒ������
insert into Category (cname,Description)values('ʳƷ��','���ԳԵĶ���')
insert into Category(cname,Description)values('���û�Ʒ','�ճ���Ʒ')
insert into Category(cname,Description)values('��װ��','�·�')
insert into Category(cname,Description)values('�ҵ���','')
--ɾ��
select*from Category
----��Ʒ���
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('��¶������',2,'13','20','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('ϴ�»�',4,'1320','3000','500')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('����',1,'5','10','10000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('ë��',3,'50','280','350')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('����ϴ��ˮ',2,'20','50','1200')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('���',1,'2','3','10000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values ('ϴ�ྫ',2,'2','3','10000')
--ɾ��
select*from Ware
----Ա����Ϣ���
insert into Employee(Ename,Epassword,Remark)values('�ϴ�','1234567','')
insert into Employee(Ename,Epassword,Remark)values('������','1234568','��')
insert into Employee(Ename,Epassword,Remark)values('������','1234569','')
insert into Employee(Ename,Epassword,Remark)values('������','1234560','')
--ɾ��
select*from Employee
----���ۼ�¼
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('4','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('2','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('3','2017-8-15','50','1021')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('5','2017-8-15','50','1021')insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('4','2017-8-15','500','1021')--ɾ��select*from SalesInfo