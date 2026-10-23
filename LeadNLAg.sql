use sol;
create table Monthly_sales(year smallint, month tinyint, revenue int);
insert into Monthly_sales values(2026,01,150000);
insert into Monthly_sales values(2026,02,160000);
insert into Monthly_sales values(2026,03,170000);
insert into Monthly_sales values(2026,01,180000);
select year,month,revenue,lag(revenue,3,180000) over (order by year,month) as Review,
lead(revenue,2,175000) over (order by year,month) as Prediction from Monthly_sales;