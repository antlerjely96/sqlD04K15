/* Hiển thị toàn bộ thông tin của các nhân viên */
SELECT * FROM employees;
/* Hiển thị toàn bộ thông tin nhân viên với điều kiện birth_date <'2005-01-01' */
SELECT * FROM employees WHERE birth_date <'2005-01-01';
/* Hiển thị thông tin của dept_manager với from_date > '2019-12-31' và to_date < '2024-01-01' */
SELECT * FROM dept_manager WHERE from_date > '2019-12-31' AND to_date < '2024-01-01';
/* Hiển thị thông tin lương với điều kiện lương > 100000000 */
SELECT * FROM salaries WHERE salary > 100000000;
/* Hiển thị thông tin nhân viên với gender = 'M' */
SELECT * FROM employees WHERE gender = 'M';
/* Hiển thị thông tin nhân viên có first_name chứa từ Jack */
SELECT * FROM employees WHERE first_name LIKE '%Jack%';
/* Hiển thị thông tin nhân viên có first_name hoặc last_name là Timothy */
SELECT * FROM employees WHERE firstName = 'Timothy' OR lastName = 'Timothy';