--��ѯ��Ʒ������Ϣ��Ա����Ϣ�����ۼ�¼��
select *from   Category
select *from  Ware
select *from  Employee
select *from  SalesInfo
--������Ʒ������ݣ�Category ��Ʒ���
insert into Category (Cname,Description) values ('ʳƷ��','')
insert into Category (Cname,Description) values ('�ջ���Ʒ','')
insert into Category (Cname,Description) values ('��װ��','')
insert into Category (Cname,Description) values ('�ҵ���','')
--������Ʒ��Ϣ���ݣ�Cid��Ʒ���
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('1','����','10','12','200')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('1','������','1','2','600')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('1','����','1.5','3','500')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('2','�ɰ�˹����','4','6','100')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('2','����ϴ��ˮ','10','16','200')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('2','ǿ������˪','2','3','400')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('3','���޿�','50','100','200')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('3','������ް�','200','600','150')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('3','����ë��','60','120','300')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('4','�յ�','2000','3000','100')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('4','����','1500','2600','260')
insert into Ware(Cid,Wname,jinPrice,SalesPrice,Amount) values ('4','ϴ�»�','1000','2000','500')
--����Ա������
insert into Employee(Ename,Epassword,Remark) values ('�ŷ�','2223331','����')
insert into Employee(Ename,Epassword,Remark) values ('����','2673837','����')
insert into Employee(Ename,Epassword,Remark) values ('��һ��','3427848','����')
insert into Employee(Ename,Epassword,Remark) values ('����','3247894','����')
--������Ʒ��������(Wid����Ʒ���,Eid��Ա�����)
update Ware set Amount=Amount-1 where  Wname='����'
insert into SalesInfo (Wid,Eid, SalesDate,SalesAmount)  values ('1','1002','2017-10-02','1')
update Ware set Amount=Amount-1 where  Wname='ǿ������˪'
insert into SalesInfo (Wid,Eid, SalesDate,SalesAmount)  values ('6','1003','2017-10-02','1')
update Ware set Amount=Amount-1 where  Wname='ϴ�»�'
insert into SalesInfo (Wid,Eid, SalesDate,SalesAmount)  values ('12','1001','2017-10-02','1')
update Ware set Amount=Amount-1 where  Wname='����ë��'
insert into SalesInfo (Wid,Eid, SalesDate,SalesAmount)  values ('9','1003','2017-10-02','6')
update Ware set Amount=Amount-1 where  Wname='����'
insert into SalesInfo (Wid,Eid, SalesDate,SalesAmount)  values ('11','1004','2017-10-02','5')

--��ѯÿ����Ʒ��ţ����ƣ���Ʒ���󣬰��յ�Ʒ��������
select Wid ,Wname,SalesPrice-jinPrice as ���� from Ware order by SalesPrice-jinPrice desc
--��ѯÿ����Ʒ����������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select W.Wname,sum(S.SalesAmount)as ������ from Ware W,SalesInfo S 
where W.Wid = S.wid group by Wname order by  ������ desc
--��ѯÿ����Ʒ����������ʾ��Ʒ���������                             
select C.Cname,sum(S.SalesAmount) as ������ from Category  C, Ware W, SalesInfo S 
where C.Cid=W.Cid and W.Wid=S.Wid group by Cname
--��ѯÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select W.Wname, sum((W.SalesPrice-W.jinPrice)*S.SalesAmount) as ӯ���ܶ� from Ware W,SalesInfo S
 where W.Wid=S.Wid group by Wname
--��ѯ���������ܶ��Ա������
select E.Ename ,sum((W.SalesPrice-W.jinPrice)*S.SalesAmount)as �����ܶ�
from Employee  E, SalesInfo S, Ware W  where E.Eid=S.Eid and W.Wid=S.Sid 
group by E.Ename  order by  �����ܶ�  desc
--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 3 W.Wname, sum(S.SalesAmount) ���� from Ware W, SalesInfo  S  
where  W.Wid=S.Wid  group by W.Wname  order  by ����  desc
--��ѯ2017����Ʒ��������ǰ����Ʒ���Ƽ����� ������ע��ʱ���ʽ��
select top 5  W.Wname, sum(S.SalesAmount) ���� from Ware  W,SalesInfo S 
 where W.Wid=S.wid and  S.SalesDate between  '2017-01-1' and '2017-12-31' group by W.Wname order by ���� desc 
--��ѯ2017��Ա��������ʾԱ�����Ƽ�����
select E.Ename ,sum(S.SalesAmount) ���� from Employee E,SalesInfo S
 where E.Eid=S.Eid  and S.SalesDate between '2017-01-01'  and  '2017-12-30'  group by E.Ename order by  ����  desc
--��ѯ2017��������
select sum((W.SalesPrice-W.jinPrice)*S.SalesAmount) as ������
 from Ware  W,SalesInfo S 
 where W.Wid=S.Wid and S.SalesDate  between '2017-01-01' and '2017-12-30' 

