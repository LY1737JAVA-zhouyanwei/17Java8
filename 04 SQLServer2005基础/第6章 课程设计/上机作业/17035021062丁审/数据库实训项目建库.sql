--�½����ݿ�SuperMarket
create database SuperMarket on (
--�����½��ļ���
name = 'SuperMarket',
--�����½��ļ�·��
filename = 'C:\SuperMarket.mdf',
--�����ʼ����
size = 3MB,
--�����������
maxsize = 50MB,
--������������
filegrowth = 2MB 
)
--�½���־�ļ�
log on (
--������־�ļ���
name = 'SuperMarket_log',
--������־�ļ�·��
filename = 'C:\SuperMarket_log.ldf',
--�����ʼ����
size = 1MB,
--�����������
maxsize = 50MB,
--������������
filegrowth = 10% 
)
drop database SuperMarket