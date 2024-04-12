/* 6. */
SELECT orders,ord_no, orders.ord_date, orders.purch_amt, customer.cust_name, customer.grade, salesman.name, sales.commission
FROM orders INNER JOIN customer ON orders.customer_id = customer.customer_id
INNER JOIN salesman ON orders.salesman_id = salesman.salesman_id;
/* 11. */
SELECT customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt, salesmae.name, salesman.commission
FROM customer LEFT JOIN orders ON customer.customer_id = orders.customer_id
LEFT JOIN salesman ON orders.salesman_id = salesman.salesman_id;
/* 13. */
SELECT salesman.*, customer.cust_name, customer.city AS customer_city, customer.grade, orders.ord_no, orders.ord_date, orders.purch_amt
FROM salesman LEFT JOIN customer ON salesman.salesman_id = customer.salesman_id
RIGHT JOIN orders ON orders.salesman_id = salesman.salesman_id;
/* 14. */
SELECT salesman.*, customer.cust_name, customer.city AS customer_city, customer.grade, orders.ord_no, orders.ord_date, orders.purch_amt
FROM salesman LEFT JOIN customer ON salesman.salesman_id = customer.salesman_id
LEFT JOIN orders ON orders.salesman_id = salesman.salesman_id
WHERE orders.purch_amt > 2000 AND customer.grade IS NOT NULL;
