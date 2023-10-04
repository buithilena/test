CREATE DATABASE QLBHQA
USE QLBHQA
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
TenNV nvarchar(100) null,
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
Constraint fk_GIOHANG foreign key (MaGH) references GIOHANG(MaGH)
)
GO

select * from SANPHAM

insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP02',N'Áo Sơmi',N'L','200','100000','130000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP03',N'Áo thun',N'L','150','30000','80000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP04',N'Áo POLO',N'S','120','70000','230000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP05',N'Áo Sơmi',N'M','300','80000','170000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP06',N'Áo giữ nhiệt',N'S','500','40000','100000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP07',N'Áo thun',N'S','550','45000','90000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP08',N'Áo POLO',N'M','150','60000','140000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP09',N'Áo Hoodie',N'M','220','200000','350000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP10',N'Áo Sơmi',N'S','255','85000','180000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP11',N'Áo POLO',N'L','210','75000','260000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP12',N'Áo Hoodie',N'L','170','180000','310000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP13',N'Áo Giữ nhiệt',N'M','135','50000','100000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP14',N'Áo Giữ nhiệt',N'L','230','60000','110000')
insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP15',N'Áo Hoodie',N'S','270','190000','250000')

select * from KHACHHANG
select MaKH,TenKH from KHACHHANG

insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH01',N'Nguyễn Văn Bình','0963765235',N'Hà Nội')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH02',N'Vũ Văn Hoàng','0973556128',N'Thanh Hóa')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH03',N'Lê Đức Trung','0974752717',N'Quảng Bình')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH04',N'Trần Thị Huyền','0993043628',N'Điện Biên')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH05',N'Nguyễn Sỹ Sơn','0965763959',N'Bắc Giang')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH06',N'Nông Ngọc Thế','0917738922',N'Hà Tĩnh')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH07',N'Lưu Thị Hiền','0926739765',N'Phú Thọ')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH08',N'Nguyễn Bảo Duy','0976389672',N'Quảng Nam')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH09',N'Nguyễn Thị Vân','0963769356',N'Hà Nam')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH10',N'Trần Đức Anh','0963683591',N'Hà Nội')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH11',N'Lê Thùy Dung','0954785219',N'Nghệ An')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH12',N'Nguyễn Thị Nguyệt','0965728916',N'Vĩnh Phúc')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH13',N'Trần Văn Nam','093957306',N'Long An')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH14',N'Chu Thị Thùy Phương','0998876453',N'Bình Dương')
insert into KHACHHANG(MaKH,TenKH,SDT,DiaChi) VALUES ('KH15',N'Đinh Thị Hảo','0953672815',N'Hải Dương')


select *from NHANVIEN

insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV01',N'Nguyễn Văn Nam','0373652904',N'Yên Bái')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV02',N'Lê Thị Thảo','0337684925',N'Gia Lai')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV03',N'Hoàng Trương Mỹ Duyên','0388032616',N'Nghệ An')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV04',N'Bùi Thị Mai','0399073982',N'Thái Bình')
insert into NHANVIEN(MaNV,TenNV,SDT,DiaChi) VALUES ('NV05',N'Hoàng Gia Bảo','0365972693',N'Ninh Bình')


select *from HOADON

insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD01','NV03','KH01','GH01')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD02','NV01','KH10','GH05')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD03','NV05','KH09','GH07')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD05','NV02','KH04','GH09')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD06','NV04','KH07','GH02')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD07','NV02','KH13','GH13')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD08','NV05','KH02','GH04')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD09','NV02','KH05','GH08')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD10','NV05','KH08','GH12')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD11','NV03','KH03','GH06')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD12','NV04','KH06','GH10')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD13','NV01','KH12','GH14')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD14','NV02','KH14','GH11')
insert into HOADON(MaHD,MaNV,MaKH,MaGH) VALUES ('HD15','NV01','KH15','GH03')

select *from GIOHANG

insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH01','HD01','SP07','2')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH02','HD06','SP03','5')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH03','HD15','SP12','1')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH04','HD08','SP09','3')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH05','HD02','SP05','8')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH06','HD11','SP08','4')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH07','HD03','SP10','3')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH08','HD09','SP14','1')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH09','HD05','SP01','6')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH10','HD12','SP11','7')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH11','HD14','SP02','3')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH12','HD10','SP04','5')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH13','HD07','SP13','1')
insert into GIOHANG(MaGH,MaHD,MaSP,SLBan) VALUES ('GH14','HD13','SP06','7')

insert into SANPHAM(MaSP,TenSP,Size,SLNhap,GiaNhap,GiaBan) VALUES('SP100',N'Áo Sơmi',N'L','200','100000','130000');
delete from SANPHAM WHERE MaSP = 'SP100';