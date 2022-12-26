show databases;

use session2;

show tables;

select * from product;
select * from manufacturers;
#1
select Name from product;
#2
select Name, Price from product;

select Name, Price from product where price<200;

select * from product where Price between 60 and 200;

select Name, Price*100 as Price_in_cents from product;

select avg(price) from product; 

select avg(price), Manufacturer from product group by Manufacturer having Manufacturer =2;
#8
select count(*) from product where price >=180;
#9
select Name, Price from product where price>=180 order by price desc, name asc;
#10
select * from product p , manufacturers m where p.Manufacturer = m.Code;
select * from product p inner join manufacturers m on p.Manufacturer = m.Code;
#11
select p.Name, p.Price, m.Name from product p ,manufacturers m where p.Manufacturer = m.Code;
#12
select p.Manufacturer as Manufacturer_code, avg(Price) from product p inner join manufacturers m on p.Manufacturer= m.Code group by m.Code; 
#13
select select m.Name, avg(Price) from product p inner join manufacturers m on p.Manufacturer= m.Code group by m.Code;
#14
select m.Name, avg(p.Price) as average_price from product p, manufacturers m where p.Manufacturer= m.Code group by m.Code having average_price>=150;
#15
select name, min(price) from product;
#16
select p.Name, m.Name, p.Price from product p inner join manufacturers m on p.Manufacturer= m.Code where Price in (select max(price) from product);
#17
insert into product(Code,Name,Price,Manufacturer)values
(11,"Loudspeakers",70,2);
select * from product;
#18
update product set name = "Laser Printer" where Code= 8;
#19
update product set Price = Price-Price*0.1;
#20
update product set Price = Price-Price*0.1 where Price>=120;