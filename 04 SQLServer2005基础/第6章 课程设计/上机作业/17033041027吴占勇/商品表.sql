--�û���
create table person(

pid int primary key identity(1,1),

pname nvarchar(10) not null check(len(pname)>1),

Epassword nvarchar(18) unique,

)


--�����
create table tel(

tid int primary key identity(1,1),

tname nvarchar(11)  unique,

state int not null,)--�ѹ������create table Stel(sid int primary key identity(1,1),stid int not null foreign key references tel(tid),scode int not null foreign key references person(pid),--ע��ʱ��Atime datetime,--ע��ʱ��Btime datetime,--����ֵʱ��ctime datetime,--���money decimal(10,2)default 0)--ɾ����drop table persondrop table teldrop table Stel

