Ҫ��ѯ��tom��ͬһ�༶��ѧԱ
�Ȳ�ѯtom���ڵİ༶(��������ST1201)��
select class from student where snam=��tom��
Ȼ���ѯST1201���ѧԱ��
select * from student where class=��ST1201��
ʹ���Ӳ�ѯ��
select * from student
where class=(select class from student where snam=��tom��)


��ѯC���Ե���߳ɼ�
select max(score) from score
	where cid=(select cid from course where cnam=��C���ԡ�)



��ѯ�μӹ����Ե�ѧԱ����
select * from student
	where sid in(select sid from score)



��ѯC���Գɼ���ߵ��Ǹ�ѧԱ��Ϣ
select * from student where sid in (
select sid from score where score=(
	select max(score) from score where cid=(
		select cid from course where cnam=��C����'
	)) and cid=(
		select cid from course where cnam=��C����'
	)
)




1��ѧԱ�μӹ����ԣ����ѯ��1��ѧԱ�Ļ�����Ϣ��
select * from student where exists 
(select * from score where sid=1) and sid=1




��ѯ���е�ѧԱ���ƣ��γ����ƣ�������Ϣ��SQL���Ϊ��
select snam,cnam,score
from student,course,score
where student.sid=score.sid and course.cid=score.cid



��ѯ���вμ�C���Կ��Ե�ѧԱ���ƣ��γ����ƣ�������
select s.snam,c.cnam,sc.score
from student s,course c,score sc
where s.sid=sc.sid and c.cid=sc.cid and c.cnam=��C���ԡ�




��ѯ���е�ѧԱ���ƣ��γ����ƣ�������Ϣ��SQL���Ϊ��
select snam,cnam,score
from student inner join score on student.sid=score.sid
inner join course on course.cid=score.cid



��ѯ���вμ�C���Կ��Ե�ѧԱ���ƣ��γ����ƣ�������
select s.snam,c.cnam,sc.score
from student s inner join score sc on s.sid=sc.sid
inner join course c on c.cid=sc.cid
where c.cnam='C����'




��ѯ����ѧԱ�����пγ̵ĳɼ���
	select s.snam,c.cnam,sc.score
	from student s left join score sc on s.sid=sc.sid
		left join course c on c.cid=sc.cid








Ϊ���˻ᶨ��һ�����ұ�:
create table country(
	cid int primary key identity(1,1),--����
	cnam nvarchar(50) not null unique��--��������
	knam varchar(3) not null unique�����Ҽ��
)
�ͽ��Ʊ�
create table medal(
	mid int primary key identity(1,1),--����
	cid int foreign key references country(cid),--�������
	gold int default 0,--��������
	silver int default 0,--��������
	copper int default 0��ͭ������
)

��ѯ���й��ҵĽ����������Щû�еõ��κν��ƵĹ���ҲӦ�ñ������ʾ
select c.cnam,c.knam,m.gold,m.silver,m.copper
	from country c left join medal m on c.cid=m.cid

������˻�����н��ƶ�����Щ���ҹϷ��ˣ�����ʹ�ã�
	select c.cnam,c.knam,m.gold,m.silver,m.copper
	from country c right join medal m on c.cid=m.cid


��ѯ�����Ѿ�������ѧԱ���ƣ��γ̺ͳɼ���
	select s.snam,c.cnam,sc.core
	from student s right join score sc on s.sid=sc.sid
		left join course c on c.cid=sc.cid



��ѯtom��C���Գɼ�,ʹ���Ӳ�ѯ��SQL���Ϊ:
select score from score where sid=
(select sid from student where snam='tom')
and cid=
(select cid from course where cnam='C����')

��ʹ�����Ӳ�ѯ���﷨Ϊ��
select score from student s,course c,score sc
where s.sid=sc.sid
and c.cid=sc.cid
and s.snam='tom' 
and c.cnam='C����'




1����ѯ��jack��ͬһ�༶��ѧԱ
	�Ȳ�ѯjack���ڵİ༶:
	select class from student where snam=��jack��
	�ٲ�ѯ����ѧԱ��
	select * from student
	��������ѯ��ϣ���ѯ��jack��ͬһ�༶������ѧԱ��
	select * from student where class=
		(select class from student where snam=��jack��)

2����ѯjava����߳ɼ�
	�Ȳ�ѯjava�ı�ţ�
	select cid from course where cnam=��java��
	��ʹ��max�ۺϺ���,��ѯJava����߳ɼ���
	select max(score) from score where cid=
		(select cid from course where cnam=��java��)

3����ѯ�μӹ����Ե�ѧԱ����
	�Ȳ�ѯscore����ڵ����е�ѧԱsid:
	select sid from score
	��ʹ����һϵ��sid��Ϊ������ȥ��ѯ����ѧԱ������
	select snam from student where sid in
		(select sid from score)

4����ѯ�μӹ�jsp���Ե�ѧԱ����
	�Ȳ�ѯjsp�γ̵Ŀγ̺ţ�
	select cid from course where cnam=��jsp��
�ٲ�ѯscore��cidΪjsp�γ�cid������ѧԱsid:
	select sid from score where cid=
		(select cid from course where cnam=��jsp��)
	���ʹ����һϵ��sid��ѯ����ѧԱ������
	select snam from student where sid in
		(select sid from score where cid=
			(select cid from course where cnam=��jsp��))

5����ѯjava�ɼ���ߵ�ѧԱ��Ϣ
	�Ȳ�ѯjava�Ŀγ̺ţ�
	select cid from course where cnam=��java��
	�ٲ�ѯ����java�ɼ�����߷֣�
	select max(score) from score where cid=
		(select cid from course where cnam=��java��)
	������������ѯ�Ľ����Ϊ��������ѯѧԱ��sid:
	select sid from score where cid=
			(select cid from course where cnam=��java��)
		and score=
			(select max(score) from score where cid=
				(select cid from course where cnam=��java��))
	���ʹ�ò�ѯ����sid��Ϊ������ȥ��ѯѧ����Ϣ:
	select * from student where sid=
		(select sid from score where cid=
			(select cid from course where cnam=��java��)
		and score=
			(select max(score) from score where cid=
				(select cid from course where cnam=��java��)))
