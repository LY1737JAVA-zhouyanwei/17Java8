--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������
select Wid,Wname,SalesPrice-PurchasePrice as ���� from Ware
order by SalesPrice-PurchasePrice desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select Wname,sum(SalesAmount) as ������ from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname order by sum(SalesAmount) desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname,sum(SalesAmount) as ������ from Category c,Ware w,SalesInfo s
where c.Cid=w.Cid and w.Wid=s.Wid group by Cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ�
from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname                                