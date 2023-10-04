CREATE DATABASE QL_BanHang
go


USE QL_BanHang
GO


CREATE TABLE MatHang(
MaMH varchar(10) not null,
TenMatHang nvarchar(100) null,
DonGia money null,
NgayNhap date null,
Constraint pk_MatHang primary key(MaMH)

)
Go

CREATE TABLE KhachHang(
MaKH varchar(10) not null,
TenKH nvarchar(50) null,
SDT int null,
DiaChi nvarchar(200) null,
Constraint pk_KhachHang primary key(MaKH)
)
GO

CREATE TABLE HoaDon(
MaHD varchar(10) not null,
MaKH varchar(10) not null,
MaMH varchar(10) not null,
NgayMua date null,
SoLuong int null,
GhiChu nvarchar(200) null,
Constraint pk_HoaDon primary key(MaHD),
Constraint fk_KhachHang foreign key (MaKh) references KhachHang(MaKH),
Constraint fk_MatHang foreign key (MaMH) references MatHang(MaMH),

)
GO

INSERT into MatHang(MaMH,TenMatHang,DonGia,NgayNhap)
VALUES
('MH01',N'Kẹo Dẻo',20000,20220307),
('MH02',N'Bánh Orio',10000,20220407),
('MH03',N'Bim Bim',15000,20220707),
('MH04',N'Xà Phòng',30000,20221111);

INSERT into KhachHang(MaKH,TenKH,SDT,DiaChi)
VALUES
('KH01',N'Chu Sỹ Minh',0367893862,N'Bình Dương'),
('KH02',N'Nguyễn Thị Huyền',0987654321,N'Hà Nội'),
('KH03',N'Nguyễn Sỹ Bảo Duy',0357963729,N'Nghệ An'),
('KH04',N'Trần Văn Vinh',0467278763,N'Hải Phòng');

INSERT into HoaDon(MaHD,MaKH,MaMH,NgayMua,SoLuong,GhiChu)
VALUES
('HD01','KH02','MH04',2023-04-06, 4,N'Thơm'),
('HD02','KH01','MH03',2023-07-03, 5,N'Ngọt'),
('HD03','KH04','MH02',2023-04-04, 7,N'Giòn'),
('HD04','KH03','MH01',2023-06-08, 10,N'Ngon');

select *from HoaDon

