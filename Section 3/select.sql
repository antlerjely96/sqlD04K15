USE demod04k15;
CREATE TABLE user(
	id INT,
    name VARCHAR(50),
    age INT,
    address TEXT,
    phone VARCHAR(10)
);

INSERT INTO user VALUES (1, 'user 1', 18, 'HN', '0123456789'),
(2, 'user 2', 22, 'HN', '0123456788'),
(3, 'user 3', 17, 'HN', '0123456787'),
(4, 'user 4', 17, 'HN', '0123456786'),
(5, 'user 5', 19, 'HN', '0123456785');
INSERT INTO user VALUES (6, 'admin 1', 18, 'HN', '0123456789'),
(7, 'admin 2', 22, 'HN', '0123456788'),
(8, 'customer 3', 17, 'HN', '0123456787'),
(9, 'cus 4', 17, 'HN', '0123456786'),
(10, 'cus 5', 19, 'HN', '0123456785');
UPDATE user SET address = 'TPHCM' WHERE id IN (1,3);
/* Lấy toàn bộ dữ liệu từ bảng user */
SELECT * FROM user;
/* Lấy toàn bộ dữ liệu từ bảng user nhưng chỉ lấy id, name, phone */
SELECT id, name, phone FROM user;
/* Lấy dữ liệu từ bảng user với điều kiện age >= 18 */
SELECT * FROM user WHERE age >= 18;
/* Lấy dữ liệu từ bảng nhưng phải thỏa mãn đồng thời nhiều điều kiện
Lấy thông tin của user có age >= 18 và address = 'HN'
*/
SELECT * FROM user WHERE age >= 18 AND address = 'HN';
/* Lấy dữ liệu từ bảng, các bản ghi được lấy thỏa mãn ít nhất 1 trong nhiều điều kiện
Lấy thông tin các user có age >= 18 hoặc address = 'Hn'
*/
SELECT * FROM user WHERE age >= 18 OR address = 'HN';
/* Lấy dữ liệu từ bảng và loại bỏ các bản ghi trùng nhau
Lấy address của các user và loại bỏ những address
*/
SELECT DISTINCT address FROM user;
/* Lấy dữ liệu từ bảng sao cho 1 trường của bản ghi có giá trị nằm trong tập giá trị có trước
Lấy dữ liệu từ bảng user với age nằm trong tập giá trị: 18, 19, 20
*/
SELECT * FROM user WHERE age IN (18, 19, 20);
/* Lấy dữ liệu từ bảng sao cho 1 trường của bản ghi có giá trị nằm ngoài tập giá trị có trước
Lấy dữ liệu từ bảng user với age nằm ngoài tập giá trị: 18, 19, 20
*/
SELECT * FROM user WHERE age NOT IN (18, 19, 20);
/* Tìm kiếm bản ghi thỏa mãn điều kiện */
/* Lấy các bản ghi có name bắt đầu bằng 'ad' */
SELECT * FROM user WHERE name LIKE 'ad%';
/* Lấy các bản ghi có name kết thúc bằng '1' */
SELECT * FROM user WHERE name LIKE '%1';