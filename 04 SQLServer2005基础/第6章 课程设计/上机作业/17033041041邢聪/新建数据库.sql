--�½����ݿ�
create database SuperMarket on(
             --�������ݿ����ļ���
              name = 'SuperMarket',
             --�������ݿ����ļ�·��
             filename = 'd:\Student.mdf',
             --�����ʼ����
             size = 3MB,
             --�����������
             maxsize = 500MB,
             --������������
             filegrowth = 2MB
)
--�½���־�ļ�
log on(
             --������־�ļ���
             name = 'SuperMarket_log',
             --������־�ļ�·��
             filename = 'd:\Student_log.ldf',
             --�����ʼ����
             size = 2MB,
             --�����������
             maxsize = 500MB,
             --������������
             filegrowth = 10%
)
--ɾ�����ݿ�
drop database SuperMarket