CREATE DATABASE BANHANG;
USE BANHANG
GO

CREATE TABLE QUAN_LY(
ID int not null,
TenDN varchar(200) not null,
MK varchar(50) not null,
Constraint pk_Admin primary key(ID)
)

GO
CREATE TABLE SANPHAM(
MaSP int not null,
TenSP nvarchar(200) null,
Size char(10) null,
NgaySX date null,
GiaSP int not null,
SoLuong int null,
Constraint pk_SANPHAM primary key(MaSP)
)
GO
CREATE TABLE KHACHHANG(
MaKH int not null,
TenKH nvarchar(100) null,
SDT int not null,
DiaChi nvarchar(500) null,
Constraint pk_KHACHHANG primary key(MaKH)
)

GO

insert into KHACHHANG (MaKH, TenKH, SDT, DiaChi) 
VALUES ('001',N'NGUYỄN VĂN A','09637652356',N'HÀ NỘI');

select * from SANPHAM



select * from KHACHHANG