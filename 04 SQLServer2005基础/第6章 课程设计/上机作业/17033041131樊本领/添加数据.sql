select*from category
select*from ware
select*from  Employee
select*from SalesInfo

insert into category(cname,Description) values('ʳƷ��', '�Ե�')
insert into category(cname,Description) values('�ջ���Ʒ', '�õ�')
insert into category(cname,Description) values('��װ��', '����')
insert into category(cname,Description) values('�ҵ���', '����') 


insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('����', '1','30','65','64')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('һ�伦��', '1','44','78','80')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('��¶������', '2','6.5','14','231')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('��������', '2','6.5','12','121')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('����˿', '2','5','27','200')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('Ʈ��', '2','3.5','9.9','111')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('SF�����', '3','100','399','12')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('xfС�ſ�', '3','77','174','20')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('�յ�', '4','3000','3699','9')
insert into	ware(Wname,Cid,PurchasePrice,SalesPrice,Amount) values('��ˮ��', '4','2000','2399','6')





insert into Employee(Ename,Epassword,Remark) values('��Ӣ',1000100,'�������')
insert into Employee(Ename,Epassword,Remark) values('������',1000101,'����')
insert into Employee(Ename,Epassword,Remark) values('����',1000102,'�������')
insert into Employee(Ename,Epassword,Remark) values('����',1000103,'���')


--���ۼ�¼��
update ware set Amount = Amount-1 where Wname='����'
insert into SalesInfo(wid,eid,SalesDate,SalesAmount)values('1',1001,'2017-02-01',1)
update ware set Amount = Amount-1 where Wname = '����˿'
insert into SalesInfo(wid,eid,SalesDate,SalesAmount)values('5',1001,'2017-04-01',1)
