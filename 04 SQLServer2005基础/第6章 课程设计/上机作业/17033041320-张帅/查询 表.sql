--��Ʒ������ƴ���
insert into Category(cname)values('ʳƷ��')
insert into Category(cname)values('�ջ���Ʒ')
insert into Category(cname)values('��װ��')
insert into Category(cname)values('�ҵ���')
--��Ʒ��Ϣ����
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('��¶������','2','4.50','5.80','231')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('��������','2','1.80','2.70','120')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('��������','2','2.60','4.20','96')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('����˿ϴ��¶','2','12.70','15.90','56')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('Ʈ��ϴ��¶','2','8.10','11.90','103')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('����ϴ��¶','2','19.70','26.90','65')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('��ƮƮ�̲�','1','1.60','3','105')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('Ħ������','1','3.40','6','76')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('����֮�����޷�','3','400','600','76')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('ɭ������','3','360','500','86')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('�������ӳ���','3','300','700','96')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('����֮�ҿ���','3','120','210','56')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('���������','4','3000','5800','16')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('�����յ�','3','2300','4200','20')
 insert into ware(wname ,cid,purchaseprice,salesprice,amount) values('���յ���','3','2000','2800','30')
--Ա����
 insert into employee(ename,epassword,remark) values('����','4455664','����')
 insert into employee(ename,epassword,remark) values('����','4848355','����')
 insert into employee(ename,epassword,remark) values('������','2628469','����')
 insert into employee(ename,epassword,remark) values('����','3364551','����')--���ۼ�¼--����SalesInfo 1���� ���� 2.������Ʒ��� ���
--3.��Ʒ����ʱ�� 4.��Ʒ�������� 5.����Ա��� ���
Update ware set amount=amount-1 where wname='����֮�����޷�'insert into salesInfo(wid,salesdate,salesamount,eid)values('9','2009-10-12','1','1001')Update ware set amount=amount-2 where wname='Ħ������'insert into salesInfo(wid,salesdate,salesamount,eid)values('8','2009-10-13','2','1002')Update ware set amount=amount-1 where wname='���������'insert into salesInfo(wid,salesdate,salesamount,eid)values('13','2009-10-12','1','1001')Update ware set amount=amount-2 where wname='��������'insert into salesInfo(wid,salesdate,salesamount,eid)values('2','2009-10-13','2','1002')Update ware set amount=amount-1 where wname='����ϴ��¶'insert into salesInfo(wid,salesdate,salesamount,eid)values('6','2009-10-12','1','1001')Update ware set amount=amount-2 where wname='��ƮƮ�̲�'insert into salesInfo(wid,salesdate,salesamount,eid)values('7','2009-10-13','2','1002')Update ware set amount=amount-1 where wname='�������ӳ���'insert into salesInfo(wid,salesdate,salesamount,eid)values('12','2009-10-12','1','1001')Update ware set amount=amount-2 where wname='ɭ������'insert into salesInfo(wid,salesdate,salesamount,eid)values('10','2009-10-13','2','1002')
select*from salesInfo--�������� ��� ���� ���ۼۡ����ۣ�order by ���ۼ�-���ۣ�as��from֮������������select wid,wname,salesprice-purchaseprice as ���� from wareorder by salesprice-purchaseprice desc--��ѯÿ����Ʒ������select w.wname,sum(s.salesamount) as ������ from ware w,salesInfo swhere w.wid=s.wid group by wname order by  sum(s.salesamount) desc--ͳ��ÿ����Ʒ������select cname,sum(salesamount) as ������ from category c,ware w,salesInfo swhere c.cid=w.cid and w.wid=s.wid group by cname--��ѯÿ����Ʒ��Ŀǰӯ������
select wname,sum((salesprice-purchaseprice)*salesamount) as ӯ���ܶ�from ware w,salesInfo swhere w.wid=s.wid group by wname--����ʲôʲô��Ķ��� cid����
update ware set amount=amount-5 where cid=1
insert into salesInfo(wid,salesdate,salesamount,eid)values('1','2010-11-12','5','1002')
--�����ܶ�����ͬʱ������Ա��������
select e.ename,sum((w.salesprice-purchaseprice)*s.salesamount)as �����ܶ�
from employee e,salesInfo s,ware w where e.eid=s.eid and w.wid =w.wid
group by e.ename order by �����ܶ� desc
--��ѯ��Ʒ����ǰ����
select top 5 w.wname,sum(s.salesamount)as ����from ware w,salesInfo s where w.wid=s.wid group by w.wname order by ���� desc--ͳ��2010����Ʒ����ǰ5select top 5 w.wname,sum(s.salesamount)as ����from ware w,salesInfo s where w.wid=s.wid and s.salesdate between '2009-01-01'and'2010-12-30'group by w.wname order by ���� desc--ͳ��ÿ��Ա��2009������ Ҫ��(��ʾԱ�����ƺ�������)select e.ename,sum(s.salesamount)as ����
from employee e,salesInfo s
 where e.eid=s.eid and s.salesdate between '2009-01-01'and'2010-12-30'
group by e.ename order by ���� desc
--2009������
select sum((w.salesprice-w.purchaseprice)*s.salesamount)as ������
from ware w,salesInfo s 
where w.wid=s.wid  and s.salesdate between'2009-01-01' and '2010-12-31' 
--��ѯ 1-��Ʒ��� 2-��Ʒ��Ϣ 3-Ա������Ϣ 4-���ۼ�¼
select *from Category
select *from ware
select *from employee
select sid ,wid as ��Ʒ���,salesdate as ����ʱ��,salesamount as ��������,eid as Ա����� from salesInfo
