--��ѯ ����
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo



--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������

select Wid as ��Ʒ���,Wname as ��Ʒ����,SalesPrice-PurchasePrice as ���� from Ware order by  SalesPrice-PurchasePrice desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������

select Wname as ��Ʒ����, sum(SalesAmount) as ��Ʒ������ from
Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname order by sum(SalesAmount) desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������


select Cname as ��Ʒ���,sum(SalesAmount) as ������ from
Category w,Ware c, SalesInfo s
where w.Cid=c.Wid and c.Wid=s.Wid group by Cname


--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�


select Wname as ��Ʒ����,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ� from
Ware s,SalesInfo w
where s.Wid=w.Wid group by Wname
