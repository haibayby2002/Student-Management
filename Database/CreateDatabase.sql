USE [StudentManagement]
GO
/****** Object:  StoredProcedure [dbo].[LoadHocSinhTheoKhoi]    Script Date: 8/10/2018 10:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LoadHocSinhTheoKhoi](@Lop tinyint)
as
	select MaHocSinh, TenHocSinh, MaLop
	from HocSinh
	where MaLop like cast(@Lop as varchar(2)) + '%'
GO
/****** Object:  StoredProcedure [dbo].[LoadHocSinhTheoLop]    Script Date: 8/10/2018 10:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LoadHocSinhTheoLop](@MaLop varchar(10))
as
	select MaHocSinh, TenHocSinh, MaLop
	from HocSinh
	where MaLop = @MaLop
GO
/****** Object:  StoredProcedure [dbo].[LoadLopTheoKhoi]    Script Date: 8/10/2018 10:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LoadLopTheoKhoi](@Lop tinyint)
as
	select MaLop
	from LopHoc
	where MaLop like cast(@Lop as varchar(2)) + '%'
GO
/****** Object:  StoredProcedure [dbo].[LoadTatCaLop]    Script Date: 8/10/2018 10:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LoadTatCaLop]
as
	select MaLop
	from LopHoc
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 8/10/2018 10:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHocSinh] [int] IDENTITY(1,1) NOT NULL,
	[TenHocSInh] [nvarchar](50) NOT NULL,
	[DiaChi] [ntext] NULL,
	[SoDienThoai] [varchar](12) NULL,
	[GioiTinh] [bit] NULL,
	[MaLop] [varchar](10) NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 8/10/2018 10:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaHocSinh] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[Diem] [numeric](18, 0) NULL,
 CONSTRAINT [PK_KetQua] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 8/10/2018 10:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLop] [varchar](10) NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 8/10/2018 10:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[SoChi] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HocSinh] ON 

INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (1, N'Nguyễn Quý Hải', NULL, NULL, NULL, N'10TN1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (2, N'Nguyễn Văn A', NULL, NULL, NULL, N'10TN2')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (3, N'Trần Thị B', NULL, NULL, NULL, N'10TN1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (4, N'Đinh Văn C', NULL, NULL, NULL, N'11A1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (5, N'Lý Thị D', NULL, NULL, NULL, N'11A1.1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (6, N'Dương Văn E', NULL, NULL, NULL, N'10TN1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (7, N'Phan Thị F', NULL, NULL, NULL, N'11A1.1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (8, N'Huỳnh Văn G', NULL, NULL, NULL, N'10D1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (9, N'Nguyễn Thị H', NULL, NULL, NULL, N'10D1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (10, N'Văn Viết I', NULL, NULL, NULL, N'12A3')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (11, N'Phước Mỹ J', NULL, NULL, NULL, N'12A1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (12, N'Lung Thị Linh', NULL, NULL, NULL, N'10TN2')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (13, N'Phí Hoàng Kim K', NULL, NULL, NULL, N'10TN1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (14, N'Trương Thảo L', NULL, NULL, NULL, N'10D1')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSInh], [DiaChi], [SoDienThoai], [GioiTinh], [MaLop]) VALUES (15, N'Đỗ Thị M', NULL, NULL, NULL, N'11A1')
SET IDENTITY_INSERT [dbo].[HocSinh] OFF
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (1, 1, CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (1, 5, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (1, 6, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (1, 10, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (2, 1, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (2, 2, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (2, 3, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (2, 4, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (2, 5, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (3, 1, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (3, 2, CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (3, 3, CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (4, 1, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (4, 2, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (4, 3, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (4, 8, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (5, 1, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (5, 7, CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (5, 8, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (5, 10, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (6, 1, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (6, 2, CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (6, 3, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (6, 8, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (6, 9, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (7, 1, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (7, 2, CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (7, 4, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (7, 5, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (8, 1, CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (8, 2, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (8, 3, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (8, 4, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (8, 6, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (9, 1, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (9, 2, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (9, 5, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (9, 7, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (9, 10, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (10, 1, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (10, 4, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (10, 11, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (11, 2, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (11, 3, CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (11, 5, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (11, 12, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (12, 1, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (12, 2, CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (12, 5, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (13, 1, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (13, 4, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (13, 13, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (14, 2, CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (14, 9, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (14, 10, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (14, 12, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (15, 1, CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (15, 2, CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (15, 3, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (15, 4, CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (15, 9, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[KetQua] ([MaHocSinh], [MaMon], [Diem]) VALUES (15, 11, CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10C', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10D1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10D2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10D3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10D4', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10TN1', N'')
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10TN2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10TN3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10TN4', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10TN5', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'10TN6', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A1.1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A1.2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A1.3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11A4', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11B', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11C', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11D1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11D2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'11D3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12A1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12A1.1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12A1.2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12A1.3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12A2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12A3', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12B', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12C', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12D1', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12D2', NULL)
INSERT [dbo].[LopHoc] ([MaLop], [MoTa]) VALUES (N'12D3', NULL)
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (1, N'Toán', 4)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (2, N'Lý', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (3, N'Hỏa', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (4, N'Sinh', 2)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (5, N'Văn', 4)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (6, N'Sử', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (7, N'Địa', 2)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (8, N'Anh', 4)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (9, N'Tin', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (10, N'GDCD', 1)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (11, N'Thể dục', 1)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (12, N'GDQP', 1)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (13, N'Công nghệ', 1)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoChi]) VALUES (14, N'Hướng nghiệp', 0)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_LopHoc]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_HocSinh]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_MonHoc] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_MonHoc]
GO
