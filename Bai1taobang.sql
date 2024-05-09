CREATE TABLE SINHVIEN (
    MaSV CHAR(4) PRIMARY KEY,
    HoSV VARCHAR(50),
    TenSV VARCHAR(50),
    NgaySinh DATE,
    DiaChi VARCHAR(100),
    Phai VARCHAR(10),
    Nam INT,
    Khoa VARCHAR(50)
);
   

CREATE TABLE GIANGVIEN (
    MaGV CHAR(4) PRIMARY KEY,
    HoGV VARCHAR(50),
    TenGV VARCHAR(50),
    NgaySinh DATE,
    DiaChi VARCHAR(100),
    Phai VARCHAR(10),
    ChuyenNganh VARCHAR(50),
    Khoa VARCHAR(50)
);

CREATE TABLE MONHOC (
    MaMH VARCHAR PRIMARY KEY,
    TenMH VARCHAR(50),
    SoTinChi INT,
    Loai BIT,
    Khoa VARCHAR(50)
);

CREATE TABLE DIEUKIEN(
    MaMH INT,
    MaMHTruoc INT,
    PRIMARY KEY (MaMH),
    FOREIGN KEY (MaMHTruoc) REFERENCES MONHOC(MaMH)
);

CREATE TABLE KHOAHOC(
    MaKH VARCHAR PRIMARY KEY,
    HocKy INT,
    MaGV INT,
    TenKH VARCHAR(50),
    NamHoc INT,
    Khoa VARCHAR(50)
);


