--�����Ϣ���û���
insert into person values('����',412723987653456789)
insert into person values('����',412723987653455555)
insert into person values('����',412723987653456666)
insert into person values('����',412723987653477777)

select*from person

--�����Ϣ�������
insert into tel values(13148498765,'0')
insert into tel values(13148494444,'1')
insert into tel values(13148495555,'0')
insert into tel values(13148496666,'0')
insert into tel values(13148477775,'0')

select*from tel
--�����Ϣ���ѹ������
insert into Stel values('1','1','2013-1-2','2017-4-30','2017-12-12','500')
insert into Stel values('2','2','2016-1-2','2017-12-30','2017-12-12','500')
insert into Stel values('3','3','2016-1-2','2017-12-30','2017-12-12','500')
insert into Stel values('4','4','2015-1-2','2017-12-30','2017-4-12','500')

select*from Stel

--�޸�1���û�������(���+100)
update Stel set money=money+100 where sid=1

--���ѹ��������ɾ����ע���ĺ���
drop tel where tid=2