-- �鿴��Ʒ����(Category)��
select*from Category
-- �鿴��Ʒ��Ϣ��Ware����
select*from Ware
-- �鿴Ա����Employee����
select*from Employee
-- �鿴���ۼ�¼�� SalesInfo����
select*from  SalesInfo
--�����Ʒ����
--delete Category where 
insert into Category (cname,Description)values('������','ֻ��90��װ��')
insert into Category (cname,Description)values('������','ֻ��90��װ��')
insert into Category (cname,Description)values('����װ��','ֻ��90��װ��')
insert into Category (cname,Description)values('�ƺ���','������ǿ')
insert into Category (cname,Description)values('������','ֻ��90��װ��')
--�޸���Ϣ
--update Category set Description='��ʳ��' where Description='��Ʒ��'
--�����Ʒ��Ϣ
--������
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��������','1','999','1388','50')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��Ӱ����','1','999','1388','50')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��������','1','999','1388','50')
--������
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��������','2','99','338','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����������','2','99','338','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����������','2','99','338','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�����껤��','2','99','338','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('������սѥ','2','99','338','40')
--����װ��'
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����˹�Ļƽ�','3','99','199','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('Ӣ����������','3','99','199','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��������ʯ��','3','99','199','15')
--�ƺ���
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��֮��ս','4','338','2200','20')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�������','4','199','2200','20')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��������','4','1000','4200','20')
--������
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�����ǵ�ָ��','5','135','200','30')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��֮Ϣ','5','135','200','30')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��Ȫ����','5','135','200','30')
--�޸���Ϣ
--update Ware( set 
--���Ա����Ϣ
insert into Employee(Ename,Epassword,Remark)values('����','1234567','�ͷ�С��һ��')
insert into Employee(Ename,Epassword,Remark)values('С��','1234567','�ͷ�С�ö���')
insert into Employee(Ename,Epassword,Remark)values('����','1234567','�ͷ�С������')
insert into Employee(Ename,Epassword,Remark)values('����','1234567','�ͷ�С���ĺ�')
--�޸���Ϣ
--update Employee set 
--������ۼ�¼(SalesInfo)
Update Ware set Amount=Amount-1 where Wname='�������'Insert into SalesInfo values(17,'2017-12-24',1,1001)Update Ware set Amount=Amount-1 where Wname='��Ȫ����'Insert into SalesInfo values(13,'2017-12-24',1,1001)Update Ware set Amount=Amount-1 where Wname='��֮Ϣ'Insert into SalesInfo values(16,'2017-12-29',1,1001)Update Ware set Amount=Amount-1 where Wname='����������'Insert into SalesInfo values(6,'2017-12-20',1,1001)Update Ware set Amount=Amount-1 where Wname='��������ʯ��'Insert into SalesInfo values(11,'2017-10-4',1,1001)Update Ware set Amount=Amount-1 where Wname='��������'Insert into SalesInfo values(3,'2018-1-14',1,1001)Update Ware set Amount=Amount-1 where Wname='����˹�Ļƽ�'Insert into SalesInfo values(9,'2018-2-14',1,1001)