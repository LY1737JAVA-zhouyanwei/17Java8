--������Ʒ����
create table Category(
--�������
Cid int primary key identity(1,1),
--������ƣ�����Ϊ����not null,�����ظ���unique
--unique������ΨһԼ�����涨���е�ֵ�����ظ�
Cname nvarchar(10) not null unique,
Description nvarchar(20)
)

--������Ʒ��Ϣ��
create table��Ware(
--��Ʒ�ı��
Wid int primary key identity(1,1),
--��Ʒ������
Wname nvarchar(10)not null unique,
--��Ʒ���������������ϵ����Ware���е�cid����������ӵ�Category������
Cid int not null foreign key references Category(Cid),
--��Ʒ�Ľ��ۣ��������0����decimal��10,2��not null
PurchasePrice decimal(10,2) not null,
--��Ʒ�ۼ�
SalesPrice decimal(10,2) not null,
--��Ʒ�����
Amount int not null
)

--����Ա����
create table Employee(
--Ա�����
Eid int primary key identity(1001,1),
--Ա������
Ename nvarchar(10) not null,
--Ա������
Epassword nvarchar(10) check(len(Epassword)>6),
--��ע
Remark nvarchar(10)
)

--�������ۼ�¼��
create table Salesinfo(
Sid  int primary key identity(1,1),

)