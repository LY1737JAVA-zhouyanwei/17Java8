select*from Category
select*from ware
select*from Employee
select*from SalesInfo
--���������Ʒ����
insert into Category (Cname,Description ) values('ʳƷ��','ʳ��')
insert into Category (Cname,Description ) values('�ջ���Ʒ','������Ʒ')
insert into Category (Cname,Description ) values('��װ��','�·�')
insert into Category (Cname,Description ) values('�ҵ���','')
--���������Ʒ��Ϣ��
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount ) values('��¶������','1','4.50','5.80','231')
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount ) values('��������','1','1.80','2.70','120')
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount ) values('��������','1','2.60','4.20','96')
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount ) values('����˿ϴ��ˮ','1','12.70','15.90','56')
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount ) values('Ʈ��ϴ��ˮ','1','8.10','12.30','103')
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount ) values('����ϴ��ˮ','1','19.40','26.90','65')
--�������Ա����
insert into Employee (Ename,Epassword,Remark) values('������','8888888','���³�')
insert into Employee (Ename,Epassword,Remark) values('����','8848561','����')
insert into Employee (Ename,Epassword,Remark) values('����','8848520','���ڹ�')
insert into Employee (Ename,Epassword,Remark) values('��Сˬ','8848567','���ڹ�')
insert into Employee (Ename,Epassword,Remark) values('����','8848569','���ڹ�')
insert into Employee (Ename,Epassword,Remark) values('������','8848562','��ʱ��')
insert into Employee (Ename,Epassword,Remark) values('������','8848568','��ʱ��')
insert into Employee (Ename,Epassword,Remark) values('�����','8848566','��ʱ��')
--����������ۼ�¼��
Update Ware set Amount = Amount-1 where Wname = '��¶������'
Insert into SalesInfo values(2,'2017-12-19',1,1006)