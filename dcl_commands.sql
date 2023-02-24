CREATE TABLE DEPT1(DEPTNO NUMBER(2),DNAME VARCHAR(15),LOC VARCHAR(10));
INSERT INTO TABLE DEPT1
VALUES(&DEPTNO,'&DNAME','&LOC');
Enter value for deptno: 10
Enter value for dname: ACCOUNTING
Enter value for loc: NEW YORK
old   2: VALUES(&DEPTNO,'&DNAME','&LOC')
new   2: VALUES(10,'ACCOUNTING','NEW YORK')

SQL> /
Enter value for deptno: 30
Enter value for dname: SALES
Enter value for loc: CHICAGO
old   2: VALUES(&DEPTNO,'&DNAME','&LOC')
new   2: VALUES(30,'SALES','CHICAGO')

SQL> 40
SP2-0226: Invalid line number
SQL> /
Enter value for deptno: 40
Enter value for dname: OPERATIONS
Enter value for loc: BOSTON
old   2: VALUES(&DEPTNO,'&DNAME','&LOC')
new   2: VALUES(40,'OPERATIONS','BOSTON')

SQL> /
Enter value for deptno: 50
Enter value for dname: MANUFACTURING
Enter value for loc: BOSTON
old   2: VALUES(&DEPTNO,'&DNAME','&LOC')
new   2: VALUES(50,'MANUFACTURING','BOSTON')

SQL> SELECT * FROM DEPT1;

UPDATE DEPT1 SET LOC = 'SAN FRAN' WHERE DEPTNO = 40;

SAVEPOINT PROTO;

DELETE FROM DEPT1 WHERE LOC = 'CHICAGO';

ROLLBACK TO PROTO;
