--��Ϣ���  insert into values()

--��Ʒ����Category��
insert into Category values('ʳƷ��','���ԳԵĶ���')
insert into Category values('�ջ���Ʒ��','�����еĶ���')
insert into Category values('��װ��','���ϴ�������')
insert into Category values('�ҵ���','�����õĵ���')
--��ѯ
select * from Category

--��Ʒ��Ϣ��Ware��
 insert into Ware values('ǡǡ����',1,'2.5','3','10')
 insert into Ware values('��������',1,'1.5','2','10')
 insert into Ware values('Ӫ������',1,'3.5','4','10')
 insert into Ware values('���ϰ�ҩ����',2,'15','20','10')
 insert into Ware values('ŷ������ʿר��',2,'50','60','10')
 insert into Ware values('���������',2,'5','7','10')
 insert into Ware values('�ǵ��˶�Ь',3,'100','150','10')
 insert into Ware values('�������˶���',3,'80','99','10')
 insert into Ware values('���ϴ�˹�˶���',3,'90','100','10')
 insert into Ware values('������ӻ�',4,'3200','3999','10')
 insert into Ware values('���������',4,'220','299','10')
 insert into Ware values('�����յ�',4,'410','499','10')
--��ѯ
select * from Ware

--Ա����Employee��
insert into Employee values('����','1111111','���ú�˧������Ա')
insert into Employee values('������','2222222','�ĳ��ܺõ�����Ա')
insert into Employee values('������','3333333','�ܸ����ε�����Ա')
--��ѯ
select * from Employee

--���ۼ�¼��SalesInfo��
Update Ware set Amount=Amount-1 where Wname='ǡǡ����'Insert into SalesInfo values(1,'2017-12-19',1,1001)--��ѯ
select * from SalesInfo




