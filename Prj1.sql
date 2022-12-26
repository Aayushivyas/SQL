show databases;

use session2;

show tables;

select * from sql_project1;

#1 WRITE a sql query to show all Item_Identifier
select Item_Identifier from sql_project1;
#2 WRITE a sql query to show count of total Item_Identifier
select count(Item_Identifier) from sql_project1;
#3 WRITE a sql query to show maximum Item Weight
select max(Item_Weight) as max_weight from sql_project1;
#4 WRITE a query to show minimun Item Weight
select min(Item_Weight) as max_weight from sql_project1;
#5 WRITE a query to show average Item_Weight
select round(avg(Item_Weight),2) as max_weight from sql_project1;
#6 WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat
select count(Item_Fat_Content) as Low_fat from sql_project1 where Item_Fat_Content in ('Low Fat','LF');
#7 WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular
select count(Item_Fat_Content) as Low_fat from sql_project1 where Item_Fat_Content in ('Regular','reg');
#8 WRITE a query TO show maximum Item_MRP
select round(max(Item_MRP),2) from sql_project1;
#9 WRITE a query TO show minimum Item_MRP
select round(min(Item_MRP),2) from sql_project1;
#10 WRITE a query to show Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP and Item_MRP IS greater than 200
select Item_Identifier,Item_Fat_Content,Item_Type,round(Item_MRP) as Item_MRP from sql_project1 where Item_MRP>200;
#11 WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat
select max(Item_MRP),Item_Fat_Content from sql_project1 where Item_Fat_Content in ('LF','Low Fat');
#12 WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS Low Fat
select min(Item_MRP),Item_Fat_Content from sql_project1 where Item_Fat_Content in ('LF','Low Fat');
#13 WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select * from sql_project1 where Item_MRP between 50 and 100;
#14 WRITE a query to show ALL UNIQUE value Item_Fat_Content
 select distinct Item_Fat_Content from sql_project1;
#15 WRITE a query to show ALL UNIQUE value Item_Type
select distinct Item_Type from sql_project1;
#16 WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select * from sql_project1 order by Item_MRP desc;
#17 WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales
select * from sql_project1 order by Item_MRP;
#18 WRITE a query to show ALL DATA IN ascending BY Item_Type
select * from sql_project1 order by Item_Type;
#19 WRITE a query to show DATA OF item_type dairy & Meat
select * from sql_project1 where Item_Type in ("dairy","meat");
#20 WRITE a query to show ALL UNIQUE value OF Outlet_Size
select distinct Outlet_Size from sql_project1;
#21 WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type
select distinct Outlet_Location_Type from sql_project1;
#22 WRITE a query to show ALL UNIQUE value OF Outlet_Type
select distinct Outlet_Type from sql_project1;
#23 WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending
select Item_Type,count(*) as count_items from sql_project1 group by Item_Type order by count_items desc;
#24.WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending
select Outlet_Size,count(*) as count_items from sql_project1 group by Outlet_Size order by count_items;
#25 WRITE a query to show count NO. OF item BY

#26 WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending
select Outlet_Type,count(*) as count_items from sql_project1 group by Outlet_Type order by count_items desc;
#27 WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending
select Outlet_Location_Type,count(*) as count_items from sql_project1 group by Outlet_Size order by count_items desc;
#28 WRITE a query to show maximum MRP BY Item_Type
select Item_Type,max(Item_MRP) from sql_project1 group by Item_Type;
#29 WRITE a query to show minimum MRP BY Item_Type
select Item_Type,min(Item_MRP) from sql_project1 group by Item_Type;
#30 WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending
select Outlet_Establishment_Year,min(Item_MRP) from sql_project1 group by Outlet_Establishment_Year order by max(Item_MRP) desc;
#31 WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
select Outlet_Establishment_Year,max(Item_MRP) from sql_project1 group by Outlet_Establishment_Year order by max(Item_MRP) desc;
#32 WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending
select Outlet_Size,avg(Item_MRP) from sql_project1 group by Outlet_Size order by avg(Item_MRP) desc;
#33.WRITE a query to show average MRP BY Outlet_Size
select Outlet_Size,round(avg(Item_MRP),2) from sql_project1 group by Outlet_Size;
#34 WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select Outlet_Type,round(avg(Item_MRP),2) as arg_mrp from sql_project1 group by Outlet_Type order by arg_mrp;
#35 WRITE a query to show maximum MRP BY Outlet_Type
select Outlet_Type,round(max(Item_MRP),2) from sql_project1 group by Outlet_Type;
#36 WRITE a query to show maximum Item_Weight BY Item_Type
select Item_Type,round(max(Item_Weight),2) from sql_project1 group by Item_Type;
#37 WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year
select Outlet_Establishment_Year,round(max(Item_Weight),2) as max_weight from sql_project1 group by Outlet_Establishment_Year;
#38 WRITE a query to show minimum Item_Weight BY Outlet_Type
select Outlet_Type,round(min(Item_Weight),2) as min_weight from sql_project1 group by Outlet_Type;
#39 WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending
select Outlet_Location_Type,round(avg(Item_Weight),2) as avg_weight from sql_project1 group by Outlet_Location_Type order by avg_weight desc;
#40 WRITE a query to show maximum Item_Outlet_Sales BY Item_Type
select Item_Type,round(max(Item_Outlet_Sales),2) from sql_project1 group by Item_Type;
#41 WRITE a query to show minimum Item_Outlet_Sales BY Item_Type
select Item_Type,round(min(Item_Outlet_Sales),2) from sql_project1 group by Item_Type;
#42.WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year
select Outlet_Establishment_Year,round(min(Item_Outlet_Sales),2) from sql_project1 group by Outlet_Establishment_Year;
#43 WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending
select Outlet_Establishment_Year,round(max(Item_Outlet_Sales),2) as max_sales from sql_project1 group by Outlet_Establishment_Year order by max_sales desc;
#44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending
select Outlet_Size,round(avg(Item_Outlet_Sales),2) as avg_sales from sql_project1 group by Outlet_Size order by avg_sales desc;
#45 WRITE a query to show average Item_Outlet_Sales BY Outlet_Size
select Outlet_Size,round(avg(Item_Outlet_Sales),2) from sql_project1 group by Outlet_Size;
#46 WRITE a query to show average Item_Outlet_Sales BY Outlet_Type
select Outlet_Type,round(avg(Item_Outlet_Sales),2) from sql_project1 group by Outlet_Type;
#47 WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type
select Outlet_Type,round(max(Item_Outlet_Sales),2) from sql_project1 group by Outlet_Type;
#48.WRITE a query to show total Item_Outlet_Sales BY


#49 WRITE a query to show total Item_Outlet_Sales BY Item_Type
select Item_Type,round(sum(Item_Outlet_Sales),2) from sql_project1 group by Item_Type;
#50.WRITE a query to show total Item_Outlet_Sales BY


#51 WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
select Item_Fat_Content,round(sum(Item_Outlet_Sales),2) from sql_project1 group by Item_Fat_Content;
#52 WRITE a query to show maximum Item_Visibility BY Item_Type
select Item_Type,round(max(Item_Visibility),2) from sql_project1 group by Item_Type;
#53 WRITE a query to show Minimum Item_Visibility BY Item_Type
select Item_Type,round(min(Item_Visibility),2) from sql_project1 group by Item_Type;
#54 WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1
select Item_Type,round(sum(Item_Outlet_Sales),2),Outlet_Location_Type from sql_project1 group by Item_Type having Outlet_Location_Type="Tier 1";
#55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF
select Item_Type,round(sum(Item_Outlet_Sales),2),Item_Fat_Content from sql_project1 group by Item_Type having Item_Fat_Content in ("low fat","LF");