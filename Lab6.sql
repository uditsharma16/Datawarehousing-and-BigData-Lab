----Task 1
Insert into COURSE (course_no,COURSE_NAME) values (1,'Logical Database');
Insert into COURSE (course_no,COURSE_NAME) values (2,'Machine Learning');
Insert into COURSE (course_no,COURSE_NAME) values (3,'Programming 1');

Insert into STUDENT (STUDENT_NO,STUDENT_NAME) values (2054,'Tony Vegas');
Insert into STUDENT (STUDENT_NO,STUDENT_NAME) values (7895,'John Little');
Insert into STUDENT (STUDENT_NO,STUDENT_NAME) values (3695,'James Ship');
Insert into STUDENT (STUDENT_NO,STUDENT_NAME) values (3982,'Allis Ship');
Insert into STUDENT (STUDENT_NO,STUDENT_NAME) values (1478,'Carol Wang');

Insert into GRADE (course_no,STUDENT_NO,GRADE) values (1,2054,77);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (2,2054,75);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (2,7895,65);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (3,7895,70);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (1,1478,80);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (3,3982,85);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (3,3695,88);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (1,3695,90);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (2,1478,77);
Insert into GRADE (course_no,STUDENT_NO,GRADE) values (3,1478,70);

----Task 2
INSERT INTO countries (COUNTRY_ID, COUNTRY_NAME, region_id)
values ('NZ', 'New Zealand', 3);

INSERT INTO locations (LOCATION_ID, STREET_ADDRESS, postal_code, city, state_province, country_id)
values (3300, 'AUT City Campus, WT Building', '1010', 'Auckland', 'Auckland', 'NZ');

INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
values (280, 'Research and Development', 100, 3300);

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
values (207, 'First N', 'Last N', 'name1', '555-555-555', '1/3/2016', 'IT_PROG', 5000,null, 100, 280);

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES (208, 'First N', 'Last N', 'name2', '555-555-555', '1/3/2016', 'IT_PROG', 5000,NULL, 100, 280);

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES (209, 'First N', 'Last N', 'name3', '555-555-555', '1/3/2016', 'IT_PROG', 5000,NULL, 100, 280);

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES (210, 'First N', 'Last N', 'name4', '555-555-555', '1/3/2016', 'IT_PROG', 5000,NULL, 100, 280);

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES (211, 'First N', 'Last N', 'name5', '555-555-555', '1/3/2016', 'IT_PROG', 5000,NULL, 100, 280);