--���̺� ����
create TABLE person(
    num number, --����
    name varchar2(20) not null, --�̸� ������ ���� ���ߵ�
    birth varchar2(20) null, --����
    tel varchar2(20), --��ȭ��ȣ
    primary key(num) --�Һ��� �⺻ not null
);

--��ü ���̺� Ȯ��
select * from tab;

--���̺� �� �߰�
--�ִ� �� ���� ���� ����
INSERT INTO person VALUES(1000, 'kim', '20230509', '010-xx');
INSERT INTO person VALUES(1001, 'kim', '20230509', '010-xx');
INSERT INTO person(num, name, birth, tel) VALUES(1002, 'kim', '20230509', '010-xx');
INSERT INTO person VALUES(1003, 'kim'); --����
INSERT INTO person(num, name) VALUES(1004, 'kim');

--�� Ȯ�� *=all
SELECT * FROM person; --��ü ���
SELECT num ,name FROM person; --�κ� ���
SELECT * FROM person where name = 'kim'; --���� ���
SELECT * FROM person where num = 1002;

--����
DELETE from person; --��ü ����
delete FROM person WHERE num = 1002; --���� ����

--����
UPDATE person set name = 'gin', tel = '111' WHERE num = 1001; --���� �ʿ�

--���� ����
commit;
DELETE from person;
--�ǵ�����
rollback;





