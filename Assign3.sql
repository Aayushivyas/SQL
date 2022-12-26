show databases;

use session2;

show tables;

select * from ass3;
#1
select Employee_No,First_Name,Last_Name from ass3 where Hire_Date >='1991-05-21' order by Last_Name asc;
#3
select Annual_Salary from ass3 having avg(Annual_Salary)>15000 order by Annual_Salary desc;
select * from ass3 where Annual_Salary in (select Annual_Salary from ass3 having avg(Annual_Salary)>15000 order by Annual_Salary desc);
#4
select First_Name, Last_Name, Job_ID, Commission_Percent*Annual_Salary as Commission from ass3 where Commission_Percent!=0 order by First_Name;
#2
select Last_Name, Department_No, Annual_Salary from ass3 where Hire_Date between '1987-09-16' and '1996-05-12' order by Last_Name asc;
#5
select Job_Title, Department_Name from ass3 where Department_Name in ('IT', 'Sales');
#6
select Last_Name, round(Annual_Salary/12,2) from ass3 where Department_No in (10,40) order by Last_Name;
#7
select round(Annual_Salary,0) from ass3;
#8
select Department_No, Department_Name, count(Department_No) from ass3 group by Department_Name having count(Department_No)>2;
#9
select count(*) from ass3;
#10
select count(Employee_No) as no_of from ass3 group by Department_Name order by no_of desc limit 1;
select Department_No, Department_Name,count(Employee_No) from ass3 where Department_No = (select Department_No from ass3 group by Department_Name order by count(Employee_No) desc limit 1);
#11
select Department_No,Department_Name from ass3 where Job_Title != 'Programmer';
#12
update ass3 set Annual_salary= annual_salary+1000;
#13
select * from ass3 order by Job_ID;
#14
delete from ass3 where Employee_No =102;
#15
alter table ass3 add column new_salaries int(10);

update ass3 
set new_salaries = case 
	when Department_No in (20,10) then Annual_Salary+Annual_Salary*0.05
	when Department_No in (50,90,30) then Annual_Salary+Annual_Salary*0.1
	else Annual_Salary 
end;
select * from ass3;
select Department_No, Annual_Salary,new_salaries from ass3;
#16
create view managerview as select * from ass3 where Job_Title ='Manager';
select * from managerview;
#17
select * from managerview order by Employee_No;