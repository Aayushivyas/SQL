show databases;

use session2;

show tables;

select * from sql_project2;
select * from sql_project21;

#1. write query to show name from NYC_1
select name from sql_project21; 

#2. write query to show count of id in nyc_1
select count(id) as count_id from sql_project21; 

#3. write query to show count of id in nyc_2
select count(id) as count_id from sql_project2;

#4. write query to show host id in nyc_1
select host_id from sql_project21;

#5. write query to show all unique host id from nyc_1
select distinct host_id from sql_project21;

#6. write query to show all unique neighbourhood_group from nyc_1
select distinct neighbourhood_group from sql_project21;

#7. write query to show all unique neighbourhood from nyc_1
select distinct neighbourhood from sql_project21;

#8. write query to show room_type from nyc_1
select room_type from sql_project21;

#9. write query to show all values of Brooklyn & Manhattan from nyc_1
select * from sql_project21 where neighbourhood_group in ('Brooklyn','Manhattan');

#10. write query to show unique value of room type from nyc_1
select distinct room_type from sql_project21;
#11. write query to show maximum price from nyc_2
select max(price) as max_price from sql_project2; 

#12.write query to show minimum price from nyc_2
select min(price) as min_price from sql_project2;

#13. write query to show average price from nyc_2
select avg(price) as avg_price from sql_project2;

#14.write query to show minimum value of minimum_nights from nyc_2
select min(minimum_nights) as min_minimum_nights_stay from sql_project2;

#15.write query to show maximum value of minimum_nights from nyc_2
select max(minimum_nights) as max_minimum_nights_stay from sql_project2;

#16. write query to show average availability_365
select avg(availability_365) as avg_availability from sql_project2;

#17.write query to show id , availability_365 and all availability_365 value is greater than 300
select id, availability_365 from sql_project2 where availability_365>300;
#18. write query to show count of id where price is in between 300 to 400
select count(id) from sql_project2 where price between 300 and 400; 

#19. write query to show count of id where minimum_nights spend is less than 5
select count(id) from sql_project2 where minimum_nights<5;

#20.write query to show count where minimum_nights spend is greater than 100
select count(id) from sql_project2 where minimum_nights>100;

#21. write query to show all data of nyc_1 & nyc_2
select * from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id;

#22. write query to show host name and price
select sp2.host_name, sp.price from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id;

#23. write query to show room_type and price
select sp2.room_type, sp.price from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id;

#24. write query to show neighbourhood_group&minimum_nights spend
select sp2.neighbourhood_group, sum(sp.minimum_nights) as minimum_nights from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by neighbourhood_group;

#25. write query to show neighbourhood & availability_365
select sp2.neighbourhood, sp.availability_365 from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by neighbourhood;

#26.write query to show total price by neighbourhood_group
select sum(sp.price), sp2.neighbourhood_group from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.neighbourhood_group;

#27.write query to show maximum price by neighbourhood_group
select max(sp.price), sp2.neighbourhood_group from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.neighbourhood_group;

#28.write query to show maximum night spend by neighbourhood_group
select max(sp.minimum_nights), sp2.neighbourhood_group from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.neighbourhood_group;

#29.write query to show maximum reviews_per_month spend by neighbourhood
select max(sp.reviews_per_month), sp2.neighbourhood_group from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.neighbourhood_group;

#30.write query to show maximum price by room type
select sp2.room_type, max(sp.price) as max_price from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.room_type;

#31.write query to show average number_of_reviews by room_type
select sp2.room_type, avg(sp.number_of_reviews) from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.room_type;

#32.write query to show average price by room type
select sp2.room_type, avg(sp.number_of_reviews) from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.room_type;

#33.write query to show average night spend by room type
select sp2.room_type, avg(sp.minimum_nights) from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.room_type;

#34.write query to show average price by room type but average price is less than 100
select sp2.room_type, avg(sp.price) as avg_price from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.room_type having avg_price<100;

#35.write query to show average night by neighbourhood and average_nights is greater than 5
select sp2.neighbourhood, avg(sp.minimum_nights) as avg_nights from sql_project21 sp2, sql_project2 sp where sp.id=sp2.id group by sp2.neighbourhood having avg_nights>5;

#36. write query to show all data from nyc_1 and price is greater than 200 using sub-query
select * from sql_project21 sp inner join sql_project2 sp2 on sp.id =sp2.id where sp2.price in (select price from sql_project2 where price>200);

#37. write query to show all values from nyc_2 table and host id is 314941
select * from sql_project21 sp right join sql_project2 sp2 on sp2.id=sp.id where host_id= 314941;
select * from sql_project2 sp where sp.id in (select host_id from sql_project21 where host_id=314941);
#38. Find all pairs of id having the same host id, each pair coming once only.
select sp.id, sp2.host_id from sql_project21 sp, sql_project21 sp2 where sp.host_id=sp2.host_id and sp.id!=sp2.id;

#39.write sql query to show fetch all records that have the term cozy in name
select * from sql_project21 where name like '%cozy%';

#40. write query to show price, host id & neighbourhood_group of manhattan neighbourhood_group
select sp2.price, sp.host_id, sp.neighbourhood_group from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id and sp.neighbourhood_group ='Manhattan'

#41.write query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood also price is greater than 100
select sp2.price, sp.id, sp.host_name, sp.neighbourhood from sql_project21 sp inner join sql_project2 sp2 on sp.id=sp2.id 
where sp.neighbourhood in ('Upper West Side','Williamburg') and sp2.price in (select sp3.price from sql_project2 sp3 where sp3.price>100);
#42.write query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
select sp2.price, sp.id, sp.host_name, sp.neighbourhood from sql_project21 sp inner join sql_project2 sp2 on sp.id=sp2.id where sp.neighbourhood = 'Bedford-Stuyvesant' and host_name='Elise';

#43. write query to show host_name,availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select sp2.availability_365, sp.host_name, sp2.minimum_nights from sql_project21 sp inner join sql_project2 sp2 on sp.id=sp2.id where sp2.availability_365>100 and sp2.minimum_nights>100;

#44. write query to show to fetch id ,host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+
select sp2.number_of_reviews, sp.id, sp.host_name, sp2.reviews_per_month from sql_project21 sp inner join sql_project2 sp2 on sp.id=sp2.id where sp2.number_of_reviews>500 and sp2.reviews_per_month>5;

#45. write query to show neighbourhood_group which have most total number of review
select sp.neighbourhood_group, max(sp2.number_of_reviews) as max_review from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id group by neighbourhood_group order by max_review desc limit 1;
#46. write query to show host name which have most cheaper total price
select sp.host_name, sum(sp2.price) as cheap_price from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id group by host_name order by cheap_price limit 1;

#47. write query to show host name which have most costly total price
select sp.host_name, sum(sp2.price) as cheap_price from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id group by host_name order by cheap_price desc limit 1;
#48. write query to show host name which have max price using sub-query
select sp.host_name, sum(sp2.price) as cheap_price from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id group by host_name order by cheap_price desc limit 1;
#49. write query to show neighbourhood_group which price are less than 100
select sp.neighbourhood_group, sp2.price as cheap_price from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id and price<100 group by neighbourhood_group;

#50. write query to find max price, average availability_365 for each room type and order in ascending by maximum price
select sp.room_type, max(sp2.price) as max_price, avg(sp2.availability_365) from sql_project21 sp, sql_project2 sp2 where sp.id=sp2.id group by room_type;
