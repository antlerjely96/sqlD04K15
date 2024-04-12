/* Tạo CSDL */
CREATE DATABASE QuanLyMuonSach;
USE QuanLyMuonSach;

/* Tạo bảng readers */
CREATE TABLE readers(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    address TEXT
);

/* Tạo bảng books */
CREATE TABLE books(
	isbn VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author VARCHAR(150) NOT NULL,
    category VARCHAR(255),
    price INT(11) NOT NULL
);

/* Tạo bảng book_borrows */
CREATE TABLE book_borrows(
	reader_id BIGINT(20),
    isbn VARCHAR(255),
    borrow_date DATE,
    status VARCHAR(255),
    PRIMARY KEY(reader_id, isbn),
    FOREIGN KEY (reader_id) REFERENCES readers(id),
    FOREIGN KEY (isbn) REFERENCES books(isbn)
);

/* INSERT dữ liệu vào bảng readers */
INSERT INTO readers(name, email, phone, address) VALUES ('Lỳ Sương', 'lysuong@hotmail.com', '0247024250', '96 Phố Phan Mẫn Nghi, Phường Giao, Quận Nhữ Hồ Chí Minh');
INSERT INTO readers(name, email, phone, address) VALUES ('Trác Đăng', 'dang78@hotmail.com', '0591082806', '467 Phố Mang Đạo Đức, Phường Ung Thảo Kiều, Huyện My Lạc Hải Phòng');
INSERT INTO readers(name, email, phone, address) VALUES ('Quản Khánh Quyên', 'quan.quyen@yahoo.com', '0517534346', '7 Phố Đoàn, Xã Mẫn Tào, Huyện Phương Đắk Lắk');
INSERT INTO readers(name, email, phone, address) VALUES ('Lý Võ', 'vo123@hotmail.com', '0199977870', '3016, Thôn 33, Ấp Cự Nhàn, Huyện Nghiêm Khuê Nghệ An');
INSERT INTO readers(name, email, phone, address) VALUES ('Phó Thống', 'thong.pho@hotmail.com', '0942065809', '1784 Phố Trâm, Ấp Tiêu Thụy, Quận Đan Hà Nam');
INSERT INTO readers(name, email, phone, address) VALUES ('Hạ Phương', 'ha.phuong@gmail.com', '0299357788', '4, Thôn 5, Xã Thiện, Quận Hiếu Bình Bắc Ninh');
INSERT INTO readers(name, email, phone, address) VALUES ('Phi Chiểu', 'phichieu@gmail.com', '0220110864', '697 Phố Trâm, Phường Mang Nữ Vy, Quận Ánh Tuyền Ninh Thuận');
INSERT INTO readers(name, email, phone, address) VALUES ('Từ Tuệ', 'tu.tue@yahoo.com', '0635191907', '3 Phố Bình Hòa Sĩ, Xã 53, Quận Cát Khanh Cát Cần Thơ');
INSERT INTO readers(name, email, phone, address) VALUES ('Đồng Ngọc', 'ngoc49@hotmail.com', '0952268505', '176 Phố Mẫn, Xã Nghị Phượng San, Huyện Dinh Ánh Đồng Tháp');
INSERT INTO readers(name, email, phone, address) VALUES ('Cổ Trầm', 'tram.co@hotmail.com', '0615981426', '5431 Phố Đào Hợp Cần, Xã Phú Lai, Quận 9 Cần Thơ');
/* INSERT dữ liệu vào bảng books */
INSERT INTO books VALUES
('978-604-2-18356-7', 'GULLIVER DU KÍ', 'Jonathan Swift', 'Văn học nước ngoài', 72000),
('978-604-2-29310-5', 'DẾ MÈN PHIÊU LƯU KÝ', 'Tô Hoài', 'Văn học Việt Nam', 202500),
('978-604-2-31149-6', 'GÓC SÂN VÀ KHOẢNG TRỜI', 'Trần Đăng Khoa', '', 45000),
('978-604-2-31250-9', 'NHỮNG TẤM LÒNG CAO CẢ', 'Edmondo De Amicis', 'Văn học nước ngoài', 76500),
('978-604-2-31254-7', 'ÔNG GIÀ VÀ BIỂN CẢ', 'Ernest Hemingway', '', 40500),
('978-604-2-31255-4', 'HAI VẠN DẶM DƯỚI BIỂN', 'Jules Verne', '', 89100),
('978-604-2-31279-0', 'SỐ ĐỎ', 'Vũ Trọng Phụng', 'Văn học Việt Nam', 54000),
('978-604-2-33208-8', 'GIĂNG THỀ', 'Tô Hoài', '', 45000),
('978-604-2-33210-1', 'LÁ THƯ TÌNH ĐẦU TIÊN', 'Tô Hoài', '', 72000),
('978-604-2-37185-8', 'WONKA', 'Sibéal Pounder', 'Văn học nước ngoài', 76500);
/* INSERT dữ liệu vào bảng book_borrows */
INSERT INTO book_borrows VALUES
(2, '978-604-2-18356-7', '2024-03-11', 'Chưa trả'),
(3, '978-604-2-29310-5', '2024-02-10', 'Chưa trả'),
(5, '978-604-2-31279-0', '2023-02-09', 'Đã trả'),
(6, '978-604-2-18356-7', '2024-01-12', 'Đã trả'),
(6, '978-604-2-33210-1', '2024-02-29', 'Chưa trả'),
(8, '978-604-2-18356-7', '2023-05-09', 'Đã trả'),
(10, '978-604-2-37185-8', '2024-02-14', 'Chưa trả'),
(8, '978-604-2-29310-5', '2024-03-10', 'Chưa trả'),
(1, '978-604-2-33210-1', '2023-12-06', 'Đã trả'),
(9, '978-604-2-31255-4', '2024-02-04', 'Chưa trả');
/* 3a */
SELECT * FROM books;
/* 3b */
SELECT * FROM books WHERE author = 'Tô Hoài';
/* 3c */
SELECT books.name, book_borrows.borrow_date, book_borrows.status
FROM books INNER JOIN book_borrows ON books.isbn = book_borrows.isbn
WHERE borrow_date > '2024-01-31' AND borrow_date < '2024-03-01';
/* 3d */
SELECT books.isbn, books.name, books.author, COUNT(book_borrows.isbn) AS count_book_borrow
FROM books INNER JOIN book_borrows
ON books.isbn = book_borrows.isbn
GROUP BY books.isbn, books.name, books.author
HAVING COUNT(book_borrows.isbn) = (SELECT MAX(book_borrow_count) FROM (
	SELECT isbn, COUNT(isbn) AS book_borrow_count FROM book_borrows GROUP BY isbn
) AS max_count_borrow_book);
/* 3e */
SELECT
	readers.name AS reader_name,
    books.isbn,
    books.name AS book_name,
    book_borrows.borrow_date,
    book_borrows.status
FROM books INNER JOIN book_borrows ON books.isbn = book_borrows.ISBN
INNER JOIN readers ON readers.id = book_borrows.reader_id
WHERE book_borrows.reader_id IN (
	SELECT reader_id
    FROM book_borrows
    GROUP BY reader_id
    HAVING COUNT(reader_id) = (
		SELECT MAX(count_reader_id) AS max_borrow
        FROM (
			SELECT reader_id, COUNT(reader_id) AS count_reader_id
            FROM book_borrows GROUP BY reader_id
		) AS table_count_borrow
    )
)