/*
create table test_func(id number, num varchar2(20) );
insert into test_func values(1, '34.5678');
--insert into test_func values(1, 'aaa');
insert into test_func VALUES (2, '10.123');
insert into test_func VALUES (3, '562');
insert into test_func VALUES (4, '8.234');
insert into test_func VALUES (5, '521.544');
insert into test_func VALUES (6, '6.456');
insert into test_func VALUES (7, '512');
insert into test_func VALUES (8, '4.567');
insert into test_func VALUES (9, '55');
insert into test_func VALUES (10, '2.789');
DELETE FROM test_func;
select * from test_func;
select * from test_func where id=1;
select round(num, 2) from test_func where id=1;--�ݿø�
select round(num/2, 2) from test_func where id=1;
select trunc(num, 2) from test_func where id=1;--����
select mod(num, 2) from test_func where id=1;--java % ������
select mod(num,2) from test_func where id=2;
select * from test_func where mod(id,2) = 1;
select round(num/2,2) from test_func where mod(id,2) = 0;
insert into test_func values(11,'welcome To oracle');
select * from test_func where id = 11;
select upper(num) from test_func where id = 11;--�빮��
select lower(num) from test_func where id = 11;--�ҹ���
select initcap(num) from test_func where id = 11;--ù ���� �빮��
*/
/*
create table test_company(
  name varchar2(20), --�̸�
  ���� varchar2(20), --����
  class varchar2(20) --����
);
insert into test_company values('hong gil dong_M','3600','Manager');
insert into test_company values('kim gea ddong_M','2555','ManaGer');
insert into test_company values('Go gil dong_M','2800','ManaGER');
insert into test_company values('hong gil dong_E','3111','EmpLoyee');
insert into test_company values('kim gea ddong_E','2600','EmpLoYee');
insert into test_company values('Go gil dong_E','2950','employee');
select * from test_company where lower(class) = 'manager';
select * from test_company where lower(class) = 'employee' and "����" >= 2800;
select initcap(name) , trunc("����"/12) from test_company;
*/
/*
create table test_class(class varchar2(10), score number);
Insert into test_class values('A��',11);
insert into test_class values('A��',12);
insert into test_class values('A��',13);
insert into test_class values('B��',21);
insert into test_class values('B��',22);
insert into test_class values('B��',23);
insert into test_class values('1',31);
insert into test_class values('1',32);
insert into test_class values('1',33);
insert into test_class values('',40);--null��
select sum(score) from test_class;
select avg(score) from test_class;
select max(score), min(score) from test_class;
select count(class) from test_class; --null���� ó������ ����
select count(*) from test_class; --null���� �Ѱ���
select * from test_class;
select class , sum(score) from test_class group by class;--�׷�
select class , sum(score) from test_class group by class having sum(score)>60;--����
select class , sum(score) from test_class group by class;--�׷�
--��� ��������
select class , avg(score) from test_class group by class order by AVG(score) DESC;
--�ּ� �ִ�
select class , max(score), min(score) from test_class group by class;
*/

--���� ǥ
create table testName(id varchar2(20), class varchar2(20));
insert into testName values('ȫ�浿','A��');
insert into testName values('�谳��','B��');
insert into testName values('��浿','C��');
--
create table testLesson(id varchar2(20), lesson varchar2(20), score number);
insert into testLesson values('ȫ�浿','python',80);
insert into testLesson values('ȫ�浿','java',90);
insert into testLesson values('ȫ�浿','c���',70);
insert into testLesson values('�谳��','server2012',70);
insert into testLesson values('�谳��','linux',90);
insert into testLesson values('��浿','jsp',100);

select * from testname;
select * from testlesson;
select * from testname, testlesson;--�ΰ��� ���̺� ���
select N.* , L.lesson, L.score from testname N, testlesson L; --�κ� ���
select * from
    testname N inner join testlesson L on N.id = L.id;
select N.*, L.lesson, L.score from
    testname N inner join testlesson L on N.id = L.id;

select N.*, L.lesson, L.score from --N.id, N.class, L.lesson, L.score
    testname N inner join testlesson L on N.id = L.id --�� ���̺� ��ġ��
    and N.id = 'ȫ�浿';--�̸� ȫ�浿
select N.*, sum(L.score), avg(L.score) from--N����, L����, L���
        testname N inner join testlesson L on N.id = L.id --���̺���
        group by N.id, n.class--�׷�ȭ
        order by class asc;--��������




