--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������
select Wid as ���,Wname as ��Ʒ��,SalesPrice-PurchasePrice as ���� from Ware order by SalesPrice-PurchasePrice desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select Wname ��Ʒ����,sum(SalesAmount)as ��Ʒ������ from 
ware w,SalesInfo s where w.Wid = s.Wid group by Wname order by sum(SalesAmount) desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname as ��Ʒ���,sum(SalesAmount) as ������ from 
Category c,ware w,SalesInfo s
where c.Cid = w.Cid and w.Wid = s.Wid group by Cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname as ��Ʒ���,sum((salesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ� 
from Ware w,SalesInfo s 
where w.Wid=s.Wid group by Wname