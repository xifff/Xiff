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
);

CREATE TABLE HoaDonChiTiet (
	MaHD nvarchar(10) not null PRIMARY KEY,
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
	NgayBH DATE,
	NgayHetHan DATE
);

CREATE TABLE BaoHanhChiTiet (
	MaBH nvarchar(10) not null PRIMARY KEY,
	BaoLoi nvarchar(100)
);