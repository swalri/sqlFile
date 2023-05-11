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
select round(num, 2) from test_func where id=1;--반올림
select round(num/2, 2) from test_func where id=1;
select trunc(num, 2) from test_func where id=1;--버림
select mod(num, 2) from test_func where id=1;--java % 나머지
select mod(num,2) from test_func where id=2;
select * from test_func where mod(id,2) = 1;
select round(num/2,2) from test_func where mod(id,2) = 0;
insert into test_func values(11,'welcome To oracle');
select * from test_func where id = 11;
select upper(num) from test_func where id = 11;--대문자
select lower(num) from test_func where id = 11;--소문자
select initcap(num) from test_func where id = 11;--첫 문자 대문자
*/
/*
create table test_company(
  name varchar2(20), --이름
  연봉 varchar2(20), --연봉
  class varchar2(20) --직급
);
insert into test_company values('hong gil dong_M','3600','Manager');
insert into test_company values('kim gea ddong_M','2555','ManaGer');
insert into test_company values('Go gil dong_M','2800','ManaGER');
insert into test_company values('hong gil dong_E','3111','EmpLoyee');
insert into test_company values('kim gea ddong_E','2600','EmpLoYee');
insert into test_company values('Go gil dong_E','2950','employee');
select * from test_company where lower(class) = 'manager';
select * from test_company where lower(class) = 'employee' and "연봉" >= 2800;
select initcap(name) , trunc("연봉"/12) from test_company;
*/
/*
create table test_class(class varchar2(10), score number);
Insert into test_class values('A반',11);
insert into test_class values('A반',12);
insert into test_class values('A반',13);
insert into test_class values('B반',21);
insert into test_class values('B반',22);
insert into test_class values('B반',23);
insert into test_class values('1',31);
insert into test_class values('1',32);
insert into test_class values('1',33);
insert into test_class values('',40);--null임
select sum(score) from test_class;
select avg(score) from test_class;
select max(score), min(score) from test_class;
select count(class) from test_class; --null값은 처리되지 않음
select count(*) from test_class; --null포함 총개수
select * from test_class;
select class , sum(score) from test_class group by class;--그룹
select class , sum(score) from test_class group by class having sum(score)>60;--조건
select class , sum(score) from test_class group by class;--그룹
--평균 내림차순
select class , avg(score) from test_class group by class order by AVG(score) DESC;
--최소 최대
select class , max(score), min(score) from test_class group by class;
*/

--엑셀 표
create table testName(id varchar2(20), class varchar2(20));
insert into testName values('홍길동','A반');
insert into testName values('김개똥','B반');
insert into testName values('고길동','C반');
--
create table testLesson(id varchar2(20), lesson varchar2(20), score number);
insert into testLesson values('홍길동','python',80);
insert into testLesson values('홍길동','java',90);
insert into testLesson values('홍길동','c언어',70);
insert into testLesson values('김개똥','server2012',70);
insert into testLesson values('김개똥','linux',90);
insert into testLesson values('고길동','jsp',100);

select * from testname;
select * from testlesson;
select * from testname, testlesson;--두개의 테이블 출력
select N.* , L.lesson, L.score from testname N, testlesson L; --부분 출력
select * from
    testname N inner join testlesson L on N.id = L.id;
select N.*, L.lesson, L.score from
    testname N inner join testlesson L on N.id = L.id;

select N.*, L.lesson, L.score from --N.id, N.class, L.lesson, L.score
    testname N inner join testlesson L on N.id = L.id --흠 테이블 합치기
    and N.id = '홍길동';--이름 홍길동
select N.*, sum(L.score), avg(L.score) from--N전부, L총합, L평균
        testname N inner join testlesson L on N.id = L.id --테이블병합
        group by N.id, n.class--그룹화
        order by class asc;--오름차순




