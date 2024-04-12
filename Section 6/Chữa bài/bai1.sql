/* 1. */
SELECT
	orders.ord_no,
    orders.purch_amt,
    orders.order_date,
    orders.customer_id,
    salesman.salesman_id
FROM salesman INNER JOIN orders
ON salesman.salesman_id = orders.salesman_id
WHERE salesman.name = 'Paul Adam';

SELECT ord_no, purch_amt, order_date, customer_id, salesman_id
FROM orders
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE name = 'Paul Adam');

/* 2. */
SELECT
	orders.ord_no,
    orders.purch_amt,
    orders.order_date,
    orders.customer_id,
    salesman.salesman_id
FROM salesman INNER JOIN orders
ON salesman.salesman_id = orders.salesman_id
WHERE salesman.city = 'London';

SELECT ord_no, purch_amt, order_date, customer_id, salesman_id
FROM orders
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city = 'London');

/* 3. */
SELECT ord_no, purch_amt, order_date, customer_id, salesman_id
FROM orders
WHERE salesman_id IN (SELECT salesman_id FROM orders WHERE customer_id = 3007);

/* 4. */
SELECT ord_no, purch_amt, order_date, customer_id, salesman_id
FROM orders
WHERE ord_no IN
(SELECT ord_no FROM orders WHERE order_date = '2012-10-10' GROUP BY ord_no HAVING purch_amt > AVG(purch_amt));

/* 6. */
SELECT commission FROM salesman
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city = 'New York');

/* 8. */
SELECT grade, COUNT(customer_id) AS number_customer FROM customer
WHERE customer_id IN (SELECT customer_id FROM customer GROUP BY customer_id HAVING grade > AVG(grade));

/* 9. */
SELECT ord_no, purch_amt, ord_date, salesman_id
FROM orders
WHERE salesman_id IN (SELECT salesman_id FROM salesman HAVING commission = MAX(commission));

/* 11. */
SELECT salesman_id, name
FROM salesman
WHERE salesman_id IN (SELECT salesman_id FROM customer GROUP BY salesman_id HAVING COUNT(customer_id) > 1);

/* 18. */
SELECT * FROM salesman
WHERE salesman_id IN (SELECT salesman_id FROM customer WHERE customer_id IN (SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(ord_no) > 1));
