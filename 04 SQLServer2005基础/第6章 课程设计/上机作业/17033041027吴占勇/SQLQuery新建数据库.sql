--�½����ݿ�
create database telephone on(
     --�½����ݿ����ļ���
     name='telephone',
     --�������ݿ����ļ�·��
     filename='c:\telephone.mdf',
     --�����ʼ����
     size=3MB,
     --�����������
     maxsize=50MB,
     --������������
     filegrowth=2MB
)

--�½���־�ļ�
log on(
     --������־�ļ���
     name='telephone_loog',
     --������־�ļ�·��
     filename='c:\telephone_loog.ldf',
     --�����ʼ����
     size=2MB,
     --�����������
     maxsize=50MB,
     --������������
     filegrowth=10%
)

--ɾ�����ݿ�
drop database telephone