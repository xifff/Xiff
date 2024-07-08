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
	MaNV /////////////////////,
	NgayLap date,
	MaKH nvarchar(10),
);

CREATE TABLE HoaDonChiTiet (
	MaHD nvarchar(10) not null PRIMARY KEY,
	MaNV ///////////////////////,
	NgayLap date,
	SoLuong int,
	GiaSP Decimal,
	MaSP nvarchar(10),
	TongCong money
);

CREATE TABLE SP (
  MaSP nvarchar(10) not null PRIMARY KEY,
  MaTH INT,
  TenSP VARCHAR(255),
  MauSac VARCHAR(255),
  HinhAnh VARCHAR(255),
  GiaSP DECIMAL(10, 2),
  SLConLai INT,
  SLDaBan INT,
  FOREIGN KEY (MaTH) REFERENCES TH(MaTH)
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

create table NHANVIEN(
  MANV nvarchar(20) PRIMARY KEY NOT NULL,
  MATKHAU nvarchar(50) NOT NULL,
  HOTEN nvarchar(50) NOT NULL,
  SODIENTHOAI nvarchar(10) NOT NULL,  
  VAITRO bit default 0
);
