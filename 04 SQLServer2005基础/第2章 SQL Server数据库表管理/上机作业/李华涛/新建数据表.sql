--ѧԱ��
create table student(
	--��ţ��������Զ�����
	sid int primary key identity(10003,1),
	snam nvarchar(20) not null check(len(snam)>1),
	sex nvarchar(1) not null default '��',
	class nvarchar(10) null,
	city nvarchar(20) null,
	birth varchar(30) null
)
--�γ̱�
create table course(
	cid int primary key identity(1,1),
	cnam nvarchar(30) not null unique
)
--�ɼ���
create table score(
	scid int primary key identity(1,1),
	sid int not null foreign key references student(sid),
	cid int not null foreign key references course(cid),
	score decimal(5,1)
)


--ɾ�����ݱ�(ע����ɾ���������ɾ��������)
drop table score
drop table student
drop table course


--��ѯ����ѧ��
select*from Student
--��ѯ�ɼ�
select* from Score

--��ѯ���пγ�
select * from Course
--��ѯ���ֵ��к�����ĸk��ѧԱ��Ϣ������
select *from student where snam like'%k%'
--��ѯ����s1���ѧ����Ϣ
select *from Student where class = 's1'

--��ѯ�������Ա�����������ѧԱ��Ϣ�����ַ�ʽ��
select *from Student where city ='����' or city = '����'

select *from Student where city in('����','����') order by city

--��ѯ��ѧԱ�İ༶
select  class snam from Student

--��ѯ����1�ſγ̵ĳɼ�,����������
select*from Score where cid ='1' order by Score desc

--��ѯ���пγ̵ĳɼ������γ̺������ڽ�ÿ�ſγɼ�����������
select*from Score order by cid ,score desc

--��ѯ���ڵİ༶����
select class from Student where snam = '����'

--�������ڰ༶2��
select *from Student where class='s2'

--�����Ӳ�ѯ
select*from Student where class = (select class from Student where snam = '����')

select*from Student where class = (select class from Student where sid = '10005')


select*from student where sid in (10004,10005,10006)

select*from Student where sid in (select distinct sid from score)
--
select avg(score)from score where sid='10004'



--���ݲ�ѯ��
--��ѯ��������ͬһ�༶��ѧԱ
select*from student where class = (select class from student where snam='����' )
--��ѯC���Ե���߳ɼ�
select max(score) from score where  cid = (select cid from course  where cnam ='C����' )
--��ѯ�μӹ����Ե�ѧԱ����
select  snam from student where sid in(select sid from score  ) 


--��ѯ�μӹ�HTML���Ե�ѧԱ����������
select  snam from student where sid in(select sid from course where cnam ='HTML')


--��ѯjava�ɼ���ߵ�ѧԱ��Ϣ(����)
select*from student where  sid = (select cid from course  where cnam ='THML'  ) and(select max(score) from score )

--��ѯ���е�ѧԱ���ƣ��γ����ƣ�������Ϣ
select snam,cnam,score 
from student,course,score 
--��ѯ���вμ�C���Կ��Ե�ѧԱ���ƣ��γ����ƣ�����
select snam,cnam,score 
from student,course,score 
where cnam='C����'
--ʹ��inner join��on��ʵ���������⣨���⣩
select snam,cnam,score
from student inner join score on student.cid=score.cid
inner join course on course .cid=score.cid
--ʹ��inner join��on��ʵ����������(����)
select snam,cnam,score
from student inner join score on student.cid=score.cid
inner join course on course .cid=score.cid
where cnam='C����'

--��ѯ�����C���Գɼ�
select snam,cnam,score 
from student,course,score 
where  cnam='C����'and snam='����'

--ʹ���Ӳ�ѯʵ�����²�ѯ��
--��ѯ��jack��ͬһ�༶��ѧԱ
--��ѯjava����߳ɼ�
--��ѯ�μӹ����Ե�ѧԱ����
--��ѯ�μӹ�jsp���Ե�ѧԱ����
--��ѯjava�ɼ���ߵ�ѧԱ��Ϣ
select*from student where class =(select class from student where snam ='����')
select max(score) from Score  where cid=(select cid from Course where cnam='C����')
select snam from student where  sid in(select sid from Score where sid=sid )
select snam from student where sid in(select sid from Score where cid in(select cid from course where cnam='C����' ))
 select*from student where sid in(select sid from score where cid in(select cid from course where cnam='HTML'))
