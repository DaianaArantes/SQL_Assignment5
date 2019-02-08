-- If MySQL is not started, run Services and run MySQL57 service

-- cd "C:\Program Files\MySQL\MySQL Server 5.7\bin"
-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\XXA01Task1.sql > G:\mysql\XXA01Task1.out

SELECT '' AS 'Daiana Arantes';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 5: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 2, Q1.  SWE Exercise 1 [5 points] ***';

CREATE OR REPLACE VIEW  DA_order_item_products AS
	SELECT o.order_id,
		o.order_date,
		oi.item_price,
		oi.discount_amount,
		(oi.item_price - oi.discount_amount) AS final_price,
		oi.quantity,
		((oi.item_price - oi.discount_amount) * oi.quantity) AS item_total,
		p.product_name
    FROM orders o JOIN order_items oi
		ON o.order_id = oi.order_id
        JOIN  products p
        ON oi.product_id = p.product_id;

SELECT * FROM DA_order_item_products;

SELECT '';
SELECT '' AS '*** Task 2, Q2.  SWE Exercise 2 [3 points] ***';

SELECT order_id,product_name,item_total
FROM DA_order_item_products
ORDER BY product_name,order_id;

SELECT '';
SELECT '' AS '*** Task 2, Q3.  SWE Exercise 3 [4 points] ***';

CREATE OR REPLACE VIEW DA_product_summary AS
	SELECT product_name, COUNT(quantity) AS order_count, SUM(item_total) AS order_total
    FROM DA_order_item_products
    GROUP BY product_name;
	
SELECT '';
SELECT '' AS '*** Task 2, Q4.  SWE Exercise 4 [3 points] ***';

SELECT product_name,  order_total
FROM DA_product_summary
ORDER BY order_total DESC
LIMIT 5;
    