--��Ʒ����
create table types(
tid int primary key identity(1,1),
tnam nvarchar(20) not null unique
)
--��Ʒ��Ϣ��
create table ware(
wid int primary key identity(1,1),
tid int foreign key references types(tid),
wnam nvarchar(20) not null unique,
wcarry decimal(10,2) not null,
wprice decimal(10,2) not null,
wcnt int not null

)
--����Ա��Ϣ��
create table emp(
eid int primary key identity(1001,1),
enam nvarchar(20) not null,
epwd nvarchar(20) not null
)
--���ۼ�¼��
create table sale(
sid int primary key identity(1,1),
wid int foreign key references ware(wid),
eid int foreign key references emp(eid),
stim nvarchar(30) not null,
scnt int  not null default 1,
)




drop table emp
drop table saledrop 
drop table ware   
drop table types