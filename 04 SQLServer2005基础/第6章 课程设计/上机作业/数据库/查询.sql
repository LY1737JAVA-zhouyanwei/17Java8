--1����ѯÿ����Ʒ�ı�ţ����ƣ���Ʒ���󣬲����յ�Ʒ��������
--ĳ����Ʒ�ĵ�Ʒ����=�ۼ�-���ۣ�order by����ı��ʽҲӦ�����ۼ�-���ۣ�Ҳ��������
select Wid,Wname,SalesPrice-PurchasePrice as ���� from Ware 
order by SalesPrice-PurchasePrice desc
--2��ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
--��Ʒ������Ware���У�����������SalesInfo���У�����������Ҫ�����������н���
--���Ӳ�ѯ��Ȼ���ٷ��鲢ͳ������������
select w.Wname,sum(s.SalesAmount) as ������ 
from Ware w ,SalesInfo s
where w.Wid=s.Wid group by Wname order by Wname,sum(s.SalesAmount) desc
--3��ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
--�������漰����Category ��Ware ��SalesInfo���ű��������ٷ���ͳ��
select t.cname,sum(s.SalesAmount) as ������
from Category t,Ware w,SalesInfo s
where t.Cid=w.Wid and w.Cid=s.Wid group by cname
--4�����������ܶ������Ա����
--��ͳ�Ƴ�ÿ������Ա�������ܶ�����
select e.Ename,sum((SalesPrice-PurchasePrice)*s.SalesAmount) as �����ܶ�
from Employee e,SalesInfo s,Ware w where e.Eid=s.Eid and w.Wid=s.Wid
group by e.Ename order by �����ܶ� desc
--5��ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
--��������Ʒ������Ware���У���������SalesInfo���У����������������������н������Ӳ�ѯ��Ȼ���ٷ���ͳ��
select Wname,sum(SalesAmount) as ������
from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname order by sum(SalesAmount) desc
--6��ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
--�������������漰��Category��Ware��SalesInfo�������������ٷ���ͳ��
select Cname,sum(SalesAmount) as ������
from Category c,Ware w,SalesInfo s
where c.Cid=w.Cid and w.Wid=s.Wid group by Cname
--7��ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
--������������Ware��SalesInfo�����еõ���Ʒ���ơ����ۡ��ۼۼ����������������ÿ����¼�����۶�Ӧ��ʾΪ�� SalesPrice-PurchasePrice)*SalesAmount
--������ͳ��
select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ�
from Ware w,SalesInfo s
where w.Wid=s.Wid group by Wname
--8����ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
--��ͳ�Ƴ�ÿ������Ա�������ܶ��������Ա���飬�ٰ����ܶ�����
select top 5 w.Wname,sum(s.SalesAmount) ����
from Ware w,SalesInfo s where w.Wid=s.Sid
group by w.Wname order by ���� desc
--9��ͳ��2010�����Ʒ����������ǰ��������Ʒ���Ƽ�����
--ʹ�þۺϺ���sum��������Ʒ����������ͳ�ƣ���������Ʒ���Ʒ��飬
--Ȼ��ʹ��topȡǰ����������
select top 5 w.Wname,sum(SalesAmount)as ����
 from Ware w,SalesInfo s
where  w.Wid=s.Wid and  s.SalesDate between '2010-01-01' and 
'2010-12-31' group by w.Wname order by ���� desc
--10��ͳ��ÿ��Ա����2010�����������ʾԱ�����Ƽ���������
--��9���ƣ������˴���ʾ����Ա�����ƣ�������Ա������
select e.Ename,sum(SalesAmount)as ����
from Employee e,SalesInfo s
where e.Eid=s.Eid and s.SalesDate between '2010-01-01' and
'2010-12-31'  group by e.Ename order by ���� desc
--11��ͳ��2010���������
--��ÿ����Ʒ���������������Ʒ�ĵ�Ʒ���󣬼��ó������Ʒ��������
--ע��������ͳ��2010������������ԣ���Ҫ��������Ʒ��������͡�
select sum(SalesAmount*(w.SalesPrice-w.PurchasePrice))as ������
from SalesInfo s,Ware w
where w.Wid=s.Wid and s.SalesDate  between '2010-01-01' and
'2010-12-31' 

