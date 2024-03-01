/* Tạo Database */
CREATE DATABASE store_manager;
/* Sử dụng database */
USE store_manager;

/* Tạo bảng productlines */
CREATE TABLE productlines(
    productLine VARCHAR(50),
    textDescription VARCHAR(4000),
    htmlDescription TEXT,
    image BLOB,
    PRIMARY KEY (productLine)
);

/* Tạo bảng products */
CREATE TABLE products(
    productCode VARCHAR(15),
    productName VARCHAR(70),
    productLine VARCHAR(50),
    productScale VARCHAR(10),
    productVendor VARCHAR(50),
    productDescription TEXT,
    quantityInStock SMALLINT(6),
    buyPrice DECIMAL(8,2),
    MSRP DECIMAL(8,2),
    PRIMARY KEY (productCode)
);

/* Tạo bảng offices */
CREATE TABLE offices(
    officeCode VARCHAR(10),
    city VARCHAR(50),
    phone VARCHAR(50),
    addressLine1 VARCHAR(50),
    addressLine2 VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postalCode VARCHAR(15),
    territory VARCHAR(10),
    PRIMARY KEY (officeCode)
);

/* Tạo bảng employees */
CREATE TABLE employees(
    employeeNumber INT(10),
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    extension VARCHAR(10),
    email VARCHAR(100),
    officeCode VARCHAR(10),
    reportsTo INT(10),
    jobTitle VARCHAR(50)
);

/* Tạo bảng customer */
CREATE TABLE customers(
    customerNumber INT(10),
    customerName VARCHAR(50),
    contactLastName VARCHAR(50),
    contactFirstName VARCHAR(50),
    phone VARCHAR(50),
    addressLine1 VARCHAR(50),
    addressLine2 VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postalCode VARCHAR(15),
    country VARCHAR(50),
    salesRepEmployeeNumber INT(10),
    creditLimit INT(10),
    PRIMARY KEY (customerNumber)
);

/* Tạo bảng orders */
CREATE TABLE orders(
    orderNumber INT(10),
    orderDate DATE,
    requireDate DATE,
    shippedDate DATE,
    status VARCHAR(15),
    comments TEXT,
    customerNumber INT(10),
    PRIMARY KEY (orderNumber)
);

/* Tạo bảng payments */
CREATE TABLE payments(
    customerNumber INT(10),
    checkNumber VARCHAR(50),
    paymentDate DATE,
    amount DECIMAL(8,2),
    PRIMARY KEY (customerNumber, checkNumber)
);

/* Tạo bảng orderdetails */
CREATE TABLE orderdetails(
    orderNumber INT(10),
    productCode VARCHAR(15),
    quantityOrdered SMALLINT(5),
    priceEach DECIMAL(7,2),
    orderLineNumber TINYINT(3),
    PRIMARY KEY (orderNumber, productCode)
);

 

