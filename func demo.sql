-- Functions
-- Date Functions

-- Datetime - 2023-03-27 12:28:45
-- abc(parameters)

select date("2023-03-27 12:28:45") as date;
-- Date function will return the date from datetime

select saledate, date(saledate) as newdate from sales;

select saledate, time(saledate) as newtime from sales;

select time("2023-03-27 12:28:45") as time;
-- Time function will return the Time from datetime

select now();
-- Now function will return the date and time in timestamp type.

select time(now()) as now;

select curdate() today;
-- curdate() function will return the todays date

select curtime() as time;
-- curtime() function will return the current time

select adddate("2012-12-31", interval 10 day) as add_date_func;
-- adddate() function will add the given time interval into date, in this function
-- interval as a second parameter is compulsary.

select adddate(curdate(), interval 10 month) as add_date_func;

select date(saledate), date(adddate(saledate, interval 5 day)) new_date from sales;

select addtime(curtime(), "12:23:34") as new_time;
-- addtime() function will return the updated time adding given hours, minutes and
-- seconds into given time. This will take the string argument as time.

select addtime(curtime(), "2 12:23:34") as a;

select date_add(saledate, interval 10 day) from sales;

select saledate, date_add(saledate, interval 2 hour) from sales;

select saledate, date_add(saledate, interval 7000 second) as date_add_demo from sales;

select hour(curtime());

select minute(curtime());

select second(curtime());

select microsecond("12:23:45.8987");

select saledate, curdate(), datediff(curdate(),saledate) from sales;


select saledate, subdate(saledate, interval 10 day) from sales;

select curdate(), subdate(curdate(), interval 10 day);

select curdate()today,
date_format(curdate(), "%d.%m.%y") a,
date_format(curdate(), "%d.%m.%Y") b,
date_format(curdate(), "%d %M %Y") c,
date_format(curdate(), "%D %M %Y") d,
date_format(curdate(), "%W %D %M %Y") e,
date_format(curdate(), "%a %D %M %Y") f,
date_format(curdate(), "%a %D %b %Y") g;

create table demo_tab(sales int, profit int);

insert into demo_tab values (3, 1),(4,2),(5,3),(6,4), (7,5),(8,6);

select * from demo_tab;

select sum(sales), sum(profit) from demo_tab;

select sales, profit, sales + profit as total from demo_tab;

select sum(sales + profit) from demo_tab;

select sum(12);

select avg(sales), avg(profit) from demo_tab;

select sales, profit, (sales+profit)/2 avg_sale_profit from demo_tab;

select sum(sales)/count(sales) as avg_sales from demo_tab;

select min(sales), max(sales) from demo_tab;

select min(profit), max(profit) from demo_tab;

select count(sales) from demo_Tab;

select sales from demo_tab order by sales desc limit 1;

select round(12.50);
-- round function will round off number with decimal number (float)
-- if after decimal point first digit is greater than 5 it will round
-- up the number, whereas if the first digit after decimal point is 
-- less than 5 then it will round down the number.

select * from products;

select Cost_per_box, round(Cost_per_box) from products;

select length("Hello SQL");

select length(7384.94);

select * from products;

select product, length(product) from products;

select * from people;

select salesperson, length(salesperson) from people;

select format(145.6270, 2);

-- Format function is used to change the number format this will 
-- round the number after decimal point into given digits.
select * from payments;

select (amount / 70) new_amt, 
format(amount / 70,2) from payments;

alter table payments
add column new_amt double 
generated always as (amount / 70) stored;

select * from payments;

select new_amt, format(new_amt, 3) from payments;

use awesome_chocolates;

select * from people;

use churn;

select * from churndata;

select customerID from churndata;

select customerID, mid(customerID, 4, 3) from churndata;

select mid("Hello Python", 7,6);

select Ucase("hello");

select date_format(curdate(), "%W %M %Y");

select year(curdate());

select addtime(now(), " 23:34");

select now();

select abs(123);

select abs(-123);

select abs(-1232.32);

select abs(1.3);

select abs(-24);

select abs(-0.5);

select abs(0.5);

select ceil(23.65);

select ceil(12.001);

select floor(23.999);

select floor(4.00003);

select ceil(4.00003);

select ceil(2.0001);

select pow(2,2);
select power(2,2);

select pi();

select pow(2,-2);

select sin(90);

select cos(0);

select tan(45);

select sin(0);

select cot(90);

select mod(12,5);

select truncate(12324.34523432, 2);

select truncate(123, 3);

select truncate(12.599, 2);

select format(12.599,2);

select sqrt(25);

select sqrt(125);

select log(10);

select log10(10);

select log2(10);

select log2(2);

select if(200>100, "YES", "NO");

select * from orderdetails;

select quantityOrdered,
if(quantityordered>30,"YES","NO")
from orderdetails;

select priceeach, if(priceeach<80, "Less", "Great")
from  orderdetails;

-- if(expression, if expression true, if expression flase)
select priceeach, isnull(priceeach) from orderdetails;


select * from people;

select isnull(Team) from people;

select * from course_details;

select * from emp_table;

select * from product;

insert into product ( pr_price, pr_quantity) 
values ( 320, 221);

create table demo2 (name varchar(255) default null,
age int default null);

insert into demo2(name, age) values 
("ABC", 21), ("PQR", 43);

insert into demo2(age) values (21), (43);

select * from demo2;

select name, isnull(name) from demo2;

select name, if(isnull(name)=1, "True", "False") as isnull
from demo2;

select bin(65);

select ascii("[");

-- American Standard Code For Information Interchange

select session_user();

select version();

select user();





