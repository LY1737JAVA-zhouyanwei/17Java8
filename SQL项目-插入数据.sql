-- �������
insert into Category (cname) values ('ʳƷ��')
insert into Category (cname) values ('�ջ���Ʒ')
insert into Category (cname) values ('��װ��')
insert into Category (cname) values ('�ҵ���')

insert into Ware (wname,cid,purchaseprice,salesprice,amount) values ('��¶������',1,4.50,5.80,231)
insert into Ware (wname,cid,purchaseprice,salesprice,amount) values ('��������',1,1.80,2.70,120)
insert into Ware (wname,cid,purchaseprice,salesprice,amount) values ('��������',1,2.60,4.20,96)
insert into Ware (wname,cid,purchaseprice,salesprice,amount) values ('����˿ϴ��ˮ',1,12.70,15.90,56)
insert into Ware (wname,cid,purchaseprice,salesprice,amount) values ('Ʈ��ϴ��ˮ',1,8.10,12.30,103)
insert into Ware (wname,cid,purchaseprice,salesprice,amount) values ('����ϴ��ˮ',1,19.40,26.90,65)

insert into Enployee (ename,epassword) values ('����',1234567)
insert into Enployee (ename,epassword) values ('�ܲ�',2345678)
insert into Enployee (ename,epassword) values ('��ا',3456789)
insert into Enployee (ename,epassword) values ('��Ȩ',4567890)
insert into Enployee (ename,epassword) values ('����',5678901)
insert into Enployee (ename,epassword) values ('���',6789012)

insert into SalesInfo (wid,salesdate,salesamount,eid) values (1,2017-11-21,3,1001)
insert into SalesInfo (wid,salesdate,salesamount,eid) values (4,2017-11-26,3,1002)

select*from ware
select*from Enployee
select*from SalesInfo
select*from Category