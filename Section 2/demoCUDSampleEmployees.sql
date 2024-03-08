/* Thêm dữ liệu cho tất cả các cột của bảng Customers, insert 1 dòng */
INSERT INTO customers
VALUES (1, 'customer 1', 'John', 'Doe', '0123456789', 'Ha Noi', '', 'Ha Noi', '', '100000', 'Viet Nam', 1, 100000000);
INSERT INTO customers
VALUES (3, 'customer 3', 'John', 'Doe', '0123456789', 'Ha Noi', '', 'TPHCM', '', '', 'Viet Nam', 1, 100000000);
INSERT INTO customers
VALUES (4, 'customer 4', 'John', 'Doe', '0123456789', 'Ha Noi', '', 'TPHCM', '', '', 'Viet Nam', 1, 100000000);
INSERT INTO customers
VALUES (5, 'customer 5', 'John', 'Doe', '0123456789', 'TPHCM', '', 'TPHCM', '', '', 'Viet Nam', 1, 100000000);
/* Thêm dữ liệu cho 1 số cột của 1 bảng */
/* Thêm dữ liệu cho cột customerNumber, customerName, phone, city, country của bảng customers, insert 1 dòng */
INSERT INTO customers(customerNumber, customerName, phone, city, country)
VALUES (2, 'Customer 2', '0987654321', 'Ha Noi', 'Viet Nam');

/* Update postalCode = 100000, addressLine2 = 'Da Nang' cho những bản ghi có city = 'Ha Noi' */
UPDATE customers SET postalCode = 100000, addressLine2 = 'Da Nang' WHERE city = 'Ha Noi';

/* Xóa bản ghi có customerNumber = 1 trong bảng customers */
DELETE FROM customers WHERE customerNumber = 1;
/* Xóa tất cả các bản ghi trong bảng customers */
DELETE FROM customers;

/* Lấy (đọc) toàn bộ bản ghi trong bảng customers */
SELECT * FROM customers;
