/*
--����
create TABLE STUDENT(
    id varchar2(10), --�й�
    name varchar2(10) not null, --�̸�
    kor varchar2(5) null, --����
    eng varchar2(5) null, --����
    math varchar2(5) null, --����
    primary key(id) --�Һ��� �⺻ not null
);
--�߰�
INSERT INTO STUDENT VALUES(1000, 'kim', '50', '50', '50');
INSERT INTO STUDENT VALUES(1001, 'gim', '60', '40', '50');
INSERT INTO STUDENT VALUES(1002, 'zim', '70', '30', '50');
UPDATE student SET kor = '40', math = '80' WHERE id = 1000;--������Ʈ
commit;--Ȯ������
DELETE from student;--���� ����
ROLLBACK;--�ǵ�����
SELECT * FROM student;--Ȯ���ϱ�
*/
/*
--�߰�����
select * from student;
--���ǽ�
select * from student where eng >= 90;
select * from student where kor != 100;
select * from student where kor = 90;
select math from student where name = 'kim';
select math/2 from student where name = 'kim';
select math+100 from student where name = 'kim'; 
select math*20 from student where name = 'kim';
select * from student where kor >= 20 and math = 50;
select * from student where kor >= 20 or math = 50;
select * from student where not kor >= 20 ;
select * from student where kor BETWEEN 50 and 100;
*/
/*
--����Ÿ�� ���
CREATE TABLE test_table (num number);
desc test_table;
alter table test_table add(name varchar2(20));--�߰�
alter table test_table MODIFY(name number); --����
alter table test_table drop column name; --����
alter table test_table rename column num to num_b;-- �̸�����
drop TABLE test_table;

create TABLE test_java IDENTIFIED BY 1234;
SELECT * FROM all_users;
drop user test_java;
--���� ������ ���̺� �����ϴ� ��� cascade�� ����ؾ� �Ѵ�
drop user test_java cascade;
*/
/*
-- ���ڰ���
CREATE TABLE test_number(
    numps number(5,2), --�Ҽ� �ڿ� 2�ڸ�����
    nump number(3),--����
    num number --�Ҽ�
);
insert into test_number VALUES(1.12345, 1.12345, 1.12345);
insert into test_number VALUES(123.12345, 123.12345, 123.12345);
insert into test_number VALUES(1234.12345, 123.12345, 123.12345);
SELECT * from test_number;
*/
/*
-- �ð�����
create table test_date(my_date date);
INSERT into test_date values (sysdate);--����ð�
INSERT into test_date values ('2000/12/24');
alter session set nls_date_format = 'yyyy/mm/dd hh:mi:ss'; --��� ����
select * from test_date;
select * from test_date where my_date < '2019/12/12';
*/
/*
create table test_char(
    ch char(5),--����ũ��
    vch VARCHAR2(20)--����ũ��
);
INSERT INTO test_char VALUES('1','1');
select * from test_char;
SELECT lengthb(ch), lengthb(vch) from test_char;
*/
/*
create TABLE employee(
    name VARCHAR2(15),
    salary number,
    job VARCHAR2(20),
    join_company date
);
alter session set nls_date_format = 'yyyy/mm/dd';--���̰��ϴ� �ð� ����
insert into employee VALUES('kim',2000000,'��ǻ��','2000/12/24');
insert into employee values('����ġ',1800000,'�Ｚ','2017/10/24');
insert into employee values('�ι�Ʈ',1850000,'����','2019/01/04');
insert into employee values('����',2200000,'����','2017/11/06');
insert into employee values('�谳��',2500000,'SK','2017/04/14');
insert into employee values('�����',2410000,'������','2018/01/09');
insert into employee values('����',1900000,'�Ｚ','2019/10/24');
insert into employee values('�Ҹ�',1800000,'����','2019/12/04');
insert into employee values('�ɽ���',4630000,'����','2015/04/02');
insert into employee values('�����',2770000,'SK','2017/01/24');
insert into employee values('�ո���',3650000,'������','2016/08/04');
insert into employee values('�Ӹ���',4210000,'�Ｚ','2015/03/18');
insert into employee values('������',2720000,'����','2017/01/04');
insert into employee values('��ġ��',4320000,'����','2015/06/07');
insert into employee values('�ȱ��',3490000,'SK','2015/09/07');
insert into employee values('��¯',2200000,'������','2017/05/04');
insert into employee values('����',1920000,'�Ｚ','2018/11/24');
insert into employee values('���',3420000,'����','2016/07/29');
insert into employee values('������',1800000,'����','2018/12/24');
insert into employee values('������',2230000,'SK','2018/01/05');
insert into employee values('�Ұ��',1800000,'������','2019/01/09');
insert into employee values('¥���',2100000,'�Ｚ','2017/10/24');
insert into employee values('�Ұ�â',2200000,'����','2017/11/04');
insert into employee values('���̽�',1950000,'����','2017/10/24');
insert into employee values('����',1800000,'SK','2018/10/24');
insert into employee values('������',1800000,'������','2019/12/07');
insert into employee values('�ϰ��',1880000,'�Ｚ','2018/11/14');
insert into employee values('���̽�',1970000,'����','2019/06/04');
insert into employee values('�ڵ���',7200000,'����','2010/01/27');
insert into employee values('�򽺺�',3570000,'SK','2015/02/17');
insert into employee values('�����',3200000,'������','2015/11/24');
insert into employee values('���̴�',2400000,'�Ｚ','2017/09/26');
insert into employee values('�踻��',7000000,'����','2010/01/21');
insert into employee values('������',6230000,'����','2011/08/19');
insert into employee values('������',3710000,'SK','2015/08/19');
insert into employee values('ȭ����',1770000,'������','2019/04/28');
insert into employee values('��ȭ��',1920000,'�Ｚ','2019/10/07');
insert into employee values('��ȿ��',2670000,'����','2017/11/24');
insert into employee values('�Ǻ���',3120000,'����','2016/05/19');
insert into employee values('�����',4190000,'SK','2015/01/02');
insert into employee values('������',4280000,'������','2015/01/02');
insert into employee values('���߱�',3700000,'�Ｚ','2016/02/17');
insert into employee values('��ȫ��',2220000,'����','2018/02/04');
insert into employee values('������',2760000,'����','2017/10/14');
insert into employee values('��â��',2620000,'SK','2017/09/04');
insert into employee values('���ڶ�',2500000,'������','2017/11/20');
insert into employee values('�߽���',1970000,'�Ｚ','2017/10/30');
insert into employee values('����',  2720000,'����','2018/11/11');
insert into employee values('������',2600000,'����','2015/11/19');
insert into employee values('������',5670000,'SK','2017/10/16');
insert into employee values('��ȿ��',3750000,'������','2015/09/15');
insert into employee values('��ä��',3400000,'�Ｚ','2016/02/09');
insert into employee values('�ְ��',8900000,'����','2010/01/04');
insert into employee values('��ȭ��',1860000,'����','2017/10/24');
insert into employee values('���빮',1790000,'SK','2017/10/24');
insert into employee values('���빮',2880000,'������','2016/02/27');
insert into employee values('�����',2320000,'�Ｚ','2016/05/24');
insert into employee values('������',1780000,'����','2019/01/09');
insert into employee values('���ҹ�',2900000,'����','2016/10/22');
insert into employee values('���ʿ�',3000000,'SK','2015/10/10');
insert into employee values('���ѱ�',3200000,'������','2015/11/11');
insert into employee values('���ѱ�',2500000,'�Ｚ','2016/12/19');
insert into employee values('¥����',1850000,'����','2018/04/03');
insert into employee values('�̽±�',1900000,'����','2018/01/01');
insert into employee values('������',1790000,'SK','2018/05/02');
insert into employee values('��Ÿ�',2700000,'������','2016/07/20');

SELECT * FROM employee;
SELECT * FROM employee where salary*12 >= 100000000;
select name, join_company from employee where join_company < '2015/1/1';
SELECT * FROM employee where salary BETWEEN 2800000 and 3000000;

select * from employee WHERE name like '��%';--�ո�
select * from employee WHERE name like '%��';--����
select * from employee WHERE name like '%��%';--����������

select * from employee ORDER by join_company desc;--��������
select * from employee ORDER by join_company asc;--��������
select * from employee ORDER by join_company asc, name desc;

select * from employee WHERE join_company > '2015/1/1' and salary*12 >= 60000000;
select * from employee WHERE (job ='�Ｚ' or job = '����') and salary*12 >= 50000000;
select * from employee where name like '%��%'and salary*12 >= 30000000 ORDER by job asc, salary desc;
*/


