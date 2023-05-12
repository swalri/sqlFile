/*
--member생성
CREATE TABLE membership
(
    m_id      VARCHAR2(20)    NOT NULL, 
    m_pwd     VARCHAR2(20)    NULL, 
    m_name    VARCHAR2(20)    NULL, 
    m_addr    VARCHAR2(20)    NULL, 
     PRIMARY KEY (m_id)
);
--게시글생성
CREATE TABLE board(
    b_num        INT             NOT NULL, 
    b_id         VARCHAR2(20)    NULL, 
    b_title      VARCHAR2(20)    NULL, 
    b_content    VARCHAR2(20)    NULL, 
    b_date       DATE            NULL, 
     PRIMARY KEY (b_num)
);
--시퀀스 생성
CREATE SEQUENCE board_SEQ START WITH 1 INCREMENT BY 1;
--재약조건 fk지정
ALTER TABLE board ADD CONSTRAINT FK_board_b_id_membership_m_id FOREIGN KEY (b_id) REFERENCES membership (m_id) ;
--재약해제
ALTER TABLE board DROP CONSTRAINT FK_board_b_id_membership_m_id; 
--재약조건 + 추가조건 
ALTER TABLE board ADD CONSTRAINT FK_b_id_m_id FOREIGN KEY (b_id) REFERENCES membership (m_id) on delete cascade;
--확인
select * from board;
select * from membership;


--추가
insert into membership (m_id, m_pwd, m_name, m_addr) values ('aaa','aaa','구나연','인천');
insert into board(b_num, b_id, b_title, b_content, b_date) values (board_seq.nextval,'aaa','제목','내용',sysdate);
delete from board where b_num=2;
insert into board(b_num, b_id, b_title, b_content, b_date) values (board_seq.nextval,'bbb','제목','내용',sysdate);
insert into membership (m_id, m_pwd, m_name, m_addr) values ('bbb','aaa','구나연','인천');
delete from membership where m_id='aaa';
delete from board where b_id='aaa';

delete from membership where m_id='bbb';
delete from board where b_id='bbb';
-------------------------------------------------------------------

select * from membership;
select * from board;
insert into membership (m_id, m_pwd, m_name, m_addr) values ('aaa','aaa','구나연','인천');
insert into board(b_num, b_id, b_title, b_content, b_date) values (board_seq.nextval,'aaa','제목','내용',sysdate);
delete from membership where m_id='bbb';
delete from board where b_id='bbb';

delete from membership;
delete from board;
drop sequence "C##JAVA"."BOARD_SEQ";
drop table membership;



--재약조건 + 추가조건 
ALTER TABLE board ADD CONSTRAINT FK_b_id_m_id FOREIGN KEY (b_id) REFERENCES membership (m_id) on delete cascade;
--확인
select * from board;
select * from membership;
insert into membership (m_id, m_pwd, m_name, m_addr)
    values ('bbb','aaa','구나연','인천');
insert into board(b_num, b_id, b_title, b_content, b_date)
    values (board_seq.nextval,'bbb','제목','내용',sysdate);

delete from membership where m_id = 'bbb';
drop table membership CASCADE CONSTRAINTS;
*/
/*
CREATE TABLE member
(
    m_id      VARCHAR2(20)    NOT NULL, 
    m_pwd     VARCHAR2(20)    NULL, 
    m_name    VARCHAR2(20)    NULL, 
    m_addr    VARCHAR2(20)    NULL, 
     PRIMARY KEY (m_id)
);
CREATE TABLE goods
(
    g_num          INT             NOT NULL, 
    g_id           VARCHAR2(20)    NULL, 
    g_name         VARCHAR2(20)    NULL, 
    g_price        INT             NULL, 
    g_count        INT             NULL, 
    g_price_sum    INT             NULL, 
    g_date         DATE            NULL, 
     PRIMARY KEY (g_num)
);
CREATE SEQUENCE g_seq START WITH 1 INCREMENT BY 1;
drop SEQUENCE g_seq;

CREATE OR REPLACE TRIGGER goods_AI_TRG
BEFORE INSERT ON goods 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT g_seq.NEXTVAL
    INTO :NEW.g_num
    FROM DUAL;
END;

ALTER TABLE goods
    ADD CONSTRAINT FK_goods_g_id_member_m_id FOREIGN KEY (g_id)
        REFERENCES member (m_id) ON DELETE CASCADE;

ALTER TABLE goods DROP CONSTRAINT FK_goods_g_id_member_m_id;

--
insert into member values('aaa','aaa','kim','d');
insert into member values('bbb','aaa','kim','d');
--
insert into goods(g_num, g_id, g_name, g_price, g_count, g_price_sum, g_date)
    values(g_seq.nextval,'aaa','운동화',75000,2,150000,sysdate);
insert into goods(g_num, g_id, g_name, g_price, g_count, g_price_sum, g_date)
    values(g_seq.nextval,'aaa','티셔츠',15000,5,75000,sysdate);
insert into goods(g_num, g_id, g_name, g_price, g_count, g_price_sum, g_date)
    values(g_seq.nextval,'bbb','가방',450000,1,450000,sysdate);
insert into goods(g_num, g_id, g_name, g_price, g_count, g_price_sum, g_date)
    values(g_seq.nextval,'bbb','책',35000,2,70000,sysdate);
--
select M.*, G.* from
    member M inner join goods G ON M.m_id = G.g_id;
select M.m_id,M.m_name,G.g_name,G.g_price_sum from
    member M inner join goods G ON M.m_id = G.g_id;
select M.m_id,M.m_name,M.m_addr, sum(G.g_price_sum) from
    member M inner join goods G ON M.m_id = G.g_id GROUP BY M.m_id, M.m_name, M.m_addr;
SELECT * FROM member;
*/
create table newst(
id varchar2(20),
name varchar2(20),
age number,
primary key(id)
);

insert into newst values('111','Hong',23);
insert into newst values('222','Kim',20);
insert into newst values('333','Go',30);
select * from newst;
select * from newst where id = '111';
insert into newst values('444','444',20);
insert into newst values('a','a',1);
commit;

delete from newst where id='s';






