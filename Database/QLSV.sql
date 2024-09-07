CREATE TABLE Khoa (
    MaKhoa CHAR(10) PRIMARY KEY,
    TenKhoa NVARCHAR(100) NOT NULL UNIQUE,
    DiaChi NVARCHAR(255)
);

CREATE TABLE SinhVien (
    MaSV CHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(100) NOT NULL,
    NgaySinh DATE NOT NULL,
    GioiTinh NVARCHAR(3),
    MaKhoa CHAR(10),
    NamNhapHoc INT NOT NULL,
    FOREIGN KEY (MaKhoa) REFERENCES KHOA(MaKhoa)
);

CREATE TABLE MonHoc (
    MaMon CHAR(10) PRIMARY KEY,
    TenMon NVARCHAR(100) NOT NULL,
    SoTinChi INT NOT NULL
);

CREATE TABLE Diem (
    MaSV CHAR(10),
    MaMon CHAR(10),
    HocKy INT NOT NULL,
    DiemGiuaKy FLOAT CHECK (DiemGiuaKy BETWEEN 0 AND 10),
    DiemLan1 FLOAT CHECK (DiemLan1 BETWEEN 0 AND 10),
    DiemLan2 FLOAT CHECK (DiemLan2 BETWEEN 0 AND 10),
    PRIMARY KEY (MaSV, MaMon),
    FOREIGN KEY (MaSV) REFERENCES SINHVIEN(MaSV),
    FOREIGN KEY (MaMon) REFERENCES MONHOC(MaMon)
);


INSERT INTO Khoa values ('CNTT', N'Công Nghệ Thông Tin',N'Tầng 2 nhà C - ĐH Sư phạm TP HCM');
INSERT INTO Khoa values ('HOA', N'Hóa Học',N'Tầng 1 nhà A3 - ĐH Sư phạm TP HCM');
INSERT INTO Khoa values ('TOAN', N'Toán',N'Tầng 1 nhà C - ĐH Sư phạm TP HCM');
INSERT INTO Khoa values ('VAN', N'Văn',N'Tầng 1 nhà B - ĐH Sư phạm TP HCM');
INSERT INTO Khoa values ('VATLY', N'Vật Lý',N'Tầng 1 nhà C - ĐH Sư phạm TP HCM');



INSERT INTO MonHoc values ('T001',N'Giải tích','3');
INSERT INTO MonHoc values ('T002',N'Đại số','2');
INSERT INTO MonHoc values ('T003',N'Tin học đại cương','2');
INSERT INTO MonHoc values ('T004',N'Hệ quản trị cơ sở dữ liệu','2');
INSERT INTO MonHoc values ('T005',N'Lập trình hướng đối tượng ','3');
INSERT INTO MonHoc values ('T006',N'Lập trình DOTNET','3');
INSERT INTO MonHoc values ('T007',N'Hệ quản trị cơ sở dữ liệu','2');
INSERT INTO MonHoc values ('T008',N'Ngôn ngữ hình thức','2');
INSERT INTO MonHoc values ('T009',N'Trí tuệ nhân tạo','2');	
INSERT INTO MonHoc values ('T010',N'Cơ sở dữ liệu ','3');
INSERT INTO MonHoc values ('T011',N'Toán rời rạc','3');
INSERT INTO MonHoc values ('T012',N'Phân tích thiết kế hệ thống','3');
INSERT INTO MonHoc values ('T013',N'Xác suất thống kê','2');
INSERT INTO MonHoc values ('T014',N'Hệ chuyên gia','2');
INSERT INTO MonHoc values ('T015',N'Nguyên lý hệ điều hành ','2');
INSERT INTO MonHoc values ('T016',N'Phân tích thiết kế hệ thống','3');
INSERT INTO MonHoc values ('T017',N'Hình học sơ cấp ','2');
INSERT INTO MonHoc values ('T018',N'Đại số tuyến tính ','3');
INSERT INTO MonHoc values ('T019',N'Phương trình vi phân','2');
INSERT INTO MonHoc values ('T020',N'Phương trình đạo hàm riêng ','2');
INSERT INTO MonHoc values ('T021',N'Phương pháp tính','3');
INSERT INTO MonHoc values ('T022',N'Hình học vi phân','2');



INSERT INTO SinhVien values('615100001',N'Nguyễn Văn Bình','2004-10-01','Nam','TOAN','2020');
INSERT INTO SinhVien values('615100002',N'Bùi Văn Chính','2004-03-10','Nam','TOAN','2020');
INSERT INTO SinhVien values('615100003',N' Nguyễn Thị Mơ','2005-04-01',N'Nữ','TOAN','2020');
INSERT INTO SinhVien values('6151000019',N'Vương Thị Hảo ','2004-05-05',N'Nữ','CNTT','2020');
INSERT INTO SinhVien values('6151000020',N'Hà Thị Hằng','2004-03-05 ',N'Nữ','CNTT','2020');
INSERT INTO SinhVien values('6151000021',N'Phạm Thị Thuý Hằng','2005-05-05',N'Nữ','CNTT','2020');
INSERT INTO SinhVien values('6151000022',N'Đào Thu Hiền','2002-06-03',N'Nữ','CNTT','2020');
INSERT INTO SinhVien values('6151000024',N'Nguyễn Văn Hoạt','2004-01-15',N'Nữ','CNTT','2020');
INSERT INTO SinhVien values('615100007',N'Dương Đức Anh ','2006-02-15','Nam','CNTT','2019');
INSERT INTO SinhVien values('615100008',N'Nguyễn Thị Ngọc Anh','2006-04-11',N'Nữ','CNTT','2019');
INSERT INTO SinhVien values('615100009',N'Nguyễn Thị Điệp','2006-11-21',N'Nữ','CNTT','2019');




INSERT INTO Diem values ('615100001','T001',1, 8, 9,NULL);
INSERT INTO Diem values ('615100001','T002',1, 8, 9,NULL);
INSERT INTO Diem values ('615100001','T003',1, 8, 9, 9);
INSERT INTO Diem values ('615100001','T017',1, 8, 9,NULL);
INSERT INTO Diem values ('615100001','T018',1, 8, 9,NULL);
INSERT INTO Diem values ('615100001','T019',1, 8, 9,NULL);
INSERT INTO Diem values ('615100001','T020',1, 8, 9,NULL);
INSERT INTO Diem values ('615100001','T022',1, 8, 9, 5);
INSERT INTO Diem values ('615100002','T001',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T002',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T003',1, 8, 9, 3);
INSERT INTO Diem values ('615100002','T017',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T018',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T019',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T020',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T021',1, 8, 9,NULL);
INSERT INTO Diem values ('615100002','T022',1, 8, 9,NULL);
INSERT INTO Diem values ('615100003','T001',1, 8, 9,NULL);


