create database puma;
use puma;
show tables;
alter table puma_cleaned rename to puma;
select * from puma;
select product,category,price,quantity from puma;
select count(*)as total_orders from puma;
select product, max(price) as highest_price from puma group by product order by highest_price desc limit 1;
select city,sum(total_amount) as total_sales from puma group by city order by total_sales desc;
SELECT AVG(rating) AS avg_rating
FROM puma;
SELECT *
FROM puma
WHERE rating > 5;

SELECT *
FROM puma
WHERE price < 0 OR quantity < 0;

SELECT category, COUNT(*) AS total_products
FROM puma
GROUP BY category;

SELECT sales_channel, SUM(total_amount) AS sales
FROM puma
GROUP BY sales_channel;

SELECT customer_id, SUM(total_amount) AS total_spent
FROM puma
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

SELECT SUM(total_amount) AS revenue
FROM puma;

