
use sample_db;
create table customers(id int,name varchar(100), sex varchar(20));
drop table customers;
create database market_db;
use market_db;
create table hongong1 (toy_id int, toy_name char(4), age int);
show tables;
desc hongong1;
insert into hongong1(toy_id, toy_name, age) values(1, '우디', 25);
SELECT * FROM market_db.hongong1;
insert into hongong1(toy_id, toy_name) values(2, '버즈');
SELECT * FROM market_db.hongong1;
insert into hongong1(toy_name, age, toy_id) values('버즈', 5, 3);
SELECT * FROM market_db.hongong1;
create table hongong2(	
toy_id int auto_increment primary key, 	
toy_name chaR(4),
AGE INT);
DESC hongong2;
insert into hongong2 values (null, '보핍', 25);
SELECT * FROM market_db.hongong2
insert into hongong2 values (null, '하하', 29);
alter table hongong2 add column country varchar(10);
#update 테이블명 set 컬럼명 = 업데이트할 값 where toy_id=1;
update hongong2 set country='미국' where toy_id=1;
TRUNCATE TABLE hongong2;
DELETE FROM hongong1 WHERE toy_id=2;
ALTER TABLE HONGONG1 ADD column IDX INT AUTO_INCREMENT PRIMARY KEY;
DELETE FROM hongong1 WHERE IDX=7;
INSERT INTO HONGONG1 
CREATE TABLE member(id int auto_increment primary key, member_id varchar(4), name char(3), address varchar(255));
create table product(prod_name varchar(100), price int, date_of_prod varchar(20),manuf varchar(50), balance int);
insert into member values(null, 'tess', '나훈아','경기 부천시 중동')
,(null, 'iyou', '아이유','인천 남구 주안동'),
alter table product add column prod_id int auto_increment primary
#롤백 연습 
create database mywork;
use mywork;
create table emp_test(emp_no int not null,emp_name varchar(30) not null, hire date
 null, salary int null, primary key(emp_no));
 select @@ autocomitt; 결과가 1이면 오토커밋 활성화
 select @@  autocomitt=0; 오토커밋 비활성화
select * from emp test create table emp_tran1 as select *from emp_test;
이렇게 복사해서 가져올시 primary 키만 복사가 안된다.
