--�½����ݿ�
create database superMarket on(
  --�������ݿ����ļ���
     name =	'superMarket',
    --�������ݿ����ļ�·��'
   filename ='d:\superMarket.mdf',
     --�����ʼ����
     size=3MB,
      --�����������
      maxsize= 50MB,
    --������������
      filegrowth =1MB
)
--�½���־�ļ�
log on(
	  --������־�ļ���
       name = 'superMarket_log',
     --������־�ļ�·��
       filename = 'd:\superMarket_log.ldf',
       --�����ʼ����
   size = 2MB,
   --�����������
maxsize = 50MB,
     --������������
     filegrowth = 10%
)
--ɾ�����ݿ�
drop database superMarket


