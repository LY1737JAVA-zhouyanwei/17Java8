--��ѯ

--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������
select Wid'��Ʒ���',Wname'��Ʒ����',SalesPrice-PurchasePrice'����'
from Ware
order by SalesPrice-PurchasePrice desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select Wname'��Ʒ����',sum(SalesAmount)'������'
from Ware a,SalesInfo b
where a.Wid=b.Wid group by Wname order by sum(SalesAmount) desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname'��Ʒ���',sum(SalesAmount)'������'
from Category a,Ware b,SalesInfo c
where a.cid=b.cid and b.Wid=c.Wid group by Cname

--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname'��Ʒ����',sum((SalesPrice-PurchasePrice)*SalesAmount)'ӯ���ܶ�'
from Ware a,SalesInfo b
where a.Wid=b.Wid group by Wname

--���������ܶ������Ա��������
select a.Ename'����',sum(SalesAmount)'������',sum((SalesPrice-PurchasePrice)*SalesAmount)'�����ܽ��'
from Employee a,Ware b,SalesInfo c
where b.Wid=c.Wid and a.Eid=c.Eid group by a.Ename order by sum(SalesAmount) desc,sum((SalesPrice-PurchasePrice)*SalesAmount) desc

--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�������
select top 5 Wname'��Ʒ����',sum(SalesAmount)'������'
from Ware a,SalesInfo b
where a.Wid=b.Wid group by Wname order by sum(SalesAmount) desc

----��ѯ��Ʒ2017������������ǰ��������Ʒ���Ƽ�������
select top 5 Wname'��Ʒ����',sum(SalesAmount)'������'
from Ware a,SalesInfo b
where a.Wid=b.Wid and b.SalesDate between '2017-01-01'and'2017-12-31' group by Wname order by sum(SalesAmount) desc

--ͳ��2017���У�Ա�����۵Ĳ�Ʒ�����۽����������ܶ������Ա��������
select a.Ename'����',sum(SalesAmount)'������',sum((SalesPrice-PurchasePrice)*SalesAmount)'�����ܽ��'
from Employee a,Ware b,SalesInfo c
where b.Wid=c.Wid and a.Eid=c.Eid and  c.SalesDate between '2017-01-01'and'2017-12-31' group by a.Ename order by sum(SalesAmount)desc, sum((SalesPrice-PurchasePrice)*SalesAmount) desc

--ͳ��2016���������
select sum((SalesPrice-PurchasePrice)*SalesAmount)'�����ܽ��'
from Ware a,SalesInfo b
where a.Wid=b.Wid and b.SalesDate between '2016-01-01'and'2016-12-31' order by sum(SalesAmount)desc, sum((SalesPrice-PurchasePrice)*SalesAmount) desc