--cap nhat slNhap
SELECT * FROM SANPHAM

UPDATE SANPHAM 
SET SLNhap = 5
WHERE MASP = 'SP01'

--tong tien HD01
select  sum(SLBan * GiaBan) as [Tổng tiền]
from GIOHANG as gh
	left join sanpham as sp
		on gh.MaSP = sp.masp
where gh.magh = 'gh01'