CREATE DATABASE QL_BANHANG;
USE QL_BANHANG
GO

CREATE TABLE QUANLY(
ID int not null,
TenDN varchar(200) not null,
MK varchar(50) not null,
Constraint pk_Admin primary key(ID)
)

GO
CREATE TABLE SAN_PHAM(
MaSP int not null,
TenSP nvarchar(200) null,
Size char(10) null,
NgaySX date null,
GiaSP int not null,
SoLuong int null,
Constraint pk_SAN_PHAM primary key(MaSP)
)
GO
CREATE TABLE KHACH_HANG(
MaKH int not null,
TenKH nvarchar(100) null,
SDT int not null,
DiaChi nvarchar(500) null,
Constraint pk_KHACH_HANG primary key(MaKH)
)

GO
CREATE TABLE THANH_TOAN(
TenKH nvarchar(100) not null,
SDT int not null,
DiaChi nvarchar(500) null,
MaSP int not null,
TenSP nvarchar(200) not null,
Size char(10) not null,
DonGia int not null,
TongTien int not null,
ThanhTien int not null,
)

insert into KHACH_HANG(MaKH,TenKH,SDT,DiaChi) VALUES ('001',N'NGUYỄN VĂN A','09637652356',N'HÀ NỘI')

select * from SAN_PHAM



select * from KHACH_HANG