select * from employees e ; 
----1
select e.first_name||' '||e.last_name as "Full Name",j.job_title from employees e,jobs j 
where e.job_id=j.job_id and e.salary>10000;
----2
select e.first_name||' '||e.last_name as "Full Name",j.job_title,e.salary from employees e,jobs j 
where e.job_id=j.job_id and (e.salary not between 5000 and 12000) ;
----3
select e.employee_id,e.first_name||' '||e.last_name as "Full Name",j.job_title,e.hire_date as " Start Date"
from employees e,jobs j
where e.job_id=j.job_id 
and lower(e.first_name||' '||e.last_name) in ('alyssa hutton','david austin');
----4
select l.street_address,l.postal_code,l.city from locations l where l.country_id in ('JP','IT');
----5
select e.first_name||' '||e.last_name as "Full Name",'Phone: '||e.phone_number||' Email: '||e.email as "Contant Details"
from employees e
where TO_DATE(e.hire_date, 'dd-MON-yy') between TO_DATE('01-JAN-96', 'dd-MON-yy') and TO_DATE('31-JAN-96', 'dd-MON-yy')
order by e.last_name ;
----7
select e.first_name||' '||e.last_name as "Full Name",'Phone: '||e.phone_number||' Email: '||e.email as "Contant Details",e.hire_date
from employees e
order by hire_date desc;
----8
select * from employees where lower(first_name) like 's%n';
----9
select * from employees where job_id in ('AC_MGR',' AD_VP', 'FI_MGR', 'HR_REP','PR_REP');
----10
select * from employees where job_id not in ('AC_MGR',' AD_VP', 'FI_MGR', 'HR_REP','PR_REP');
----11
