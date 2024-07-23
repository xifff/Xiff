create database QLDT
use QLDT

CREATE TABLE KH (
  MaKH nvarchar(10) not null PRIMARY KEY,
  HoTen VARCHAR(255),
  GioiTinh VARCHAR(255),
  SDT VARCHAR(255)
);

CREATE TABLE HoaDon (
	MaHD nvarchar(10) not null PRIMARY KEY,
	MaNV nvarchar(20),
	NgayLap date,
	MaKH nvarchar(10),
	FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV)
);

CREATE TABLE HoaDonChiTiet (
	MaHDCT nvarchar(10) not null PRIMARY KEY,
	MaNV nvarchar(20),
	NgayLap date,
	SoLuong int,
	GiaSP Decimal(10, 2),
	MaSP nvarchar(10),
	TongCong money,
	HoTen varchar(255),
	SDT varchar(255)
	FOREIGN KEY (MaNV) REFERENCES NHANVIEN (MaNV),
);

CREATE TABLE SP (
  MaSP nvarchar(10) not null PRIMARY KEY,
  MaTH nvarchar(10),
  TenSP VARCHAR(255),
  MauSac VARCHAR(255),
  HinhAnh VARCHAR(255),
  GiaSP DECIMAL(10, 2),
  SLConLai INT,
  SLDaBan INT,
  FOREIGN KEY (MaTH) REFERENCES TH (MaTH)
);

CREATE TABLE TH (
  MaTH nvarchar(10) not null PRIMARY KEY,
  TenTH VARCHAR(255)
);

CREATE TABLE BaoHanh (
	MaBH nvarchar(10) not null PRIMARY KEY,
	MaSP nvarchar(10), 
	NgayBH DATE,
	NgayHetHan DATE,
	FOREIGN KEY (MaSP) REFERENCES SP(MaSP)
);

CREATE TABLE BaoHanhChiTiet (
	MaBH nvarchar(10) not null PRIMARY KEY,
	MaHD nvarchar(10),
	MaSP nvarchar(10),
	BaoLoi nvarchar(100)
);

CREATE TABLE NHANVIEN(
  MANV nvarchar(20) PRIMARY KEY NOT NULL,
  MATKHAU nvarchar(50) NOT NULL,
  HOTEN nvarchar(50) NOT NULL,
  SODIENTHOAI nvarchar(10) NOT NULL,  
  VAITRO bit default 0
);

select * from KH
select * from HoaDon
select * from HoaDonChiTiet
select * from SP
select * from TH
select * from BaoHanh
select * from BaoHanhChiTiet
select * from NHANVIEN

INSERT INTO KH (MaKH, HoTen, GioiTinh, SDT) VALUES
('KH001', 'Nguyễn Văn A', 'Nam', '0901234567'),
('KH002', 'Trần Thị B', 'Nữ', '0987654321'),
('KH003', 'Lê Đình C', 'Nam', '0912345678'),
('KH004', 'Phạm Thị D', 'Nữ', '0976543210'),
('KH005', 'Nguyễn Thanh E', 'Nam', '0923456789');
INSERT INTO HoaDon (MaHD, MaNV, NgayLap, MaKH) VALUES
('HD001', 'NV001', '2024-07-23', 'KH001'),
('HD002', 'NV002', '2024-07-22', 'KH002'),
('HD003', 'NV003', '2024-07-21', 'KH003'),
('HD004', 'NV002', '2024-07-20', 'KH001'),
('HD005', 'NV001', '2024-07-19', 'KH004');
INSERT INTO HoaDonChiTiet (MaHDCT, MaNV, NgayLap, SoLuong, GiaSP, MaSP, TongCong, HoTen, SDT) VALUES
('HDCT001', 'NV001', '2024-07-23', 2, 1500000, 'SP001', 3000000, 'Nguyễn Văn A', '0901234567'),
('HDCT002', 'NV002', '2024-07-22', 1, 2000000, 'SP002', 2000000, 'Trần Thị B', '0987654321'),
('HDCT003', 'NV003', '2024-07-21', 3, 500000, 'SP003', 1500000, 'Lê Đình C', '0912345678'),
('HDCT004', 'NV002', '2024-07-20', 2, 1000000, 'SP001', 2000000, 'Nguyễn Văn A', '0901234567'),
('HDCT005', 'NV001', '2024-07-19', 1, 3000000, 'SP004', 3000000, 'Phạm Thị D', '0976543210');
INSERT INTO SP (MaSP, MaTH, TenSP, MauSac, HinhAnh, GiaSP, SLConLai, SLDaBan) VALUES
('SP001', 'TH001', 'Laptop Dell XPS 15', 'Đen', 'dell_xps_15.jpg', 3000000, 10, 5),
('SP002', 'TH001', 'Laptop HP Spectre x360', 'Bạc', 'hp_spectre_x360.jpg', 4000000, 8, 3),
('SP003', 'TH002', 'Điện thoại iPhone 12', 'Trắng', 'iphone_12.jpg', 1500000, 15, 10),
('SP004', 'TH002', 'Điện thoại Samsung Galaxy S21', 'Xanh', 'samsung_s21.jpg', 3500000, 12, 8),
('SP005', 'TH003', 'Máy tính bảng iPad Pro', 'Vàng', 'ipad_pro.jpg', 5000000, 5, 2);
INSERT INTO TH (MaTH, TenTH) VALUES
('TH001', 'Dell'),
('TH002', 'Apple'),
('TH003', 'Samsung');
INSERT INTO BaoHanh (MaBH, MaSP, NgayBH, NgayHetHan) VALUES
('BH001', 'SP001', '2024-07-23', '2025-07-23'),
('BH002', 'SP002', '2024-07-22', '2025-07-22'),
('BH003', 'SP003', '2024-07-21', '2025-07-21'),
('BH004', 'SP004', '2024-07-20', '2025-07-20'),
('BH005', 'SP005', '2024-07-19', '2025-07-19');
INSERT INTO BaoHanhChiTiet (MaBH, MaHD, MaSP, BaoLoi) VALUES
('BHCT001', 'HD001', 'SP001', 'Màn hình bị đốm sáng'),
('BHCT002', 'HD002', 'SP002', 'Pin hao nhanh'),
('BHCT003', 'HD003', 'SP003', 'Camera trước không hoạt động'),
('BHCT004', 'HD004', 'SP004', 'Lỗi mạng không kết nối'),
('BHCT005', 'HD005', 'SP005', 'Âm thanh rè');
INSERT INTO NHANVIEN (MANV, MATKHAU, HOTEN, SODIENTHOAI, VAITRO) VALUES
('NV001', 'password123', 'Nguyễn Văn An', '0987654321', 1),
('NV002', 'abc@123', 'Trần Thị Bình', '0909090909', 0),
('NV003', 'admin@123', 'Phạm Đình Công', '0979797979', 1),
('NV004', '123456', 'Hoàng Minh Đức', '0969696969', 0),
('NV005', 'password456', 'Nguyễn Thị Mai', '0949494949', 0);