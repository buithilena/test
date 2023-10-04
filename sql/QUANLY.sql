CREATE DATABASE QUANLY
USE QUANLY
GO

CREATE TABLE SANPHAM(
MaSP varchar(10) not null,
TenSP nvarchar(100) null,
Size varchar(10) null,
SLNhap int not null,
GiaNhap money not null,
GiaBan money not null,
Constraint pk_SANPHAM primary key (MaSP)

)
GO

CREATE TABLE GIOHANG(
MaGH varchar(10) not null,
MaHD varchar(10) not null,
MaSP varchar(10) not null,
SLBan int not null,
Constraint pk_GIOHANG primary key (MaGH),
Constraint fk_SANPHAM foreign key (MaSP) references SANPHAM(MaSP),
)
GO

CREATE TABLE KHACHHANG(
MaKH varchar(10) not null,
TenKH nvarchar(100) null,
SDT int not null,
DiaChi nvarchar(500) null,
Constraint pk_KHACHHANG primary key (MaKH)

)
GO

CREATE TABLE NHANVIEN(
MaNV varchar(10) not null,
TenNV varchar(100) null,
SDT int not null,
DiaChi nvarchar(500) null,
Constraint pk_NHANVIEN primary key (MaNV)

)
GO

CREATE TABLE HOADON(
MaHD varchar(10) not null,
MaNV varchar(10) not null,
MaKH varchar(10) not null,
MaGH varchar(10) not null,
Constraint pk_HOADON primary key (MaHD),
Constraint fk_KHACHHANG foreign key (MaKH) references KHACHHANG(MaKH),
Constraint fk_NHANVIEN foreign key (MaNV) references NHANVIEN(MaNV),
Constraint fk_GIOHANG foreign key (MaGH) references GIOHANG(MaGH),
)
GO

select * from SANPHAM

select * from KHACHHANG
select MaKH,TenKH from KHACHHANG

insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00001',N'Nguyễn Văn Bình','0963765235',N'Hà Nội')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00002',N'Vũ Văn Hoàng','0973556128',N'Thanh Hóa')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00003',N'Lê Đức Trung','0974752717',N'Quảng Bình')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00004',N'Trần Thị Huyền','0993043628',N'Điện Biên')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00005',N'Nguyễn Sỹ Sơn','0965763959',N'Bắc Giang')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00006',N'Nông Ngọc Thế','0917738922',N'Hà Tĩnh')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00007',N'Lưu Thị Hiền','0926739765',N'Phú Thọ')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00008',N'Nguyễn Bảo Duy','0976389672',N'Quảng Nam')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00009',N'Nguyễn Thị Vân','0963769356',N'Hà Nam')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00010',N'Trần Đức Anh','0963683591',N'Hà Nội')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00011',N'Lê Thùy Dung','0954785219',N'Nghệ An')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00012',N'Nguyễn Thị Nguyệt','0965728916',N'Vĩnh Phúc')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00013',N'Trần Văn Nam','093957306',N'Long An')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('00014',N'Chu Thị Thùy Phương','0998876453',N'Bình Dương')


select *from NHANVIEN

insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV01',N'Nguyễn Văn Nam','0373652904',N'Yên Bái')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV02',N'Lê Thị Thảo','0337684925',N'Gia Lai')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV03',N'Hoàng Trương Mỹ Duyên','0388032616',N'Nghệ An')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV04',N'Bùi Thị Mai','0399073982',N'Thái Bình')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV05',N'Hoàng Gia Bảo','0365972693',N'Ninh Bình')


select *from HOADON
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD01','NV03',