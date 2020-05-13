-----------------------------Task 1
--1
select * from Locations;
--2
select e.employee_id as "Emp#",e.first_name||' '||e.last_name as "Full Name",j.job_title,e.department_id 
from Employees e,jobs j 
where e.job_id=j.job_id;
--3
select unique(job_id) from Employees;
--4
select first_name||' '||last_name as "Full Name",'Phone: '||phone_number||' Email: '||email as "Contact Details" from employees;

--------------------------------Task 2
--1
select hotelname,city frosm hotel;
--2
select * from guest;
--3
select * from room where type='S';
--4
select * from guest where Lower(guestcity)='london';
--5
select * from booking where dateto is null;