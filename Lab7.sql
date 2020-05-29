----Section A
--Task 1
SELECT V_CODE FROM product
UNION
SELECT V_CODE FROM vendor;
--Task 2
select v_code from product
union all
select v_code from vendor;
--Task 3
select v_code from product
intersect
select v_code from vendor;
--Task 4
select v_code from product
minus
select v_code from vendor;
----Section B
--1
select count(cus_balance) from customer where cus_balance>500;
--2
select p_code,p_descript from product where v_code is null;
--3
select cus_fname,cus_lname,cus_phone from customer 
where lower(cus_fname) like 'a%' order by cus_fname ;
--4
select sum(cus_balance),min(cus_balance),max(cus_balance),avg(cus_balance)
from customer;
--5
select c.cus_code,i.inv_number,i.inv_date,p.p_descript,l.line_units,l.line_price
from customer c,invoice i, line l,product p
where c.cus_code=i.cus_code and i.inv_number=l.inv_number and l.p_code=p.p_code;
--6
select inv_number,sum(line_units*line_price) from line 
group by inv_number having sum(line_units*line_price)>100 ;
--7
select cus_code from customer
minus
select cus_code from invoice;
----Section C
--1
CREATE TABLE EMP_1 (
EMP_NUM CHAR(3) PRIMARY KEY,
EMP_LNAME VARCHAR(15) NOT NULL,
EMP_FNAME VARCHAR(15) NOT NULL,
EMP_INITIAL CHAR(1),
EMP_HIREDATE DATE,
JOB_CODE VARCHAR(3),
FOREIGN KEY (JOB_CODE) REFERENCES JOB(Job_code));
select * from emp_1;
--2
insert into emp_1 values('101','News','John','G',TO_DATE('2000-11-08', 'YYYY-MM-DD'),'502');
INSERT INTO EMP_1 VALUES('102','Senior','David','H',to_date('1989-07-12','YYYY-MM-DD'),'501');
--3
select * from emp_1 where job_code='502';
--4
Commit;
--5
update employee 
set job_code='501' where emp_num='107';
select * from employee where emp_num='107';
rollback;
select * from employee where emp_num='107';
