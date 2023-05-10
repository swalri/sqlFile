--테이블 생성
create TABLE person(
    num number, --숫자
    name varchar2(20) not null, --이름 무조건 값이 들어가야됨
    birth varchar2(20) null, --생일
    tel varchar2(20), --전화번호
    primary key(num) --불변값 기본 not null
);

--전체 테이블 확인
select * from tab;

--테이블에 값 추가
--넣는 값 순서 지정 가능
INSERT INTO person VALUES(1000, 'kim', '20230509', '010-xx');
INSERT INTO person VALUES(1001, 'kim', '20230509', '010-xx');
INSERT INTO person(num, name, birth, tel) VALUES(1002, 'kim', '20230509', '010-xx');
INSERT INTO person VALUES(1003, 'kim'); --오류
INSERT INTO person(num, name) VALUES(1004, 'kim');

--값 확인 *=all
SELECT * FROM person; --전체 출력
SELECT num ,name FROM person; --부분 출력
SELECT * FROM person where name = 'kim'; --조건 출력
SELECT * FROM person where num = 1002;

--삭제
DELETE from person; --전체 삭제
delete FROM person WHERE num = 1002; --조건 삭제

--수정
UPDATE person set name = 'gin', tel = '111' WHERE num = 1001; --조건 필요

--최종 저장
commit;
DELETE from person;
--되돌리기
rollback;





