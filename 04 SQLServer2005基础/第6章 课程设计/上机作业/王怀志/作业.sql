-- �鿴��Ʒ����(Category)��
select*from Category
-- �鿴��Ʒ��Ϣ��Ware����
select*from Ware
-- �鿴Ա����Employee����
select*from Employee
-- �鿴���ۼ�¼�� SalesInfo����
select*from  SalesInfo
--��Ʒ����
select wid,Wname,SalesPrice-PurchasePrice AS���� from ware
--��������,�Ӹߵ������� 
select w.wname,sum(s.SalesAmount ) as ������ from ware w,SalesInfo  s
where w.wid=s.wid group by wname order by ������ desc
--ÿ����Ʒ������,��ʾ���������
select c.cname,sum(s.SalesAmount) as������
from Category c ,Ware w,SalesInfo s
where c.cid=w.cid and w.wid =s.wid group by cname
--Ŀǰÿ����Ʒ��ӯ��
select w.wname,sum((w.SalesPrice-w.PurchasePrice )*s.SalesAmount )asӯ���ܶ�
from ware w,SalesInfo s
where w.wid=s.wid group by wname
--�ͷ�������1����Ʒ
Update Ware set Amount=Amount-1 where wid=1Insert into SalesInfo values(1,'2017-12-24',1,1002)--�������ܶ������Ա����select e.ename, sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount ) as  �����ܶ�from employee e,SalesInfo s,ware w where e.Eid=s.Eid and w.wid=s.widgroup by e.ename order by �����ܶ� DESC--��ѯ��������ǰ�����Ʒ������select top 5 w.wname, sum(s.SalesAmount)����from ware w,Salesinfo s where w.wid=s.widgroup by w.wname order by ���� desc--ͳ��2017����Ʒ����������ǰ�����Ʒ���Ƽ�����select w.wname,sum(s.salesamount)���� from ware w,salesinfo swhere w.wid=s.wid and s.salesdate between '2017-1-1'and '2017-12-31'group by w.wname order by ���� desc--ͳ��ÿ��Ա����2017�������,��ʾԱ�����Ƽ�����select e.ename,sum(s.salesamount)���� from Employee e ,salesinfo swhere e.eid=s.eid and s.salesdate between '2017-1-1'and '2017-12-31'group by e.ename order by ���� desc--ͳ��2017���������select sum((w.SalesPrice-w.PurchasePrice )*s.SalesAmount )������
from ware w,SalesInfo s
where w.wid=s.wid and s.salesdate  between '2017-1-1'and '2017-12-31'