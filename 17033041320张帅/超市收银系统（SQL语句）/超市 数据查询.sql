--��Ʒ������ƴ���
insert into Category(cname,description)values('ʳƷ��','����ʳƷ����')
insert into Category(cname)values('ʳƷ��')
insert into Category(cname)values('�ջ���Ʒ')
insert into Category(cname)values('��װ��')
insert into Category(cname)values('�ҵ���')
--��Ʒ��Ϣ����
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('��¶������','2','4.50','5.80','231')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('��������','2','1.80','2.70','120')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('��������','2','2.60','4.20','96')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('����˿ϴ��¶','2','12.70','15.90','56')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('Ʈ��ϴ��¶','2','8.10','11.90','103')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('����ϴ��¶','2','19.70','26.90','65')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('��ƮƮ�̲�','1','1.60','3','105')
 insert into ware(wname ,cid,purchasrprice,salesprice,amount) values('Ħ������','1','3.40','6','76')
--Ա����
 insert into employee(ename,epassword,remark) values('����','4455664','����')
 insert into employee(ename,epassword,remark) values('����','4848355','����')
 insert into employee(ename,epassword,remark) values('������','2628469','����')
 insert into employee(ename,epassword,remark) values('����','3364551','����')
--���ۼ�¼--����SalesInfo 1���� ���� 2.������Ʒ��� ���
--3.��Ʒ����ʱ�� 4.��Ʒ�������� 5.����Ա��� ���
Update ware set amount=amount-1 where wname='��¶������'insert into salesInfo(wid,salesdate,salesamount,eid)values('1','2009-10-12','2','1001')--�������� ��� ���� ���ۼۡ����ۣ�order by ���ۼ�-���ۣ�select wid,wname,salesprice-purchasrprice as ���� from wareorder by salesprice-purchasrprice desc--��ѯÿ����Ʒ������select w.wname,sum(s.salesamount) as ������ from ware w,salesInfo swhere w.wid=s.wid group by wname order by sum(salesamount) desc--ͳ��ÿ����Ʒ������select cname,sum(salesamount) as ������ from category c,ware w,salesInfo swhere c.cid=w.cid and w.wid=s.wid group by cname--��ѯÿ����Ʒ��Ŀǰӯ������
select wname,sum((salesprice-purchasrprice)*salesamount) as ӯ���ܶ�from ware w,salesInfo swhere w.wid=s.wid group by wname
--��ѯ 1-��Ʒ��� 2-��Ʒ��Ϣ 3-Ա������Ϣ 4-���ۼ�¼
select *from Category
select *from ware
select *from employee
select sid ,wid as ��Ʒ���,salesdate as ����ʱ��,salesamount as ��������,eid as Ա����� from salesInfo
--ɾ��
delete from Category where cname='ʳƷ��'