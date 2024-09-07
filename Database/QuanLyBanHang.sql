CREATE TABLE KHACHHANG (
    MaKhachHang CHAR(10) PRIMARY KEY,
    TenCongTy NVARCHAR(100) NOT NULL,
    TenGiaoDich NVARCHAR(100),
    DiaChi NVARCHAR(255),
    Email NVARCHAR(100),
    DienThoai NVARCHAR(20),
    Fax NVARCHAR(20)
);

CREATE TABLE NHACUNGCAP (
    MaCongTy CHAR(10) PRIMARY KEY,
    TenCongTy NVARCHAR(100) NOT NULL,
    TenGiaDich NVARCHAR(100),
    DiaChi NVARCHAR(255),
    DienThoai NVARCHAR(20),
    Fax NVARCHAR(20),
    Email NVARCHAR(100)
);

CREATE TABLE LOAIHANG (
    MaLoaiHang CHAR(10) PRIMARY KEY,
    TenLoaiHang NVARCHAR(100) NOT NULL
);

CREATE TABLE NHANVIEN (
    MaNhanVien CHAR(10) PRIMARY KEY,
    Ho NVARCHAR(50),
    Ten NVARCHAR(50),
    NgaySinh DATE,
    NgayLamViec DATE,
    DiaChi NVARCHAR(255),
    DienThoai NVARCHAR(20),
    LuongCoBan FLOAT,
    PhuCap FLOAT
);

CREATE TABLE DONDATHANG (
    SoHoaDon CHAR(10) PRIMARY KEY,
    MaKhachHang CHAR(10),
    MaNhanVien CHAR(10),
    NgayDatHang DATE,
    NgayGiaoHang DATE,
    NgayChuyenHang DATE,
    NoiGiaoHang NVARCHAR(255),
    FOREIGN KEY (MaKhachHang) REFERENCES KHACHHANG(MaKhachHang),
    FOREIGN KEY (MaNhanVien) REFERENCES NHANVIEN(MaNhanVien)
);

CREATE TABLE MATHANG (
    MaHang CHAR(10) PRIMARY KEY,
    TenHang NVARCHAR(100) NOT NULL,
    MaCongTy CHAR(10),
    MaLoaiHang CHAR(10),
    SoLuong INT,
    DonViTinh NVARCHAR(50),
    GiaHang FLOAT,
    FOREIGN KEY (MaCongTy) REFERENCES NHACUNGCAP(MaCongTy),
    FOREIGN KEY (MaLoaiHang) REFERENCES LOAIHANG(MaLoaiHang)
);

CREATE TABLE CHITIETDATHANG (
    SoHoaDon CHAR(10),
    MaHang CHAR(10),
    GiaBan FLOAT,
    SoLuong INT,
    MuaGiamGia FLOAT,
    PRIMARY KEY (SoHoaDon, MaHang),
    FOREIGN KEY (SoHoaDon) REFERENCES DONDATHANG(SoHoaDon),
    FOREIGN KEY (MaHang) REFERENCES MATHANG(MaHang)
);