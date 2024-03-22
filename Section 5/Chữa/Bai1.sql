/* 1. */
SELECT salesman.*, customer.cust_name
FROM salesman INNER JOIN customer
ON salesman.salesman_id = customer.salesman_id
WHERE salesman.city = customer.city;

/* 2. */
SELECT orders.ord_no, orders.purch_amt, customer.cust_name, customer.city
FROM orders INNER JOIN customer
ON orders.customer_id = customer.customer_id
WHERE purch_amt BETWEEN 500 AND 2000;

/* 3. */
SELECT customer.cust_name, customer.city, salesman.salesman_id, salesman.name, salesman.city AS salesman_city, salesman.commission
FROM salesman LEFT JOIN customer
ON salesman.salesman_id = customer.salesman_id;

/* 4. */
SELECT customer.cust_name, customer.city, salesman.salesman_id, salesman.name, salesman.city AS salesman_city, salesman.commission
FROM salesman LEFT JOIN customer
ON salesman.salesman_id = customer.salesman_id
WHERE commission > 0.12;

/* 8. */
SELECT customer.cust_name, customer.city AS customer_city, customer.grade, salesman.name AS salesman_name, salesman.city AS salesman_city
FROM salesman RIGHT JOIN customer
ON salesman.salesman_id = customer.salesman_id
ORDER BY customer.customer_id ASC;

/* 9. */
SELECT customer.cust_name, customer.city AS customer_city, customer.grade, salesman.name AS salesman_name, salesman.city AS salesman_city
FROM salesman RIGHT JOIN customer
ON salesman.salesman_id = customer.salesman_id
WHERE customer.grade < 300
ORDER BY customer.customer_id ASC;

/* 10. */
SELECT customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt
FROM customer LEFT JOIN orders
ON customer.customer_id = orders.customer_id
ORDER BY orders.ord_no ASC;

/* 12. */
SELECT salesman.salesman_id, salesman.name, COUNT(customer.customer_id) AS customer_count
FROM salesman LEFT JOIN customer
ON salesman.salesman_id = customer.salesman_id
GROUP BY salesman.salesman_id, salesman.name
ORDER BY salesman.salesman_id ASC;

/* 15. */
SELECT customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt, COUNT(orders.ord_id) AS order_count
FROM customer LEFT JOIN orders
ON customer.customer_id = orders.customer_id
GROUP BY customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt;

/* 21. */
SELECT company_mast.com_id, company_mast.com_name, item_mast.*
FROM company_mast INNER JOIN item_mast
ON company_mast.com_id = item_mast.pro_com;

/* 22. */
SELECT item_mast.pro_name, item_mast.pro_price, company_mast.com_name
FROM company_mast RIGHT JOIN item_mast
ON company_mast.com_id = item_mast.pro_com;

/* 23. */
SELECT company_mast.com_name, AVG(item_mast.pro_price) AS avg_price
FROM company_mast INNER JOIN item_mast
ON company_mast.com_id = item_mast.pro_com
GROUP BY company_mast.com_name;

/* 24. */
SELECT company_mast.com_name, AVG(item_mast.pro_price) AS avg_price
FROM company_mast INNER JOIN item_mast
ON company_mast.com_id = item_mast.pro_com
GROUP BY company_mast.com_name
HAVING AVG(item_mast.pro_price) >= 350;

/* 26. */
SELECT emp_details.*, emp_department.dpt_name
FROM emp_department RIGHT JOIN emp_details
ON emp_details.emp_dept = emp_department.dpt_code;