--��ѯ
select*from Category
select*from Ware
select*from Employee
select*from Salesinfo
--������Ʒ�������
insert into Category(Cname,Description)values('����','���')
insert into Category(Cname,Description)values('ʳƷ','�Ե�')
insert into Category(Cname,Description)values('��Ʒ','�ȵ�')
insert into Category(Cname,Description)values('���','���')
insert into Category(Cname,Description)values('��װ','����')
--������Ʒ��Ϣ����
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('���ﰲȫ����','1','100','150','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('����ʼǱ�����','1','6000','7500','10')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('���������','2','10','15','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('���﷨ʽС���','2','5','7','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('�����̲�','3','3','5','2000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('���￧��','3','4','6','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('�ɻ�ģ��','4','100','120','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('������������','4','10','15','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('ƻ��X','4','100','9000','10')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('����֮������','5','100','250','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('�����˹���','5','30','50','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('����ƤЬ','5','200','350','100')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('������������','2','1','3','1000')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('���Ƶ羺��ʾ��','1','9000','10000','5')
insert into Ware(Wname,Cid,PurchasePrice,SalesPrice,Amount)values('��ڹ�����ˮ','3','3','4','500')
--����Ա����Ϣ����
insert into Employee(Ename,EpassWord,Remark)values('����','1234567','���������')
insert into Employee(Ename,EpassWord,Remark)values('��ҫ��','1234567','��ñ����')
insert into Employee(Ename,EpassWord,Remark)values('������','1234567','������˿')
insert into Employee(Ename,EpassWord,Remark)values('��ɭ','1234567','ϲ��**')
insert into Employee(Ename,EpassWord,Remark)values('��˧','1234567','ϲ������')
--�������ۼ�¼����
Update Ware set Amount=Amount-20 where Wname='��ڹ�����ˮ'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid)values(15,'2017-12-19',20,1001)Update Ware set Amount=Amount-20 where Wname='��ڹ�����ˮ'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid)values(15,'2017-12-19',20,1001)Update Ware set Amount=Amount-1 where Wname='ƻ��X'Insert into SalesInfo(wid,SalesDate,SalesAmount,Eid)values(9,'2017-12-18',1,1001)