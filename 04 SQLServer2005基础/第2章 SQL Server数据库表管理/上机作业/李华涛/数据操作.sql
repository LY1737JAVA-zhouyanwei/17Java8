select * from student
select * from Course
select* from Score

insert into student values('����','��','S1','�Ϻ�','2011-1-1')
insert into student values('����','��','S2','�人','2012-1-1')
insert into student values('��С��','��','S3','�差','2013-1-1')
insert into student values('��ΰ','��','S4','�ϲ�','2011-4-1')

insert into student(snam,sex,class,city,birth) values('����','Ů','S1','����','2010-3-4')
insert into student(snam,sex,class,city,birth) values('����','Ů','S2','����','2011-3-4')
insert into student(snam,sex,class,city,birth) values('��׿','��','S3','����','2012-3-4')

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
insert into Course values('C����')
insert into Course values('HTML')

insert into Score(sid,cid,score) values(10004,1,68)
insert into Score(sid,cid,score) values(10004,2,80)
insert into Score(sid,cid,score) values(10005,1,78)
insert into Score(sid,cid,score) values(10005,2,76)
insert into Score(sid,cid,score) values(10006,1,64)
insert into Score(sid,cid,score) values(10006,2,92)

--��ѯ����ѧ��
select*from Student

--��ѯ���пγ�
select * from Course

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

--exists����
select *from Student where exists(select*from score where studentid = Sid)

select *from Student where not exists (select*from Score where Studentid = sid)