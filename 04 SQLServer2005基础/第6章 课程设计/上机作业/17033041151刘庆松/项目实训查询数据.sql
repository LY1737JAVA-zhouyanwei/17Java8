--��ѯ��Ʒ��� ���� ��������
select Wid,Wname,SalesPrice-PurchasePrice as ����
from Ware order by SalesPrice-purchasePrice desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select Wname, sum(SalesAmount)as ������ from Ware w, SalesInfo s
Where w.Wid= s.Wid group by Wname order by Sum(SalesAmount)desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname,sum(SalesAmount) as ������ from Category c, Ware w, SalesInfos
Where c. cid= w.cid and w. wid = s.wid group by Cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname , sum((SalesPrice-PurchasePrice)*SalesAmount)As ӯ���ܶ� from Ware w, SalesInfo s
Where w. Wid = s.wid group by Wname