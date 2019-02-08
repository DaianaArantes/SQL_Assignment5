-- If MySQL is not started, run Services and run MySQL57 service

-- cd "C:\Program Files\MySQL\MySQL Server 5.7\bin"
-- mysql -u root -p < G:\mysql\db_setup\create_databases.sql
-- mysql -u root -p < G:\mysql\XXA01Task1.sql > G:\mysql\XXA01Task1.out

SELECT '' AS 'Daiana Arantes';
SELECT '' AS 'PROG2220: Section 1';
SELECT '' AS 'Assignment 5: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 2, Q1.  SWE Exercise 1 [5 points] ***';

SELECT round(AVG(score),2) AS average
FROM evaluation e JOIN consultant c
	ON e.evaluatee_id = c.c_id
WHERE CONCAT_WS(' ',c_first, c_last) = 'Janet Park';

SELECT '';
SELECT '' AS '*** Task 2, Q2.  SWE Exercise 2 [5 points] ***';

SELECT RPAD(p_id,2,' ') AS p_id,  LPAD(c_id,7,' ') AS c_id,
 LPAD(TRUNCATE(DATEDIFF(roll_off_date, roll_on_date)/30.4, 0),10,' ') AS months
FROM project_consultant;

SELECT '';
SELECT '' AS '*** Task 2, Q3.  SWE Exercise 3 [5 points] ***';

SELECT RPAD(c.c_id,6,' ') AS c_id, RPAD(CONCAT(c_last,", ",c_first),20,' ') AS consultant_full_name, LPAD(skill_id,8,' ') AS skill_id,
	CASE 
		WHEN certification LIKE 'Y'
			THEN RPAD('Certified',15,' ')
		WHEN certification LIKE 'N'
			THEN RPAD('Not Certified',15,' ')
		ELSE RPAD('Unknown',15,' ')
        END AS certification
FROM consultant_skill cs JOIN consultant c
	ON cs.c_id = c.c_id;