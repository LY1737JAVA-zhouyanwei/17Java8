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
insert into Category (cname,Description)values('ˮ','ʳƷ��')
insert into Category (cname,Description)values('��','�����')
insert into Category (cname,Description)values('�·�','��װ��')
insert into Category (cname,Description)values('����','�ҵ���')
insert into Category (cname,Description)values('��Ʒ','������')
--�޸���Ϣ
--update Category set Description='��ʳ��' where Description='��Ʒ��'
--�����Ʒ��Ϣ
--��Ʒ��
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����','1','2','4','100')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��֭','1','1','2','100')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��ʽ���','1','3','5','100')
--�����
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����','2','22','45','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����ʥĸԺ','2','20','35','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('¥���Ź�','2','19','39','40')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('���ѧ','2','20','35','40')
--��װ��
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�¿�T��','3','50','135','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��ɫ����','3','99','235','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����ţ�п�','3','60','135','15')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�¿�Ь��','3','150','335','15')
--�ҵ���
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�¿����','4','1150','2335','20')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('������','4','350','535','20')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('�¿�ϴ�»�','4','1050','1535','20')
--������
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('���','5','135','200','30')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('��ʯ','5','135','200','30')
insert into Ware(Wname,cid,PurchasePrice,SalesPrice,Amount)values('����','5','135','200','30')
--�޸���Ϣ
--update Ware( set 
--���Ա����Ϣ
insert into Employee(Ename,Epassword,Remark)values('��','1234567','ʵϰ��')
insert into Employee(Ename,Epassword,Remark)values('��','1234567','Ա��') 
insert into Employee(Ename,Epassword,Remark)values('��','1234567','ʵϰ��')
insert into Employee(Ename,Epassword,Remark)values('��','1234567','Ա��')
--�޸���Ϣ
--update Employee set 
--������ۼ�¼(SalesInfo)
Update Ware set Amount=Amount-1 where Wname='����'Insert into SalesInfo values(4,'2017-10-4',1,1001)Update Ware set Amount=Amount-1 where Wname='���'Insert into SalesInfo values(32,'2017-12-24',1,1001)Update Ware set Amount=Amount-1 where Wname='��ʯ'Insert into SalesInfo values(33,'2017-12-20',1,1001)Update Ware set Amount=Amount-1 where Wname='����'Insert into SalesInfo values(4,'2017-10-4',1,1001)--1.��ѯÿ����Ʒ�ı�ţ����ƣ���Ʒ���󣬲����յ�Ʒ��������
select wid,Wname,SalesPrice-PurchasePrice as ���� from Ware
 order by ���� desc
--2.ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select w.Wname,sum(s.SalesAmount) as ������ from Ware w,SalesInfo s
 where w.wid=s.wid group by wname order by ������ desc
--3.ͳ��ÿ����Ʒ�������� ����ʾ��Ʒ���������
select  c.cname,sum(s.SalesAmount) as ������
 from Category c,Ware w,SalesInfo s  
where c.cid=w.cid and w.wid=s.wid group by cname 
--4.ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.wname,sum((w.Salesprice-w.purchaseprice)*s.SalesAmount) as ӯ���ܶ�
from ware w,SalesInfo s
where w.wid =s.wid group by wname
--5.����Ա1001����5��1����Ʒ
update ware set amount=amount-5 where wid=1
insert into SalesInfo values(1,'2017-1-1',5,1001)
--6.���������ܶ������Ա��������
select e.ename ,sum((w.Salesprice-w.purchaseprice)*s.SalesAmount)  as ������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            , sum((w.salesprice-w.purchaseprice)*s.salesamount) as �����ܶ�
from  employee e,salesinfo s,ware w where e.eid =s.eid and w.wid=s.wid
group by e.ename order by �����ܶ�  desc
--7.��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select  top 5 w.wname,sum(s.salesamount) ����
from ware w,salesinfo s where w.wid=s.wid
group by w.wname order by ���� desc  
--8.ͳ��2017�����Ʒ����������ǰ�����Ʒ������
select top 5 w.wname,sum(s.salesamount) ���� from ware w,salesinfo s
where w.wid =s.wid and s.salesdate between '2017-1-1' and
'2017-12-31' group by w.wname order by ���� desc
--9.ͳ��ÿ��Ա����2017�����������ʾԱ�����Ƽ���������
select e.ename,sum(s.salesamount) ����
from employee  e,salesinfo s where e.eid=s.eid and s.salesdate between '2017-1-1' and 
'2017-12-31' group by e.ename order by ���� desc
--10.ͳ��2017���������
select sum((w.salesprice-w.purchaseprice)*s.salesamount) ����
from ware w,salesinfo s where w.wid=s.wid and s.salesdate between '2017-1-1'
and'2017-12-31'
                                                                        