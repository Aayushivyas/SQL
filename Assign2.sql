show databases;

use session2;

show tables;

create table Department(
Code int(5),
Name varchar(30),
Budget int
);

insert into department(Code,Name,Budget)values
(14,"IT",6500),
(37,"Accounting",15000),
(59,"Human Resources",240000),
(77,"Research",55000);

create table empolyee(
ID int,
Name varchar(20),
Last_Name varchar(20),
department int(5)
);

insert into empolyee(ID,Name,Last_Name,Department)values
(123234877,"Michael","Rogers",14),
(152934485,"Anand","Manikutty",14),
(222364883,"Carol","Smith",37),
(326587417,"Joe","Stevens",37),
(332154719,"Mary-Anne","Foster",14),
(332569843,"George","ODonnell",77),
(546523478,"John","Doe",59),
(631231482,"David","Smith",77),
(654873219,"Zacary","Efron",59),
(745685214,"Eric","Goldsmith",59),
(845657245,"Elizabeth","Doe",14),
(845657246,"Kumar","Swamy",14);

alter table empolyee rename employee;
#1
select distinct Last_Name from employee;
#2
select * from employee where Last_Name like 'Smith%';
#3
select * from employee where Last_Name = 'Smith' or Last_Name= 'Doe';
#4
select * from employee where department =14;
#5
select * from employee where department =37 or department =77;
#6
select * from employee where Last_Name like 'S%';
#7
select sum(Budget) as Budgets from department;
#8
select department, count(*) as no_of_employees from employee group by department;
#9
select * from employee e, department d where e.department= d.Code;
#10
select e.Name, e.Last_Name, d.Name, d.Budget from employee e, department d where e.department= d.Code;
#11
select e.Name, e.Last_Name from employee e, department d where e.department= d.Code and d.Budget>60000;
#12
select * from department; 
select * from department where Budget>(select avg(Budget) from department);
#13
select d.Name from employee e inner join department d on e.department=d.Code group by d.Name having count(*)>2;
#14
select e.Name,e.Last_Name from employee e inner join department d on e.department=d.Code where d.Budget=(select budget from department order by budget limit 1,1); 
#15
insert into department(Code,Name,Budget) values
(11,"Quality Assurance",40000);
#16
insert into employee(ID,Name,Last_Name,Department)values
(847219811,"Mary","Moore",11);
#17
update department set budget=budget-budget*0.1; 
#18
update employee set department=14 where department=77;
select * from employee;
#19
delete from employee where department =14;
#20
select code from department where budget>=60000;
delete from employee where department= (select code from department where budget>=60000);
#21
delete from employee;