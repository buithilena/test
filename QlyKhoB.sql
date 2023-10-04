Create database QuanLyKhoBH
go
use QuanLyKhoBH
go
Create table NguoiDung(
Username nvarchar(20),
Password nvarchar(50)
)
go

Create table NhaCC(
MaNCC nvarchar(20) primary key,
TenNCC nvarchar(50),
DiaChi nvarchar(50),
Email nvarchar(50),
SoDT varchar(30)
)
go

Create table HangHoa(
idHangHoa nvarchar(20) primary key,
TenHH nvarchar(30),
GiaNhap float,
GiaXuat float,
idDvt nvarchar(20),
MaNCC nvarchar(20),
MaLoaiHang nvarchar(20),
FOREIGN KEY (idDvt) REFERENCES DonViTinh(idDvt),
FOREIGN KEY (MaNCC) REFERENCES NhaCC(MaNCC),
FOREIGN KEY (MaLoaiHang) REFERENCES LoaiHang(MaLoaiHang)
)
go

CREATE table SizeHang(
TenSize nvarchar(10),
SoLuong int,
idHangHoa nvarchar(20),
FOREIGN KEY (idHangHoa) REFERENCES HangHoa(idHangHoa)
)
go

Create table LoaiHang(
MaLoaiHang nvarchar(20) primary key,
TenLoai nvarchar(30),
SoLuong int
)
go

Create table DonViTinh(
idDvt nvarchar(20) primary key,
TenDvt nvarchar(30)
)
go

Create table DonNhap(
idDonNhap nvarchar(20) primary key,
MaNCC nvarchar(20),
NguoiTao nvarchar(20),
NgayNhap date,
TongTien float,
FOREIGN KEY (MaNCC) REFERENCES NhaCC(MaNCC)
)
go

Create table DonNhapCT(
idHangHoa nvarchar(20),
GiaNhap float,
idDonNhap nvarchar(20),
SoLuongNhap int,
FOREIGN KEY (idHangHoa) REFERENCES HangHoa(idHangHoa), 
FOREIGN KEY (idDonNhap) REFERENCES DonNhap(idDonNhap)
)
go

Create table DonXuat(
idDonXuat nvarchar(20) primary key,
NguoiTao nvarchar(20),
NgayXuat date,
TongTien float
)
go

Create table DonXuatCT(
idDonXuat nvarchar(20),
GiaXuat float,
SoLuongXuat int,
idHangHoa nvarchar(20),
FOREIGN KEY (idDonXuat) REFERENCES DonXuat(idDonXuat), 
FOREIGN KEY (idHangHoa) REFERENCES HangHoa(idHangHoa)
)
go

--ALTER TABLE SizeHang 
--DROP COLUMN idHangHoa;

--ALTER TABLE SizeHang 
--DROP COLUMN idSize;

SELECT * FROM  NguoiDung
INSERT INTO NguoiDung(Username,Password)
VALUES ('winna',123456)

SELECT *FROM NhaCC
INSERT INTO NhaCC(MaNCC,TenNCC,DiaChi,Email,SoDT)
VALUES ('CC01',N'Công ty Phương Nam',N'Hải Phòng',N'nam12@gmail.com',0675537829),
       ('CC02',N'Công ty Hải Anh',N'Hà Nội',N'anh34@gmail.com',0682677623),
	   ('CC03',N'Công ty Quốc Tế',N'Hải Dương',N'te56@gmail.com',0826369803),
	   ('CC04',N'Công ty Châu Âu',N'Nghệ An',N'au12@gmail.com',0637920183),
	   ('CC05',N'Công ty Lê Quý Đôn',N'Hà Tĩnh',N'don78@gmail.com',0762648723)
SELECT * FROM HangHoa
INSERT INTO HangHoa(idHangHoa,TenHH,GiaNhap,GiaXuat,idDvt,MaNCC,MaLoaiHang)
VALUES  ('HH01',N'Áo đi biển',50000,80000,'DVT01','CC01','LH01'),
		('HH02',N'Áo phông kẻ',70000,100000,'DVT01','CC01','LH01'),
		('HH03',N'Áo hoodie',150000,200000,'DVT01','CC02','LH01'),
		('HH04',N'Quần đi biển',50000,80000,'DVT01','CC01','LH02'),
		('HH05',N'Quần ngố',50000,70000,'DVT01','CC01','LH02'),
		('HH06',N'Quần nhung',80000,130000,'DVT01','CC03','LH02'),
		('HH07',N'Váy bò',90000,150000,'DVT01','CC04','LH03'),
		('HH08',N'Đầm hoa',150000,220000,'DVT01','CC04','LH03'),
		('HH09',N'Áo bò',120000,170000,'DVT01','CC05','LH01'),
		('HH10',N'Quần vải',80000,120000,'DVT01','CC05','LH02')
SELECT *FROM SizeHang
INSERT INTO SizeHang(TenSize,SoLuong,idHangHoa)
VALUES  ('S',100,'HH01'),
		('M',130,'HH01'),
		('L',150,'HH01'),
		('M',130,'HH02'),
		('S',120,'HH02'),
		('M',160,'HH03'),
		('L',100,'HH03'),
		('S',120,'HH04'),
		('M',100,'HH05'),
		('S',100,'HH06'),
		('M',120,'HH06'),
		('S',100,'HH07'),
		('L',100,'HH07'),
		('S',140,'HH08'),
		('M',150,'HH09'),
		('L',150,'HH09'),
		('S',100,'HH10')
SELECT *FROM LoaiHang
INSERT INTO LoaiHang(MaLoaiHang,TenLoai,SoLuong)
VALUES  ('LH01',N'Áo',1190),
		('LH02',N'Quần',540),
		('LH03',N'Váy',340)
SELECT *FROM DonViTinh
INSERT INTO DonViTinh(idDvt,TenDvt)
VALUES  ('DVT01',N'Chiếc'),
		('DVT02',N'Cái')
SELECT * FROM DonNhap
INSERT INTO DonNhap(idDonNhap,MaNCC,NguoiTao,NgayNhap,TongTien)
VALUES  ('DN01','CC01',N'Bùi Thị Lê Na','2023-9-30',1000000),
		('DN02','CC02',N'Bùi Thị Lê Na','2023-9-30',1200000),
		('DN03','CC03',N'Bùi Thị Lê Na','2023-9-30',1500000),
		('DN04','CC04',N'Bùi Thị Lê Na','2023-9-30',1600000),
		('DN05','CC05',N'Bùi Thị Lê Na','2023-9-30',1100000),
		('DN06','CC01',N'Bùi Thị Lê Na','2023-9-30',1000000)
SELECT * FROM DonNhapCT
INSERT INTO DonNhapCT(idHangHoa,GiaNhap,idDonNhap,SoLuongNhap)
VALUES  ('HH01',50000,'DN01',380),
		('HH02',70000,'DN02',310),
		('HH03',150000,'DN03',260),
		('HH04',50000,'DN04',180),
		('HH05',50000,'DN05',80),
		('HH06',80000,'DN06',150),
		('HH07',90000,'DN03',125),
		('HH08',150000,'DN05',30)
SELECT *FROM DonXuat
INSERT INTO DonXuat(idDonXuat,NguoiTao,NgayXuat,TongTien)
VALUES  ('DX01',N'Bùi Thị Lê Na','2023-9-30',500000),
		('DX02',N'Bùi Thị Lê Na','2023-9-30',600000),
		('DX03',N'Bùi Thị Lê Na','2023-9-30',700000),
		('DX04',N'Bùi Thị Lê Na','2023-9-30',300000),
		('DX05',N'Bùi Thị Lê Na','2023-9-30',800000),
		('DX06',N'Bùi Thị Lê Na','2023-9-30',500000)
SELECT *FROM DonXuatCT
INSERT INTO DonXuatCT(idDonXuat,GiaXuat,SoLuongXuat,idHangHoa)
VALUES  ('DX01',80000,50,'HH01'),
		('DX01',100000,70,'HH02'),
		('DX01',200000,30,'HH03'),
		('DX01',80000,25,'HH04'),
		('DX01',70000,60,'HH05'),
		('DX01',130000,40,'HH06'),
		('DX01',70000,15,'HH07'),
		('DX01',120000,10,'HH08')

SELECT SUM(TongTien) AS TongTienDonNhap
FROM DonNhap;

SELECT SUM(TongTien) AS TongTienDonXuat
FROM DonXuat;

--SELECT
--    HH.idHangHoa,
--    HH.TenHH,
--    HHGiaNhap.GiaNhap,
--    HHGiaXuat.GiaXuat,
--    DVT.TenDvt,
--    NCC.MaNCC,
--    NCC.TenNCC,
--    LH.TenLoai,
--    SH.TenSize,
--    SH.SoLuong
--FROM
--    HangHoa AS HH
--INNER JOIN (
--    SELECT
--        idHangHoa,
--        GiaNhap
--    FROM
--        DonNhapCT
--) AS HHGiaNhap ON HH.idHangHoa = HHGiaNhap.idHangHoa
--INNER JOIN (
--    SELECT
--        idHangHoa,
--        GiaXuat
--    FROM
--        DonXuatCT
--) AS HHGiaXuat ON HH.idHangHoa = HHGiaXuat.idHangHoa
--INNER JOIN DonViTinh AS DVT ON HH.idDvt = DVT.idDvt
--INNER JOIN NhaCC AS NCC ON HH.MaNCC = NCC.MaNCC
--INNER JOIN LoaiHang AS LH ON HH.MaLoaiHang = LH.MaLoaiHang
--INNER JOIN SizeHang AS SH ON HH.idHangHoa = SH.idHangHoa;

SELECT DISTINCT
    HH.idHangHoa,
    HH.TenHH,
    HHGiaNhap.GiaNhap,
    HHGiaXuat.GiaXuat,
    DVT.TenDvt,
    SH.TenSize,
    SH.SoLuong,
    NCC.MaNCC,
    NCC.TenNCC,
    LH.TenLoai
FROM
    HangHoa AS HH
INNER JOIN (
    SELECT
        idHangHoa,
        GiaNhap
    FROM
        DonNhapCT
) AS HHGiaNhap ON HH.idHangHoa = HHGiaNhap.idHangHoa
INNER JOIN (
    SELECT
        idHangHoa,
        GiaXuat
    FROM
        DonXuatCT
) AS HHGiaXuat ON HH.idHangHoa = HHGiaXuat.idHangHoa
INNER JOIN DonViTinh AS DVT ON HH.idDvt = DVT.idDvt
INNER JOIN SizeHang AS SH ON HH.idHangHoa = SH.idHangHoa
INNER JOIN NhaCC AS NCC ON HH.MaNCC = NCC.MaNCC
INNER JOIN LoaiHang AS LH ON HH.MaLoaiHang = LH.MaLoaiHang;


