/* Hiển thị thông tin các khách hàng */
SELECT * FROM customers;
/* Hiển thị các nhân viên có last_name là Patterson */
SELECT * FROM employees WHERE last_name = 'Patterson';
/* Hiển thị nhân viên có jobTitle là Sales Rep or VP Marketing */
SELECT * FROM employees WHERE jobTitle = 'Sales Rep' OR jobTitle = 'VP Marketing';
SELECT * FROM employees WHERE jobTitle IN ('Sales Rep', 'VP Marketing');
/* Hiển thị thông tin sản phẩm có buyPrice >= 50.00 */
SELECT * FROM products WHERE buyPrice >= 50.00;
/* Hiển thị sản phẩm có productLine = Motorcycle và scale = 1:10 */
SELECT * FROM products WHERE productLine = 'Motorcycle' AND scale = '1:10';
/* Hiển thị khách hàng có contactLastName hoặc contactFirstName = Carine */
SELECT * FROM customers WHERE contactLastName = 'Carine' OR contactFirstName = 'Carine';
/* Hiển thị customerName, contactLastName, contactFirstName, phone, postalCode của khách hàng đến từ USA */
SELECT customerName, contactLastName, contactFirstName, phone, postalCode FROM customers WHERE country = 'USA';
/* Tìm kiếm sản phẩm trong tên chứa từ Harley */
SELECT * FROM products WHERE productName LIKE '%Harley%';
/* Hiển thị các payments có paymentDate > 2004-08-20 và amount > 10000.00 */
SELECT * FROM payments WHERE paymentDate > '2004-08-20' AND amount > 10000.00;
/* Hiển thị các payments có paymentDate từ 2003-05-12 đến 2005-02-14 */
SELECT * FROM payments WHERE paymentDate > '2003-05-12' AND paymentDate < '2005-02-14';
SELECT * FROM payments WHERE paymentDate BETWEEN '2003-05-12' AND '2005-02-14';
/* Hiển thị các orders có 2003-09-27 > orderDate > 2003-01-18 */
SELECT * FROM orders WHERE orderDate > '2003-01-08' AND orderDate < '2003-09-27';
SELECT * FROM orders WHERE orderDate BETWEEN '2003-01-08' AND '2003-09-27';
/* Lấy orderDetails với orderNumber = 10103 */
SELECT orderNumber, productCode, quantityOrdered, priceEach FROM orderdetals WHERE orderNumber = 10103;
/* Hiển thị orderDate, requiredDate, shippedDate, orderNumber từ bảng orders với điều kiện comments không NULL */
SELECT orderDate, requiredDate, shippedDate, orderNumber FROM orders WHERE comments IS NOT NULL;