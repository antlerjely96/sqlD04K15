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
    productCode VARCHAR(15) NOT NULL,
    productName VARCHAR(70) NOT NULL,
    productLine VARCHAR(50) NOT NULL,
    productScale VARCHAR(10) NOT NULL,
    productVendor VARCHAR(50) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInStock SMALLINT(6) NOT NULL,
    buyPrice DECIMAL(8,2) NOT NULL,
    MSRP DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (productCode)
);

/* Tạo bảng offices */
CREATE TABLE offices(
    officeCode VARCHAR(10),
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postalCode VARCHAR(15) NOT NULL,
    territory VARCHAR(10) NOT NULL,
    PRIMARY KEY (officeCode)
);

/* Tạo bảng employees */
CREATE TABLE employees(
    employeeNumber INT(10) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    officeCode VARCHAR(10) NOT NULL,
    reportsTo INT(10),
    jobTitle VARCHAR(50) NOT NULL
);

/* Tạo bảng customer */
CREATE TABLE customers(
    customerNumber INT(10),
    customerName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50) NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50),
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50),
    postalCode VARCHAR(15),
    country VARCHAR(50) NOT NULL,
    salesRepEmployeeNumber INT(10),
    creditLimit INT(10),
    PRIMARY KEY (customerNumber)
);

/* Tạo bảng orders */
CREATE TABLE orders(
    orderNumber INT(10),
    orderDate DATE NOT NULL,
    requireDate DATE NOT NULL,
    shippedDate DATE,
    status VARCHAR(15) NOT NULL,
    comments TEXT,
    customerNumber INT(10) NOT NULL,
    PRIMARY KEY (orderNumber)
);

/* Tạo bảng payments */
CREATE TABLE payments(
    customerNumber INT(10),
    checkNumber VARCHAR(50),
    paymentDate DATE NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (customerNumber, checkNumber)
);

/* Tạo bảng orderdetails */
CREATE TABLE orderdetails(
    orderNumber INT(10),
    productCode VARCHAR(15),
    quantityOrdered SMALLINT(5) NOT NULL,
    priceEach DECIMAL(7,2) NOT NULL,
    orderLineNumber TINYINT(3) NOT NULL,
    PRIMARY KEY (orderNumber, productCode)
);

 

