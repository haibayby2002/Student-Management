create procedure LoadHocSinhTheoKhoi(@Lop tinyint)
as
	select MaHocSinh, TenHocSinh, MaLop
	from HocSinh
	where MaLop like cast(@Lop as varchar(2)) + '%'

Go
exec LoadHocSinhTheoKhoi 12

Go
--------------------------------------------------------------------

Go
create procedure LoadTatCaLop
as
	select MaLop
	from LopHoc

exec LoadLopTheoKhoi 10
-------------------------------------------------------------

Go
create procedure LoadLopTheoKhoi(@Lop tinyint)
as
	select MaLop
	from LopHoc
	where MaLop like cast(@Lop as varchar(2)) + '%'

exec LoadLopTheoKhoi 10
-------------------------------------------------------------

Go
create procedure LoadHocSinhTheoLop(@MaLop varchar(10))
as
	select MaHocSinh, TenHocSinh, MaLop
	from HocSinh
	where MaLop = @MaLop

exec LoadHocSinhTheoLop '10TN1'