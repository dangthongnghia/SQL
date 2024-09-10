
CREATE TABLE PHONG(
    MAPHONG CHAR(3) PRIMARY KEY,
    TENPHONG NVARCHAR(40),
    DIACHI NVARCHAR(50),
    TEL CHAR(10)
);

CREATE TABLE DMNN(
    MANN CHAR(2) PRIMARY KEY,
    TENNN NVARCHAR(10)
);

CREATE TABLE NHANVIEN(
    MANV CHAR(5) PRIMARY KEY,
    HOTEN NVARCHAR(40),
    GIOITINH NVARCHAR(3),
    NGAYSINH DATETIME,
    LUONG INT,
    MAPHONG CHAR(3),
    SDT CHAR(10),
    NGAYBC DATETIME,
    MANN CHAR(2),
    FOREIGN KEY (MANN) REFERENCES DMNN(MANN)
);

CREATE TABLE TDNN(
    MANV CHAR(5),
    MANN CHAR(2),
    TDO CHAR(1),
    PRIMARY KEY (MANV, MANN)
);

INSERT INTO PHONG (MAPHONG, TENPHONG, DIACHI, TEL)
VALUES
('HCA', N'Hành chính tổ hợp', N'123, Láng Hạ, Đống Đa, Hà Nội', '04 8585793'),
('KDA', N'Kinh Doanh', N'123, Láng Hạ, Đống Đa, Hà Nội', '04 8574943'),
('KTA', N'Kỹ thuật', N'123, Láng Hạ, Đống Đa, Hà Nội', '04 9480485'),
('QTA', N'Quản trị', N'123, Láng Hạ, Đống Đa, Hà Nội', '04 8508585');


INSERT INTO DMNN (MANN, TENNN)
VALUES
('01', N'Anh'),
('02', N'Nga'),
('03', N'Pháp'),
('04', N'Nhật'),
('05', N'Trung Quốc'),
('06', N'Hàn Quốc');

INSERT INTO NHANVIEN (MANV, HOTEN, GIOITINH, NGAYSINH, LUONG, MAPHONG, NGAYBC)
VALUES
('HC001', N'Nguyễn Thị Hà', N'Nữ', '1958-08-27', 2500000, 'HCA', '1980-02-08'),
('HC002', N'Trần Văn Nam', 'Nam', '1956-06-12', 3000000, 'HCA', '1981-06-08'),
('HC003', N'Nguyễn Thanh Huyền', N'Nữ', '1994-07-03', 1500000, 'HCA', '2016-09-24'),
('KD001', N'Lê Tuyết Anh', N'Nữ', '1997-02-03', 2500000, 'KDA', '2018-10-02'),
('KD002', N'Nguyễn Anh Tú', 'Nam', '1992-07-04', 2600000, 'KDA', '2014-09-24'),
('KD003', N'Phạm An Thái', 'Nam', '2000-05-09', 1600000, 'KDA', '2020-09-24'),
('KD004', N'Lê Văn Hải', 'Nam', '2005-01-02', 2700000, 'KDA', '2018-06-08'),
('KD005', N'Nguyễn Phương Minh', 'Nam', '1980-01-02', 2000000, 'KDA', '2001-10-02'),
('KT001', N'Trần Đình Khâm', 'Nam', '1981-12-02', 2700000, 'KTA', '2005-01-01'),
('KT002', N'Nguyễn Mạnh Hùng', 'Nam', '1980-08-16', 2300000, 'KTA', '2005-01-01'),
('KT003', N'Phạm Thanh Sơn', 'Nam', '1984-08-20', 2000000, 'KTA', '2015-01-01'),
('KT004', N'Vũ Thị Hoài', N'Nữ', '1989-12-05', 2500000, 'KTA', '2001-10-02'),
('KT005', N'Nguyễn Thu Lan', N'Nữ', '1997-10-05', 3000000, 'KTA', '2001-10-02'),
('KT006', N'Trần Hoài Nam', 'Nam', '1989-07-02', 2800000, 'KTA', '2015-06-08'),
('KT007', N'Hoàng Nam Sơn', 'Nam', '1990-12-03', 3000000, 'KTA', '2017-07-02'),
('KT008', N'Lê Thu Trang', N'Nữ', '1982-07-06', 2500000, 'KTA', '2019-08-02'),
('KT009', N'Khúc Nam Hải', 'Nam', '1980-07-22', 2000000, 'KTA', '2005-01-01'),
('KT010', N'Phùng Trung Dũng', 'Nam', '1998-08-28', 2200000, 'KTA', '2016-09-24');


INSERT INTO TDNN (MANV, MANN, TDO)
VALUES
('HC001', '01', 'A'),
('HC001', '02', 'B'),
('HC002', '01', 'C'),
('HC002', '03', 'C'),
('HC003', '01', 'D'),
('KD001', '01', 'C'),
('KD001', '02', 'B'),
('KD002', '01', 'D'),
('KD002', '02', 'A'),
('KD003', '01', 'B'),
('KD003', '02', 'C'),
('KD004', '01', 'C'),
('KD004', '04', 'A'),
('KD004', '05', 'A'),
('KD005', '01', 'B'),
('KD005', '02', 'D'),
('KD005', '03', 'B'),
('KD005', '04', 'B'),
('KT001', '01', 'D'),
('KT001', '04', 'E'),
('KT002', '01', 'C'),
('KT002', '02', 'B'),
('KT003', '01', 'D'),
('KT003', '03', 'C'),
('KT004', '01', 'D'),
('KT005', '01', 'C');



-- Thêm thông tin vào bảng NHANVIEN
INSERT INTO NHANVIEN (MANV, HoTen, GIOITINH, NGAYSINH, Luong, MAPHONG)
VALUES ('QT001', N'Đặng Thông Nghĩa','Nam','2005-08-23', 150000, 'QTA');

-- Thêm thông tin vào bảng NGOAINGU
INSERT INTO TDNN(MANV, MANN, TDO)
VALUES ('QT001', '01', 'C');

INSERT INTO TDNN (MANV, MANN, TDO)
VALUES ('QT001', '04', 'A');


-- Truy vấn thông tin nhân viên
-- Truy vấn thông tin nhân viên
SELECT *
FROM 
    NhanVien, Phong, DMNN, TDNN

WHERE 
    HOTEN = N'Đặng Thông Nghĩa' and NHANVIEN.MAPHONG = PHONG.MAPHONG
	and NHANVIEN.MANV = TDNN.MANV and TDNN.MANN=DMNN.MANN


EXEC sp_rename 'NHANVIEN.HOTEN', N'Họ tên nhân viên', 'COLUMN';

SELECT *
FROM NhanVien
WHERE 
	GIOITINH = N'Nữ'

SELECT *
FROM NHANVIEN
WHERE [Họ tên nhân viên] LIKE N'Nguyễn%';

SELECT *
FROM NHANVIEN
WHERE [Họ tên nhân viên] LIKE N'%Hải';

SELECT 
    [Họ tên nhân viên], 
    DATEDIFF(YEAR, NGAYSINH, GETDATE()) AS TUOI
FROM 
    NHANVIEN
WHERE 
    DATEDIFF(YEAR, NGAYSINH, GETDATE()) < 40;

SELECT
    MANV,
    [Họ tên nhân viên],
    LUONG,
    LUONG * 1.4 AS Tien_Thuong
FROM
    NHANVIEN;

SELECT TOP 2
    [Họ tên nhân viên],
    NGAYSINH,
    NGAYBC
FROM
    NHANVIEN;

SELECT 
	MaNV,
	[Họ tên nhân viên],
	GIOITINH,
	NGAYSINH,
	LUONG
FROM
	NHANVIEN
WHERE 
	MAPHONG = 'HCA';

SELECT 
    MaNV,
    [Họ tên nhân viên],
    NGAYSINH,
    LUONG
FROM 
    NHANVIEN
WHERE 
    LUONG BETWEEN 2000000 AND 3000000;

SELECT 
    MaNV,
    [Họ tên nhân viên],
    NGAYSINH,
    LUONG
FROM 
    NHANVIEN
WHERE 
    LUONG NOT BETWEEN 1000000 AND 2000000;

SELECT 
	MaNV,
	[Họ tên nhân viên],
	GIOITINH,
	NGAYSINH,
	LUONG
FROM
	NHANVIEN
WHERE 
	MAPHONG = 'HCA' OR MAPHONG ='KDA';

SELECT 
    MaNV,
    [Họ tên nhân viên],
    NGAYSINH,
    LUONG
FROM 
    NHANVIEN
ORDER BY 
    LUONG ASC;

SELECT 
    MaNV,
    [Họ tên nhân viên],
    NGAYSINH,
    LUONG
FROM 
    NHANVIEN
ORDER BY 
    LUONG DESC;

SELECT 
    AVG(LUONG) AS LuongTrungBinh
FROM 
    NHANVIEN
WHERE 
    MAPHONG = 'KDA';

SELECT 
    MaNV,
    [Họ tên nhân viên],
    NGAYSINH,
    LUONG,
    SDT
FROM 
    NHANVIEN
WHERE 
    SDT IS NULL OR SDT = '';


SELECT 
    COUNT(*) AS TongNhanVien,
    AVG(LUONG) AS LuongTrungBinh
FROM 
    NHANVIEN;


SELECT 
    MAPHONG,
    SUM(LUONG) AS TongLuong
FROM 
    NHANVIEN
GROUP BY 
    MAPHONG;    
