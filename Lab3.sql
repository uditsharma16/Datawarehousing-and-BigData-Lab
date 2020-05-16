--------------------------Task 1
select * from guest;
select * from hotel;
select * from room;
select * from booking;
----1
select h.hotelname,r.price,r.type from hotel h,room r where h.hotelno=r.hotelno;
----2
select g.guestname,h.hotelname,b.datefrom,b.dateto 
from guest g,hotel h,booking b
where g.guestno=b.guestno and h.hotelno=b.hotelno;
--------------------------Task 2
select * from departments;
select * from employees;
select * from locations;
select * from countries where country_name='New Zealand';
select * from job_history;
----1
select e.first_name||' '||e.last_name as "Full Name",e.job_id as "Job Title",d.department_name as "Department Name"
from employees e,departments d where e.department_id=d.department_id;
----2
select e.first_name||' '||e.last_name as "Full Name",e.email as "Email",d.department_name as "Department Name",l.city||' '||c.country_name as "Full Address"
from employees e,departments d,locations l,countries c
where e.department_id=d.department_id and l.country_id=c.country_id and d.location_id=l.location_id;
----3
select e.first_name||' '||e.last_name as "Full Name",e.email as "Email",d.department_name as "Department Name",l.city||' '||c.country_name as "Full Address"
from employees e,departments d,locations l,countries c
where e.department_id=d.department_id and l.country_id=c.country_id and d.location_id=l.location_id and lower(c.country_name)='&country_name';
----4
select e.first_name||' '||e.last_name as "Full Name",j.job_title,d.department_name as "Department Name",jh.start_date,jh.end_date
from employees e,departments d,job_history jh,jobs j
where e.department_id=d.department_id and e.job_id=jh.job_id and e.job_id=j.job_id
order by e.employee_id,jh.start_date asc;
----5
select e.first_name||' '||e.last_name as "Full Name",d.department_name
from employees e,departments d
where d.department_id=e.department_id(+);
----6
select e.first_name||' '||e.last_name as "Employee name",e.employee_id as "Employee#",eh.first_name||' '||eh.last_name as "Manager Name",e.manager_id as "Manager#"
from employees e,employees eh
where e.manager_id=eh.employee_id;
----7
select e.first_name||' '||e.last_name as "Employee name",e.employee_id as "Employee#",eh.first_name||' '||eh.last_name as "Manager Name",e.manager_id as "Manager#"
from employees e,employees eh
where e.manager_id=eh.employee_id(+);
----8
select e.first_name||' '||e.last_name as "Employee name",j.job_title,e.salary
from employees e,jobs j
where e.job_id=j.job_id and e.salary>(select avg(salary) from employees);
