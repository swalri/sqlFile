/*
--생성
create TABLE STUDENT(
    id varchar2(10), --학번
    name varchar2(10) not null, --이름
    kor varchar2(5) null, --국어
    eng varchar2(5) null, --영어
    math varchar2(5) null, --수학
    primary key(id) --불변값 기본 not null
);
--추가
INSERT INTO STUDENT VALUES(1000, 'kim', '50', '50', '50');
INSERT INTO STUDENT VALUES(1001, 'gim', '60', '40', '50');
INSERT INTO STUDENT VALUES(1002, 'zim', '70', '30', '50');
UPDATE student SET kor = '40', math = '80' WHERE id = 1000;--업데이트
commit;--확정짓기
DELETE from student;--내용 삭제
ROLLBACK;--되돌리기
SELECT * FROM student;--확인하기
*/
/*
--추가내용
select * from student;
--조건식
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
--변수타입 등등
CREATE TABLE test_table (num number);
desc test_table;
alter table test_table add(name varchar2(20));--추가
alter table test_table MODIFY(name number); --정의
alter table test_table drop column name; --삭제
alter table test_table rename column num to num_b;-- 이름변경
drop TABLE test_table;

create TABLE test_java IDENTIFIED BY 1234;
SELECT * FROM all_users;
drop user test_java;
--계정 삭제시 테이블 존재하는 경우 cascade를 사용해야 한다
drop user test_java cascade;
*/
/*
-- 숫자관련
CREATE TABLE test_number(
    numps number(5,2), --소수 뒤에 2자리까지
    nump number(3),--정수
    num number --소수
);
insert into test_number VALUES(1.12345, 1.12345, 1.12345);
insert into test_number VALUES(123.12345, 123.12345, 123.12345);
insert into test_number VALUES(1234.12345, 123.12345, 123.12345);
SELECT * from test_number;
*/
/*
-- 시간관련
create table test_date(my_date date);
INSERT into test_date values (sysdate);--현재시간
INSERT into test_date values ('2000/12/24');
alter session set nls_date_format = 'yyyy/mm/dd hh:mi:ss'; --출력 형식
select * from test_date;
select * from test_date where my_date < '2019/12/12';
*/
/*
create table test_char(
    ch char(5),--고정크기
    vch VARCHAR2(20)--가변크기
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
alter session set nls_date_format = 'yyyy/mm/dd';--보이게하는 시간 세팅
insert into employee VALUES('kim',2000000,'컴퓨터','2000/12/24');
insert into employee values('설까치',1800000,'삼성','2017/10/24');
insert into employee values('로버트',1850000,'애플','2019/01/04');
insert into employee values('고도리',2200000,'엘지','2017/11/06');
insert into employee values('김개똥',2500000,'SK','2017/04/14');
insert into employee values('리우뚱',2410000,'샤오미','2018/01/09');
insert into employee values('강민',1900000,'삼성','2019/10/24');
insert into employee values('할리',1800000,'애플','2019/12/04');
insert into employee values('심심해',4630000,'엘지','2015/04/02');
insert into employee values('놀아줘',2770000,'SK','2017/01/24');
insert into employee values('왕만두',3650000,'샤오미','2016/08/04');
insert into employee values('머리빨',4210000,'삼성','2015/03/18');
insert into employee values('마리오',2720000,'애플','2017/01/04');
insert into employee values('최치우',4320000,'엘지','2015/06/07');
insert into employee values('안깔쌈',3490000,'SK','2015/09/07');
insert into employee values('끝짱',2200000,'샤오미','2017/05/04');
insert into employee values('막장',1920000,'삼성','2018/11/24');
insert into employee values('드라마',3420000,'애플','2016/07/29');
insert into employee values('개똥이',1800000,'엘지','2018/12/24');
insert into employee values('마포구',2230000,'SK','2018/01/05');
insert into employee values('소고기',1800000,'샤오미','2019/01/09');
insert into employee values('짜장면',2100000,'삼성','2017/10/24');
insert into employee values('소곱창',2200000,'애플','2017/11/04');
insert into employee values('참이슬',1950000,'엘지','2017/10/24');
insert into employee values('뤼우뚱',1800000,'SK','2018/10/24');
insert into employee values('위메프',1800000,'샤오미','2019/12/07');
insert into employee values('북경시',1880000,'삼성','2018/11/14');
insert into employee values('스미스',1970000,'애플','2019/06/04');
insert into employee values('핸드폰',7200000,'엘지','2010/01/27');
insert into employee values('빅스비',3570000,'SK','2015/02/17');
insert into employee values('노라줘',3200000,'샤오미','2015/11/24');
insert into employee values('사이다',2400000,'삼성','2017/09/26');
insert into employee values('김말이',7000000,'애플','2010/01/21');
insert into employee values('오도독',6230000,'엘지','2011/08/19');
insert into employee values('쌈지돈',3710000,'SK','2015/08/19');
insert into employee values('화장지',1770000,'샤오미','2019/04/28');
insert into employee values('소화기',1920000,'삼성','2019/10/07');
insert into employee values('박효신',2670000,'애플','2017/11/24');
insert into employee values('판빙빙',3120000,'엘지','2016/05/19');
insert into employee values('김재욱',4190000,'SK','2015/01/02');
insert into employee values('송혜교',4280000,'샤오미','2015/01/02');
insert into employee values('송중기',3700000,'삼성','2016/02/17');
insert into employee values('손홍민',2220000,'애플','2018/02/04');
insert into employee values('백종원',2760000,'엘지','2017/10/14');
insert into employee values('오창석',2620000,'SK','2017/09/04');
insert into employee values('스텔라',2500000,'샤오미','2017/11/20');
insert into employee values('멕스웰',1970000,'삼성','2017/10/30');
insert into employee values('조현',  2720000,'애플','2018/11/11');
insert into employee values('류현진',2600000,'엘지','2015/11/19');
insert into employee values('은지원',5670000,'SK','2017/10/16');
insert into employee values('전효성',3750000,'샤오미','2015/09/15');
insert into employee values('이채은',3400000,'삼성','2016/02/09');
insert into employee values('최고봉',8900000,'애플','2010/01/04');
insert into employee values('광화문',1860000,'엘지','2017/10/24');
insert into employee values('동대문',1790000,'SK','2017/10/24');
insert into employee values('서대문',2880000,'샤오미','2016/02/27');
insert into employee values('대통령',2320000,'삼성','2016/05/24');
insert into employee values('예지원',1780000,'애플','2019/01/09');
insert into employee values('정소민',2900000,'엘지','2016/10/22');
insert into employee values('워너원',3000000,'SK','2015/10/10');
insert into employee values('북한군',3200000,'샤오미','2015/11/11');
insert into employee values('남한군',2500000,'삼성','2016/12/19');
insert into employee values('짜투리',1850000,'애플','2018/04/03');
insert into employee values('이승기',1900000,'엘지','2018/01/01');
insert into employee values('기차길',1790000,'SK','2018/05/02');
insert into employee values('길거리',2700000,'샤오미','2016/07/20');

SELECT * FROM employee;
SELECT * FROM employee where salary*12 >= 100000000;
select name, join_company from employee where join_company < '2015/1/1';
SELECT * FROM employee where salary BETWEEN 2800000 and 3000000;

select * from employee WHERE name like '김%';--앞말
select * from employee WHERE name like '%똥';--끝말
select * from employee WHERE name like '%똥%';--속해있으면

select * from employee ORDER by join_company desc;--내림차순
select * from employee ORDER by join_company asc;--오름차순
select * from employee ORDER by join_company asc, name desc;

select * from employee WHERE join_company > '2015/1/1' and salary*12 >= 60000000;
select * from employee WHERE (job ='삼성' or job = '엘지') and salary*12 >= 50000000;
select * from employee where name like '%김%'and salary*12 >= 30000000 ORDER by job asc, salary desc;
*/


