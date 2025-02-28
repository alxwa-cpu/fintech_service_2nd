use mydb;
insert into course values(1,'데이터베이스',3,'2016/8/20','2016/10/30');
insert into course values(2,'교양영어',3,'2016/8/20','2016/10/30');
insert into course values(3,'회로이론',2,'2016/10/20','2016/12/30');
insert into course values(4,'공업수학',4,'2016/11/2','2017/1/28');
insert into course values(5, '객체지향프로그래밍', 3, '2016/11/1','2017/1/30');
insert into student_course values(1, 1);
insert into student_course values(2, 1);
insert into student_course values(3, 2);
insert into student_course values(4, 3);
insert into student_course values(5, 4);
insert into student_course values(6, 5);
insert into student_course values(7, 5);
insert into professor values(1,'가교수',1);
어렵다 edr 그리기

1번 문제 왜 학생을 기준으로 레트트 조인을 해야하는가 학생이 부서보다 정보가 많기 때문에
select *from student; n
select* from department; 1
select* from student s left join deapart ment d
on s.department_id= d.depatment_id

2. 가교수의 아이디를 출력하시오
select professet id from professdr where  professdr_name='가교수'

3. 학과이를별 교수의 수를 출력하세요 그룹바이, 카운트(교수별 id), 조인을 해야 학과를 붙일 수 있다
select *from professor;
select *from department;
select* from professor p left join department d
on p.department_id= d.p.department_id
select department_name , count(professor_id) from professor p left join department d
on p.department_id= d.p.department_id group by d.departmen name

5.정보통신공학과의 교수명을 출력하세요
select * from professor;
select * from department;
select* from professor p left join depatement d
on p.department_id=d.department_id;

