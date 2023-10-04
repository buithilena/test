CREATE DATABASE taikhoan
go

USE quanlytaikhoan
go

create table TaiKhoanClient (
TenDangNhap nvarchar(100),
MatKhau nvarchar(100),
NgaySinh date,
CMND nvarchar(100),
Email nvarchar(100)
)
go
insert into TaiKhoanClient(TenDangNhap, MatKhau, NgaySinh, CMND, Email)
values (N'linh', N'123', N'2003-02-26', N'034203008636', N'linh@gmail.com'),
       (N'kien', N'321', N'2003-06-09', N'034203004567', N'kien@gmail.com'),
	   (N'na', N'1122', N'2003-11-19', N'034203001241', N'na@gmail.com')
select * from TaiKhoanClient