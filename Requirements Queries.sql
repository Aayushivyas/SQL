show databases;

use session2;

show tables;

select * from ass3;
#1 List the last name, first name and employee number of all programmers who were hired on or before 21 May 1991 sorted in ascending order of last name.
select Employee_No,First_Name,Last_Name from ass3 where Hire_Date >='1991-05-21' order by Last_Name asc;

#3 List all the data for each job where the average salary is greater than 15000 sorted in descending order of the average salary.
select Annual_Salary from ass3 having avg(Annual_Salary)>15000 order by Annual_Salary desc;
select * from ass3 where Annual_Salary in (select Annual_Salary from ass3 having avg(Annual_Salary)>15000 order by Annual_Salary desc);

#4 List the last name, first name, job id and commission of employees who earn commission sorted in ascending order of first name.
select First_Name, Last_Name, Job_ID, Commission_Percent*Annual_Salary as Commission from ass3 where Commission_Percent!=0 order by First_Name;

#2 List the department number, last name and salary of all employees who were hired between 16/09/87 and 12/05/96 sorted in ascending order of last name within department number.
select Last_Name, Department_No, Annual_Salary from ass3 where Hire_Date between '1987-09-16' and '1996-05-12' order by Last_Name asc;

#5 Which Job Title are found in the IT and Sales departments?
select Job_Title, Department_Name from ass3 where Department_Name in ('IT', 'Sales');

#6 List the last name of all employees in department no 10 and 40 together with their monthly salaries (rounded to 2 decimal places), sorted in ascending order of last name
select Last_Name, round(Annual_Salary/12,2) from ass3 where Department_No in (10,40) order by Last_Name;

#7 Show the Annual Salary salaries displayed with no decimal places.
select round(Annual_Salary,0) from ass3;

#8 List the department number, department name and the number of employees for each department that has more than 2 employees grouping by department number anddepartment name.
select Department_No, Department_Name, count(Department_No) from ass3 group by Department_Name having count(Department_No)>2;

#9 Show the total number of employees.
select count(*) from ass3;

#10 List the department number, department name and the number of employees for the department that has the highest number of employees using appropriate grouping.
select count(Employee_No) as no_of from ass3 group by Department_Name order by no_of desc limit 1;
select Department_No, Department_Name,count(Employee_No) from ass3 where Department_No = (select Department_No from ass3 group by Department_Name order by count(Employee_No) desc limit 1);

#11 List the department number and name for all departments where no programmers work.
select Department_No,Department_Name from ass3 where Job_Title != 'Programmer';

#12 Update all the Annual salaries for jobs with an increase of 1000.
update ass3 set Annual_salary= annual_salary+1000;

#13 List all the data for jobs sorted in ascending order of job id.
select * from ass3 order by Job_ID;

#14 The job history for employee number 102 is no longer required. Delete this record.
delete from ass3 where Employee_No =102;

#15 Prepare a table with percentage raises, employee numbers and old and new salaries. Employees in departments 20 and 10 are given a 5% rise, employees in departments 50, 90 and 30 are given a 10% rise and employees in other departments are not given a rise
alter table ass3 add column new_salaries int(10);

update ass3 
set new_salaries = case 
	when Department_No in (20,10) then Annual_Salary+Annual_Salary*0.05
	when Department_No in (50,90,30) then Annual_Salary+Annual_Salary*0.1
	else Annual_Salary 
end;
select * from ass3;
select Department_No, Annual_Salary,new_salaries from ass3;

#16 Create a new view for manager’s details only using all the fields from the employee table.
create view managerview as select * from ass3 where Job_Title ='Manager';
select * from managerview;

#17 Show all the fields and all the managers using the view for managers sorted in ascending order of employee number
select * from managerview order by Employee_No;
