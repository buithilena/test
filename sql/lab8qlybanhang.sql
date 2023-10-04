Create database	Lab8qlybanhang
go
use Lab8qlybanhang
go
create  table HangHoa(
Mahang varchar(10) primary key,
Tenhang nvarchar(50),
Dongia int
)
go

create table KhachHang(
Makh varchar(10) primary key,
Tenkh nvarchar(50) 
)
go
create table HoaDon(
Mahd varchar(10) primary key,
Makh varchar(10),
Ngayhd DATETIME ,
Ghichu nvarchar(100),
FOREIGN Key (Makh) REFERENCES KhachHang(Makh)
)
go

create table HoaDonCT(
Mahdct varchar (10) primary key,
Mahang varchar(10) ,
Soluong int,
Ghichu nvarchar(100),
FOREIGN Key (Mahang) REFERENCES HangHoa(Mahang)
)
go

select * from KhachHang;


insert into KhachHang (MaKh,TenKh)
values (01,'Nguyen Van A')

select * from HangHoa 

insert into HangHoa(Mahang,Tenhang,Dongia)
values  (001,'keo',15000)


