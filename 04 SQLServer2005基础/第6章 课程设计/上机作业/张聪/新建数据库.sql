--�½����ݿ�
create database Student on(
             --�������ݿ����ļ���
              name = 'Student',
             --�������ݿ����ļ�·��
             filename = 'd:\Student.mdf',
             --�����ʼ����
             size = 3MB,
             --�����������
             maxsize = 50MB,
             --������������
             filegrowth = 2MB
)
--�½���־�ļ�
log on(
             --������־�ļ���
             name = 'Student_log',
             --������־�ļ�·��
             filename = 'd:\Student_log.ldf',
             --�����ʼ����
             size = 2MB,
             --�����������
             maxsize = 50MB,
             --������������
             filegrowth = 10%
)
--ɾ�����ݿ�
drop database Student