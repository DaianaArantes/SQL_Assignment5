-- If MySQL is not started, run Services and run MySQL57 service

-- cd "C:\Program Files\MySQL\MySQL Server 5.7\bin"
-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\XXA01Task1.sql > G:\mysql\XXA01Task1.out

SELECT '' AS 'Daiana Arantes';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 5: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1.  MGS Exercise 8-1 [5 points] ***';

SELECT FORMAT(list_price, 2) AS price_format,
	CAST(discount_percent AS signed) AS discount_cast,
	ROUND((list_price  * discount_percent / 100),2) AS discount_amount,
    DATE_FORMAT(date_added, '%m-%d') AS month_day_added
FROM products;

SELECT '';
SELECT '' AS '*** Task 1, Q2.  MGS Exercise 9-2 [5 points] ***';

SELECT order_date, DATE_FORMAT(order_date, '%Y') AS order_year,
	DATE_FORMAT(order_date, '%b-%d-%Y') AS order_date_formatted,
    DATE_FORMAT(order_date, '%r') AS order_time,
    DATE_FORMAT(order_date, '%m/%d/%y %h:%i') AS order_datetime
FROM orders;

SELECT '';
SELECT '' AS '*** Task 1, Q3.  MGS Exercise 9-3 [5 points] ***';

SELECT card_number, length(card_number) AS card_number_length,
		RIGHT(card_number,4) AS last_four_digits,
		CONCAT('XXXX-XXXX-XXXX-',RIGHT(card_number,4)) AS formatted_number
FROM orders;


SELECT '';
SELECT '' AS '*** Task 1, Q4.  MGS Exercise 9-4 [5 points] ***';

SELECT order_id, order_date, DATE_ADD(order_date, INTERVAL 2 DAY) AS est_ship_date,
		IFNULL(ship_date, 'Not Shipped') AS ship_date,
		DATEDIFF(ship_date,order_date) AS days_to_ship
FROM ORDERS
WHERE order_date <= '2015-04-30 00:00:00' AND order_date >= '2015-04-01 00:00:00';