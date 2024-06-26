create database [QuanLyTour]
go
USE [QuanLyTour]
GO
/****** Object:  Table [dbo].[ChiTietDatTour]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatTour](
	[Maphieudat] [int] NOT NULL,
	[Makhach] [int] NOT NULL,
	[Mahanhkhach] [int] NOT NULL,
	[Giathanhtoan] [decimal](18, 0) NULL,
	[Hoten] [nvarchar](125) NULL,
	[Dienthoai] [nvarchar](50) NULL,
	[Email] [nvarchar](125) NULL,
	[Diachi] [nvarchar](125) NULL,
 CONSTRAINT [PK_ChiTietDatTour_1] PRIMARY KEY CLUSTERED 
(
	[Maphieudat] ASC,
	[Makhach] ASC,
	[Mahanhkhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[Maphieudat] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydattour] [datetime] NULL,
	[Ngaykhoihanh] [datetime] NULL,
	[Soluongkhach] [int] NULL,
	[Trangthai] [nvarchar](50) NULL,
	[Matour] [int] NULL,
	[Tongtien] [decimal](18, 0) NULL,
	[Loaithanhtoan] [bit] NULL,
	[Trangthaithanhtoan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphieudat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Makhach] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](255) NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Ngaysinh] [datetime] NULL,
	[Diachi] [nvarchar](255) NULL,
	[Dienthoai] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NULL,
	[CCCD] [char](13) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Makhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[TenKM] [nvarchar](255) NULL,
	[Phantram] [int] NULL,
	[Ngaybatdau] [datetime] NULL,
	[Ngayketthuc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTour](
	[Maloaitour] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiTour] PRIMARY KEY CLUSTERED 
(
	[Maloaitour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](255) NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Ngaysinh] [datetime] NULL,
	[Diachi] [nvarchar](255) NULL,
	[Dienthoai] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NULL,
	[CCCD] [char](13) NULL,
	[Chucvu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[Loaiquyen] [int] IDENTITY(1,1) NOT NULL,
	[Tenquyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[Loaiquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[TenDN] [nchar](50) NOT NULL,
	[MatkhauDN] [nchar](50) NOT NULL,
	[MaNV] [int] NULL,
	[Loaiquyen] [int] NULL,
 CONSTRAINT [PK_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC,
	[MatkhauDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taikhoankhach]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoankhach](
	[TenDN] [nchar](50) NOT NULL,
	[MatkhauDN] [nchar](50) NOT NULL,
	[Makhach] [int] NULL,
 CONSTRAINT [PK_Taikhoankhach] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC,
	[MatkhauDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 12/17/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Matour] [int] IDENTITY(1,1) NOT NULL,
	[Tentour] [nvarchar](255) NULL,
	[Songaydi] [int] NULL,
	[Hinhanh] [nvarchar](255) NULL,
	[Gioithieu] [nvarchar](max) NULL,
	[Giatour] [decimal](18, 0) NULL,
	[Maloaitour] [int] NULL,
	[MaNV] [int] NULL,
	[MaKM] [int] NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Matour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (9, 1, 0, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (9, 1, 1, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (9, 1, 2, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (10, 1, 0, CAST(4979000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (10, 1, 1, CAST(4979000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (11, 1, 0, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (11, 1, 1, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (11, 1, 2, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (11, 1, 3, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (11, 1, 4, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (12, 2, 0, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (12, 2, 1, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (12, 2, 2, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (13, 2, 0, CAST(4179000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (13, 2, 1, CAST(4179000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (13, 2, 2, CAST(4179000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (14, 2, 0, CAST(8479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (14, 2, 1, CAST(8479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (15, 2, 0, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (15, 2, 1, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (16, 1, 0, CAST(6739000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (16, 1, 1, CAST(6739000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (16, 1, 2, CAST(6739000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (17, 1, 0, CAST(5739000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (17, 1, 1, CAST(5739000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (18, 1, 0, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (18, 1, 1, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (19, 2, 0, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (20, 2, 0, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (20, 2, 1, CAST(4079000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (21, 2, 0, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (21, 2, 1, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (21, 2, 2, CAST(3279000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (22, 3, 0, CAST(11479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (22, 3, 1, CAST(11479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (22, 3, 2, CAST(11479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (22, 3, 3, CAST(11479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (22, 3, 4, CAST(11479000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (23, 3, 0, CAST(10750000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (23, 3, 1, CAST(10750000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
INSERT [dbo].[ChiTietDatTour] ([Maphieudat], [Makhach], [Mahanhkhach], [Giathanhtoan], [Hoten], [Dienthoai], [Email], [Diachi]) VALUES (23, 3, 2, CAST(10750000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DatTour] ON 

INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (9, CAST(N'2023-07-30T09:53:46.323' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 3, N'Đã hủy', 10, CAST(6730350 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (10, CAST(N'2023-07-30T10:41:14.157' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 2, N'Đã hủy', 11, CAST(5476900 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (11, CAST(N'2023-07-30T10:42:05.823' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 5, N'Đã hoàn thành', 9, CAST(11476500 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (12, CAST(N'2023-08-30T11:08:57.203' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 3, N'Đã hoàn thành', 10, CAST(6730350 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (13, CAST(N'2023-09-30T11:12:26.553' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 3, N'Đã hủy', 1, CAST(11283300 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (14, CAST(N'2023-10-30T11:12:37.023' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 2, N'Đã hoàn thành', 8, CAST(14414300 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (15, CAST(N'2023-10-30T11:12:48.577' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 2, N'Đã hoàn thành', 10, CAST(4486900 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (16, CAST(N'2023-11-30T11:13:27.430' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 3, N'Đã hoàn thành', 5, CAST(17184450 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (17, CAST(N'2023-11-30T11:13:39.807' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 2, N'Đã hoàn thành', 7, CAST(9756300 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (18, CAST(N'2023-11-30T11:58:01.380' AS DateTime), CAST(N'2023-12-03T00:00:00.000' AS DateTime), 2, N'Đã hoàn thành', 9, CAST(4590600 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (19, CAST(N'2023-12-03T22:19:36.170' AS DateTime), CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1, N'Đã hoàn thành', 10, CAST(2243450 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (20, CAST(N'2023-12-03T22:54:54.127' AS DateTime), CAST(N'2023-12-06T00:00:00.000' AS DateTime), 2, N'Đã hoàn thành', 10, CAST(4486900 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (21, CAST(N'2023-12-03T22:58:59.470' AS DateTime), CAST(N'2023-12-06T00:00:00.000' AS DateTime), 3, N'Đã hủy', 9, CAST(6885900 AS Decimal(18, 0)), 1, 0)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (22, CAST(N'2023-12-05T22:36:27.933' AS DateTime), CAST(N'2023-12-08T00:00:00.000' AS DateTime), 5, N'Đã hủy', 6, CAST(31567250 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[DatTour] ([Maphieudat], [Ngaydattour], [Ngaykhoihanh], [Soluongkhach], [Trangthai], [Matour], [Tongtien], [Loaithanhtoan], [Trangthaithanhtoan]) VALUES (23, CAST(N'2023-12-12T09:18:01.817' AS DateTime), CAST(N'2023-12-15T00:00:00.000' AS DateTime), 3, N'Đã Đặt Tour', 32, CAST(25800000 AS Decimal(18, 0)), 0, 0)
SET IDENTITY_INSERT [dbo].[DatTour] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Makhach], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD]) VALUES (1, N'Đỗ Thị Ngọc Tuyền', N'Nu', CAST(N'2002-02-18T00:00:00.000' AS DateTime), N'123', N'123', N'tuyen@gmail.com', N'11111213123  ')
INSERT [dbo].[KhachHang] ([Makhach], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD]) VALUES (2, N'Nguyễn Phát Thịnh', N'Nam', CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'123 Tân Sơn Nhì', N'0919294123', N'trinhnt@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([Makhach], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD]) VALUES (3, N'Cao Quốc Thịnh', N'Nam', CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'Cái Nước, Cà Mau', N'0867494570', N'caothinh891@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (1, N'Khuyến mãi 10 %', 10, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (2, N'Khuyến mãi 15%', 15, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (3, N'Khuyến mãi 30%', 30, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (4, N'Khuyến mãi 45%', 45, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (5, N'Khuyến mãi 50%', 50, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (6, N'Khuyến mãi 60%', 60, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (7, N'Khuyến mãi 80%', 80, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (8, N'Khuyến mãi 20 %', 20, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (9, N'Khuyến mãi 5%', 5, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (10, N'Khuyến mãi 25 %', 25, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (11, N'Khuyến mãi 35%', 35, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [Phantram], [Ngaybatdau], [Ngayketthuc]) VALUES (12, N'Không khuyến mãi', 0, CAST(N'2023-11-29T00:00:00.000' AS DateTime), CAST(N'2023-11-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTour] ON 

INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (1, N'Tour Hà Nội')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (2, N'Tour Hồ Chí Minh')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (3, N'Tour Đà Nẵng')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (4, N'Tour Đà Lạt')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (5, N'Tour Nha Trang')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (6, N'Tour Sapa')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (7, N'Tour Phú Quốc')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (8, N'Tour Huế')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (9, N'Tour Quảng Nam')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (10, N'Tour Bình Định')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (11, N'Tour Vĩnh Long')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (12, N'Tour Bến Tre')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (13, N'Tour Đồng Nai')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (14, N'Tour Phan Thiết')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (15, N'Tour Đông Bắc')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (16, N'Tour Miền Tây')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (17, N'Tour Nam Cát Tiên')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (18, N'Tour Tây Bắc')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (19, N'Tour Miền Trung')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (20, N'Tour Hạ Long')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (21, N'Tour Ninh Bình')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (22, N'Tour Tây Nguyên')
INSERT [dbo].[LoaiTour] ([Maloaitour], [Tenloai]) VALUES (23, N'Tour Tây Ninh')
SET IDENTITY_INSERT [dbo].[LoaiTour] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (1, N'Administrator', N'Nam', CAST(N'2001-06-28T07:31:03.283' AS DateTime), NULL, NULL, N'noithatnoithat914@gmail.com', N'123123123    ', N'Quản trị viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (2, N'Ngô Hồng Vân', N'Nữ', CAST(N'2000-03-30T00:00:00.000' AS DateTime), N'Vĩnh Long', N'0909090909', N'vanhn@gmail.com', N'98765333365  ', N'Hướng dẫn viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (3, N'Trần Đình Đạt', N'Nam', CAST(N'2023-11-28T00:00:00.000' AS DateTime), NULL, N'0909090909', N'dattd@gmail.com', N'222222222 1  ', N'Hướng dẫn viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (4, N'Nguyễn Tú Trinh', N'Nữ', CAST(N'2023-11-28T00:00:00.000' AS DateTime), NULL, N'0909090909', N'trinhnt@gmail.com', N'3333333333   ', N'Hướng dẫn viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (5, N'Triệu Trí Bình', N'Nam', CAST(N'2023-11-28T00:00:00.000' AS DateTime), NULL, N'0909090909', N'binhtt@gmail.com', N'444444444    ', N'Trưởng phòng')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (6, N'Cao Quốc Thịnh', N'Nam', CAST(N'2002-09-19T00:00:00.000' AS DateTime), N'Quận Bình Tân, thành  phố Hồ Chí Minh', N'0943605557', N'caoquocthinh0919@gmail.com', N'96202005555  ', N'Hướng dẫn viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (7, N'Đỗ Thị Ngọc Tuyền', N'Nữ', CAST(N'2002-12-12T00:00:00.000' AS DateTime), N'Quận  Tân Phú, thành  phố Hồ Chí Minh', N'0909876745', N'tuyendo@gmaill.com', N'96233300654  ', N'Hướng dẫn viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (8, N'Ngô Nguyễn Phát Thịnh', N'Nam', CAST(N'2002-11-11T00:00:00.000' AS DateTime), N'Quận Tân  Bình , thành  phố Hồ Chí Minh', N'0965665544', N'ngophatinh@gmail.com', N'96299901111  ', N'Hướng dẫn viên')
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [Gioitinh], [Ngaysinh], [Diachi], [Dienthoai], [Email], [CCCD], [Chucvu]) VALUES (9, N'Hồ Thị Thu Tâm', N'Nữ', CAST(N'2000-03-30T00:00:00.000' AS DateTime), N'Quận Tân  Phú , thành  phố Hồ Chí Minh', N'0909091111', N'tamthu11@gmail.com', N'96290001771  ', N'Nhân viên tư vấn')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([Loaiquyen], [Tenquyen]) VALUES (1, N'admin')
INSERT [dbo].[Quyen] ([Loaiquyen], [Tenquyen]) VALUES (2, N'nhanvien')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
INSERT [dbo].[Taikhoan] ([TenDN], [MatkhauDN], [MaNV], [Loaiquyen]) VALUES (N'admin                                             ', N'123                                               ', 1, 1)
INSERT [dbo].[Taikhoan] ([TenDN], [MatkhauDN], [MaNV], [Loaiquyen]) VALUES (N'caoquocthinh0919@gmail.com                        ', N'807866                                            ', 6, 2)
INSERT [dbo].[Taikhoan] ([TenDN], [MatkhauDN], [MaNV], [Loaiquyen]) VALUES (N'ngophatinh@gmail.com                              ', N'290297                                            ', 8, 2)
INSERT [dbo].[Taikhoan] ([TenDN], [MatkhauDN], [MaNV], [Loaiquyen]) VALUES (N'ntuyen                                            ', N'123                                               ', 7, 2)
INSERT [dbo].[Taikhoan] ([TenDN], [MatkhauDN], [MaNV], [Loaiquyen]) VALUES (N'tuyen                                             ', N'123                                               ', 5, 1)
GO
INSERT [dbo].[Taikhoankhach] ([TenDN], [MatkhauDN], [Makhach]) VALUES (N'caothinh                                          ', N'1234                                              ', 3)
INSERT [dbo].[Taikhoankhach] ([TenDN], [MatkhauDN], [Makhach]) VALUES (N'pthinh                                            ', N'123                                               ', 2)
INSERT [dbo].[Taikhoankhach] ([TenDN], [MatkhauDN], [Makhach]) VALUES (N'tuyen                                             ', N'123                                               ', 1)
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (1, N'DU LỊCH ĐÀ LẠT - SAMTEN HILLS - PUPPY FARM - LANGBIANG - GALLERY LA CHOCOTEA - THÁC DAMBRI', 3, N'/Uploads/2023/11/1a3c7c00-c4f6-4c2e-954e-66958caba1db.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - ĐÀ LẠT (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, khởi hành đi Đà Lạt. Đoàn dừng chân tại Samten Hills Dalat tham quan chiêm bái Đại bảo tháp Kinh Luân lớn nhất thế giới tại Việt Nam thuộc dòng Phật Giáo Kim Cương Thừa. Đến Đà Lạt, du khách nhận phòng. Tối tự do dạo thành phố Đà Lạt về đêm, thưởng thức nhịp sống phố núi. Nghỉ đêm tại Đà Lạt.

NGÀY 02: THAM QUAN ĐÀ LẠT (Ăn sáng, trưa, chiều)
Buổi sáng, xe đưa quý khách tham quan Puppy Farm - trang trại và vườn thú tựa trời Âu thu nhỏ, với ngôi nhà kho màu trắng nổi bật là nơi trú ngụ của những bé lạc đà Alpaca và ngựa lùn Pony; sân cún với các em cún dễ thương và vô cùng thân thiện; đồi hoa đua nhau khoe sắc, toả hương, rộng bạt ngàn với nhiều loài hoa khác nhau; vườn rau thuỷ canh trồng xà lách, bí thiên nga và bí ngô khổng lồ; vườn cà chua và vườn dâu công nghệ cao; vườn sen đá và xương rồng nhiều chủng loại. Đoàn ghé thăm nhà thờ Domain de Marie. Buổi chiều, xe đưa quý khách viếng Thiền Viện Trúc Lâm - là một trong 3 thiền viện lớn nhất ở Việt Nam thuộc dòng Trúc Lâm Yên Tử. Tham quan Quảng trường Lâm Viên với không gian rộng lớn, thoáng mát hướng ra hồ Xuân Hương cùng công trình nghệ thuật khối bông hoa dã quỳ và khối nụ hoa Atiso khổng lồ được thiết kế bằng kính màu rất đẹp mắt. Nghỉ đêm tại Đà Lạt.

Thiền Viện Trúc Lâm

NGÀY 03: THAM QUAN ĐÀ LẠT (Ăn sáng, trưa )
Buổi sáng, xe đưa quý khách đến với khu du lịch Langbiang - tham quan đồi Mimosa, thung lũng Trăm Năm, chinh phục núi Langbiang (tự túc phí xe Jeep). Tiếp đến, quý khách khám phá tạo hình chocolate độc đáo và chiêm ngưỡng các tác phẩm nghệ thuật làm từ chocolate tại Gallery La Chocotea bên trong khuôn viên của Phân viện sinh học Đà lạt. Buổi chiều, xe đưa quý khách đến tham quan Nhà ga Đà Lạt - nhà ga lâu đời nhất Đông Dương. Mua sắm đặc sản tại chợ Đà Lạt. Buổi tối tự do dạo phố núi về đêm và thưởng thức đặc sản. Nghỉ đêm tại Đà Lạt.
Lựa chọn: (tự túc chi phí di chuyển và vé tham quan)
- Tham dự đêm giao lưu văn hóa cồng chiêng với người dân tộc Tây Nguyên và uống rượu Cần.
- Tham quan Vườn ánh sáng Lumiere - tổ hợp 7 khu giải trí với công nghệ 3D mapping đầy hư ảo.

Nhà ga Đà Lạt

NGÀY 04: ĐÀ LẠT - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Sau bữa sáng, quý khách trả phòng, khởi hành về TP.HCM. Trên đường tham quan thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc. Về tới TP.HCM, xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình. Kết thúc chương trình./.

Thác Dambri

Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(4179000 AS Decimal(18, 0)), 4, 2, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (2, N'DU LỊCH MŨI NÉ - LÀNG CHÀI XƯA - LÂU ĐÀI RƯỢU VANG', 3, N'/Uploads/2023/11/716f2ed3-2205-4f34-b527-0be1087cda30.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - PHAN THIẾT - MŨI NÉ (Ăn sáng, trưa)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, khởi hành đi Bình Thuận. Đến Phan Thiết, quý khách tham quan không gian trưng bày nghệ thuật “Làng chài xưa”. Toàn bộ khu trưng bày có diện tích 1.600m². Đây là không gian trưng bày nghệ thuật và là bảo tàng thu nhỏ, tái hiện lại một phần làng chài xưa của Phan Thiết - Mũi Né cách đây hơn 300 năm. Du khách đến đây sẽ được tham quan làng chài dưới rặng dừa; phố cổ ven sông Cà Ty; nhà ở và nơi sản xuất nước mắm của hàm hộ Phan Thiết; con đường Phan Thiết - Mũi Né xưa; đắm mình vào biển Mũi Né 3D và mua sắm trong không gian chợ quê làng xưa… tận mắt được chứng kiến một làng chài xưa của xứ biển Phan Thiết được tái hiện một cách công phu. Đến Mũi Né, quý khách nhận phòng và tự do tắm biển tại resort. Buổi chiều, du khách tự do khám phá thành phố biển về đêm và thưởng thức ẩm thực địa phương (chi phí tự túc). Nghỉ đêm tại Mũi Né.
Lựa chọn: (tự túc chi phí di chuyển và tham quan)
- Tham quan và ngắm mặt trời lặn tại Hana Beach, một trong những địa điểm check in ngắm hoàng hôn nổi bật tại Mũi Né
- Tham quan Công viên giải trí ven biển kiểu Mỹ Circus Land với vòng quay ngựa gỗ, các trò chơi cảm giác mạnh và tham gia các gian hàng trò chơi trúng thưởng…

Mũi Né 

NGÀY 02: THAM QUAN MŨI NÉ (Ăn sáng, trưa, chiều)
Buổi sáng, xe đưa đoàn tham quan thắng cảnh đồi cát vàng dưới tác động của gió biển đã tạo nên những hình dạng rất tuyệt vời. Đoàn dừng chân tham quan Lâu Đài Rượu Vang - chiêm ngưỡng vẻ đẹp kiến trúc Châu Âu thời Trung cổ, tham quan mô hình sản xuất rượu vang thời Trung cổ và hiện đại, thưởng thức một trong những loại rượu vang nức tiếng từ thung lũng Napa. Buổi chiều, xe đưa quý khách đến trung tâm Bùn Khoáng Mũi Né - thư giãn và tắm khoáng (tự túc chi phí tắm bùn).
Nghỉ đêm tại Mũi Né.
Lựa chọn: Tham quan Show nhạc kịch nước Huyền Thoại Làng Chài - show giải trí đặc sắc và đậm nét văn hóa làng chài của Phan Thiết - Bình Thuận (tự túc chi phí di chuyển và tham quan)

 Lâu Đài Rượu Vang

NGÀY 03: MŨI NÉ - PHAN THIẾT - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Buổi sáng, quý khách tắm biển và nghỉ ngơi trong resort đến giờ trả phòng. Khởi hành về TP. HCM. Dừng chân mua sắm đặc sản Phan Thiết. Về đến TP.HCM, xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình. Kết thúc chương trình./.

Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(3579000 AS Decimal(18, 0)), 14, 3, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (3, N'DU LỊCH PHÚ QUỐC - SUỐI TRANH - CÁP TREO HÒN THƠM - TẶNG VÉ BUFFET', 3, N'/Uploads/2023/11/f5fa9370-97fd-4554-9740-0ea200dcb338.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - PHÚ QUỐC (Ăn trưa)
Buổi sáng, quý khách tập trung tại ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành đi Phú Quốc chuyến bay VN1835 lúc 8h25 hoặc hoặc VN1825 lúc 09h00. Quý khách tự túc ăn sáng. Đến Phú Quốc, đoàn khởi hành tham quan suối Tranh - quý khách có thể đi dạo trong rừng, thư giãn, tắm suối (suối đặc biệt nhiều nước trong mùa hè). Nhận phòng nghỉ ngơi. Buổi tối, tự do dạo chợ đêm Phú Quốc, ăn chiều tự túc. Nghỉ đêm tại Phú Quốc.
Lựa chọn (tự túc chi phí tham quan & di chuyển):
- Tham quan VinWonder Phú Quốc: có diện tích gần 50ha, là công viên theo chủ đề đầu tiên tại Việt Nam. Khu vực công viên được chia làm 6 phân khu, tượng trưng cho 6 vùng lãnh địa với 12 chủ đề, lấy cảm hứng từ các nền văn minh nổi tiếng, các câu chuyện cổ tích, giai thoại thế giới, sẽ đưa du khách đi từ ngạc nhiên này đến bất ngờ khác, tạo nên những trải nghiệm mới lạ, đầy cuốn hút, mang tính giải trí, giáo dục và nghệ thuật cao. 
- Khám phá Khu Vinpearl Safari: khám phá Vườn Thú hoang dã đầu tiên tại Việt Nam với quy mô 180ha, cùng hơn 130 loài động vật quý hiếm và các chương trình Biểu diễn động vật, Chụp ảnh với động vật, Khám phá và trải nghiệm Vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người.
- Tham quan Grand World: với các công trình tre, công viên nghệ thuật đương đại thuộc Open Park, bảo tàng Gấu Teddy…; tản bộ bên dòng “kênh đào Venice” và nhìn ngắm những chiếc thuyền Gondola, khu phố shophouse lộng lẫy sắc màu, cổng lâu đài tráng lệ, ba cây cầu vòm bán nguyệt...

Suối Tranh

NGÀY 02: PHÚ QUỐC - CÁP TREO HÒN THƠM - TẶNG BUFFET (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn tham quan Trung tâm nuôi cấy ngọc trai. viếng Thiền Viện Trúc Lâm Hộ Quốc - ngôi chùa đẹp và lớn nhất đảo ngọc. Đến Hòn Thơm , du khách tham gia các trò chơi tại khu công viên chủ đề và Aquatopia Water Park, công viên nước đầu tiên ở Việt Nam mang phong cách đảo hoang và thổ dân, không gian công viên được thiết kế theo hai chủ đề chính là “Đảo hoang huyền bí” và “Thổ dân hoang dã”, đưa du khách vào hành trình khám phá phấn khích, khi lần lượt trải nghiệm từng khu vực chủ đề gồm sinh vật biển, động vật hoang dã, thủy quái, thổ dân, cướp biển. Các trò chơi được phân chia thành khu vực các trò chơi dành riêng cho trẻ em và khu vui chơi mạo hiểm cho người lớn. Ngắm hoàng hôn tại Sunset Town với những căn nhà ven biển đầy sắc màu - được mệnh danh là nơi ngắm hoàng hôn đẹp nhất Phú Quốc, chiêm ngưỡng cầu Cầu Hôn, biểu tượng của tình yêu... Nghỉ đêm tại Phú Quốc.
Lưu ý :
- Tour khởi hành giai đoạn 01 - 15/12 đến Hòn Thơm bằng phương tiện ca nô.
- Tour khởi hành 22/12 đến Hòn Thơm bằng cáp treo.

Cáp treo 3 dây vượt biển dài nhất thế giới tại Hòn Thơm

NGÀY 03: PHÚ QUỐC - TP. HỒ CHÍ MINH (Ăn sáng , ăn trưa)
Quý khách tự do tắm biển và nghỉ ngơi tại khách sạn đến giờ trả phòng. Xe đưa quý khách ra sân bay trên đường đi quý khách dừng chân tham quan Vườn tiêu, Nhà thùng làm nước mắm, Lò rượu Sim… Đến sân bay Phú Quốc, đoàn bay về TP.Hồ Chí Minh chuyến bay VN1836 lúc 18h55 hoặc chuyến bay VN1824 lúc 16h20 hoặc VN1834 lúc 16h40. Kết thúc chương trình (quý khách tự túc phương tiện từ sân bay về lại nhà)./.

Vườn tiêu

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(7179000 AS Decimal(18, 0)), 7, 3, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (4, N'DU LỊCH NHA TRANG - VIỆN HẢI DƯƠNG HỌC - DỐC LẾT - I RESORT', 3, N'/Uploads/2023/11/c05e6094-aa1e-4ba8-9185-ac067d0c786f.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - NHA TRANG (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, khởi hành đi Nha Trang. Trên đường đi du khách sẽ được chiêm ngưỡng vẻ đẹp của bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của khu vực miền Trung. Đến Cam Ranh. Xe đưa du khách vào Nha Trang theo cung đường Sông Lô Hòn Rớ - cung đường được xây dựng chạy dọc theo bờ biển Cam Ranh - Nha Trang thơ mộng. Đến Nha Trang, du khách nhận phòng nghỉ ngơi. Buổi chiều, xe đưa đoàn tham quan Viện hải dương Nha Trang với hơn 23.000 mẫu vật của hơn 5000 loài sinh vật biển và động thực vật, đây là kho tàng sinh vật biển quý hiếm nhất của Việt Nam. Nghỉ đêm tại Nha Trang.

Cà Ná

NGÀY 02: NHA TRANG - DỐC LẾT (Ăn sáng, trưa )
Buổi sáng, xe đưa du khách đi Dốc Lết - một trong những bãi biển êm, đẹp, nổi tiếng của tỉnh Khánh Hòa và khu vực miền Trung. Quý khách tự do tham quan và tắm biển thỏa thích trong làn nước xanh trong. Trên đường về dừng chân tham quan chụp ảnh tại Vega City Nha Trang - quần thể bất động sản phức hợp nghệ thuật, nghỉ dưỡng, giải trí hàng đầu tại Nha Trang, dạo bộ quanh Vega Shopping Continental Plaza, chụp ảnh lưu niệm với các dãy nhà đầy màu sắc và hàng trăm artwork, khu tiểu cảnh độc đáo, Nhà hát Đó với kiến trúc văn hóa bản địa độc đáo,… Xe đưa đoàn về khách sạn nghỉ ngơi. Buổi chiều, du khách tự do khám phá thành phố biển về đêm và thưởng thức ẩm thực địa phương (chi phí tự túc). Nghỉ đêm tại Nha Trang.
Lựa chọn:
- Tham quan Khu vui chơi giải trí Vinwonder với Thủy cung lớn và hiện đại nhất Việt Nam; Khu trò chơi trong nhà hoặc chinh phục thử thách cao độ từ hàng chục trò chơi cảm giác mạnh tại Khu trò chơi ngoài trời và Công viên nước ngọt trên bãi biển đầu tiên & duy nhất tại Việt Nam; Phòng chiếu phim 4D; Chương trình biểu diễn nhạc nước (tự túc chi phí di chuyển và tham quan)
- Tham quan Bến du thuyền Ana Marina vịnh Nha Trang - là bến du thuyền được đầu tư theo chuẩn quốc tế đầu tiên và duy nhất tại Việt Nam, điểm thu hút đông đảo du khách đến tham quan thời gian gần đây (tự túc chi phí di chuyển và tham quan).
- Trải nghiệm thưởng thức Show Life Puppets - Rối Mơ tại Nhà hát Đó - Vega City. Chương trình nghệ thuật đặc sắc với không gian đồng hiện đầu tiên tại Việt Nam, sử dụng sân khấu thuỷ đình, biểu diễn rối nước cổ truyền kết hợp rối dây, rối bóng, rối hoạt hình và hình thức múa đương đại (tự túc chi phí di chuyển và tham quan).

Dốc Lết

NGÀY 03: NHA TRANG - I RESORT (Ăn sáng, trưa, chiều)
Buổi sáng, xe đưa du khách tham quan trung tâm suối khoáng nóng I resort Nha Trang - thư giãn và tắm khoáng (tự túc chi phí tắm bùn các loại). Buổi chiều, quý khách ghé tham quan Làng Yến Mai Sinh - tận mắt chiêm ngưỡng mô hình hang Yến, tìm hiểu quá trình chim Yến làm tổ, quy trình thu hái, tinh chế, nếm thử các sản phẩm làm từ tổ Yến.... Đoàn viếng Chùa Long Sơn cầu bình an. Ghé chợ Đầm mua sắm đặc sản Nha Trang. Nghỉ đêm tại Nha Trang.

 Chùa Long Sơn

NGÀY 04: NHA TRANG - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Sau khi ăn sáng quý khách nghỉ ngơi đến giờ trả phòng. Đoàn khởi hành về thành phố, đến Phan Rang nghỉ giải lao và mua đặc sản Ninh Thuận. Đến Tp. Hồ Chí Minh, xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình .Kết thúc chuyến tham quan./.

Đặc sản Ninh Thuận

Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(3879000 AS Decimal(18, 0)), 5, 3, 3)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (5, N'DU LỊCH PHÚ QUỐC - CA NÔ THAM QUAN ĐẢO - LẶN NGẮM SAN HÔ', 3, N'/Uploads/2023/11/00433251-3568-4dd0-95fb-645d9c8f96f2.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - PHÚ QUỐC (Ăn trưa)
Buổi sáng, quý khách tập trung tại ga đi trong nước, sân bay Tân Sơn Nhất. HDV lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành đi Phú Quốc (chuyến bay VN1835 lúc 08h25 hoặc VN1825 lúc 09h00). Đến Phú Quốc, đoàn khởi hành đi tham quan Dinh Cậu - biểu tượng văn hoá và tín ngưỡng của đảo Phú Quốc, là nơi cầu may mắn, cầu an lành và là nơi ngư dân địa phương gởi gắm niềm tin cho một chuyến ra khơi đánh bắt đầy ắp cá khi trở về. Đoàn viếng Dinh Bà Thủy Long Thánh Mẫu là nơi thờ Thần Nữ Kim Giao, người phụ nữ được người dân Phú Quốc rất mực tôn kính vì có công khai phá huyện đảo này. Nhận phòng nghỉ ngơi. Buổi tối, tự do dạo chợ đêm Phú Quốc, ăn chiều tự túc. Nghỉ đêm tại Phú Quốc.
Lựa chọn (tự túc chi phí tham quan & di chuyển):
- Tham quan VinWonder Phú Quốc: có diện tích gần 50ha, là công viên theo chủ đề đầu tiên tại Việt Nam. Khu vực công viên được chia làm 6 phân khu, tượng trưng cho 6 vùng lãnh địa với 12 chủ đề, lấy cảm hứng từ các nền văn minh nổi tiếng, các câu chuyện cổ tích, giai thoại thế giới, sẽ đưa du khách đi từ ngạc nhiên này đến bất ngờ khác, tạo nên những trải nghiệm mới lạ, đầy cuốn hút, mang tính giải trí, giáo dục và nghệ thuật cao. 
- Khám phá Khu Vinpearl Safari: khám phá Vườn Thú hoang dã đầu tiên tại Việt Nam với quy mô 180ha, cùng hơn 130 loài động vật quý hiếm và các chương trình Biểu diễn động vật, Chụp ảnh với động vật, Khám phá và trải nghiệm Vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người.
- Tham quan Grand World: với các công trình tre, công viên nghệ thuật đương đại thuộc Open Park, bảo tàng Gấu Teddy…; tản bộ bên dòng “kênh đào Venice” và nhìn ngắm những chiếc thuyền Gondola, khu phố shophouse lộng lẫy sắc màu, cổng lâu đài tráng lệ, ba cây cầu vòm bán nguyệt...
- Ngắm hoàng hôn tại Sunset Sanato - một trong những địa điểm ngắm hoàng hôn tuyệt đẹp không thể bỏ qua khi đến Phú Quốc và chụp hình check in những bức ảnh lung linh tại đây.

VinWonder Phú Quốc

NGÀY 02: PHÚ QUỐC - THAM QUAN ĐẢO - LẶN NGẮM SAN HÔ (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn tham quan Trung tâm nuôi cấy ngọc trai, viếng Thiền Viện Trúc Lâm Hộ Quốc - ngôi chùa đẹp và lớn nhất đảo ngọc. Quý khách lên cano du ngoạn trên biển, bắt đầu hành trình khám phá các hòn đảo xinh đẹp, chiêm ngưỡng trọn vẹn cảnh sắc thiên nhiên hữu tình của quần đảo An Thới, phía nam Phú Quốc. Du khách sẽ được bơi lội giữa biển, lặn ngắm san hô với những sắc màu tuyệt đẹp. Ghé thăm hòn Móng Tay - nơi được mệnh danh là Maldives của Việt Nam. Khám phá hòn Mây Rút Ngoài với bãi biển đẹp, trải dài nhất trong các hòn và bờ cát trắng mịn màng. Trải nghiệm quay flycam và chụp ảnh với ván Sup cho ra những bức hình cực chất. Thử thách với các trò chơi mạo hiểm trên biển…(chi phí tự túc). Nghỉ đêm tại Phú Quốc.

Cano du ngoạn trên biển

NGÀY 03: PHÚ QUỐC - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Quý khách tự do tắm biển và nghỉ ngơi tại khách sạn đến giờ trả phòng. Xe đưa quý khách ra sân bay, trên đường đi quý khách dừng chân tham quan Vườn tiêu, Nhà thùng làm nước mắm, Lò rượu Sim… Đến sân bay Phú Quốc, đoàn bay về TP.Hồ Chí Minh (chuyến bay VN1830 lúc 17h45 hoặc VN1836 lúc 18h55). Kết thúc chương trình (quý khách tự túc phương tiện từ sân bay về lại nhà)./.

Vườn tiêu

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(6739000 AS Decimal(18, 0)), 7, 3, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (6, N'DU LỊCH [MÙA HOA TAM GIÁC MẠCH] HÀ GIANG - ĐỒNG VĂN - CAO BẰNG - THÁC BẢN GIỐC- LẠNG SƠN', 3, N'/Uploads/2023/11/f35f61b2-a764-49df-a0c4-a3897044fa55.jpg', N'NGÀY 01:TP. HCM – HÀ NỘI – HÀ GIANG (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Cổng D2 – Ga đi trong nước – SB.Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành ra Hà Nội trên chuyến bay VN206 lúc 6h. Đáp xuống sân bay Nội Bài. Xe đưa đoàn đến Tuyên Quang, viếng Đền Thác Cái – nơi thờ “Thánh Mẫu Sông Lô” theo tín  ngưỡng địa phương. Tiếp tục khởi hành đến Hà Giang, chụp hình lưu niệm tại Cột mốc số 0 tại thành phố Hà Giang, nhận phòng nghỉ ngơi. Buổi tối, đoàn tự do thưởng thức cháo ấu tẩu, cà phê núi Cấm (tự túc chi phí). Nghỉ đêm tại Hà Giang.

Hà Giang

NGÀY 02: HÀ GIANG – LŨNG CÚ – ĐỒNG VĂN (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn khởi hành đến Cao nguyên đá Đồng Văn – Công viên địa chất toàn cầu. Thưởng ngoạn cảnh sắc ngoạn mục từ những “vườn đá”, “rừng đá” tai mèo giữa những dãy núi trùng điệp. Đến Quản Bạ, chiêm ngưỡng Núi đôi Cô Tiên. Đến thung lũng Sà Phìn, tham quan Dinh thự nhà họ Vương – dòng họ giàu có và uy quyền nhất vùng một thời, khám phá những câu chuyện huyền bí, thú vị về “Vua Mèo”. Dừng chân tham quan, chụp ảnh tại ruộng hoa tam giác mạch. Chinh phục Cột cờ Lũng Cú – nơi đánh dấu điểm địa cầu cực Bắc của Việt Nam (bao gồm xe điện). Nghỉ đêm tại Đồng Văn.

Dinh thự nhà họ Vương

NGÀY 03: ĐỒNG VĂN – MÈO VẠC – BA BỂ (Ăn sáng, trưa, chiều)
Buổi sáng, đoàn tự do dạo phố cổ Đồng Văn, chợ phiên Đồng Văn (sáng Chủ Nhật hàng tuần). Dừng chân tại tượng đài TNXP, bảo tàng “Con đường Hạnh Phúc”. Vượt đèo Mã Pí Lèng – một trong “Tứ đại danh đèo” của vùng núi biên viễn phía Bắc. Chiêm ngưỡng cảnh quan nơi dòng sông Nho Quế chảy qua khe vực Tu Sản sâu hun hút, thăm thẳm giữa những vách núi dựng đứng, sừng sững. Đoàn dừng chụp hình lưu niệm tại Làng Văn hóa Du lịch Cộng đồng dân tộc H’Mông Pả Vi. Tiếp tục hành trình qua các địa danh Bảo Lâm, Bảo Lạc, Tĩnh Túc, … đi Ba Bể. Nghỉ đêm tại KS Sài Gòn – Ba Bể 4*.

Chợ phiên Đồng Văn

NGÀY 04: BA BỂ - BẢN GIỐC (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn khám phá Vườn Quốc Gia Ba Bể, quý khách lên thuyền du ngoạn dọc theo dòng sông Năng, ngắm nhìn cảnh quan và đời sông của người dân tộc Tày, Nùng ở đôi bờ. Tham quan động Puông. Đến hồ Ba Bể - viên ngọc trong xanh giữa núi rừng Đông  Bắc, thưởng ngoạn phong cảnh của một trong một trăm hồ nước ngọt đẹp nhất toàn cầu. Tham quan đảo An Mã. Tiếp tục đến Bản Giốc. Nghỉ đêm tại KS Sài Gòn – Bản Giốc 4*.

Vườn quốc gia Ba Bể

NGÀY 05: BẢN GIỐC – LẠNG SƠN (Ăn sáng, trưa, chiều)
Buổi sáng, đoàn viếng Chùa Phật Tích Trúc Lâm Bản Giốc. Đoàn đến chiêm ngưỡng cảnh sắc đầy hùng vĩ và thơ mộng của thác Bản Giốc – một trong bốn thác nước là đường biên giới tự nhiên giữa các quốc gia lớn nhất thế giới, đi bè tre ngắm cận cảnh thác (tự túc chi phí). Tiếp tục đến tham quan Động Ngườm Ngao khám phá vẻ đẹp lung linh của một hang động đá vôi còn nguyên sơ. Thăm làng đá Khuổi Ky của dân tộc Tày. Khởi hành đi Lạng Sơn. Buổi tối, đoàn tự do tham quan chợ đêm Kỳ Lừa, chinh phục cột cờ Phai Vệ - ngắm toàn cảnh thành phố miền biên ải. Nghỉ đêm tại KS Mường Thanh 5*.

Thác Bản Giốc

NGÀY 06: LẠNG SƠN – BẮC NINH – NỘI BÀI – TPHCM (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn tham quan di tích thành nhà Mạc, động Tam Thanh – ngắm núi Tô Thị, mua sắm tại chợ Đông Kinh. Khởi hành về Hà Nội. Trên đường qua Bắc Ninh, đoàn viếng đền Đô – nơi thờ tự 8 vị vua triều Lý. Ra SB Nội Bài để về TPHCM trên chuyến bay VN221 lúc 21h. Kết thúc chương trình.

Ghi chú:
-  Lịch trình này chỉ sử dụng xe 29 chỗ trở xuống.
- Ăn sáng tại một số địa phương sẽ theo hình thức 1 tô-ly /khách.
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(11479000 AS Decimal(18, 0)), 15, 2, 4)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (7, N'DU LỊCH PHÚ QUỐC - BÃI SAO - SUNSET TOWN - KISS THE STARS SHOW', 3, N'/Uploads/2023/11/174c70f2-f9e9-413e-8da9-b8d00cf5aff8.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - PHÚ QUỐC  (Ăn trưa)
Buổi sáng, quý khách tập trung tại ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Quý khách tự túc ăn sáng ,Khởi hành đi Phú Quốc (chuyến bay VN1835 lúc 08h25 hoặc VN1825 lúc 09h00). Đến Phú Quốc, đoàn khởi hành tham quan Dinh Cậu - biểu tượng văn hoá và tín ngưỡng của đảo Phú Quốc, là nơi cầu may mắn, cầu an lành và là nơi ngư dân địa phương gởi gắm niềm tin cho một chuyến ra khơi đánh bắt đầy ắp cá khi trở về. Đoàn viếng Dinh Bà Thủy Long Thánh Mẫu là nơi thờ Thần Nữ Kim Giao, người phụ nữ được người dân Phú Quốc rất mực tôn kính vì có công khai phá huyện đảo này. Xe đưa đoàn về khách sạn nhận phòng nghỉ ngơi. Buổi chiều, quý khách tự do khám phá thành phố đảo về đêm… Nghỉ đêm tại Phú Quốc.

Lựa chọn (tự túc chi phí tham quan & di chuyển):
- Tham quan VinWonder Phú Quốc: có diện tích gần 50ha, là công viên theo chủ đề đầu tiên tại Việt Nam. Khu vực công viên được chia làm 6 phân khu, tượng trưng cho 6 vùng lãnh địa với 12 chủ đề, lấy cảm hứng từ các nền văn minh nổi tiếng, các câu chuyện cổ tích, giai thoại thế giới, sẽ đưa du khách đi từ ngạc nhiên này đến bất ngờ khác, tạo nên những trải nghiệm mới lạ, đầy cuốn hút, mang tính giải trí, giáo dục và nghệ thuật cao. 
- Khám phá Khu Vinpearl Safari: khám phá Vườn Thú hoang dã đầu tiên tại Việt Nam với quy mô 180ha, cùng hơn 130 loài động vật quý hiếm và các chương trình Biểu diễn động vật, Chụp ảnh với động vật, Khám phá và trải nghiệm Vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người.
- Tham quan Grand World: với các công trình tre, công viên nghệ thuật đương đại thuộc Open Park , bảo tàng Gấu Teddy…; tản bộ bên dòng “kênh đào Venice” và nhìn ngắm những chiếc thuyền Gondola, khu phố shophouse lộng lẫy sắc màu, cổng lâu đài tráng lệ, ba cây cầu vòm bán nguyệt...

Dinh Cậu

NGÀY 02: PHÚ QUỐC - BÃI SAO - SUNSET TOWN - SHOW KISS THE STARS (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn viếng Thiền Viện Trúc Lâm Hộ Quốc - ngôi chùa đẹp và lớn nhất đảo ngọc. Xe đưa quý khách đến tắm biển Bãi Sao - một trong những bãi biển đẹp nhất tại Phú Quốc. Buổi chiều, xe đưa đoàn đến tham quan Sunset Town với những căn nhà ven biển đầy sắc màu - được mệnh danh là nơi ngắm hoàng hôn đẹp nhất Phú Quốc, chiêm ngưỡng cầu Hôn, biểu tượng của tình yêu, là địa điểm của những tín đồ đam mê nghệ thuật chụp hình với những ngôi nhà kiến trúc Địa Trung Hải... Trải nghiệm Kiss The Stars Show - buổi biểu diễn hấp dẫn được dàn dựng công phu nhờ công nghệ Multimedia - sự kết hợp của lửa, nước và ánh sáng, pháo hoa, laser, âm nhạc và nghệ sĩ biểu diễn tạp kỹ... Nghỉ đêm tại Phú Quốc.

Bãi Sao

NGÀY 03: PHÚ QUỐC - TP. HỒ CHÍ MINH (Ăn sáng, Ăn trưa)
Quý khách tự do tắm biển và nghỉ ngơi tại khách sạn đến giờ trả phòng. Xe đưa quý khách ra sân bay trên đường đi quý khách dừng chân tham quan Vườn tiêu, Nhà thùng làm nước mắm, Lò rượu Sim… Đến sân bay Phú Quốc, đoàn bay về TP.Hồ Chí Minh (chuyến bay VN1824 lúc 16h20 hoặc VN1830 lúc 17h45). Kết thúc chương trình (quý khách tự túc phương tiện từ sân bay về lại nhà)./.

 Vườn tiêu

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(5739000 AS Decimal(18, 0)), 7, 3, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (8, N'DU LỊCH BẾN TRE - TRÀ VINH - SÓC TRĂNG - BẠC LIÊU - MŨI CÀ MAU - HÀ TIÊN - "THẤT SƠN" AN GIANG - LONG XUYÊN - ĐỒNG THÁP MƯỜI', 3, N'/Uploads/2023/11/0e6e9e09-b7d2-4a27-8a84-092e8638488a.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - BẾN TRE - TRÀ VINH (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, khởi hành đi Mỹ Tho bằng đường cao tốc Sài Gòn - Trung Lương. Tiếp tục qua cầu Rạch Miễu, xe đưa đoàn đến xứ dừa Bến Tre -  tham quan cơ sở chế biến dừa dọc hai bên sông, lò kẹo dừa. Thuyền máy đưa du khách vào những kênh rạch chằng chịt hiền hòa của miền Tây sông nước, thăm làng nghề truyền thống, thưởng thức trà, trái cây bốn mùa. Qúy khách ngồi trên xe lôi ngắm nhìn cảnh làng quê yên ả với vườn dừa, rẫy hoa màu...Trải nghiệm cảm giác len lỏi qua các kênh rạch bằng đò chèo, tận hưởng không khí trong lành, mát mẻ. Buổi chiều, đoàn theo quốc lộ 60 đến Trà Vinh - thành phố của những hàng cây cổ thụ, tham quan Ao Bà Om, bảo tàng Khmer, viếng chùa Âng - một trong những ngôi chùa cổ kính nhất trong hệ thống hơn 140 ngôi chùa Khmer tại Trà Vinh. Nghỉ đêm tại Trà Vinh.

Ao Bà Om

NGÀY 02: TRÀ VINH - CÙ LAO DUNG - SÓC TRĂNG - BẠC LIÊU (Ăn sáng, trưa, chiều)
Buổi sáng, đoàn trải nghiệm chuyến phà Đại Ngãi, ngang qua cù lao Dung, đến với thành phố Sóc Trăng. Đoàn dừng chân tham quan, có những tấm ảnh lưu niệm độc đáo tạo ngôi chùa Som Rông. Tiếp tục đến Bạc Liêu, tham quan nhà Công tử Bạc Liêu - tìm hiểu cuộc đời của Hắc công tử Trần Trinh Huy nổi tiếng giàu có, ăn chơi, phóng khoáng một thời. Buổi chiều, đoàn đến tham quan cánh đồng điện gió, chụp hình lưu niệm tại quảng trường, nhà hát “nón lá”. Nghỉ đêm tại Bạc Liêu.

Cánh đồng điện gió

NGÀY 03: BẠC LIÊU - VQG MŨI CÀ MAU - CÀ MAU (Ăn sáng, trưa, chiều)
Đoàn khởi hành đi Cà Mau, dừng chân viếng nhà thờ Tắc Sậy và thăm nơi an nghỉ của Linh mục Trương Bửu Diệp. Tiếp tục đến Đất Mũi, chụp ảnh lưu niệm với mốc Toạ độ quốc gia - Panô biểu tượng Mũi Cà Mau,...  đoàn trải nghiệm đi vỏ lãi tham quan bãi bồi, tìm hiểu nghề nuôi hàu lồng,... khám phá hệ sinh thái vườn quốc gia Mũi Cà Mau - khu Ramsar và dự trữ sinh quyển của Thế giới... Nghỉ đêm tại Cà Mau.

Đất Mũi

NGÀY 04: CÀ MAU - RẠCH GIÁ - HÀ TIÊN (Ăn sáng, trưa, chiều)
Đoàn khởi hành theo tuyến đường Xuyên Á đi Rạch Giá - ngắm nhìn khu đô thị lấn biển hiện đại. Buổi chiều, đoàn dừng chân tham quan Chùa Hang - Hòn Phụ Tử. Tiếp tục đến Hà Tiên, đoàn thăm lăng Mạc Cửu. Nghỉ đêm tại Hà Tiên.

NGÀY 05: HÀ TIÊN - “THẤT SƠN” AN GIANG - LONG XUYÊN (Ăn sáng, trưa, chiều)
Đoàn tạm biệt Kiên Giang, tiếp tục theo đường N1 chạy dọc kênh đào Vĩnh Tế đến với An Giang. Đoàn đi ngang và có dịp tìm hiểu, khám phá một số địa danh vùng Thất Sơn - Bảy Núi. Ghé thăm di tích nhà mồ Ba Chúc - chứng tích tội ác của chế độ Khmer Đỏ, đi cáp treo lên tham quan Núi Cấm.  Buổi chiều, đoàn đi ngang Tà Pạ (Tri Tôn)  với hình ảnh đặc trưng là những hàng cây thốt nốt bên cánh đồng lúa bạt ngàn - vựa lúa của miền Tây Nam Bộ. Đoàn có thể mua sắm đặc sản địa phương: tung lò mò (lạp xưởng bò), đường thốt nốt, trái chúc... Đoàn đến viếng Thiền Viện Trúc Lâm An Giang nên thơ giữa lòng thị trấn Núi Sập. Buổi tối, tự do khám phá Long Xuyên. Nghỉ đêm tại Long Xuyên.

Núi Cấm

NGÀY 06: LONG XUYÊN - ĐỒNG THÁP MƯỜI - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Buổi sáng, đoàn theo đường N2 về Long An, tham quan làng nổi Tân Lập - đi tắc ráng hoặc cáp kéo tham quan rừng tràm, trải nghiệm xuồng chèo khám phá hệ sinh thái vùng Đồng Tháp Mười..... Khởi hành về TP. Hồ Chí Minh, xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình. Kết thúc chương trình./.

Làng nổi Tân Lập

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(8479000 AS Decimal(18, 0)), 16, 3, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (9, N'DU LỊCH VƯỜN QUỐC GIA NAM CÁT TIÊN - KHU DU LỊCH SUỐI MƠ - ORCHARD HOME RESORT', 3, N'/Uploads/2023/11/3a803efb-3863-4092-8c4b-b174806ed056.jpg', N'NGÀY 1: TP.HCM - NAM CÁT TIÊN (Ăn sáng, trưa, chiều)
6h Xe và HDV Lữ Hành Saigontourist đón đoàn tại văn phòng Saigontourist.
Đoàn khởi hành đi Nam Cát Tiên theo cung đường cao tốc Sài Gòn - Long Thành - Dầu Giây & quốc lộ 20. Dừng chân ăn sáng trên đường đi.     
Đoàn đến nghỉ ngơi, tham quan Khu du lịch Suối Mơ - với hồ tắm thiên nhiên có diện tích mặt nước trên 150,000 m2. Quý khách tắm suối, thư giãn cùng làn nước trong xanh chảy ra từ các mạch nước ngầm ... Đoàn có thể tham gia các trò chơi thể theo dưới nước (chi phí tự túc): thuyền phao, bong bóng nước, đua xe đạp nước,...
Sau bữa trưa, đoàn tiếp tục di chuyển vào Nam Cát Tiên. Quý khách nhận phòng nghỉ ngơi tại Orchard Home resort (cách VQG 6km)
15h Xe đưa đoàn vào khu vực vườn quốc gia Nam Cát Tiên. Đoàn nhận xe đạp và bắt đầu hành trình khám phá (đạp xe khoảng 5km và đi bộ 100m - 300m tại mỗi điểm):
- Cây Tung - ghềnh Bến Cự - cây gõ Bác Đồng - cây đa Lộc Giao
- Trung tâm cứu hộ động vật hoang dã - nơi cứu hộ, huấn luyện, chăm sóc và tái thả động vật về môi trường tự nhiên,...
Đoàn ăn chiều trong vườn quốc gia với các món ăn dân dã địa phương: cơm lam, đọt mây - lá nhíp,...
Quý khách có thể lựa chọn “trải nghiệm xem thú đêm ” -  quan sát, tìm hiểu đời sống của các loài thú hoang dã trong vườn quốc gia (chi phí tự túc).
Xe đưa đoàn về lại resort. Nghỉ đêm tại resort.

Vườn quốc gia Nam Cát Tiên

NGÀY 2: NAM CÁT TIÊN - TP.HCM (Ăn sáng, trưa)
Đoàn ăn sáng và tự do nghỉ ngơi, trải nghiệm các dịch vụ tại resort: “check-in hồ bơi vô cực” giữa không gian núi rừng thoáng đãng, trong lành; tắm sông; tham quan vườn rau, hồ sen súng, khuôn viên xanh mát hoa cỏ và các loại cây ăn trái ...
Sau bữa trưa, đoàn khởi hành trở về TP.HCM. Xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình. Kết thúc chương trình tham quan ./.

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(3279000 AS Decimal(18, 0)), 17, 4, 3)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (10, N'DU LỊCH NHA TRANG - VIỆN HẢI DƯƠNG - DỐC LẾT - I RESORT [TẾT DƯƠNG LỊCH]', 3, N'/Uploads/2023/11/aeff3e8d-3b69-480b-b551-b537167607f4.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - NHA TRANG  (Ăn sáng, trưa, chiều)
Đón du khách tại văn phòng lữ hành Saigontourist, khởi hành đi Nha Trang. Trên đường đi du khách sẽ được chiêm ngưỡng vẻ đẹp của bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của khu vực miền Trung. Đến Cam Ranh. Xe đưa du khách vào Nha Trang theo cung đường Sông Lô Hòn Rớ - cung đường được xây dựng chạy dọc theo bờ biển Cam Ranh - Nha Trang thơ mộng. Đến Nha Trang, du khách nhận phòng nghỉ ngơi. Buổi chiều, xe đưa đoàn tham quan Viện hải dương Nha Trang với hơn 23.000 mẫu vật của hơn 5000 loài sinh vật biển và động thực vật, đây là kho tàng sinh vật biển quý hiếm nhất của Việt Nam. Nghỉ đêm tại Nha Trang.

Bãi biển cát trắng Cà Ná

NGÀY 02: NHA TRANG - DỐC LẾT (Ăn sáng, trưa)
Buổi sáng, xe đưa du khách đi Dốc Lết - một trong những bãi biển êm, đẹp, nổi tiếng của tỉnh Khánh Hòa và khu vực miền Trung. Quý khách tự do tham quan và tắm biển thỏa thích trong làn nước xanh trong. Trên đường về dừng chân tham quan chụp ảnh tại Vega City Nha Trang - quần thể bất động sản phức hợp nghệ thuật, nghỉ dưỡng, giải trí hàng đầu tại Nha Trang, dạo bộ quanh Vega Shopping Continental Plaza, chụp ảnh lưu niệm với các dãy nhà đầy màu sắc và hàng trăm artwork, khu tiểu cảnh độc đáo, Nhà hát Đó với kiến trúc văn hóa bản địa độc đáo,… Xe đưa đoàn về khách sạn nghỉ ngơi. Buổi chiều, du khách tự do khám phá thành phố biển về đêm và thưởng thức ẩm thực địa phương (chi phí tự túc). Nghỉ đêm tại Nha Trang.
Lựa chọn:
- Tham quan Khu vui chơi giải trí Vinwonder với Thủy cung lớn và hiện đại nhất Việt Nam; Khu trò chơi trong nhà hoặc chinh phục thử thách cao độ từ hàng chục trò chơi cảm giác mạnh tại Khu trò chơi ngoài trời và Công viên nước ngọt trên bãi biển đầu tiên & duy nhất tại Việt Nam; Phòng chiếu phim 4D; Chương trình biểu diễn nhạc nước (tự túc chi phí di chuyển và tham quan)
- Tham quan Bến du thuyền Ana Marina vịnh Nha Trang - là bến du thuyền được đầu tư theo chuẩn quốc tế đầu tiên và duy nhất tại Việt Nam, điểm thu hút đông đảo du khách đến tham quan thời gian gần đây (tự túc chi phí di chuyển và tham quan).
- Trải nghiệm thưởng thức Show Life Puppets - Rối Mơ tại Nhà hát Đó - Vega City. Chương trình nghệ thuật đặc sắc với không gian đồng hiện đầu tiên tại Việt Nam, sử dụng sân khấu thuỷ đình, biểu diễn rối nước cổ truyền kết hợp rối dây, rối bóng, rối hoạt hình và hình thức múa đương đại (tự túc chi phí di chuyển và tham quan).

Khu vui chơi giải trí VinWonder

NGÀY 03: NHA TRANG - I RESORT (Ăn sáng, trưa, chiều)
Buổi sáng, xe đưa du khách tham quan trung tâm suối khoáng nóng I resort Nha Trang - thư giãn và tắm khoáng (tự túc chi phí tắm bùn các loại). Buổi chiều, quý khách ghé tham quan Làng Yến Mai Sinh - tận mắt chiêm ngưỡng mô hình hang Yến, tìm hiểu quá trình chim Yến làm tổ, quy trình thu hái, tinh chế, nếm thử các sản phẩm làm từ tổ Yến.... Đoàn viếng Chùa Long Sơn cầu bình an. Ghé chợ Đầm mua sắm đặc sản Nha Trang. Nghỉ đêm tại Nha Trang.

Trung tâm suối khoáng nóng I resort

NGÀY 04: NHA TRANG - TP. HỒ CHÍ  MINH (Ăn sáng, trưa)
Sau khi ăn sáng quý khách nghỉ ngơi đến giờ trả phòng. Đoàn khởi hành về thành phố, đến Phan Rang nghỉ giải lao và mua đặc sản Ninh Thuận. Đến Tp. Hồ Chí Minh, xe đưa quý khách về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chuyến tham quan./.

Đặc sản Ninh Thuận

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(4079000 AS Decimal(18, 0)), 5, 4, 4)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (11, N'DU LỊCH TẾT NGUYÊN ĐÁN 2024 NHA TRANG - DỐC LẾT - I RESORT - LÀNG YẾN [MÙNG 2,3 4 TẾT]', 3, N'/Uploads/2023/11/45852fa0-d593-48f4-91e3-6f2f0ede99b1.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - NHA TRANG (Ăn sáng, trưa, chiều)
Đón du khách tại văn phòng lữ hành Saigontourist, khởi hành đi Nha Trang. Dừng chân tham quan không gian trưng bày nghệ thuật “Làng chài xưa” tại Phan Thiết. Trên đường đi du khách sẽ được chiêm ngưỡng vẻ đẹp của bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của khu vực miền Trung. Đến Cam Ranh, xe đưa du khách vào Nha Trang theo cung đường Sông Lô Hòn Rớ - cung đường được xây dựng chạy dọc theo bờ biển Cam Ranh - Nha Trang thơ mộng. Đến Nha Trang, du khách nhận phòng. Nghỉ đêm tại Nha Trang.

Không gian trưng bày nghệ thuật “Làng chài xưa”

NGÀY 02: NHA TRANG - DỐC LẾT (Ăn sáng, trưa)
Buổi sáng, xe đưa du khách đi Dốc Lết - một trong những bãi biển êm, đẹp, nổi tiếng của tỉnh Khánh Hòa và khu vực miền Trung. Quý khách tự do tham quan và tắm biển thỏa thích trong làn nước xanh trong. Trên đường về dừng chân tham quan chụp ảnh tại Vega City Nha Trang - quần thể bất động sản phức hợp nghệ thuật, nghỉ dưỡng, giải trí hàng đầu tại Nha Trang, dạo bộ quanh Vega Shopping Continental Plaza, chụp ảnh lưu niệm với các dãy nhà đầy màu sắc và hàng trăm artwork, khu tiểu cảnh độc đáo, Nhà hát Đó với kiến trúc văn hóa bản địa độc đáo,… Xe đưa đoàn về khách sạn nghỉ ngơi. Buổi chiều, du khách tự do khám phá thành phố biển về đêm và thưởng thức ẩm thực địa phương (chi phí tự túc). Nghỉ đêm tại Nha Trang.
Lựa chọn:
- Tham quan Khu vui chơi giải trí Vinwonder với Thủy cung lớn và hiện đại nhất Việt Nam; Khu trò chơi trong nhà hoặc chinh phục thử thách cao độ từ hàng chục trò chơi cảm giác mạnh tại Khu trò chơi ngoài trời và Công viên nước ngọt trên bãi biển đầu tiên & duy nhất tại Việt Nam; Phòng chiếu phim 4D; Chương trình biểu diễn nhạc nước (tự túc chi phí di chuyển và tham quan)
- Tham quan Bến du thuyền Ana Marina vịnh Nha Trang - là bến du thuyền được đầu tư theo chuẩn quốc tế đầu tiên và duy nhất tại Việt Nam, điểm thu hút đông đảo du khách đến tham quan thời gian gần đây (tự túc chi phí di chuyển và tham quan).
- Trải nghiệm thưởng thức Show Life Puppets - Rối Mơ tại Nhà hát Đó - Vega City. Chương trình nghệ thuật đặc sắc với không gian đồng hiện đầu tiên tại Việt Nam, sử dụng sân khấu thuỷ đình, biểu diễn rối nước cổ truyền kết hợp rối dây, rối bóng, rối hoạt hình và hình thức múa đương đại (tự túc chi phí di chuyển và tham quan).

Vinwonder 

NGÀY 03: NHA TRANG - I RESORT (Ăn sáng, trưa, chiều)
Buổi sáng, xe đưa du khách tham quan trung tâm suối khoáng nóng I resort Nha Trang - thư giãn và tắm khoáng (tự túc chi phí tắm bùn các loại). Buổi chiều, quý khách ghé tham quan Làng Yến Mai Sinh - tận mắt chiêm ngưỡng mô hình hang Yến, tìm hiểu quá trình chim Yến làm tổ, quy trình thu hái, tinh chế, nếm thử các sản phẩm làm từ tổ Yến.... Đoàn viếng Chùa Long Sơn cầu bình an cho năm mới. Nghỉ đêm tại Nha Trang.

 I resort Nha Trang

NGÀY 04: NHA TRANG - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Sau khi ăn sáng quý khách nghỉ ngơi đến giờ trả phòng. Đoàn khởi hành về thành phố, dừng chân ở Phan Rang mua đặc sản Ninh Thuận. Đến Tp. Hồ Chí Minh, xe đưa quý khách về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chuyến tham quan./.

Đặc sản Ninh Thuận

Ghi chú: Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(4979000 AS Decimal(18, 0)), 5, 3, 4)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (12, N'NHA TRANG - BIỂN GỌI - KHỞI HÀNH TỪ CẦN THƠ', 3, N'/Uploads/2023/11/951a0f7a-06df-4b59-b760-be223a595f0f.jpg', N'Đêm 01: KHỞI HÀNH ĐI NHA TRANG
19h30: Đón khách tại văn phòng Lữ hành Saigontourist Cần Thơ. Khởi hành đi Nha Trang. Đoàn nghỉ ngơi trên xe.
Ngày 01: LÀNG YẾN MAI SINH - I RESORT (Ăn ba bữa) 
06h30: Đoàn dùng điểm tâm sáng tại nhà hàng.
            Tiếp tục hành trình đến Nha Trang
10h00: Đến Nha Trang, tham quan Làng Yến Mai Sinh - tận mắt chiêm ngưỡng mô hình hang Yến, tìm hiểu quá trình chim Yến làm tổ, quy trình thu hái, tinh chế, nếm thử các sản phẩm làm từ tổ Yến...
12h00: Dùng cơm trưa.
14h00: Nhận phòng khách sạn nghỉ ngơi.
14h30: Xe đưa du khách viếng Tháp Bà Ponagar, tắm khoáng tại Trung Tâm Bùn Khoáng I-resort (chi phí tắm bùn tự túc).
18h00: Đoàn dùng cơm tối tại nhà hàng
Buổi tối Quý khách tự do khám phá thành phố về đêm. Nghỉ đêm tại Nha Trang.

Ngày 02: NHA TRANG – HÒN MUN – DẢO ROBINSON (Ăn sáng, trưa, tối)
07h00: Đoàn dùng điểm tâm sáng tại khách sạn
08h00: Xe đưa đoàn đến: CẢNG VĨNH TRƯỜNG NHA TRANG.
            Khởi hành đưa khách ngắm cảnh, tham quan hang chim Yến và tìm hiểu về loài chim Yến.
09h00: KHU RẠN SAN HÔ HÒN MUN (Xem san hô tại rạn san hô tự nhiên, không lên đảo): Bơi lặn ngắm San Hô bằng 3 phương pháp:
- Bơi bằng kính bơi 
- Đi tàu đáy kính (Chi Phí Tự Túc)
- Lặn biển bằng Bình Dưỡng Khí (Chi Phí Tự Túc)
12h30: ĐẢO ROBINSON - Tắm biển, nghỉ ngơi, chèo thuyền kayak
            Dùng cơm trưa
16h00: KẾT THÚC CHUYẾN DU NGOẠN VÀ TRỞ VỀ ĐẤT LIỀN.
18h00: Đoàn dùng cơm tối tại nhà hàng
            Nghỉ đêm tại Nha Trang.

Ngày 03: NHA TRANG – ĐIỂM ĐÓN BAN ĐẦU  (Ăn ba bữa)
06h00: Làm thủ tục trả phòng.
06h30: Đoàn dùng điểm tâm sáng. Khởi hành về điểm đón ban đầu trên đường về ghé tham quan mua sắm các loại đặc sản tại Phan Rang.   
11h00: Dùng cơm trưa. Tiếp tục lộ trình.
17h30: Ăn chiều tại Trung Lương.
Tối: Về tới điểm đón ban đầu, kết thúc chương trình.
        Chào tạm biệt và hẹn gặp lại!

*Điểm tham quan có thể sắp xếp lại cho phù hợp nhưng vẫn bảo đảm đầy đủ nội dung của chương trình.', CAST(4000000 AS Decimal(18, 0)), 5, 2, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (13, N'HCM-LIÊN TUYẾN SAPA-FANSIPAN-HÀ GIANG TỐI THỨ 3 HÀNG TUẦN', 6, N'/Uploads/2023/12/84c22ef7-71ef-4cb5-bb75-116254c3a8a6.jpg', N'TỐI NGÀY 1 | HỒ CHÍ MINH-HÀ NỘI
Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội, thời gian bay linh hoạt.
Ra tới sân bay Nội Bài, Xe đón quý khách về khách sạn Phố cổ Hà Nội nhận phòng, nghỉ ngơi.
Quý khách nghỉ đêm tại khách sạn.

NGÀY 1 | HÀ NỘI - NỘI BÀI - SAPA - MOANA       (ĂN SÁNG, TRƯA ,TỐI)
5h30: Trả phòng và ăn sáng.
06h00: Quý khách tự bắt taxi ra điểm hẹn Trần Quang Khải, Quý khách lên xe ô tô khởi hành đi Sapa (do từ đợt dịch covid xe không vào khách sạn đón được)
Xe đi theo hướng cao tốc Hà Nội - Lào Cai. Lưu ý: Khi đi Sapa chúng tôi sẽ bố trí đi bằng xe giường nằm. Đây là xe bus chuyên phục vụ khách du lịch đi Sapa và ngược lại. Không có HDV trên xe.
13h00: Tới Sapa, Quý khách về khách sạn ăn trưa sau đó nhận phòng khách sạn, nghỉ ngơi.
Chiều: Hướng dẫn viên đón và đưa Quý khách bách bộ đến với cảnh điểm Moana với các công trình nhân tạo nhưng được bố trí hài hòa với thiên nhiên tạo nên một phong cảnh vừa độc, vừa lạ và vừa đẹp. Khu check-in cách nhà thờ đá 500m, với không gian trải nghiệm hơn 10.000m2, view ôm trọn dãy Hoàng Liên Sơn và đỉnh Fansipan hùng vĩ. Nơi đây gồm bảy hạng mục, tạo sức hút với giới trẻ bởi nhiều tiểu cảnh độc lạ. Đó là cổng trời Bali, tượng cô gái Moana, hồ vô cực, bàn tay vàng, xích đu tử thần, cây cô đơn, khu cà phê. 
18h00: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa, tìm hiểu đêm chợ tình Sapa vào các tối thứ 7 hàng tuần hay đơn giản là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng để sưởi ấm cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 2 | SAPA - FANSIPAN - BẢN CÁT CÁT         (ĂN SÁNG ,TRƯA ,TỐI)
07h00: Quý khách ăn sáng tại khách sạn và nghỉ ngơi. Nhâm nhi ly cafe buổi sáng tại nhà hàng.
08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách. Sau đó tiếp tục chinh phục 600 bậc đá lên đỉnh Fansipan trên độ cao 3.143m - nóc nhà của Đông Dương.
() Lưu ý: Hiện tại Quý khách cũng có thể có những phương án khác để lên đỉnh Fansipan vừa được trải nghiệm cảm giác mới lạ, vừa không phải mất sức đi bộ nhiều (phù hợp với người lớn tuổi) đó chính là:
     Tàu điện Mường Hoa đưa Quý khách từ Sapa đến thẳng Ga cáp treo Fansipan (phí tự túc)
     Tàu hỏa leo núi đưa Quý khách từ Ga trên của cáp treo Fansipan lên đỉnh Fansipan (phí tự túc)
11h30: Quay lại thị trấn Sapa ăn trưa, sau đó về khách sạn nghỉ ngơi.
Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông, thăm thác Tiên Sa. Thưởng thức chương trình biểu diễn văn nghệ truyền thống tại nhà máy thủy điện cũ.
18h00: Ăn tối. Buổi tối tự do vui chơi. Quý khách có thể đi tắm lá thuốc Dao đỏ để thư giãn sau một ngày thăm quan để thư giãn và hồi phục sức khỏe (phí tự túc). Nghỉ đêm tại Sapa.

NGÀY 3 | SAPA - HÀ GIANG - QUẢN BẠ - YÊN MINH    (ĂN SÁNG,TRƯA, TỐI)
06h30: Quý khách ăn sáng tại khách sạn. Trả phòng sau đó lên xe ô tô (xe khách chuyên tuyến) đi Hà Giang. Quý khách ăn trưa tại nhà hàng trên đường di chuyển.
Do điều kiện thực tế còn nhiều hạn chế của các tuyến vận tải hành khách khu vực miền núi. Xe ô tô di chuyển từ Sapa qua Hà Giang có thể là xe limousine, xe ghế ngồi thông thường hoặc xe giường nằm phụ thuộc hoàn toàn vào kế hoạch chạy xe của các nhà xe. Điều này rất mong Quý khách hàng hiểu và thông cảm.
13h30: Tới TP Hà Giang, Quý khách tự do chụp hình tại Km0 của Hà Giang. Sau đó xe ô tô của chúng tôi tiếp tục đón Quý khách từ thành phố Hà Giang tiếp tục hành trình chinh phục Cao nguyên đá Đồng Văn.
16h30: Dừng chân tại điểm dừng chân Cổng Trời Quản Bạ chụp hình Núi đôi Cô Tiên hay còn gọi là Núi đôi Quản Bạ và toàn cảnh thị trấn Tam Sơn từ trên cao.
17h30: Đến Yên Minh, Quý khách nhận phòng nghỉ ngơi.
18h30: Ăn tối. Buổi tối tự do. Nghỉ đêm tại Yên Minh.

NGÀY 4 | YÊN MINH - LŨNG CÚ - MÃ PÌ LÈNG - ĐỒNG VĂN    (ĂN SÁNG ,TRƯA , TỐI)
06h00: Ăn sáng và khởi hành đi chiêm ngưỡng những cảnh đẹp hùng vỹ của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn. Dọc đường đi Quý khách dừng ghé thăm:
-    Phố Cáo với những ngôi nhà đặc trưng của người H''mông bởi những hàng rào đá cung quanh nhà.
-    Thăm bản Sủng Là thăm ngôi nhà Cổ của người H''mông với tường trình bằng đất - nơi đã được sử dụng làm bối cảnh để quay bộ phim nhựa "Chuyện của Pao" năm 2006 của đạo diễn Ngô Quang Hải được chuyển thể từ truyện ngắn "Tiếng đàn môi sau bờ rào đá" của nhà văn Đỗ Bích Thủy đã giành được 4 giải Cánh diều vàng. Quý khách dừng chân nghỉ ngơi và chụp hình hoa tam giác mạch gần dốc chín khoanh.
-    Thăm Cột Cờ Lũng Cũ - nơi địa đầu Tổ quốc, điểm có vĩ độ cao nhất trên bản đồ của Việt Nam.
12h00: Quay lại thị trấn Đồng Văn ăn trưa. Sau bữa trưa, Quý khách tiếp tục:
-    Chinh phục đèo Mã Pì Lèng trên đường đi Mèo Vạc, cũng là đoạn đẹp nhất trên con đường mang tên "Đường Hạnh phúc".
-    Chụp hình với vẻ đẹp hùng vĩ của hẻm vực Mã Pì Lèng sâu 800m - nơi địa hình bị chia cắt sâu nhất của Việt Nam.
-    Du thuyền trên Sông Nho Quế: Lên thuyền ngược dòng Nho Quế đến với Hẻm Tu sản, là hẻm vực sâu nhất của Việt Nam nằm trên dòng sông Nho Quế. Dòng Nho Quế chảy vào Việt Nam từ địa phận thôn Séo Lủng, xã Lũng Cú, huyện Đồng Văn đi qua Hẻm núi Tu Sản chạy men theo chân đèo Mã Pì Lèng (Quý khách tự túc phí xe ôm xuống bến thuyền và chi phí đi thuyền).
17h00: Về lại thị trấn Đồng Văn, nhận phòng khách sạn nghỉ ngơi.
18h30: Ăn tối tại nhà hàng. Buổi tối Quý khách tự do khám phá Phố Cổ Đồng Văn, địa danh đã tồn tại cùng với thời gian gần một thế kỷ và ngồi nhâm nhi thưởng thức một ly cà phê tại quán Cafe phố Cổ (phí tự túc). Nghỉ đêm tại thị trấn Đồng Văn.

NGÀY 5 | ĐỒNG VĂN - NHÀ VƯƠNG - HÀ GIANG - HÀ NỘI - HCM   (ĂN SÁNG ,TRƯA )
Sáng: Quý khách dậy để chứng kiến cảnh bà con nhiều thành phần dân tộc náo nức từ các nèo đường tập trung về với chợ phiên Đồng Văn để tham gia phiên họp chợ diễn ra vào sáng chủ nhật hàng tuần.
07h00: Ăn sáng và lên xe về Hà Nội. Trên đường ghé thăm Dinh Vua Mèo - Vương Chính Đức nằm trong một thung lũng của xã Sà Phìn, đây là dòng họ giàu có và quyền uy nhất Châu Đồng Văn vào đầu thế kỷ 20. 
12h00: Đoàn ăn trưa tại thành phố Hà Giang. Sau bữa trưa tiếp tục lên xe về Hà Nội.
19h30: Về đến Hà Nội, Xe đưa quý khách vào sân bay Nội Bài, Quý khách tự làm thủ tục check in, đáp chuyến bay về TP.HCM sau 21h30. kết thúc chương trình. Hẹn gặp lại Quý khách.', CAST(10490000 AS Decimal(18, 0)), 18, 2, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (14, N'HCM-ĐÔNG BẮC (HÀ GIANG-CAO BẰNG) TỐI THỨ 3 HÀNG TUẦN', 5, N'/Uploads/2023/12/46bf88ae-dde3-4f0e-a29a-3218d599caa6.jpg', N'TỐI NGÀY 1 | HỒ CHÍ MINH - HÀ NỘI
Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội, thời gian bay linh hoạt.
Ra tới sân bay Nội Bài, Xe đón quý khách về khách sạn Phố cổ Hà Nội nhận phòng, nghỉ ngơi.
Quý khách nghỉ đêm tại khách sạn.

NGÀY 1 | HÀ NỘI - HÀ GIANG - QUẢN BẠ - YÊN MINH     (ĂN,TRƯA,TỐI)
06h00: Ăn sáng và trả phòng. Xe ô tô và hướng dẫn viên đón Quý khách tại điểm hẹn trong khu vực Phố Cổ và Nhà hát lớn khởi hành cho chuyến đi du lịch Hà Giang. Nghỉ ngơi, tự do ăn sáng (nếu không kịp ăn tại khách sạn) tại ngã 3 Kim Anh hoặc trên cao tốc.
11h00: Quý khách ăn trưa tại thị trấn Tân Yên (Hàm Yên, Tuyên Quang).
14h00: Dừng chân ghé thăm Đền Đôi Cô Cầu Má linh thiêng nằm ngay bên bờ Sông Lô.
15h00: Đến thành phố Hà Giang, chụp hình kỷ niệm tại Km0 của Hà Giang.
16h30: Dừng chân tại điểm dừng chân Cổng Trời Quản Bạ chụp hình Núi đôi Cô Tiên hay còn gọi là Núi đôi Quản Bạ và toàn cảnh thị trấn Tam Sơn từ trên cao.
17h30: Đến Yên Minh, Quý khách nhận phòng nghỉ ngơi.
18h30: Ăn tối. Buổi tối tự do. Nghỉ đêm tại Yên Minh.

NGÀY 2 | YÊN MINH - ĐỒNG VĂN - MÈO VẠC - BẢO LẠC (ĂN SÁNG,TRƯA,TỐI)
06h00: Ăn sáng và khởi hành đi chiêm ngưỡng những cảnh đẹp hùng vỹ của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn. Dọc đường đi Quý khách dừng ghé thăm:
-    Phố Cáo với những ngôi nhà đặc trưng của người H''mông bởi những hàng rào đá cung quanh nhà.
-    Thăm bản Sủng Là thăm ngôi nhà Cổ của người H''mông với tường trình bằng đất - nơi đã được sử dụng làm bối cảnh để quay bộ phim nhựa "Chuyện của Pao" năm 2006 của đạo diễn Ngô Quang Hải được chuyển thể từ truyện ngắn "Tiếng đàn môi sau bờ rào đá" của nhà văn Đỗ Bích Thủy đã giành được 4 giải Cánh diều vàng. Quý khách dừng chân nghỉ ngơi và chụp hình hoa tam giác mạch gần dốc chín khoanh.
-    Dinh Vua Mèo - Vương Chính Đức nằm trong một thung lũng của xã Sà Phìn, đây là dòng họ giàu có và quyền uy nhất Châu Đồng Văn vào đầu thế kỷ 20. 
-    Thăm Cột Cờ Lũng Cũ - nơi địa đầu Tổ quốc, điểm có vĩ độ cao nhất trên bản đồ của Việt Nam.
12h30: Ăn trưa tại nhà hàng.
Chiều: Tiếp tục thăm quan:
-    Phố Cổ Đồng Văn đã tồn tại cùng với thời gian gần một thế kỷ. Quý khách có thể ngồi nhâm nhi thưởng thức một ly cà phê tại quán Café phố Cổ (chi phí tự túc). 
-    Chinh phục đèo Mã Pì Lèng dài 16km nối Đồng Văn với Mèo Vạc, cũng là đoạn đẹp nhất trên con đường mang tên "Đường Hạnh phúc".
-    Chụp hình với vẻ đẹp hùng vĩ của Hẻm Tu Sản (hay còn gọi là hẻm vực Mã Pì Lèng hoặc hẻm vực sông Nho Quế) ở độ cao 1500m so với mực nước biển và độ sâu trung bình 800m - nơi địa hình bị chia cắt sâu nhất của Việt Nam.
-    Du thuyền trên Sông Nho Quế: Lên thuyền ngược dòng Nho Quế đến với Hẻm Tu sản, là hẻm vực sâu nhất của Việt Nam nằm trên dòng sông Nho Quế. Dòng Nho Quế chảy vào Việt Nam từ địa phận thôn Séo Lủng, xã Lũng Cú, huyện Đồng Văn đi qua Hẻm núi Tu Sản chạy men theo chân đèo Mã Pì Lèng (Lưu ý: Chưa bao gồm chi phí đi Thuyền 100.000đ - 150.000đ/khách tùy thuộc số lượng thực tế của ngày khởi hành. Và chưa bao gồm chi phí đi xe ôm 200.000đ/khách).
19h00: Về tới Bảo Lạc, ăn tối sau đó nhận phòng khách sạn nghỉ ngơi. Buổi tối tự do. Nghỉ đêm tại Bảo Lạc.

NGÀY 3 | BẢO LẠC - BẢN GIỐC - NGƯỜM NGAO - CAO BẰNG     (ĂN SÁNG,TRƯA.TỐI)
06h00: Trả phòng sau đó ăn sáng và lên xe khởi hành đi Cao Bằng. Trên đường đi Quý khách dừng chân chụp hình với những cảnh đẹp trên đường.
11h00: Ăn trưa tại Quảng Uyên. Sau bữa trưa, Quý khách tiếp tục lên xe đi Bản Giốc. Buổi chiều thăm quan:
-    Thác Bản Giốc, thác có độ cao 53m, chia làm 3 tầng được coi là thác đẹp nhất Việt Nam và là thác lớn nhất Đông Nam Á. Đây là thác nước lớn thứ 4 trong top10 thác nước trên thế giới nằm trên đường biên giới giữa hai quốc gia. 
-    Thăm quan động Ngườm Ngao (động Hổ), một trong những hang động đẹp nhất không chỉ của Cao Bằng mà của cả miền Bắc.
-    Thăm làng Rèn Phúc Sen với nghề làm dao nổi tiếng tại Quảng Uyên.
18h30: Về đến thành phố Cao Bằng. Ăn tối sau đó về nhận phòng khách sạn nghỉ ngơi. Buổi tối Quý khách tự do thăm quan mua sắm tại khu vực chợ trung tâm thành phố, đặ biệt là hạt dẻ. Nghỉ đêm tại Cao Bằng.

NGÀY 4 | CAO BẰNG - HÀ NỘI - HCM   (ĂN SÁNG)
Sáng: Quý khách tự do nghỉ ngơi, thăm quan thành phố.
09h00: Xe đưa Quý khách ra bến xe Cao Bằng và lên xe về Hà Nội. Trên đường đi Quý khách ngắm nhìn những con đèo với cảnh đẹp của núi rừng như: đèo Tài Hồ Sìn, đèo Cao Bắc, đèo Khau Khang, đèo Gió, đèo Giàng... Buổi trưa Quý khách tự do ăn uống tại điểm nghỉ ngơi trên đường về Hà Nội.
16h00: Về đến bến xe Mỹ Đình. Xe đưa quý khách ra sân bay Nội Bài, Quý khách đáp chuyến bay sau 19h00 về TP.HCM. Kết thúc chương trình. Tạm biệt và hẹn gặp lại Quý khách!
', CAST(8990000 AS Decimal(18, 0)), 15, 4, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (15, N'HCM- HÀ GIANG - CAO NGUYÊN ĐÁ ĐỒNG VĂN-HCM', 4, N'/Uploads/2023/12/bd371d44-4c00-4dbe-a2a5-7eb45f628078.png', N'NGÀY 1 | HCM - HÀ NỘI
Chiều: Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội, Tới sân bay Nội Bài, Xe đón quý khách về khách sạn phố cổ Hà Nội, Quý khách nghỉ đêm tại Hà Nội.

NGÀY 2 | HÀ NỘI - HÀ GIANG - QUẢN BẠ - YÊN MINH          (ĂN SÁNG / TRƯA / TỐI)
5h30: Trả phòng và ăn sáng.
06h00-06h30: Xe ô tô và hướng dẫn viên đón Quý khách tại điểm hẹn trong khu vực Phố Cổ và Nhà hát lớn khởi hành cho chuyến đi du lịch Hà Giang (Nếu xe không vào phố cổ đón được, quý khách vui lòng đi taxi ra điểm tập trung). Buổi sáng, xe sẽ dừng lại cho Quý khách nghỉ ngơi và tự do ăn sáng (trong trường hợp quý khách không kịp ăn sáng tại khách sạn) tại nhà hàng khu vực Ngã 3 Kim Anh (đầu cao tốc) hoặc điểm dừng nghỉ trên cao tốc.
11h00: Quý khách ăn trưa tại thị trấn Tân Yên (Hàm Yên, Tuyên Quang).
14h00: Dừng chân ghé thăm Đền Đôi Cô Cầu Má linh thiêng nằm ngay bên bờ Sông Lô. Đây là một trong những ngôi đền linh thiêng bậc nhất của vùng Đông Bắc.
15h00: Đến thành phố Hà Giang, chụp hình kỷ niệm tại Km0 của Hà Giang. Điểm giao nhau của QL2, QL34 và QL4C hay còn gọi là Con đường hạnh phúc.
16h30: Dừng chân tại điểm dừng chân Cổng Trời Quản Bạ chụp hình Núi đôi Cô Tiên hay còn gọi là Núi đôi Quản Bạ và toàn cảnh thị trấn Tam Sơn từ trên cao.
17h30: Đến Yên Minh, Quý khách nhận phòng nghỉ ngơi.
18h30: Ăn tối. Buổi tối tự do. Nghỉ đêm tại Yên Minh.

NGÀY 3 | YÊN MINH - LŨNG CÚ - MÃ PÌ LÈNG - ĐỒNG VĂN              (ĂN SÁNG / TRƯA / TỐI)
06h00: Ăn sáng và khởi hành đi chiêm ngưỡng những cảnh đẹp hùng vĩ của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn. Dọc đường đi Quý khách dừng ghé thăm:
-    Phố Cáo với những ngôi nhà đặc trưng của người H''mông bởi những hàng rào đá cung quanh nhà.
-    Thăm bản Sủng Là thăm ngôi nhà Cổ của người H''mông với tường trình bằng đất - nơi đã được sử dụng làm bối cảnh để quay bộ phim nhựa "Chuyện của Pao" năm 2006 của đạo diễn Ngô Quang Hải được chuyển thể từ truyện ngắn "Tiếng đàn môi sau bờ rào đá" của nhà văn Đỗ Bích Thủy đã giành được 4 giải Cánh diều vàng. Quý khách dừng chân nghỉ ngơi và chụp hình hoa tam giác mạch gần dốc chín khoanh.
-    Thăm Cột Cờ Lũng Cũ - nơi địa đầu Tổ quốc, điểm có vĩ độ cao nhất trên bản đồ của Việt Nam.
12h00: Quay lại thị trấn Đồng Văn ăn trưa. Sau bữa trưa, Quý khách tiếp tục:
-    Chinh phục đèo Mã Pì Lèng trên đường đi Mèo Vạc, cũng là đoạn đẹp nhất trên con đường mang tên "Đường Hạnh phúc".
-    Chụp hình với vẻ đẹp hùng vĩ của hẻm vực Mã Pì Lèng sâu 800m - nơi địa hình bị chia cắt sâu nhất của Việt Nam.
-    Du thuyền trên Sông Nho Quế: Lên thuyền xuôi dòng Nho Quế đến với Hẻm Tu sản, là hẻm vực sâu nhất của Việt Nam nằm trên dòng sông Nho Quế. Dòng Nho Quế chảy vào Việt Nam từ địa phận thôn Xéo Lủng, xã Lũng Cú, huyện Đồng Văn đi qua Hẻm núi Tu Sản chạy men theo chân đèo Mã Pì Lèng (chưa bao gồm combo xe ôm + thuyền: 350.000đ/khách).
17h00: Về lại thị trấn Đồng Văn, nhận phòng khách sạn nghỉ ngơi.
18h30: Ăn tối tại nhà hàng. Buổi tối Quý khách tự do khám phá Phố Cổ Đồng Văn, địa danh đã tồn tại cùng với thời gian gần một thế kỷ và ngồi nhâm nhi thưởng thức một ly cà phê tại quán Cafe phố Cổ (phí tự túc). Nghỉ đêm tại thị trấn Đồng Văn.

NGÀY 4 | ĐỒNG VĂN - NHÀ VƯƠNG - HÀ GIANG - HÀ NỘI - HCM  (ĂN SÁNG / TRƯA )
Sáng: Quý khách dậy để chứng kiến cảnh bà con nhiều thành phần dân tộc náo nức từ các nèo đường tập trung về với chợ phiên Đồng Văn để tham gia phiên họp chợ diễn ra vào sáng chủ nhật hàng tuần.
07h00: Ăn sáng và lên xe về Hà Nội. Trên đường ghé thăm Dinh Vua Mèo - Vương Chính Đức nằm trong một thung lũng của xã Sà Phìn, đây là dòng họ giàu có và quyền uy nhất Châu Đồng Văn vào đầu thế kỷ 20. 
12h00: Đoàn ăn trưa tại thành phố Hà Giang. Sau bữa trưa tiếp tục lên xe về Hà Nội.
19h30: Về đến Hà Nội, Xe đưa quý khách vào sân bay, Quý khách tự làm thủ tục check in, đáp chuyến bay sau 21h00 về TP.HCM. kết thúc chương trình. Hẹn gặp lại Quý khách.', CAST(5990000 AS Decimal(18, 0)), 15, 6, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (16, N'HCM-ĐÔNG BẮC SỐ 2  (HÀ GIANG-CAO BẰNG-BẮC CẠN) TỐI THỨ 3 HÀNG TUẦN', 6, N'/Uploads/2023/12/b46c1893-0901-4f3d-9fa1-55e210e35013.png', N'TỐI NGÀY 1 | HCM - HÀ NỘI
Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội, thời gian bay linh hoạt.
Ra tới sân bay Nội Bài, Xe đón quý khách về khách sạn Phố cổ Hà Nội nhận phòng, nghỉ ngơi.
Quý khách nghỉ đêm tại khách sạn.

NGÀY 1 | HÀ NỘI - HÀ GIANG - QUẢN BẠ - YÊN MINH    (ĂN,SÁNG,TRƯA,TỐI)
06h00: Ăn sáng và trả phòng. Xe ô tô và hướng dẫn viên đón Quý khách tại điểm hẹn trong khu vực Phố Cổ và Nhà hát lớn khởi hành cho chuyến đi du lịch Hà Giang. Nghỉ ngơi, tự do ăn sáng (nếu không kịp ăn tại khách sạn) tại ngã 3 Kim Anh hoặc trên cao tốc.
11h00: Quý khách ăn trưa tại thị trấn Tân Yên (Hàm Yên, Tuyên Quang).
14h00: Dừng chân ghé thăm Đền Đôi Cô Cầu Má linh thiêng nằm ngay bên bờ Sông Lô.
15h00: Đến thành phố Hà Giang, chụp hình kỷ niệm tại Km0 của Hà Giang.
16h30: Dừng chân tại điểm dừng chân Cổng Trời Quản Bạ chụp hình Núi đôi Cô Tiên hay còn gọi là Núi đôi Quản Bạ và toàn cảnh thị trấn Tam Sơn từ trên cao.
17h30: Đến Yên Minh, Quý khách nhận phòng nghỉ ngơi.
18h30: Ăn tối. Buổi tối tự do. Nghỉ đêm tại Yên Minh.

NGÀY 2 | YÊN MINH - ĐỒNG VĂN - MÈO VẠC - BẢO LẠC     (ĂN SÁNG,TRƯA,TỐI)
06h00: Ăn sáng và khởi hành đi chiêm ngưỡng những cảnh đẹp hùng vỹ của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn. Dọc đường đi Quý khách dừng ghé thăm:
-    Phố Cáo với những ngôi nhà đặc trưng của người H''mông bởi những hàng rào đá cung quanh nhà.
-    Thăm bản Sủng Là thăm ngôi nhà Cổ của người H''mông với tường trình bằng đất - nơi đã được sử dụng làm bối cảnh để quay bộ phim nhựa "Chuyện của Pao" năm 2006 của đạo diễn Ngô Quang Hải được chuyển thể từ truyện ngắn "Tiếng đàn môi sau bờ rào đá" của nhà văn Đỗ Bích Thủy đã giành được 4 giải Cánh diều vàng. Quý khách dừng chân nghỉ ngơi và chụp hình hoa tam giác mạch gần dốc chín khoanh.
-    Dinh Vua Mèo - Vương Chính Đức nằm trong một thung lũng của xã Sà Phìn, đây là dòng họ giàu có và quyền uy nhất Châu Đồng Văn vào đầu thế kỷ 20. 
-    Thăm Cột Cờ Lũng Cũ - nơi địa đầu Tổ quốc, điểm có vĩ độ cao nhất trên bản đồ của Việt Nam.
12h30: Ăn trưa tại nhà hàng.
Chiều: Tiếp tục thăm quan:
-    Phố Cổ Đồng Văn đã tồn tại cùng với thời gian gần một thế kỷ. Quý khách có thể ngồi nhâm nhi thưởng thức một ly cà phê tại quán Café phố Cổ (chi phí tự túc). 
-    Chinh phục đèo Mã Pì Lèng dài 16km nối Đồng Văn với Mèo Vạc, cũng là đoạn đẹp nhất trên con đường mang tên "Đường Hạnh phúc".
-    Chụp hình với vẻ đẹp hùng vĩ của Hẻm Tu Sản (hay còn gọi là hẻm vực Mã Pì Lèng hoặc hẻm vực sông Nho Quế) ở độ cao 1500m so với mực nước biển và độ sâu trung bình 800m - nơi địa hình bị chia cắt sâu nhất của Việt Nam.
-    Du thuyền trên Sông Nho Quế: Lên thuyền ngược dòng Nho Quế đến với Hẻm Tu sản, là hẻm vực sâu nhất của Việt Nam nằm trên dòng sông Nho Quế. Dòng Nho Quế chảy vào Việt Nam từ địa phận thôn Séo Lủng, xã Lũng Cú, huyện Đồng Văn đi qua Hẻm núi Tu Sản chạy men theo chân đèo Mã Pì Lèng (Lưu ý: Chưa bao gồm chi phí thuyền 150.000đ/khách và chi phí đi xe ôm 200.000đ/khách).
19h00: Về tới Bảo Lạc, ăn tối sau đó nhận phòng khách sạn nghỉ ngơi. Buổi tối tự do. Nghỉ đêm tại Bảo Lạc.

NGÀY 3 | BẢO LẠC - BẢN GIỐC - NGƯỜM NGAO - CAO BẰNG      (ĂN SÁNG,TRƯA,TỐI)
06h00: Trả phòng sau đó ăn sáng và lên xe khởi hành đi Cao Bằng. Trên đường đi Quý khách dừng chân chụp hình với những cảnh đẹp trên đường.
11h00: Ăn trưa tại Quảng Uyên. Sau bữa trưa, Quý khách tiếp tục lên xe đi Bản Giốc. Buổi chiều thăm quan:
-    Thác Bản Giốc, thác có độ cao 53m, chia làm 3 tầng được coi là thác đẹp nhất Việt Nam và là thác lớn nhất Đông Nam Á. Đây là thác nước lớn thứ 4 trong top10 thác nước trên thế giới nằm trên đường biên giới giữa hai quốc gia. 
-    Thăm quan động Ngườm Ngao (động Hổ), một trong những hang động đẹp nhất không chỉ của Cao Bằng mà của cả miền Bắc.
-    Thăm làng Rèn Phúc Sen với nghề làm dao nổi tiếng tại Quảng Uyên.
18h30: Về đến thành phố Cao Bằng. Ăn tối sau đó về nhận phòng khách sạn nghỉ ngơi. Buổi tối Quý khách tự do thăm quan mua sắm tại khu vực chợ trung tâm thành phố, đặ biệt là hạt dẻ. Nghỉ đêm tại Cao Bằng.

NGÀY 4 | CAO BẰNG - PÁC BÓ - BA BỂ    (ĂN SÁNG,TRƯA,TỐI)
06h00: Trả phòng sau đó ăn sáng và lên xe khởi hành đi Pác Bó.
08h00: Đến Pác Bó, Quý khách thăm quan Khu di tích lịch sử Pắc Bó. Vào thăm nơi ở và hoạt động của Chủ tịch Hồ Chí Minh trong những năm kháng chiến từ 1941 đến 1945, đoàn chụp hình lưu niệm tại Suối Lê Nin - Núi Các Mác, thăm hang Cốc Bó.
10h00: Rời Pác Bó đi Ba Bể. Trên đường đi Quý khách ngắm nhìn những con đèo với cảnh đẹp của núi rừng như: đèo Tài Hồ Sìn, đèo Cao Bắc, đèo Khau Khang, đèo Gió. 
12h00: Dừng xe nghỉ ngơi và ăn trưa trên Đèo Gió.
16h00: Đến Ba Bể, Nhận phòng tại nhà sàn của người Tày ven Hồ Ba Bể.
18h00: Ăn tối và nghỉ đêm tại Ba Bể. Buổi tối, Quý khách có thể lựa chọn giao lưu văn nghệ, đốt lửa trại hoặc nghe biểu diễn hát Then của người Tày (chi phí tự túc).

NGÀY 5 | HỒ BA BỂ - HÀ NỘI - HCM          (ĂN SÁNG,TRƯA)
07h00: Ăn sáng tại nhà sàn sau đó nghỉ ngơi thư giãn ngắm cảnh hồ trong sương sớm. Quý khách tự do nghỉ ngơi hoặc dạo bộ quanh hồ trước khi trả phòng để về Hà Nội.
08h00: Quý khách bách bộ lên ra bến thuyền và xuống thuyền thăm quan Hồ Ba Bể vừa thư giãn ngắm cảnh hồ, tự do chụp hình và ghé thăm các điểm sau:
-    Ao tiên: Ao Tiên nằm ở góc hồ ba của hồ Ba Bể, là một hồ nước nhỏ nằm lọt giữa một ngon núi nhô cao trên mặt hồ. Tương truyền là nơi xưa kia các vị thần tiên thường ngồi chơi cờ ở đây.
-    Đền An Mạ: Đền nằm trên một ngọn núi nhỏ giữa lòng hồ. Tương truyền, trong chiến tranh phong kiến thời Lê - Mạc, các tướng nhà Mạc đã thất trận, chạy đến Động Puông rồi tuẫn tiết tại đó. Cảm kích tinh thần trung liệt, người dân đã dựng đền thờ họ Mạc, song lo bị quan quân nhà Lê phát hiện dẹp bỏ nên đã đổi tên thành Đền An Mạ. Hai từ “An Mạ” theo tiếng dân tộc Tày có nghĩa là “mồ yên mả đẹp”, nơi yên nghỉ của các trung thần họ Mạc.
-    Đảo Bà Góa - một hòn đảo nhỏ xinh xắn nằm ngay vị trí trong tâm của Hồ, gắn liền với sự tích hình thành của Hồ. Thuyền đi chậm một vòng quanh đảo để Quý khách chụp hình.
11h30: Ăn trưa tại nhà hàng. Sau bữa trưa, Quý khách lên xe về Hà Nội. 
17h30: Về đến Hà Nội. Xe đưa quý khách về sân bay, Quý khách đáp chuyến bay sau 20h00 về TP.HCM. Kết thúc chương trình. Tạm biệt và hẹn gặp lại Quý khách!', CAST(10990000 AS Decimal(18, 0)), 15, 6, 8)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (17, N'HCM-CITY HÀ NỘI-HẠ LONG-SAPA-FANSIPAN', 4, N'/Uploads/2023/12/b29494dc-1cd2-4567-8757-60e54db57efd.png', N'NGÀY 1 | HÀ NỘI CITY TOUR        (ĂN - / TRƯA ) 
04h30: Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội lúc 6h00 sáng
Ra tới sân bay Nội Bài lúc 8h00, Xe đón quý khách về trung tâm Phố cổ Hà Nội, quý khách gặp HDV và nhập đoàn. Đoàn thăm quan:
-    Chùa Trấn Quốc - nằm trên một hòn đảo phía Đông của Hồ Tây (quận Tây Hồ). Chùa có lịch sử gần 1500 năm cùng với cây Bồ đề hàng trăm năm tuổi có nguồn gốc từ Ấn Độ, được coi là Chùa lâu đời nhất ở Thăng Long - Hà Nội. Kiến trúc chùa có sự kết hợp hài hoà giữa tính uy nghiêm, cổ kính với cảnh quan thanh nhã giữa nền tĩnh lặng của một hồ nước mênh mang. Là trung tâm Phật giáo của kinh thành Thăng Long vào thời nhà Lý và nhà Trần.
-    Quần thể di tích Lăng chủ tịch Hồ Chí Minh (gồm Lăng và khu vực nhà sàn) - Nơi mà vị lãnh tụ vĩ đại đã sống và làm việc cho đến những năm cuối đời. Tại đây, Quý khách sẽ có cơ hội tìm hiểu cuộc sống giản dị của Bác. Ngoài ra, Quý khách sẽ có cơ hội ghé qua chùa Một Cột để chiêm ngưỡng một trong 4 biểu tượng của Hà Nội. 
Lưu ý: Với các ngày thứ 2 và 6, Ban quản lý Lăng sẽ tiến hành bảo trì Lăng, Quý khách sẽ chỉ tham quan phía bên ngoài Lăng, sau đó sẽ đi thăm khu vực nhà sàn, ao cá và chùa Một Cột.
-    Văn Miếu - Quốc Tử Giám, nơi được coi là trường đại học đầu tiên tại Việt Nam. Đó là một kiến trúc cổ, được xây dựng với quy mô khá lớn được xây dựng từ tháng 10 năm 1073 và tồn tại cho đến ngày nay. Văn Miếu được xây dựng để thờ Khổng Tử, người sáng lập của Nho giáo và Chu Văn An - hiệu trưởng của Quốc Tử Giám - đại diện cho triết lý đạo đức cao của giáo dục Việt Nam.
Trưa: Đoàn ăn trưa tại nhà hàng trong khu vực Phố Cổ và nghỉ ngơi. Quý khách có thể tranh thủ ít phút sau bữa ăn để dạo bộ ngắm nhìn và tìm hiểu về những cái tên của Hà Nội 36 phố phường…
Chiều: Quý khách tiếp tục tham quan:
-    Với các ngày thứ 2,4,6 xe sẽ đưa quý khách tới thăm Làng Gốm Bát Tràng - một trong 2 làng gốm nổi tiếng của Hà Nội. Tại đây Quý khách sẽ được tìm hiểu về lịch sử, xuất xứ của làng. Quá trình làm gốm và nét đặc biệt làm nên thương hiệu Bát Trang nổi tiếng.
-    Với các ngày thứ 3,5,7 và chủ nhật xe sẽ đưa quý khách tới Bảo tàng Dân tộc học, nơi lưu giữ và trưng bày nhiều hiện vật văn hoá của cả 54 dân tộc Việt Nam.
-    Thăm Hồ Gươm hay còn gọi là Hồ Hoàn Kiếm, tìm hiểu về kiến trúc của Việt Nam và Pháp xung quanh khu vực hồ. Quý khách sẽ vào thăm quan đền Ngọc Sơn thờ thánh Văn Xương và Trần Hưng Đạo - vị tướng nổi danh trong lịch sử Việt Nam và thế giới và Cầu Thê Húc.
16h00: Xe đưa quý khách về khách sạn nhận phòng, nghỉ ngơi. Quý khách tự túc ăn tối khám phá ẩm thực phố Cổ Hà Nội. Buổi tối Quý khách tự do dạo bộ khám phá phố Cổ về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 2 |  HÀ NỘI - VỊNH HẠ LONG          (ĂN SÁNG / TRƯA)
Sáng: Quý khách ăn sáng tại khách sạn.
08h30-09h00: Xe và hướng dẫn viên đón Quý khách tại các khách sạn khu vực trung tâm phố Cổ và Nhà hát lớn khởi hành cho chuyến đi thăm Vịnh Hạ Long. 
11h30-12h00: Đến cảng tàu Hạ Long, Đoàn tập trung tại nhà chờ theo sự hướng dẫn của hướng dẫn viên đợi mua vé và phát vé cho Quý khách để lên tàu bắt đầu hành trình khám phá Vịnh. Tàu sẽ đi qua rất nhiều các hòn đảo lớn nhỏ với nhiều hình dáng khác nhau, trong đó có Hòn Gà Chọi - biểu tượng của HạLong … Quý khách thưởng thức bữa trưa trên tàu.
14h00: Đến đảo Bồ Hòn. Quý khách thăm quan Hang Sửng Sốt - Một trong những hang động đẹp nhất vịnh Hạ Long. Tiếp theo, Quý khách sẽ tự do chèo Kayak hoặc đi thuyền nan thăm Hang Luồn. Sau 30 phút chèo Kayak, Quý khách lên tàu để đến với đảo Titop. Quý khách có thể tắm biển tại bãi tắm Titop với bãi cát trắng, hoặc thử trekking leo lên đỉnh núi Titop ngắm nhìn toàn cảnh Vịnh Hạ Long.
16h30: Quý khách quay trở lại tàu. Tàu sẽ di chuyển đưa Quý khách về lại Cảng. Quý khách có thể tắm nắng trên boong tàu, nghe nhạc và thư giãn, hòa mình vào thiên nhiên của Vịnh Hạ Long.
17h30-18h00: Tàu cập bến. Tạm biệt Vịnh Hạ Long, Quý khách lên xe về Hà Nội.
20h00-20h30: Về tới Hà Nội, Quý khách về khách sạn, nghỉ ngơi. Tự do ăn tối.
Nghỉ đêm tại khách sạn.
Lưu ý quan trọng: Thời gian đi thăm quan Vịnh Hạ Long có thể được điều chỉnh phù hợp với điều kiện của từng ngày khởi hành hoặc có thể bị thay đổi điều chỉnh phụ thuộc vào thời tiết Hạ Long hoặc sự điều phối của Ban quản lý Vịnh Hạ Long. Trong một số trường hợp có thể có lệnh cấm xuất bến bất chợt do có gió to hoặc mưa giông mà không cần thông báo trước. Mong Quý khách chấp nhận và thông cảm!

NGÀY 3 | HÀ NỘI - SAPA – CÁT CÁT          (ĂN SÁNG / TRƯA / TỐI) 
06h00: Quý khách ăn sáng sớm tại khách sạn (nếu không kịp ăn sáng thì quý khách nói khách sạn gói đồ ăn sáng mang đi), khách tự bắt taxi ra điểm hẹn, Quý khách lên xe ô tô khởi hành đi Sapa (do từ đợt dịch covid xe không vào khách sạn đón được)
Xe đi theo hướng cao tốc Hà Nội - Lào Cai. Lưu ý: Khi đi Sapa chúng tôi sẽ bố trí đi bằng xe giường nằm. Đây là xe bus chuyên phục vụ khách du lịch đi Sapa và ngược lại. Không có HDV trên xe.
13h00-13h30: Đến Sapa, xe đón Quý khách về ăn trưa tại khách sạn. Sau đó nhận phòng khách sạn.
Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông, thăm thác Tiên Sa. Thưởng thức chương trình biểu diễn văn nghệ truyền thống tại nhà máy thủy điện cũ.
18h30: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa hay là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng đê sưởi ấm bớt cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 4 | SAPA - CÁP TREO FANSIPAN - HÀ NỘI - HCM       (ĂN SÁNG / TRƯA )
07h00: Quý khách ăn sáng tại khách sạn.
08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách. Sau đó tiếp tục chinh phục 600 bậc đá lên đỉnh Fansipan trên độ cao 3.143m - nóc nhà của Đông Dương.
() Lưu ý: Hiện tại Quý khách cũng có thể có những phương án khác để lên đỉnh Fansipan vừa được trải nghiệm cảm giác mới lạ, vừa không phải mất sức đi bộ nhiều (phù hợp với người lớn tuổi) đó chính là:
     Tàu điện Mường Hoa đưa Quý khách từ Sapa đến thẳng Ga cáp treo Fansipan (phí tự túc)
     Tàu hỏa leo núi đưa Quý khách từ Ga trên của cáp treo Fansipan lên đỉnh Fansipan (phí tự túc)
12h00: Quay lại khách sạn, trả phòng. Sau đó ăn trưa, nghỉ ngơi và lên xe về Hà Nội.
Chiều: Quý khách lên xe trở về sân bay Nội Bài, Về đến Nội Bài khoảng 19h00, quý khách tự làm thủ tục check in, đáp chuyến bay về HCM sau 21h00. Kết Thúc chương trình. Hẹn gặp lại Quý khách trong những chuyến hành trình tiếp theo!', CAST(7300000 AS Decimal(18, 0)), 18, 4, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (18, N'HCM-HÀ NỘI-NINH BÌNH-DU THUYỀN HẠ LONG-SAPA-FANSIPAN (1 ĐÊM DU THUYỀN 5 SAO)', 6, N'/Uploads/2023/12/a3330ef3-dbe5-41f7-aad4-d1c58492d2c3.png', N'NGÀY 1 | BAY RA HÀ NỘI – NGỦ ĐÊM KS HÀ NỘI (ĂN TỰ TÚC)
CHIỀU:  Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội.
Ra tới sân bay Nội Bài, Xe đón quý khách về khách sạn phố cổ, nhận phòng nghỉ ngơi.
Quý khách tự do ăn uống.

NGÀY 2 | HÀ NỘI - NINH BÌNH              (ĂN SÁNG / TRƯA / - ) 
Sáng: Ăn sáng tại khách sạn.
07h00-07h30: Xe và hướng dẫn viên đón Quý khách tại các khách sạn trong phố cổ và Nhà hát lớn Hà Nội
sau đó khởi hành đi Ninh Bình.
10h30: Tới Bái Đính. Hướng dẫn viên đưa Quý khách vào thăm chùa Bái Đính - ngôi chùa nổi tiếng với
nhiều kỷ lục: Khuôn viên cả khu chùa Bái Đính có diện tích 107ha, trong đó, Điện thờ Tam Thế và Pháp
Chủ rộng hàng ngàn mét vuông; tại ngôi chùa này có tượng Phật Tổ Như Lai bằng đồng lớn nhất Đông Nam
Á (nặng 100 tấn) và ba pho tượng Tam Thế, mỗi pho nặng 50 tấn.
12h30: Quý khách về nhà hàng nghỉ ngơi ăn trưa.
14h00: Xe đưa Quý khách ra bến Tràng An, lên thuyền thăm Khu du lịch sinh Thái Tràng An - nơi những
dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí. Quý khác ngồi
trên thuyền thư giãn và tham quan 4 hang động tự nhiên trong số những hang động đẹp nhất trong khu du
lịch Tràng An là Hang Lấm, Hang Vạng, Hang Thánh Trượt và hang cuối cùng là Hang Đại. Quý khách còn
dừng chân ghé thăm các điểm tâm linh như đền Suối Tiên và Hành Cung Vũ Lâm. Tuyến này sẽ rất phù hợp
với những bạn trẻ, những người thích chụp ảnh Check in, Quý khách có thể có những trải nghiệm đầy đủ về
hành trình ngồi đò thăm hang cũng như có thể lưu lại những cảm xúc, những bức hình đẹp trong hành trình
về thăm Tràng An.
16h30: Quý khách lên xe trở về Hà Nội.
19h30: Quý khách về đến Hà Nội. Nhận phòng khách sạn, nghỉ ngơi. Quý khách tự túc ăn tối khám phá ẩm thực phố Cổ Hà Nội. Buổi tối Quý khách tự do dạo bộ khám phá phố Cổ về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 3 | HÀ NỘI - VỊNH HẠ LONG               (ĂN SÁNG / TRƯA / TỐI)
07h00: Ăn sáng và trả phòng.
08h00 – 08h40: Xe limosine đón quý khách tại khách sạn, Quý khách lên xe khởi hành đi Hạ Long (trên xe không có HDV). Trên đường đi quý khách nghỉ chân tại Hải Dương để nghỉ ngơi và tự do mua sắm các đặc sản Hải Dương.
12h30: Xe đến bến tàu Tuần Châu. Hướng dẫn viên của du thuyền đón quý khách làm thủ tục cho khách lên tàu. Quý khách được chào đón bằng “welcome drink”. Quý khách dùng bữa trưa trên tàu, giữa mênh mông biển nước, đem lại một cảm giác rất thú vị. Vừa thưởng thức những món ăn mang hương sắc của biển cả, quý khách vừa có thể thưởng ngoạn những cảnh quan thiên nhiên hùng vĩ của vịnh Hạ long như: Hòn Đinh Hương, Gà Chọi, Chó Đá...
Chiều: Quý khách tiếp tục:
-    Thăm hang Sửng Sốt - một trong những hang đẹp nhất của Vịnh Hạ Long. Trần hang được phủ bằng một lớp “thảm nhung” óng mượt vô số những “chùm đèn treo” bằng nhũ đá rực rỡ sáng long lanh, những tượng đá, voi đá, hải cẩu, mâm xôi, hoa lá… Tới đỉnh cao nhất của động, có hồ nước trong vắt, phong cảnh sơn thủy hữu tình.
-    Thăm đảo Titov và tắm biển
-    Tham gia cooking class (chủ yếu là gói nem, hoạt động hấp dẫn với người nước ngoài)
17h00: Quý khách trở lại tàu, nghỉ ngơi, thư giãn thưởng thức rượu vang và hoa quả trong buổi hoàng hôn.
19h00: Quý khách dùng bữa tối trên tàu. Sau đó có thể tham gia các trò chơi trên du thuyền như câu mực đêm, nghe nhạc, chơi game, dancing… Tận hưởng cảm giác nằm giữa biển nước mênh mông ngắm những vì sao chắc chắn sẽ làm quý khách không bao giờ quên.
(Lịch trình sẽ tùy thuộc vào từng du thuyền đặt sẽ có hành trình du thuyền khác nhau, Saigontours sẽ báo tên du thuyền và hành trình của du thuyền cụ thể khi quý khách đặt tour)

NGÀY 4 | VỊNH HẠ LONG - HÀ NỘI              (ĂN SÁNG / TRƯA / - )
05h00: Quý khách nên dậy sớm để tận hưởng không khí trong lành và yên tĩnh của biển khởi trên boong tàu và tham gia tập dưỡng sinh (Taichi) buổi sáng (lưu ý: Hướng dẫn tập Tai Chi chỉ có ở tàu 4 và 5 sao).  
07h00-07h45: Quý khách sẽ dùng bữa sáng tại nhà hàng.
08h00: Quý khách chèo thuyền kayak hoặc thuyền nan khám phá Hang Luồn, đây là một hoạt động rất thú vị và hấp dẫn đối với rất nhiều du khách. Trong trường hợp có thời gian, tàu sẽ ghé dừng thăm Làng chài nơi nuôi cấy ngọc trai. Du khách được tận mắt chứng kiến các quy trình hình thành nên một viên ngọc quý, từ việc nuôi cấy cho đến khi thu hoạch, chế tác. Không những thế, ở đây còn có cả một khu bảo tàng giới thiệu hình ảnh về quá trình sản xuất ngọc trai. Sau đó đến khu nuôi trồng, chế tác và kết thúc là khu trưng bày những sản phẩm, đồ trang sức làm từ ngọc trai.
10h30: Quý khách sẽ thưởng thức bữa trưa nhẹ trên tàu trước khi cập bến về Hà Nội.
11h30: Tàu cập bến Tuần Châu. Xe ô tô đón quý khách để trở về Hà Nội.
14h30 – 15h30: Đến Hà Nội. Xe đưa Quý khách về nhận phòng. Quý khách tự túc ăn tối khám phá ẩm thực phố Cổ. Buổi tối Quý khách tự do dạo bộ khám phá phố Cổ về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 5 | HÀ NỘI - SAPA – CÁT CÁT          (ĂN SÁNG / TRƯA / TỐI) 
06h00: Quý khách ăn sáng và trả phòng, Quý khách tự bắt taxi di chuyển ra điểm tập trung Trần Quang Khải để đi Sapa.
Khi đi Sapa chúng tôi sẽ bố trí đi bằng xe giường nằm. Đây là xe bus chuyên phục vụ khách du lịch đi Sapa và ngược lại. Không có hdv trên xe.
13h00-13h30: Đến Sapa, xe đón Quý khách về ăn trưa tại khách sạn. Sau đó nhận phòng khách sạn.
Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông, thăm thác Tiên Sa. Thưởng thức chương trình biểu diễn văn nghệ truyền thống tại nhà máy thủy điện cũ.
18h30: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa hay là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng đê sưởi ấm bớt cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 6 | SAPA - CÁP TREO FANSIPAN - HÀ NỘI-HCM         (ĂN SÁNG / TRƯA / - )
07h00: Quý khách ăn sáng tại khách sạn.
08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách. Sau đó tiếp tục chinh phục 600 bậc đá lên đỉnh Fansipan trên độ cao 3.143m - nóc nhà của Đông Dương.
() Lưu ý: Hiện tại Quý khách cũng có thể có những phương án khác để lên đỉnh Fansipan vừa được trải nghiệm cảm giác mới lạ, vừa không phải mất sức đi bộ nhiều (phù hợp với người lớn tuổi) đó chính là:
     Tàu điện Mường Hoa đưa Quý khách từ Sapa đến thẳng Ga cáp treo Fansipan (phí tự túc)
     Tàu hỏa leo núi đưa Quý khách từ Ga trên của cáp treo Fansipan lên đỉnh Fansipan (phí tự túc)
12h00: Quay lại khách sạn, trả phòng. Sau đó ăn trưa, nghỉ ngơi và lên xe về Hà Nội.
Chiều: quý khách lên xe trở về sân bay Nội Bài, Về đến Nội Bài khoảng 19h00, quý khách tự làm thủ tục check in, đáp chuyến bay về HCM. Kết Thúc chương trình. Hẹn gặp lại Quý khách trong những chuyến hành trình tiếp theo!', CAST(10390000 AS Decimal(18, 0)), 15, 7, 8)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (19, N'(TẾT TÂY)HỒ CHÍ MINH-NHA TRANG-HÒN TẰM (KS 5 SAO)', 3, N'/Uploads/2023/12/91b329e5-df6d-480e-946e-4714e2e2cbd3.png', N'TỐI NGÀY 1 | TP.HCM  –  NHA TRANG    (NGHỈ NGƠI TRÊN XE)
- 22h30: Xe và HDV đón quý khách tại công ty và các điểm hẹn. Sau đó khởi hành đi tour Nha Trang - Diamond Bay - Hòn Tằm 3 ngày 3 đêm. 
Trên xe quý khách sẽ nghe HDV thuyết minh về các điểm nổi tiếng đoàn sẽ đi qua và cùng chơi những trò chơi hấp dẫn…Sau đó quý khách nghỉ ngơi và dừng chân ăn nhẹ cũng như thư giãn tại các trạm dừng chân trên cung đường đoàn đi qua (Ăn nhẹ tự túc).

NGÀY 1 | DIAMOND BAY - NHÀ YẾN - THÁP BÀ - BUFFET HẢI SẢN (ĂN 3 BỮA)
- Sáng: Đoàn đến KDL DIAMOND BAY quý khách dùng bữa điểm tâm tại nhà hàng Khu Du Lịch, sau đó quý khách nhận ghế và chòi để đồ và tắm biển. 
KDL DIAMOND BAY được biết đến là một trong những bãi tắm đẹp nhất Nha Trang, biển Nhũ Tiên hấp dẫn du khách bởi làn nước biển trong xanh, mát mẻ, được bao bọc bởi bãi cát dài trắng xóa và những hàng dừa lao xao trong gió. Với vẻ đẹp hoang sơ, thơ mộng, biển Nhũ Tiên tựa như nàng tiên đang ngủ vùi giữa không gian mênh mông của sóng, của gió, của núi và của mây.
11h00: Đoàn khởi hành về Nha Trang dùng cơm trưa, sau khi dùng cơm trưa đoàn về khách sạn nhận phòng nghỉ ngơi.
15h30: Đoàn tham quan Nhà Yến nơi khai thác Yến tổ yến ngay tại trung tâm thành phố Nha Trang. Quý khách được tận mắt nhìn, thưởng thức trà yến miễn phí và nghe giới thiệu cũng như tìm hiểu về loài vật quý giá này. 
16h30: Đoàn tham quan Tháp Chàm Ponagar - Một công trình kiến trúc Chăm cổ của người Champa. Tháp Ponagar là một di tích cổ của người Champa, được xây dựng trong khoảng thế kỷ thứ 8 - 13. Công trình gồm có 3 tầng với 4 ngọn tháp lớn. Các chi tiết được điêu khắc tỉ mỉ và khéo léo. Du khách đến đây không chỉ được chụp hình check in mà còn được tìm hiểu về văn hoa dân tộc Chăm độc đáo. Tháp Bà Ponagar nằm gọn trên một quả đồi xinh đẹp cạnh bờ sông Cái hiền hòa. 
18h00: Đoàn đến nhà hàng dùng bữa tối với Buffet hải hản hấp dẫn. Sau đó Quý khách tự do dạo biển, thưởng thức hải sản tươi ngon địa phương và nghỉ đêm tại Nha Trang.

NGÀY 2 | KHU DU LỊCH HÒN TẰM - TẮM BIỂN -  TẮM BÙN KHOÁNG         (ĂN 3 BỮA)
- Sáng: Quý khách dùng Buffet sáng tại khách sạn.
08h30: Quý khách khởi hành đến cảng Du lịch. Đoàn lên Cano bắt đầu hành trình khám phá Vịnh Nha Trang. HDV thuyết trình về Vịnh Nha Trang. Cano đưa đoàn ra đến đảo Hòn Tằm Nha Trang hay còn gọi là đảo Thủy Kim Sơn, cách thành phố Nha Trang, tỉnh Khánh Hòa khoảng 7 km về phía Đông Nam. Sở hữu bãi biển đẹp, trong vắt cùng sóng biển quanh năm luôn lặng yên đã khiến nơi này rất thích hợp để dành cho những chuyến du lịch nghỉ dưỡng. Dịch vụ bao gồm tại đảo: Nước uống chào đón, Vé vào cổng khu resort, Các tiện ích bãi biển: Dù, ghế tắm nắng, nệm được cung cấp , Thỏa sức với các trò chơi trên biển. 
Trưa: Đoàn ăn trưa tại khu vui chơi tại khu du lịch Hòn Tằm, Miễn phí sử dụng khăn và tủ cất đồ. Quý khách sẽ tắm bùn khoáng và tắm biển tại Hòn Tằm. Ngoài ra quý khách có thể tham gia các trò chơi cảm giác mạnh như: Dù bay, Motor nước, lặn biển…(chi phí tự túc). 
-    Tham quan Khu Du Lịch Hòn Tằm Đẳng Cấp 5 sao
-    Ăn trưa tại nhà hàng Hòn Tằm
-    Tự do tắm biển 
-    Tắm Bùn, tắm khoáng tại Hòn Tằm
15h00: Đoàn xuất phát về lại bến cảng, xe và HDV đưa đoàn về lại khách sạn nghỉ ngơi. 
Buổi tối: Quý khách dùng Nem nướng – đặc sản Nha Trang, sau đó tự do khám phá ẩm thực thành phố biển Nha Trang.

NGÀY 3 | NHA TRANG – PHAN THIẾT - TP.HCM        (ĂN 2 BỮA)
- 06h30: Đoàn làm thủ tục trả phòng khách sạn. Sau đó dùng buffet sáng tại khách sạn.
07h30: Đoàn di chuyển về Thành phố Hồ Chí Minh. 
09h00: Đoàn đến Phan Rang thưởng thức đặc sản mật nho, rượu nho, mủ trôm tỏi Phan Rang miễn phí. Quý khách tham quan vườn nho và thoải mái chụp hình bên những chùm nho nặng trĩu( Tại trạm dừng chân mua sắm ). 
12h00: Đoàn dùng cơm trưa tại nhà hàng, nghỉ ngơi.
Chiều: Quý khách dừng chân nghỉ ngơi tham quan mua sắm các đặc sản tại Phan Thiết. 
Tối: Quý khách về đến Hồ Chí Minh. HDV chia tay Quý khách hẹn ngày gặp lại! Kết thúc chuyến tham quan!
           
Tùy vào thời điểm hiện tại và thực tế chuyến đi, các điểm tham quan và thời gian có thể sắp xếp cho phù hợp nhưng vẫn đảm bảo đầy đủ các điểm tham quan trong chương trình.', CAST(3390000 AS Decimal(18, 0)), 5, 8, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (20, N'PHÚ QUỐC-THÀNH PHỐ KHÔNG NGỦ GRAND WORLD,3N2Đ,KS 4 SAO', 3, N'/Uploads/2023/12/e283764c-aa0f-4d82-aac8-ff6277aa9e15.jpg', N'NGÀY 1 | HCM - ĐÔNG ĐẢO-WINWONDER/ SAFARI/ GRAND WORLD (Ăn trưa, chiều)
-    Sáng: HDV Saigontours đón quý khách tại sân bay Tân Sơn Nhất, HDV làm thủ tục check in cho quý khách đáp chuyến bay đi Phú Quốc lúc 06h05 của Pacific Airlines
-    7h05 Tới Phú Quốc: Xe và hướng dẫn đón khách ở sân bay Phú Quốc đưa đoàn đi Tham quan Đông đảo:
-    Quý khách khởi hành tham quan Dinh Bà - Dinh Cậu và tự do dạo chợ thưởng thức các đặc sản của người dân phú quốc.
-    Vườn tiêu Phú Quốc: là vườn tiêu lớn nhất ĐBSCL và được mệnh danh là “Vương quốc hồ tiêu” nổi tiếng chắc hạt, thơm ngon
-    Làng chài cổ Hàm Ninh: nằm trên bờ biển phía Ðông đảo. Nơi đây nổi tiếng với nghề đánh bắt lưới ghẹ, cá ngựa, hải sâm, hái rong biển. Quý khách có dịp thưởng thức hải sản tươi vừa đánh bắt với giá gốc. Đặc sản ghẹ Hàm Ninh ngay tại bè
-    Cơ sở ủ rượu vang Sim: một đặc sản của hòn Đảo vô cùng nổi tiếng mà ai cũng đều biết đến. Khi đến tham quan, quý khách sẽ được thưởng thức rượu Sim rừng, mật sim và siro sim miễn phí. Đặc biệt tự do dạo và chụp ảnh với vườn sim
-    Trưa: Xe và HDV đưa đoàn đi ăn trưa nhà hàng. Sau đó, Qúy khách về nhận phòng khách sạn nghỉ ngơi
-    Chiều: Quý khách lựa chọn tham quan một trong các chương trình sau:
 Safari, Vinwonder, Grand world:   
- Phú Quốc UNITED CENTER - Grand World – thành phố giải trí không ngủ “ ( vào cổng miễn phí ). Qúy khách thưởng thức đặc sản “ Bún Quậy Phú Quốc Kiến Xây “ tại trung tâm Grand World ( chi phí tự túc ), sau đó tự do check in, sống ảo miễn phí trung tâm mua sắm sầm uất, lễ hội độc đáo, đa dạng bậc nhất Đông Nam Á xuyên suốt 24h,  tại khu vực Hồ Tình Yêu thưởng thức show “ Sắc Màu Venice “  -  Dâng chào cảm xúc với câu chuyện tình bên sông Venice của chàng họa sĩ và nàng tiểu thư được thể hiện bằng show nhạc nước kết hợp công nghệ mapping hình ảnh và các diễn viên múa chuyên nghiệp
+ Xem show diễn Tinh hoa Việt Nam ( có phụ thu vé vào cổng ): mang âm thưởng đặc sắc dân gian truyền thống dân tộc
+ Bảo tàng Gấu Teddy ( có phụ thu vé vào cổng )
+ Chèo thuyền trên sông Venice ( có phụ thu vé vào cổng )
- Vườn thú Safari ( vào cổng có phụ thu ): vườn thú bán hoang dã theo mô hình quốc tế lớn nhất Đông Nam Á, tại đây du khách sẽ được tận mắt ngắm nhìn những loài động quý hiếm như thể chúng đang sống ngoài môi trường tự nhiên 
-  Vinwonders Phú Quốc ( vào cổng có phụ thu ) : được ví như một “Disneyland” với hàng trăm trò chơi trong nhà và ngoài trời dành cho mọi lứa tuổi
-    Chơi các trò chơi cảm giác mạnh - Biểu diễn cá heo
-    Tàu lượng siêu tốc - Đu quay vòng xoay
-    Cung điện HẢI VƯƠNG
-    Thủy cung (hàng ngàn loài sinh vật biển và bò sát quý hiếm)
-    Sân khấu nhạc nước hoành tráng - Phố mua sắm và ẩm thực đường phố 
-    Tối: Qúy khách dùng bữa tối tại Nhà hàng địa phương. Sau đó quý khách về khách sạn nghỉ ngơi, tự do dạo phố biển.

NGÀY 2 | NAM ĐẢO - CÂU CÁ NGẮM SAN HÔ – HÒN THƠM      (Ăn 3 bữa)
Buổi sáng: Quý khách dùng điểm tâm sáng tại khách sạn, sau đó xe và hướng dẫn đưa du khách tham quan khu vực Nam Đảo:
-    Cơ sở nuôi cấy ngọc trai Ngọc Hiền: (liên doanh nước ngoài) – một trong những cơ sở ngọc trai lớn nhất Phú Quốc, tìm hiểu về quy trình nuôi trai lấy ngọc và xem mổ trai lấy ngọc tại bàn và tham quan mua sắm các sản phẩm làm từ Trai
-    Di tích lịch sử nhà tù Phú Quốc: xem film tư liệu và những hình ảnh biết nói, cảm nhận nỗi đau của các chiến sĩ yêu nước và sống với niềm tự hào dân tộc
-     Đoàn lên tàu tham gia câu cá và lặn ngắm san hô. Sau đó đoàn dùng cơm trưa trên tàu. Sau khi kết thúc chương trình trên biển đoàn di chuyển vào đất liền
-    Quý khách được đưa đến Bãi Sao - bãi biển cát trắng đẹp nhất Phú Quốc từ tháng 2 đến tháng 10, trầm mình trong làn nước trong vắt, mát rượi, ( riêng tháng 11- tháng 3 có nhiều rác và sóng lớn)
-    Cơ sở nước mắm Phú Quốc: thương hiệu hiện đã được bảo hộ trên toàn thế giới. Quý khách sẽ tham quan cơ sở Khải Hoàn/Phụng Hưng với cách ủ truyền thống có lịch sử hơn 100 năm phát triển tại Phú Quốc
-    Chùa Hộ Quốc: một ngôi chùa thuộc thiền viện Trúc Lâm Phái thiền tọa lạc trên đỉnh núi rồng mặt hướng ra biển đông, huyền bí và uy nghi. Đến đây quý khách ngoài viếng chùa cầu an lành còn có thể tận hưởng không khí mát mẻ, có cho mình những bức ảnh kỷ niệm tuyệt vời nhất. 
Lựa chọn thêm ( vui lòng báo trước ) Cáp treo HÒN THƠM ( chưa bao gồm vé : 540k/người lớn, trẻ em: 393k/bé)
 Xe đưa du khách đến nhà ga An Thới, check in - Đấu trường LA MÃ CỔ ĐẠI  ngay trong lòng Phú Quốc. Du khách khám phá 1 Đảo ngọc từ trên cao qua tuyến cá1p treo trên biển dài nhất thế giới. Ngắm nhìn toàn cảnh Phú Quốc từ trên cao xuống
Cáp đến Hòn Thơm, du khách vào công viên nước AQUATOPIA - công viên nước chủ đề lớn nhất Đông Nam Á
-    Xe đưa quý khách về lại khách sạn. Ăn tối tại nhà hàng.
-     Nghỉ đêm tại Phú Quốc

NGÀY 3 | TẠM BIỆT PHÚ QUỐC - TP. HỒ CHÍ MINH (Ăn sáng)
-    Buổi Sáng: Đoàn dùng điểm tâm sáng tại nhà hàng và thư giãn tự do tắm biển hoặc hồ bơi:
-     Qúy khách làm thủ tục trả phòng. Xe và hướng dẫn đón du khách tại khách sạn và đưa Quý khách ra sân bay Phú Quốc, làm thủ tục lên máy bay chuyến bay VN6514 lúc 13h15. Kết thúc chuyến đi vui vẻ chia tay hẹn tái ngộ cùng Quý khách trên các chuyến tour trong nước và quốc tế.
Lưu ý : Thứ tự các điểm tham quan trong chương trình có thể thay đổi tùy tình hình thực tế nhưng vẫn đảm bảo đầy đủ  các điểm tham quan !', CAST(5790000 AS Decimal(18, 0)), 7, 7, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (21, N'QUY NHƠN-CITY TOUR-CÙ LAO XANH-3N2D', 3, N'/Uploads/2023/12/4caa9ee9-a781-41b3-a7c9-0fba3acd1d27.png', N'NGÀY 1 | HCM- ĐÓN KHÁCH- CITY TOUR (ĂN TRƯA,TỐI)
- Sáng/Trưa: Xe và HDV đón khách tại sân bay, nếu khách đến sớm thì đón khách dùng điểm tâm café (chi phí tự túc) 
sau đó ghép đoàn đưa quý khách đi ăn trưa.
Sau bữa trưa khởi hành về Quy Nhơn. Trên đường về ghé tham quan Chùa Thiên Hưng, ngôi chùa nổi tiếng với vẻ đẹp sơn thủy hữu tình và cũng là nơi lưu giữ Ngọc Xá Lợi linh thiêng.
 
Di chuyển về Quy Nhơn làm thủ tục nhận phòng khách sạn và nghỉ ngơi
14h00: Đoàn khởi hành đi tham quan điểm đầu tiên - Khu du lịch Ghềnh Ráng, Quý khách được dạo bước trên dốc Mộng Cầm, đồi Thi Nhân, bãi tắm Hoàng Hậu, Tiên Sa,
và sống lại với những vần thơ Hàn Mặc Tử cùng tài nghệ của bút lửa Dzũ Kha.
 
15h30:  Đoàn đến Tháp Đôi, là cụm 02 ngọn tháp Chăm được xây duyên dáng bên cạnh nhau nằm giữa lòng thành phố.
 
16h30: Xe đưa đoàn tham quan Quảng Trường Quy Nhơn, nơi tượng đài Nguyễn Sinh Sắc – Nguyễn Tất Thành uy nghi tượng trưng cho tình cha con hòa quyện với tình yêu nước và Tham quan tự do, tắm biển ngắm hoàng hôn trên biển Quy Nhơn.

 
18h00: Xe đưa quý khách ăn tối tại nhà hàng. Với những món ẩm thực đặc trưng tại đất Bình Định
Nghỉ đêm khách sạn tại Quy Nhơn.

NGÀY 2 |  ĐẢO CÙ LAO XANH    (ĂN SÁNG/TRƯA)
Ngọn Hải Đăng được xây dựng từ thời Pháp thuộc, nó không chỉ gắn với lịch sử của xã Đảo Nhơn Châu mà còn là hơi thờ, là niềm tin, niềm tự hào và lý tưởng sống của biết bao thế hệ người dân nơi đây
Tiếp theo, Quý khách sẽ đến tham quan Cột cờ Tổ Quốc – Điểm tựa về tinh thần, giúp bà con ngư dân vững tâm vươn khơi, bám biển.

10h30: Xe tiếp tục chở Quý khách tham quan Bãi đá Thảo Nguyên với muôn hình vạn trạng của các thế đá khác nhau. Đá ngổn ngang, bày la liệt, tưởng như “mất trật tự nhưng lại rất ngăn nắp và hình tượng. Đây là nơi giúp bạn thả trí tưởng tượng Selfie để có được những bức ảnh độc nhất vô nhị.

Sau khi chiêm ngưỡng Bãi đá Thảo Nguyên, hướng dẫn viên sẽ đưa Quý khách đến với điểm đến hấp dẫn tiếp theo là Khu dã ngoại Cù Lao Xanh và Bãi tắm Gala, tại đây có nhiều khung cảnh đẹp khiến du khách không thể rời mắt, cùng nhau chụp những kiểu ảnh độc đáo mà chỉ nơi đây có được.
 
11h30: Quý khách dùng cơm trưa với những món ăn Hải sản đậm chất biển khơi vừa đánh bắt từ biển lên và được chế biển vô cùng ngon miệng theo cách người dân làng chài đậm chất mộc mạc. Quý khách nghỉ ngơi thư giãn.

13h00: Sau khi dùng bữa, quý khách có thể nghỉ ngơi hoặc tự do tham quan, chụp ảnh tại một số địa điểm như Cầu Cảng, Mũi Hoàn Bằng, Bờ kè chắn sóng…

14h30: Giữa cái nắng nóng oi bức, đây cũng chính là lúc mà những rặng san hô rực rỡ và sinh động nhất, quý khách nhanh chóng thay đổi trang phục phù hợp theo sự hướng dẫn của chú HDV lặn biển lão luyện để di chuyển đến Bãi Nhỏ lặn ngắm thế giới sinh vật biển đa dạng và sinh động dưới lòng đại dương.
16h20: Cano đưa Quý khách rời Cù Lao Xanh về Cảng Hàm Tử (Quy Nhơn). Và về lại TP Quy Nhơn

18h00: Quý khách dùng bữa tối  (Chi Phí Tự Túc)
Sau bữa tối Quy Khách tự do vui chơi, tham quan Quy Nhơn về đêm, dạo chơi trong Chợ đêm hoặc thưởng thức nhạc tại các phòng trà, bar,....(chi phí tự túc)
Nghỉ đêm tại Quy Nhơn.

NGÀY 3 | KỲ CO- LẶN NGẮM SANHO- EO GIÓ   (ĂN SÁNG,TRƯA)
- 07h00: Điểm tâm sáng. 
8h00: Xe và hướng dẫn viên đón khách tại khách sạn, khởi hành đi đảo Kỳ Co với những cảnh sắc thiên nhiên tuyệt đẹp đang đón chờ.
8h30:  Đến  bến thuyền Nhơn Lý, quý khách đi cano để di chuyển qua đảo Kỳ Co, với dải cát vàng ôm lấy biển, bọc thành một hình cung, mềm mại mềm mại như dải lụa uốn lượn, ôm trọn lấy làn nước trong xanh tận đáy. Tận hưởng những giây phút thư giãn giữa mênh mông sóng nước.
09h30: Đến nơi, Quý khách hòa mình vào thiên nhiên, một bên là biển nước màu xanh lam trong vắt, một bên là núi đá cao sừng sững. Khám phá bãi cát dài mịn, khung cảnh hoang sơ đầy quyến rũ, đặc biệt được chấm phá bằng những công trình đặc sắc như Cầu Yến, Cầu Trái Tim, Kỳ Co Resort,… và những hang đá, suối nước đẹp đến bất ngờ. 
Đặc Biệt: Quý khách được miễn phí vé xem Xiếc Hải Cẩu đầy hấp dẫn.
Quý khách có thể mua thêm dịch vụ Đi bộ dưới đáy biển, Motor nước, Jetsky,… (chi phí tự túc)
 
10h30: Cano đưa Quý khách ra Bãi Dứa lặn ngắm san hô, khu vực này có nhiều rặng san hô đa dạng, nhiều màu sắc, chủng loại, ngoài ra, thi thoảng còn có các loại Cầu gai, sao biển, nhiều loại cá đầy màu sắc. 
11h30: Quý khách trở lại bến thuyền tắm nước ngọt và thưởng thức bữa trưa với các món hải sản tươi sống. Quý khách nghỉ trưa ngắn tại nhà hàng
13h00: Đoàn khách tham quan Eo Gió một bãi biển hoang sơ dưới sự bào mòn của nước và gió, tạo nên một eo biển tuyệt đẹp, quanh năm lộng gió.
 
14h00: Tiếp tục ghé thăm Tịnh xá Ngọc Hòa – một địa điểm lý tưởng để tĩnh tâm và thiền định – với kiến trúc nổi bật là tượng đôi Phật Bà Quan Âm cao nhất Việt Nam, gồm hai tượng phật Bà Quan Thế Âm, tượng hướng về phía Nam (Cổng chính Tịnh Xá) còn được gọi là Quan Thế Âm Kiết Tường phù trợ cho rừng vàng.Còn bức tượng còn lại là Quan Thế Âm Nam Hải hướng ra biển được người dân xem là phù trợ cho biển bạc.

15h00: Xe và HDV đưa quý khách ra sân bay, Trên đường đi quý khách dừng chân ghé tham quan và checkin đồi Đồi Cát phương Mai checkin. (Hiện tại đồi cát đã được san lấp, nên quý khách có thể dừng chân chụp các đồi cát tương tự )
 
HDV hướng dẫn đoàn làm thủ tục lên chuyến bay Quy Nhơn/Hà Nội/TPHCM/ Hải Phòng...
Kết thúc chương trình tham quan Xứ Nẫu 3 ngày 2 đêm. Chào tạm biệt hẹn gặp lại!
', CAST(6990000 AS Decimal(18, 0)), 19, 6, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (22, N'TOUR HẠ LONG 2N1Đ, 1 ĐÊM DU THUYỀN STARLIGHT 5 SAO', 2, N'/Uploads/2023/12/af96bde4-9629-433c-a053-047b67a162b3.png', N'NGÀY 1 | HÀ NỘI – VỊNH HẠ LONG (BỮA TRƯA, BỮA TỐI) 
Sáng: Xe Limosine đón quý khách tại điểm hẹn phố cổ, quý khách lên xe khởi hành đi Hạ Long.
12h30 – 12h45 Từ Cảng tàu khách Quốc tế Hạ Long, Quý khách sẽ được đón bằng xuồng chuyển tải để lên du thuyền Starlight. Sau khi nghe hướng dẫn viên giới thiệu, quý khách nhận chìa khóa phòng nghỉ của mình và quay trở lại nhà hàng để dùng bữa trưa.
13h00 – 15h30 Du thuyền nhổ neo rời bến để đi thăm quan. Du thuyền sẽ phục vụ bữa ăn trưa và du thuyền sẽ dừng lại giữa trung tâm của vịnh để bắt đầu những hoạt động khám phá Hạ Long kì ảo. 
15h30 – 16h30 Du khách được hướng dẫn viên đưa đoàn thăm hang Sửng Sốt, một trong những hang đá lớn nhất, đẹp nhất vịnh Hạ Long. 
16h30 – 17h30 Quý khách trở lại tàu, thay quần áo bơi hoặc mặc trang phục phù hợp để đi xuồng nhỏ lên tắm biển hoặc ngắm cảnh trên đảo Titov. 
17h30 – 19h00 Trở lại du thuyền, lên sân thượng, thưởng thức những món đồ uống hấp dẫn với chương trình “Giờ Vàng: Mua 02 tặng 01”, thư giãn và ngắm mặt trời lặn, tham gia trải nghiệm nấu ăn cùng đầu bếp chuyên nghiệp. 
19h00     Quý khách dùng bữa tối. Giao lưu với các khách hàng khác hoặc tham gia các chương trình như câu mực, hát karaoke đến 22h00. Nghỉ đêm trên du thuyền. 

NGÀY 2 | VỊNH HẠ LONG-CẢNG TÀU KHÁCH QUỐC TẾ HẠ LONG - HÀ NỘI (BỮA SÁNG, BỮA TRƯA)
06h00 – 07h30 Bắt đầu một ngày mới với lớp học Thái Cực Quyền, ngắm mặt trời mọc, đắm mình trong không khí trong lành của buổi sáng với ly café hay trà thật sảng khoái. Quý khách cũng có thể ăn lót dạ tại nhà hàng nếu thích. 
7h30 – 9h00     Quý khách tập hợp để đi theo hướng dẫn viên lên xuồng nhỏ đi thăm Hang Luồn một trong những hang nước xuyên qua lòng núi đá vôi để vào một giếng đá vôi đẹp như tranh vẽ. Quý khách hãy lựa chọn đi bằng đò chèo tay của người địa phương hoặc tự chèo thuyền thể thao kayak. 
09h30     Đã đến giờ trả phòng, quý khách gửi hành lý và chìa khóa tại quầy lễ tân
09h30 – 11h15 Du thuyền di chuyển về bờ. Quý khách thư giãn, khám phá phong cảnh và chụp những bức cảnh kỷ niệm tuyệt đẹp về Hạ Long trước khi thưởng thức bữa trưa sớm. 
11h30     Quý khách rời tàu tại Cảng tàu khách Quốc Tế Hạ Long. Quý khách tạm biệt du thuyền Starlight. Kết thúc chuyến hải trình tham quan đầy ấn tượng về cảnh đẹp và con người Hạ Long. 
', CAST(3500000 AS Decimal(18, 0)), 20, 8, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (23, N'VỊNH HẠ LONG - HẠ LONG PARK - BÃI CHÁY - YÊN TỬ, 3 NGÀY 2 ĐÊM', 3, N'/Uploads/2023/12/18592bdc-0906-4240-94ac-c8f88b5b85b1.png', N'NGÀY 1 | HÀ NỘI - BÃI CHÁY - HẠ LONG PARK (ĂN - / TRƯA / TỐI)
07h30-08h00: Xe và hướng dẫn viên đón Quý khách tại các khách sạn khu vực phố Cổ và Nhà hát lớn Hà Nội khởi hành đi Hạ Long.
12h00-12h30: Đến cảng tàu Hạ Long, Đoàn tập trung tại nhà chờ theo sự hướng dẫn của hướng dẫn viên đợi mua vé và phát vé cho Quý khách để lên tàu bắt đầu hành trình khám phá Vịnh. Tàu sẽ đi qua rất nhiều các hòn đảo lớn nhỏ với nhiều hình dáng khác nhau có những tên gọi đặc biệt như: Hòn Gà Chọi, hòn Chó Đá, hòn Đỉnh Hương, hòn Ngón Tay... Quý khách thưởng thức bữa trưa trên tàu.
14h00: Đến đảo Bồ Hòn. Quý khách thăm quan Hang Sửng Sốt - Một trong những hang động đẹp nhất vịnh Hạ Long. Tiếp theo, Quý khách sẽ chèo Kayak hoặc đi thuyền nan thăm Hang Luồn. Sau 30 phút chèo Kayak, Quý khách lên tàu để đến với đảo Ti Top. Quý khách có thể tắm biển tại bãi tắm TiTop với bãi cát trắng, hoặc thử treekking leo lên đỉnh núi Ti Top ngắm nhìn toàn cảnh Vịnh Hạ Long.
16h00: Quý khách quay trở lại tàu. Tàu sẽ di chuyển đưa Quý khách về lại Bến. Quý khách có thể tắm nắng trên boong tàu, nghe nhạc và thư giãn, hòa mình vào thiên nhiên của Vịnh Hạ Long.
18h00: Tàu cập cảng. Xe ô tô đón Quý khách đưa về khách sạn nhận phòng, nghỉ ngơi.
19h00: Ăn tối. Buổi tối tự do vui chơi khám phá Chợ Đêm, Phố ẩm thực... Nghỉ đêm tại Hạ Long.

NGÀY 2 | HẠ LONG - HẠ LONG PARK (ĂN SÁNG / TRƯA / TỐI)
Cả ngày Quý khách tự do vui chơi. Các bữa ăn sáng, trưa, tối được sắp xếp bố trí tại khách sạn.
Gợi ý các điểm thăm quan:
Sáng: Quý khách tự do tắm biển Bãi Cháy.
Chiều: Quý khách tự túc mua vé và tự do vui chơi tại tổ hợp Công viên Hạ Long với nhiều khu vui chơi hấp dẫn như khu Cáp treo Nữ hoàng và vòng quay Sunwheel khổng lồ trên khu đồi huyền bí; Công viên Dragon park với các trò chơi mạo hiểm như tàu lượn, đu quay... ; Công viên Typhoon water park với các trò chơi liên quan đến nước đầy hấp dẫn.

NGÀY 3 | HẠ LONG - YÊN TỬ - HÀ NỘI (ĂN SÁNG / TRƯA / - )
06h30: Quý khách ăn sáng tại khách sạn. Sau đó trả phòng.
07h00-07h15: Xe ô tô đón Quý khách đi Yên Tử. Tới Yên Tử, hướng dẫn viên đưa quý khách quý khách đi chiêm ngưỡng cảnh rừng đại ngàn Yên Tử. Quý khách thăm quan Tháp tổ (nơi lưu giữ xá lợi của Phật Hoàng Trần Nhân Tông), chùa Hoa Yên, chùa Một Mái. Quý khách đến nhà ga Cáp treo để đi hệ  thống cáp thứ 2. Chiêm bái Tượng An Kỳ Sinh, bia Phật... Tiếp tục chinh phục đỉnh chùa Đồng (nằm ở độ cao 1068m so với mặt nước biển), lễ Phật và thưởng ngoạn cảnh đại ngàn Yên Tử từ trên đỉnh núi.
11h30: Ăn trưa tại nhà hàng. Sau bữa trưa, Quý khách lên xe về Hà Nội.
17h00: Đoàn về đến Hà Nội. Kết thúc chương trình. Hẹn gặp lại quý khách!
Lưu ý quan trọng: Thời gian đi thăm quan Vịnh Hạ Long có thể được điều chỉnh phù hợp với điều kiện của từng ngày khởi hành hoặc có thể bị thay đổi điều chỉnh phụ thuộc vào thời tiết Hạ Long hoặc sự điều phối của Ban quản lý Vịnh Hạ Long. Mong Quý khách thông cảm!', CAST(3300000 AS Decimal(18, 0)), 20, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (24, N'SAPA - MOANA - FANSIPAN- BẢN CÁT CÁT - Y TÝ - LŨNG PÔ, 4N3Đ', 4, N'/Uploads/2023/12/35f690ad-080d-4269-a638-05dbc9ecf99e.jpg', N'NGÀY 01 | HÀ NỘI - NỘI BÀI - SAPA - MOANA (ĂN - / TRƯA / TỐI)
06h20: Quý khách có mặt tại điểm hẹn trên đường Trần Quang Khải được hẹn trước ngày khởi hành để làm thủ tục lên xe khởi hành đi Sapa theo hướng cao tốc Hà Nội - Lào Cai. Thông thường xe của chúng tôi sẽ di chuyển theo hướng Đại học Ngoại ngữ, Công viên Hòa Bình, KCN Thăng Long, Nội Bài và ra cao tốc. Do đó có thể đón Quý khách tại các điểm trên. Quý khách cần đăng ký điểm đón trước ngày khởi hành.

Lưu ý: Nếu Quý khách bay ra xuống Sân bay Nội Bài chuyến sớm và check out trước 07h45 thì chúng tôi sẽ hỗ trợ đón tại sân bay với chi phí đón trong sân bay là 50.000đ/khách hoặc những Quý khách bay ra từ đêm hôm trước và có đặt phòng nghỉ đêm tại các khách sạn khu vực Nội Bài chúng tôi sẽ đón tập trung tại điểm Ngã 3 Kim Anh (đầu cao tốc Hà Nội - Lào Cai, cách sân bay Nội Bài 03km trong khoảng thời gian 07h45-08h00).

13h00: Tới Sapa, Quý khách về khách sạn ăn trưa sau đó nhận phòng khách sạn, nghỉ ngơi.

Chiều: Hướng dẫn viên đón và đưa Quý khách bách bộ đến với cảnh điểm Moana với các công trình nhân tạo nhưng được bố trí hài hòa với thiên nhiên tạo nên một phong cảnh vừa độc, vừa lạ và vừa đẹp. Khu check-in cách nhà thờ đá 500m, với không gian trải nghiệm hơn 10.000m2, view ôm trọn dãy Hoàng Liên Sơn và đỉnh Fansipan hùng vĩ. Nơi đây gồm bảy hạng mục, tạo sức hút với giới trẻ bởi nhiều tiểu cảnh độc lạ. Đó là cổng trời Bali, tượng cô gái Moana, hồ vô cực, bàn tay vàng, xích đu tử thần, cây cô đơn, khu cà phê. 

18h00: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa, tìm hiểu đêm chợ tình Sapa vào các tối thứ 7 hàng tuần hay đơn giản là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng để sưởi ấm cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 02 | SAPA - FANSIPAN - BẢN CÁT CÁT (ĂN SÁNG / TRƯA / TỐI)
07h00: Quý khách ăn sáng tại khách sạn và nghỉ ngơi. Nhâm nhi ly cafe nóng buổi sáng tại nhà hàng.

08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách.

Từ ga trên, đi qua Cổng Trời Thanh Vân Đắc Lộ là đến được tới chốn mây ngàn. Bích Vân Thiền Tự nằm trên độ cao trên 2.000m đón du khách và Phật tử bốn phương bằng nét kiến trúc thuần Việt, giữa bảng lảng sương giăng; Rảo bước đi trong tiếng chuông vọng giữa mây ngàn gió núi, tới độ cao 3.000m, bạn thu vào tầm mắt Đại tượng Phật A Di Đà bằng đồng cao 21,5m, sừng sững uy nghiêm trong mây bay huyền ảo, hướng ánh nhìn từ bi xuống nhân gian. Trong thời khắc trầm mặc mà linh thiêng ấy, chắp tay nguyện cầu giữa tiết xuân đang tràn về ấm áp, giữa những chồi non của đỗ quyên, mâm xôi, đào mận… đang cựa mình, bật mầm mới, bạn sẽ thấy trong lòng những cánh hoa của tình thương yêu và hi vọng cũng đang bung nở; Từ Đại tượng Phật, con đường La Hán - nơi ngự tọa 18 bức tượng La Hán bằng đồng cao 2,5m từ bi, trầm mặc trong bảng lảng mây bay, sẽ dẫn bạn tới quần thể Kim Sơn Bảo Thắng Tự với vẻ đẹp cổ kính của những ngôi chùa gỗ Việt Nam từ thế kỷ 15-16, Quý khách cùng chiêm bái tượng Quan thế âm Bồ Tát, Miếu Sơn thần... Hòa quyện trong khung cảnh ấy là những cây đỗ quyên hàng trăm năm tuổi vươn mình trong giá rét, đang bật lên mầm nụ, chờ sang tháng 3, tháng 4 là bung nở những sắc trắng, vàng, đỏ, tím hồng…

Cuối cùng là sau khi đã vượt qua 600 bậc đá xanh, Quý khách đã lên tới đỉnh Fansipan trên độ cao 3.143m, nóc nhà của Đông Dương. Từ đây, phóng tầm mắt ra bốn bề xung quanh, mỗi người sẽ có những cảm xúc đặc biệt và những điều mong ước chỉ muốn giữ cho riêng mình.

Trưa: Trở lại thị trấn Sapa và ăn trưa tại nhà hàng.

Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông, thăm thác Tiên Sa cùng rất nhiều điểm chụp hình sống ảo khác trong khu du lịch. Thưởng thức show biểu diễn văn nghệ truyền thống (theo khung thời gian cố định tại nhà máy thủy điện cũ).

18h00: Ăn tối. Buổi tối tự do vui chơi. Quý khách có thể đi tắm lá thuốc Dao đỏ để thư giãn sau một ngày thăm quan để thư giãn và hồi phục sức khỏe (phí tự túc). Nghỉ đêm tại Sapa.

NGÀY 03 | SAPA - MƯỜNG HUM - Y TÝ (ĂN SÁNG / TRƯA / TỐI)
Sáng: Quý khách ăn sáng sau đó tự do vui chơi mua sắm. Gợi ý điểm thăm quan chụp hình (tự túc chi phí):

Thung lũng Mường Hoa
Vườn hoa cẩm tú cầu tại Sâu Chua; Vườn hồng cổ Sapa
Tu viện cổ Tả Phìn
Swing Sapa
11h30: Quay lại thị trấn Sapa trả phòng sau đó ăn trưa và nghỉ ngơi.

13h00: Quý khách lên xe đi Y Tý, mảnh đất vừa xa, vừa cao, vừa đẹp lại hùng vỹ. Trên đường Quý khách chụp hình với những cánh đồng ruộng bậc thang. Dừng chân chụp hình từ trên cao xuống một vùng thung lũng xinh đẹp với con suối khởi nguồn từ suối tình Mường Hum, cảm nhận vẻ đẹp của rừng già Y Tý.

16h30: Tới Y Tý, Quý khách nhận phòng nhà nghỉ tắm rửa sau đó ăn tối tại nhà hàng. Buổi tối tự do nghỉ ngơi, thư gian. Nghỉ đêm tại Y Tý.

NGÀY 04 | Y TÝ - LŨNG PÔ - HÀ NỘI (ĂN SÁNG / TRƯA / - )
Buổi sáng sớm, nếu như may mắn có thể bắt gặp được biển biển mây thì hướng dẫn viên sẽ đưa Quý khách đến vị trí tốt nhất để săn mây buổi sáng sớm. Nếu may mắn Quý khách sẽ có thể bắt gặp những biển mây nằm lặng im như đang ngủ ở dưới những thung lũng mà người ta hay gọi là biển mây Y Tý.

06h30: Quý khách ăn sáng sau đó đi thăm bản Choản Thèn cùng những nếp nhà hình nấm với những bức tường trình bằng đất của người Hà Nhì.

08h30: Trả phòng, thu dọn hành lý và lên xe đi Lũng Pô.

09h30: Thăm Cột Cờ Lũng Pô và chụp hình với Ngã 3 sông Hồng, nơi con sông Hồng chảy vào đất Việt.

11h30: Ăn trưa tại thành phố Lào Cai sau đó tự do mua sắm tại chợ cửa khẩu Cốc Lếu.

15h00: Quý khách lên xe ô tô về Hà Nội từ khu vực chân cầu Cốc San (Lào Cai).

19h00: Trả khách điểm đầu tiên sau khi hết cao tốc là tại Ngã 3 Kim Anh để Quý khách có thể bắt taxi vào sân bay Nội Bài (cách 3km) hoặc Quý khách có thể trả trước thêm chi phí 50.000đ/khách để xe đưa Quý khách vào tận trong sân bay.

20h00: Về đến điểm dừng xe tại Hà Nội. Kết thúc chương trình. Hẹn gặp lại Quý khách!', CAST(4300000 AS Decimal(18, 0)), 6, 7, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (25, N'SAPA - MOANA - FANSIPAN- CHỢ CÁN CẤU, 3n2đ, T6 hàng tuần', 3, N'/Uploads/2023/12/cff9c7fb-7913-4912-ac76-ca3d678c52c3.png', N'NGÀY 01 | HÀ NỘI - NỘI BÀI - SAPA - CÁT CÁT (ĂN - / TRƯA / TỐI)
06h20: Quý khách có mặt tại điểm hẹn trên đường Trần Quang Khải được hẹn trước ngày khởi hành để làm thủ tục lên xe khởi hành đi Sapa theo hướng cao tốc Hà Nội - Lào Cai. Thông thường xe của chúng tôi sẽ di chuyển theo hướng Đại học Ngoại ngữ, Công viên Hòa Bình, KCN Thăng Long, Nội Bài và ra cao tốc. Do đó có thể đón Quý khách tại các điểm trên. Quý khách cần đăng ký điểm đón trước ngày khởi hành.

Lưu ý: Nếu Quý khách bay ra xuống Sân bay Nội Bài chuyến sớm và hạ cánh trước 07h45 thì chúng tôi sẽ hỗ trợ đón tại sân bay với chi phí đón trong sân bay là 50.000đ/nhóm khách hoặc những Quý khách bay ra từ đêm hôm trước và có đặt phòng nghỉ đêm tại các khách sạn khu vực Nội Bài chúng tôi sẽ đón tập trung tại điểm Ngã 3 Kim Anh (đầu cao tốc Hà Nội - Lào Cai, cách sân bay Nội Bài 03km trong khoảng thời gian 07h45-08h00).

13h00: Tới Sapa, Quý khách về khách sạn ăn trưa sau đó nhận phòng khách sạn, nghỉ ngơi.

Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông tại bản, thăm thác Tiên Sa. Thưởng thức chương trình biểu diễn văn nghệ truyền thống tại nhà máy thủy điện cũ.

18h00: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa, tìm hiểu đêm chợ tình Sapa vào các tối thứ 7 hàng tuần hay đơn giản là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng để sưởi ấm cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 02 | SAPA - CHỢ CÁN CẤU - SAPA (ĂN SÁNG / TRƯA / TỐI)
06h30: Quý khách ăn sáng tại khách sạn.

07h00: Xe ô tô đón Quý khách tại khách sạn khởi hành đi Simacai để tận mắt chứng kiến một phiên chợ rất lớn và đặc sắc đó là Chợ phiên Cán Cấu. Đây là một chợ đặc trưng của đồng bào dân tộc thiểu số (chủ yếu là dân tộc Giáy, Mông và Hoa) nằm ven đường TL153 - một con đường đất duy nhất nối thị trấn Bắc Hà với thị trấn biên giới Si Ma Cai, thuộc địa phận xã Cán Cấu, huyện Si Ma Cai, tỉnh Lào Cai. Chợ thường họp vào các ngày: thứ Bảy hàng tuần, ngày lễ, tết trong năm, kéo dài từ sáng sớm đến quá trưa. Đây còn là chợ trâu lớn nhất Tây Bắc với hàng trăm con trâu được giao dịch trong mỗi phiên chợ.

10h00: Đến Chợ, Quý khách tự do mua sắm và tìm hiểu những nét văn hóa độc đáo của địa phương. Cùng hòa vào không khí tấp nập và vui vẻ tại chợ, đồng thời thử khả năng mua sắm với những người bản địa nơi đây.

12h00: Ăn trưa tại nhà hàng. Quý khách cũng có thể thưởng thức món ẩm thực đặc biệt của địa phương đó là món Thắng cố uống cùng rượu ngô Bắc Hà nổi tiếng.

13h30: Sau bữa trưa, Quý khách lên xe về lại Sapa.

17h00: Về lại khách sạn nghỉ ngơi.

18h00: Ăn tối. Buổi tối tự do vui chơi. Quý khách có thể đi tắm lá thuốc Dao đỏ để thư giãn sau một ngày thăm quan để thư giãn và hồi phục sức khỏe (phí tự túc). Nghỉ đêm tại Sapa.

NGÀY 03 | SAPA - FANSIPAN - HÀ NỘI (ĂN SÁNG / TRƯA / - )
07h00: Quý khách ăn sáng tại khách sạn và nghỉ ngơi. Nhâm nhi ly cafe nóng buổi sáng tại nhà hàng.

08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách.

Từ ga trên, đi qua Cổng Trời Thanh Vân Đắc Lộ là đến được tới chốn mây ngàn. Bích Vân Thiền Tự nằm trên độ cao trên 2.000m đón du khách và Phật tử bốn phương bằng nét kiến trúc thuần Việt, giữa bảng lảng sương giăng; Rảo bước đi trong tiếng chuông vọng giữa mây ngàn gió núi, tới độ cao 3.000m, bạn thu vào tầm mắt Đại tượng Phật A Di Đà bằng đồng cao 21,5m, sừng sững uy nghiêm trong mây bay huyền ảo, hướng ánh nhìn từ bi xuống nhân gian. Trong thời khắc trầm mặc mà linh thiêng ấy, chắp tay nguyện cầu giữa tiết xuân đang tràn về ấm áp, giữa những chồi non của đỗ quyên, mâm xôi, đào mận… đang cựa mình, bật mầm mới, bạn sẽ thấy trong lòng những cánh hoa của tình thương yêu và hi vọng cũng đang bung nở; Từ Đại tượng Phật, con đường La Hán - nơi ngự tọa 18 bức tượng La Hán bằng đồng cao 2,5m từ bi, trầm mặc trong bảng lảng mây bay, sẽ dẫn bạn tới quần thể Kim Sơn Bảo Thắng Tự với vẻ đẹp cổ kính của những ngôi chùa gỗ Việt Nam từ thế kỷ 15-16, Quý khách cùng chiêm bái tượng Quan thế âm Bồ Tát, Miếu Sơn thần... Hòa quyện trong khung cảnh ấy là những cây đỗ quyên hàng trăm năm tuổi vươn mình trong giá rét, đang bật lên mầm nụ, chờ sang tháng 3, tháng 4 là bung nở những sắc trắng, vàng, đỏ, tím hồng…

Cuối cùng là sau khi đã vượt qua 600 bậc đá xanh, Quý khách đã lên tới đỉnh Fansipan trên độ cao 3.143m,  nóc nhà của Đông Dương. Từ đây, phóng tầm mắt ra bốn bề xung quanh, mỗi người sẽ có những cảm xúc đặc biệt và những điều mong ước chỉ muốn giữ cho riêng mình.

Trưa: Trở lại thị trấn Sapa và ăn trưa tại nhà hàng.

12h45: Xe đưa Quý khách ra điểm xe giường nằm để làm thủ tục lên xe về Hà Nội

19h00: Trả khách điểm đầu tiên sau khi hết cao tốc là tại Ngã 3 Kim Anh để Quý khách có thể bắt taxi vào sân bay Nội Bài (cách 3km) hoặc Quý khách có thể trả trước thêm chi phí 50.000đ/khách để xe đưa Quý khách vào tận trong sân bay.

19h30: Về đến điểm dừng xe tại Hà Nội. Kết thúc chương trình. Hẹn gặp lại Quý khách!', CAST(3490000 AS Decimal(18, 0)), 18, 8, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (26, N'MỘC CHÂU - CẦU KÍNH BẠCH LONG - SĂN MÂY TÀ XÙA, 2 N1Đ', 2, N'/Uploads/2023/12/953e6b49-21e1-4ac6-a0d9-633c8a677bfe.png', N'NGÀY 01 | HÀ NỘI - MỘC CHÂU - CẦU KÍNH BẠCH LONG (ĂN - / TRƯA / TỐI)
05h45-06h00: Xe và hướng dẫn đón Quý khách tại Nhà hát lớn Hà Nội sau đó di chuyển tới đón khách tại BigC Thăng Long và Cổng số 1 Trung tâm Hội nghị Quốc Gia. Trên đường đi, xe dừng lại một nhà hàng địa phương để Quý khách tự túc ăn sáng và nghỉ ngơi.

09h00: Dừng chân trên đèo Thung Khe lộng gió để chụp ảnh và ngắm cảnh rừng núi hùng vỹ của Hòa Bình.

11h30: Đến Mộc Châu, Quý khách ăn trưa tại nhà hàng. Sau bữa trưa, xe tiếp tục đưa Quý khách đi tham quan chụp hình với:

Cầu kính Bạch Long được bắc qua hai ngọn núi có khoảng cách 285m, rộng 2,4m với các mảng kính cực lớn 2,4m x 3m. Áp dụng công nghệ hiệu ứng 9D với 60 hiệu ứng hình ảnh và âm thanh giả lập để tạo cảm giác; Glass Skywalk tiếp nối cầu chạy dài 370m trên vách đá (vực sâu 150m). Có 02 điểm nhô ra rộng 3m, dài 5m view ra toàn cảnh Khu du lịch để khách hàng chụp ảnh check in.
Đồi chè Trái tim, có lẽ đây không chỉ là đồi chè đẹp nhất của Cao nguyên Mộc Châu mà còn là đồi chè đẹp nhất của Việt Nam bởi những luống chè xanh mởn tròn trịa và uốn lượn xa ngút tầm mắt đưa đến một cảm giác lãng mạn và bình yên. Đây cũng chính là vùng nguyên liệu để sản xuất ra thương hiệu nổi tiếng chính là Ô Long trà.
Thung lũng mận Nà Ka với phong cảnh hoang sơ, đẹp và độc đáo nhất của Mộc Châu. Vào dịp cuối năm mùa hoa mận trắng tinh khôi phủ trắng cả thung lũng để rồi sau đó 3-4 tháng lại là mùa thu hoạch trái chín với tấp nập người bán kẻ mua và cả những du khách thập phương đến đây tham quan chụp hình và tự hái cho mình những gùi mận tươi ngon về làm quà. (Lưu ý: điểm Nà Ka chỉ đi vào khi vào mùa hoa mận hoặc vào hái quả, khi không phải mùa hoa hoặc mùa quả thì hướng dẫn viên sẽ dành thời gian cho các điểm thăm quan khác được dài hơn).
16h30: Xe từ Mộc Châu đưa Quý khách đi Bắc Yên (Sơn La).

19h00: Tới Bắc Yên. Quý khách ăn tối tại nhà hàng sau đó về khách sạn nhận phòng nghỉ ngơi. Buổi tối Quý khách tự do khám phá Bắc Yên về đêm. Nghỉ đêm tại Bắc Yên.

NGÀY 2 | BẮC YÊN - TÀ XÙA - SỐNG LƯNG KHỦNG LONG - HÀ NỘI (ĂN SÁNG / TRƯA / - )
04h45: Đoàn trả phòng và lên xe đi Tà Xùa.

06h00: Tới Sống Lưng Khủng Long. Quý khách ăn sáng tại nhà hàng địa phương và chờ những tia nắng bình minh đầu tiên nhô lên từ biển mây trắng xóa trong điều kiện thời tiết thuận lợi. Quý khách tự do ngắm cảnh & chụp hình với biển mây.

07h00: Đoàn tham quan:

Sống lưng Khủng long tại xã Háng Đồng. Nhìn từ trên cao, sống lưng khủng long trở nên huyền ảo hơn khi làn mây nhẹ trôi lãng đãng cùng những cơn gió mát lạnh sáng tinh sương. Đường trên sống lưng rộng chỉ chừng 1m với độ dốc gắt sỏi đá, chưa kể hai bên đều là vực sâu hun hút. Thế nhưng, cảnh quan thiên nhiên kỳ vĩ khi đứng trên đỉnh Tà Xùa thực sự là món quà cho những ai chinh phục được cung đường này.
Đỉnh Gió ngắm phong cảnh hùng vỹ nơi đây.
Ghé Thào Coffee thưởng thức tách cà phê nóng hổi & dõi mắt nhìn ra núi đồi hùng vĩ xung quanh (chi phí đồ uống tự túc).
Nếu còn thời gian, hướng dẫn viên sẽ hẹn giờ và hướng dẫn Quý khách có thể thuê xe ôm để tự do đi thăm quan và chụp hình với:
Điểm săn mây Tà Xùa - nơi có thể ngắm biển mây với góc nhìn panorama
Cây Cô đơn - điểm check in nổi tiếng của giới trẻ
Mỏm cá heo - điểm chụp hình sống ảo cực phê
12h00: Ăn trưa tại nhà hàng. Sau bữa trưa, Xe đưa Đoàn về lại Hà Nội. Trên đường về sẽ dừng chân tại thị trấn Thanh Sơn - Phú Thọ thưởng thức đặc sản thịt chua Thanh Sơn & mua về làm quà cho người thân.

19h00: Về tới Hà Nội. Kết thúc một hành trình hai trải nghiệm tuyệt vời tại Mộc Châu và Tà Xùa. Hướng dẫn viên chào tạm biệt Quý khách và hẹn gặp lại!', CAST(1600000 AS Decimal(18, 0)), 18, 6, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (27, N'CHÙA BÁI ĐÍNH - TRÀNG AN - HANG MÚA, 1 N', 1, N'/Uploads/2023/12/1bd70e59-1312-42b1-a10b-62834bcfeeea.jpg', N'NGÀY 1 | CHÙA BÁI ĐÍNH - TRÀNG AN - HANG MÚA (ĂN TRƯA)
07h00-07h30: Xe và hướng dẫn viên đón Quý khách tại các khách sạn trong phố cổ và Nhà hát lớn Hà Nội sau đó khởi hành đi Ninh Bình.

10h30: Tới Bái Đính. Hướng dẫn viên đưa Quý khách vào thăm chùa Bái Đính - ngôi chùa nổi tiếng với nhiều kỷ lục: Khuôn viên cả khu chùa Bái Đính có diện tích 107ha, trong đó, Điện thờ Tam Thế và Pháp Chủ rộng hàng ngàn mét vuông; tại ngôi chùa này có tượng Phật Tổ Như Lai bằng đồng lớn nhất Đông Nam Á (nặng 100 tấn) và ba pho tượng Tam Thế, mỗi pho nặng 50 tấn.

12h30: Quý khách về nhà hàng nghỉ ngơi ăn trưa.

13h30: Xe đưa Quý khách ra bến Tràng An, lên thuyền thăm Khu du lịch sinh Thái Tràng An - nơi những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí. Quý khác ngồi trên thuyền thư giãn và tham quan 4 hang động tự nhiên trong số những hang động đẹp nhất trong khu du lịch Tràng An là Hang Lấm, Hang Vạng, Hang Thánh Trượt và hang cuối cùng là Hang Đại. Quý khách còn dừng chân ghé thăm các điểm tâm linh như đền Suối Tiên và Hành Cung Vũ Lâm. Tuyến này sẽ rất phù hợp với những bạn trẻ, những người thích chụp ảnh Check in, Quý khách có thể có những trải nghiệm đầy đủ về hành trình ngồi đò thăm hang cũng như có thể lưu lại những cảm xúc, những bức hình đẹp trong hành trình về thăm Tràng An.

16h00: Điểm đầu tiên trong hành trình chính là Hang Múa, Quý khách bách bộ qua những lối đi vòng vèo được bao phủ bởi cây xanh và các kiến trúc non bộ đẹp mắt và sau đó là hành trình chinh phục đỉnh núi Hang Múa với 500 bậc đá. Tới đỉnh núi Múa, thu vào trong tầm mắt của Quý khách là tất cả đất trời của mảnh đất Hoa Lư rộng lớn với vẻ yên bình nhưng lộng lẫy như một bức tranh thủy mặc khiến không ít người chẳng thể kìm lòng mà vỡ òa cảm xúc. Trên hành trình trở lại, Quý khách sẽ ngang qua khu vực Đầm sen nằm giữa những rặng núi đá vôi tạo nên một khung cảnh cực kỳ thơ mộng và cổ trang. Quý khách có thể thuê những bộ đồ cổ trang để chụp hình tại đây.

17h30: Quý khách lên xe trở về Hà Nội.

20h00: Quý khách về đến Hà Nội. Kết thúc tour. Hẹn gặp lại quý khách!', CAST(900000 AS Decimal(18, 0)), 15, 7, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (28, N'TUYỆT TỊNH CỐC - TAM CỐC - HANG MÚA, 1 N', 1, N'/Uploads/2023/12/194000ff-6287-4bb0-b8b0-4981aba745ad.png', N'NGÀY 1 | TUYỆT TỊNH CỐC - TAM CỐC - HANG MÚA (ĂN TRƯA)
07h00-07h30: Xe và HDV đón Quý khách tại khu vực phố Cổ và Nhà hát lớn khởi hành đi Ninh Bình.

10h30: Đến Ninh Bình, xe đưa quý khách đến với Tuyệt Tịnh Cốc - Đây là nơi được coi là chốn bồng lai tiên cảnh của người xưa và nay đã trở thành một ốc đảo xanh tách biệt với thế giới bên ngoài; Quý khách tự do leo qua 205 bậc đá để đến với Động Am Tiên và Chùa Am Tiên ở lưng chừng núi. Động có hình giống như miệng con rồng, nên còn được gọi là hang rồng. Trong hang có nhiều nhũ đá có hình cây thóc, cây tiền, trái phật thủ, nụ hoa sen rủ xuống cùng những giọt nước. Chùa Am Tiên chính là nơi Thái hậu Dương Vân Nga xuất gia tu hành và dành những ngày cuối đời của mình tại đây; Đứng từ trên chùa Am Tiên nhìn xuống bạn sẽ thấy hồ nước trong xanh, nhìn thấu rong rêu mà dân gian gọi là Ao Giải được bao bọc xung quanh bởi vách núi dá, tạo nên cảnh đẹp như chốn bồng lai.

11h30: Tới Hang Múa, Quý khách bách bộ qua những lối đi vòng vèo được bao phủ bởi cây xanh và các kiến trúc non bộ đẹp mắt và sau đó là hành trình chinh phục đỉnh núi Hang Múa với 500 bậc đá. Tới đỉnh núi Múa, thu vào trong tầm mắt của Quý khách là tất cả đất trời của mảnh đất Hoa Lư rộng lớn với vẻ yên bình nhưng lộng lẫy như một bức tranh thủy mặc khiến không ít người chẳng thể kìm lòng mà vỡ òa cảm xúc. Trên hành trình trở lại, Quý khách sẽ ngang qua khu vực Đầm sen nằm giữa những rặng núi đá vôi tạo nên một khung cảnh cực kỳ thơ mộng và cổ trang. Quý khách có thể thuê những bộ đồ cổ trang để chụp hình tại đây.

13h00: Quý khách về nhà hàng nghỉ ngơi ăn trưa.

14h00: Hướng dẫn viên sẽ đưa quý khách lên thuyền đi thăm các hang động. Đi qua 3 hang: hang Cả, hang Hai, hang Ba. Ghé thăm ngôi đền Thái Vi, nơi thờ đức thánh Trần (Trần Hưng Đạo). Sau khoảng 2h đồng hồ quý khách trở lại bến Tam Cốc.

17h00: Quý khách lên xe trở về Hà Nội.

19h30: Về đến Hà Nội. Kết thúc chương trình. Hẹn gặp lại!', CAST(990000 AS Decimal(18, 0)), 21, 7, 3)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (29, N'TUYỆT TỊNH CỐC - TRÀNG AN - HANG MÚA, 1N', 1, N'/Uploads/2023/12/32043419-ca6e-4053-bad1-03f28629af28.png', N'NGÀY 1 | TUYỆT TỊNH CỐC - TRÀNG AN - HANG MÚA (ăn trưa)
07h00-07h30: Xe và HDV đón Quý khách tại khu vực phố Cổ và Nhà hát lớn khởi hành đi Ninh Bình.

10h30: Đến Ninh Bình, xe đưa quý khách đến với Tuyệt Tịnh Cốc - Đây là nơi được coi là chốn bồng lai tiên cảnh của người xưa và nay đã trở thành một ốc đảo xanh tách biệt với thế giới bên ngoài; Quý khách tự do leo qua 205 bậc đá để đến với Động Am Tiên và Chùa Am Tiên ở lưng chừng núi. Động có hình giống như miệng con rồng, nên còn được gọi là hang rồng. Trong hang có nhiều nhũ đá có hình cây thóc, cây tiền, trái phật thủ, nụ hoa sen rủ xuống cùng những giọt nước. Chùa Am Tiên chính là nơi Thái hậu Dương Vân Nga xuất gia tu hành và dành những ngày cuối đời của mình tại đây; Đứng từ trên chùa Am Tiên nhìn xuống bạn sẽ thấy hồ nước trong xanh, nhìn thấu rong rêu mà dân gian gọi là Ao Giải được bao bọc xung quanh bởi vách núi dá, tạo nên cảnh đẹp như chốn bồng lai.

11h30: Tới Hang Múa, Quý khách bách bộ qua những lối đi vòng vèo được bao phủ bởi cây xanh và các kiến trúc non bộ đẹp mắt và sau đó là hành trình chinh phục đỉnh núi Hang Múa với 500 bậc đá. Tới đỉnh núi Múa, thu vào trong tầm mắt của Quý khách là tất cả đất trời của mảnh đất Hoa Lư rộng lớn với vẻ yên bình nhưng lộng lẫy như một bức tranh thủy mặc khiến không ít người chẳng thể kìm lòng mà vỡ òa cảm xúc. Trên hành trình trở lại, Quý khách sẽ ngang qua khu vực Đầm sen nằm giữa những rặng núi đá vôi tạo nên một khung cảnh cực kỳ thơ mộng và cổ trang. Quý khách có thể thuê những bộ đồ cổ trang để chụp hình tại đây.

13h00: Quý khách về nhà hàng nghỉ ngơi ăn trưa.

14h00: Xe đưa Quý khách ra bến Tràng An, lên thuyền thăm Khu du lịch sinh Thái Tràng An - nơi những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí. Quý khác ngồi trên thuyền thư giãn và tham quan 4 hang động tự nhiên trong số những hang động đẹp nhất trong khu du lịch Tràng An là Hang Lấm, Hang Vạng, Hang Thánh Trượt và hang cuối cùng là Hang Đại. Quý khách còn dừng chân ghé thăm các điểm tâm linh như đền Suối Tiên và Hành Cung Vũ Lâm. Tuyến này sẽ rất phù hợp với những bạn trẻ, những người thích chụp ảnh Check in, Quý khách có thể có những trải nghiệm đầy đủ về hành trình ngồi đò thăm hang cũng như có thể lưu lại những cảm xúc, những bức hình đẹp trong hành trình về thăm Tràng An.

17h00: Quý khách lên xe trở về Hà Nội.

19h30: Quý khách về đến Hà Nội. Kết thúc tour. Hẹn gặp lại quý khách!', CAST(1100000 AS Decimal(18, 0)), 21, 6, 4)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (30, N'HCM-HÀ NỘI–SA PA–FANSIPAN–HÀ NỘI-HCM-4N', 4, N'/Uploads/2023/12/7ec910b7-0370-4654-bff2-711694ad83cb.png', N'NGÀY 01 | ĐÓN SÂN BAY – HÀ NỘI CITY TOUR (ĂN: T/C)
Sáng: Xe và HDV đón quý khách tại sân bay Nội Bài, về Hà Nội nhận phòng khách sạn, ăn trưa.

Chiều: Đoàn đi tham quan Hồ Gươm, Tháp Rùa, Đền Ngọc Sơn, Chụp ảnh tại Nhà Hát Lớn Thành Phố, Ngồi xe điện tham quan phố cổ Hà Nội, với Hàng Ngang, Hàng Đào, Chợ Đồng Xuân… tham quan Hồ Tây, chùa Trấn Quốc ngôi chùa có lịch sử lâu đời nhất Hà Nội. Đoàn dùng bữa tối tại nhà hang.

Tối: Quý khách tự do dạo chơi, khám phá 36 phố phường Hà Nội về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 02 | LÀO CAI – SA PA – LEO FANSIPAN (ĂN: S/T/C)
Sáng: Sau khi ăn sáng quý khách trả phòng khách sạn , Xe đưa đoàn lên khu du lịch Sapa – nơi mà người Pháp xưa gọi là “kinh đô mùa hè của xứ Bắc Kỳ”. Đến Sapa quý khách ăn trưa, nhận phòng.

Chiều: ĐI CÁP TREO FANSIPAN (PHỤ THU 750.000VND/KHÁCH và Xe Lửa lên đỉnh núi 180.000đ/ khách

Xe đưa quý khách đi tham quan Quý khách Chinh phục đỉnh Fansipan bằng hệ thống cáp treo lớn và hiện đại nhất Thế Giới hiện này ( 1 cabin có thể ngồi từ 34-35 người) Tới đỉnh Fansipan quý khách thưởng thức cảm giác đứng trên mây, ngắm nhìn thị trấn Sapa, sau đó tiếp tục leo 639 bậc để tận mắt thấy cột mộc Fansipan độ cao 3.143m nơi được coi là “nóc nhà Đông Dương”. Đến nhà hàng ăn tối

Tối: Quý khách đi dạo chơi TT.Sapa về đêm, tự do thưởng thức: Thắng Cố, cơm lam, lợn cắp nách, khoai nướng, bắp nướng…Nghỉ đêm tại thị trấn Sapa.

NGÀY 03 | SA PA – LÀO CAI – BẢN CÁT CÁT - HÀ NỘI (ĂN: S/T/C)
Sáng: Xe đưa quý khách đi tham quan Bản Cát Cát - địa bàn cư trú của người H''Mông, ngắm cảnh hùng vĩ của núi rừng Tây Bắc, thăm quan Thác Thuỷ Điện do Pháp xây dựng. Đến nhà hàng ăn trưa.

Chiều: Thăm quan TP. Lào Cai, Cửa khẩu Lào Cai, thăm quan chợ vùng biên Cốc Lếu. Khởi hành về Hà Nội.

Tối: Đến Hà Nội quý khách ăn tối. Sau đó nhận phòng khách sạn và nghỉ đêm tại Hà Nội.

NGÀY 04 | HÀ NỘI – TIỄN SÂN BAY (ĂN: S/T)
Sáng: Quý khách vào Viếng Lăng Chủ Tịch Hồ Chí Minh, Phủ Chủ Tịch, Ao Cá Nhà Sàn, Chùa Một Cột, sau đó tham quan Văn Miếu - Quốc Tử Giám trường Đại học đầu tiên của Việt Nam, mua đặc sản Hà Nội. Ăn trưa tại nhà hàng

Chiều: Xe đưa quý khách đi Sân Bay Nội Bài. Chào tạm biệt, kết thúc chương trình.
', CAST(6800000 AS Decimal(18, 0)), 6, 7, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (31, N'VÂN ĐỒN- HẠ LONG - NINH BÌNH - HÀ NỘI - SAPA, 4N3D-NOEL', 4, N'/Uploads/2023/12/785db19f-2acb-4c9c-9451-888b4755636b.png', N'NGÀY 1 | SÀI GÒN -VÂN ĐỒN - HẠ LONG (Ăn trưa, ăn chiều)
- Buổi sáng, Nhân viên Công ty du lịch sẽ làm thủ tục chuyến bay Sài Gòn – Vân Đồn (Quảng Ninh) trên chuyến bay VJ230 6:45 - 09:00 (hoặc đến HẢI PHÒNG) đến nơi hướng dẫn viên và xe đưa Quý khách ra bến tàu, lên du thuyền tham quan Vịnh Hạ Long – Đệ nhất thắng cảnh của Bắc Bộ.

- Buổi trưa, Qúy khách ăn trưa trên tàu và tiếp tục tham quan động Thiên Cung, đi qua Hòn Chó Đá, Lư Hương, Gà Chọi, tận hưởng vẻ đẹp Vịnh Hạ Long di sản thiên nhiên thế giới với khí hậu trong lành từ trên du thuyền. Với vẻ đẹp như một bức trang thủy mặc mà Mẹ thiên nhiên đã ban tặng Vịnh Hạ Long cho con người. Sau đó quý khách lên bờ về khách sạn nhận phòng.

- Buổi chiều, Đoàn dùng bữa chiều tại nhà hàng.

- Buổi tối, Quý Khách tự do đi dạo Hạ Long về đêm hoặc vào khu Sunworld Halong ,đi cáp treo Nữ Hoàng ngắm Hạ Long - lên Vòng xoay Mặt Trời cao 215m, vườn Nhật… (chi phí tự túc). -Quý khách nghỉ đêm tại Khách Sạn 5 sao- Royal Hotel Hạ Long

- Tự do vui chơi mua sắm tại chợ đêm.

NGÀY 2 | HẠ LONG - NINH BÌNH - HÀ NỘI (Ăn sáng, ăn trưa, ăn chiều)
- Buổi sáng, ăn sáng tại khách sạn, trả phòng và khởi hành đi Ninh Bình.

- Tham quan chùa Bái Đính, một ngôi chùa với Sơn Thủy hòa hợp, một cảnh non thiên hùng vĩ chính nơi đây Vua Lê Thánh Tông đã đến viếng và ban tặng bốn câu thơ:

Đính Sơn danh tiếng thực cao xa

Che chở kinh thành tự thuở xưa

Nhân kiệt, địa linh nên vượng khí

Núi thiêng cảnh đẹp vững sơn hà.

- Quý Khách viếng và chiêm bái ngôi chùa chiếm giữ nhiều kỷ lục nhất Đông Nam Á.

- Buổi trưa, Qúy khách ăn trưa và tham quan Khu du lịch sinh thái – danh thắng Tràng An (một quần thể núi non, hang động, sông suối được ví như Hạ Long trên cạn).

- Qúy khách khởi hành về Hà Nội, xe đưa quý khách dạo quanh bờ hồ Hoàn Kiếm nghe hướng dẫn viên thuyết minh về lịch sử hồ, Đoàn ăn chiều nhận phòng nghỉ ngơi.

- Buổi tối, Quý khách tự do dạo Chợ đêm Phố cổ vào tối thứ 6, 7, chủ nhật, hoặc những trung tâm thương mại lớn như: Royalcity, Timecity, Vincom, Tràng Tiền Plaza…. nghỉ đêm tại Hà Nội.

NGÀY 3 | HÀ NỘI - LÀO CAI - SAPA (Ăn sáng, ăn trưa, ăn chiều)
- Buổi sáng, ăn sáng tại khách sạn, trả phòng xe đưa Đoàn đi ngang ngắm nhìn lăng Bác sau đó khởi hành đi SaPa theo đường cao tốc Nội Bài – Lào Cai. Trên đường Quý khách chiêm ngưỡng vẽ đẹp hùng vĩ của núi rừng Tây Bắc.

- Buổi trưa, Đến thành phố Lào Cai dùng cơm trưa và tiếp tục hành trình 38km sẽ đến với Sapa.

- Buổi chiều, Qúy khách lên đỉnh Phanxipăng bằng cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1.410 mét và cáp treo ba dây dài nhất thế giới: 6.292 mét. Sau đó Quý khách lên đỉnh cao 3143m (Chi phí tự túc vé tham khảo cáp treo 750.000vnđ/vé)

- (Qúy khách vui lòng mang theo áo lạnh, mũ len vì trên đỉnh Phanxipang gió lạnh, quý khách nào bị huyết áp, tim mạch, bệnh đường hô hấp đươc khuyến cáo không nên đi).

- Buổi chiều, Đoàn dùng bữa chiều tại nhà hàng.

- Buổi tối, Quý khách đi dạo Sapa về đêm, tham quan nhà thờ Đá, chợ tình Sapa vào tối thứ 7 và chủ nhật hàng tuần, nghỉ đêm tại Sapa.

NGÀY 4 | SAPA - NỘI BÀI - SÀI GÒN (Ăn sáng, ăn trưa)
- Buổi sáng, Quý khách chinh phục đỉnh Hàm Rồng, lên đến Cổng Trời, hòn Phụ Tử, chiêm ngưỡng phong cảnh Sapa trong sương mờ. Hoặc bản Cát Cát nơi sinh sống của dân tộc H’mông.

- Quý khách trả phòng, tạm biệt SaPa.

- Xe đưa đoàn trở lại Lào Cai, ghé chợ Cốc Lếu mua sắm hàng Trung Quốc. Tham quan chụp ảnh cửa khẩu Hà khẩu Việt Nam – Trung Quốc.

- Sau đó Quý khách khởi hành trên Cao Tốc Lào Cai – Hà Nội trở về sân bay Nội Bài khởi hành về Sài Gòn trên chuyến bay VJ197/VJ149.

- Về đến sân bay Tân Sơn Nhất chia tay đoàn hẹn ngày gặp lai.
', CAST(8650000 AS Decimal(18, 0)), 20, 8, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (32, N'VÒNG CUNG TÂY BẮC 2 HÀ NỘI,ĐỀN HÙNG-NGHĨA LỘ-MÙ CANG CHẢI,ĐIỆN BIÊN,LAI CHÂU,MỘC CHÂU,HOÀ BÌNH', 5, N'/Uploads/2023/12/9623d772-4f3d-4a89-b717-6432e0ed2d67.png', N'NGÀY 1 | SÀI GÒN - HÀ NỘI - PHÚ THỌ - NGHĨA LỘ (Ăn trưa, ăn chiều)
- Buổi sáng, Nhân viên Công ty sẽ làm thủ tục chuyến bay Sài Gòn – Nội Bài trên chuyến bay SGN-HAN 07:15

- Xe và hướng dẫn viên đón quý khách chào mừng Quý Khách đến với vùng đất Bắc Hà và khởi hành cho chuyến hành trình khám phá thắng cảnh Tây Bắc.

- Đoàn đến Phú Thọ, dừng chân thăm viếng Đền Hùng, một nơi mà du Khách đã nghe rất nhiều qua sử sách, nơi xuất phát giống nòi Con Rồng Cháu Tiên nơi thể hiện bản sắc dân tộc và đạo lý “uống nước nhớ nguồn”, tưởng nhớ và tri ân công lao dựng nước của Tổ tiên người Việt. Đoàn tham quan Đền Hạ - Đền Trung – Đền Thượng…

“Dù ai đi ngược về xuôi

Nhớ ngày giỗ tổ mùng mười, tháng ba”

- Sau đó dùng cơm trưa và tiếp tục hành trình đến Nghĩa Lộ - Tỉnh Yên Bái.

- Buổi chiều, Đoàn dùng bữa tối tại nhà hàng. Sau đó Quý Khách nhận phòng khách sạn nghỉ ngơi tự do thư giãn và dạo phố.

NGÀY 2 | NGHĨA LỘ - MÙ CANG CHẢI - LAI CHÂU (Ăn sáng, ăn trưa, ăn chiều)
- Buổi sáng, Qúy khách dùng điểm tâm sáng tại khách sạn.

- Đoàn trả phòng khách sạn và khởi hành đi Mù Cang Chải, trên đường đoàn dừng chân thăm ngắm thung lũng Tú Lệ - một trong những danh thắng bậc nhất của Việt Nam, được ví như cô gái miền sơn cước vô cùng xinh đẹp, từ những sóng ruộng bậc thang nằm lẻ loi trên sườn núi đến những ngôi nhà bằng gỗ nhỏ cheo leo thoắt ẩn thoắt hiện giữa đỉnh trời.

- Sau đó đoàn chinh phục đèo Khau Phạ - một trong tứ đại đỉnh đèo vùng núi Đông – Tây Bắc. Lên đến đỉnh đèo cũng là lúc quý khách được mở rộng tầm mắt khắp thung lũng Lìm Mông, tại đây quý khách chiêm ngưỡng ruộng bậc thang mùa lúa chín tuyệt đẹp.

- Đoàn di chuyển bằng xe ôm thăm cánh đồng ruộng bậc thang như đồi Mâm Xôi, đồi Móng Ngựa… và tiếp tục Quý Khách đến tham quan chụp hình rừng Trúc Mù Cang Chảy.

- Đoàn quay lại xe, di chuyển đến Than Uyên – Tân Uyên dừng lại chụp hình các đồi Chè bạt ngàn. Dọc theo quốc lộ 32 về Lai Châu, Quý khách được tìm hiểu cuộc sống, văn hóa của đồng bào dân dộc Mông Đen, Mông Đỏ, Mông Xanh và Mông Trắng, ngắm “thiên đường” của ruộng bậc thang tại La Pán Tẩn, lưu lại những bức hình ý nghĩa.

- Buổi chiều, Đoàn dùng bữa chiều tại nhà hàng.

- Buổi tối, Quý Khách tự do thư giãn và dạo phố đêm tại Thành Phố Lai Châu.

NGÀY 3 | LAI CHÂU - ĐIỆN BIÊN (Ăn sáng, ăn trưa, ăn chiều)
- Buổi sáng, Quý khách ăn sáng tại khách sạn và trả phòng.

- Đoàn di chuyển đến tham quan hang động Pu Sam Cap, theo tiếng Thái “Pu Sam Cáp” có nghĩa là ba quả núi lớn chồng lên nhau. Pu Sam Cáp là tên gọi dãy núi đá vôi dạng địa hình karst. Quần thể hang động Pu Sam Cáp nằm men theo đường tỉnh lộ 129 đi cao nguyên Sìn Hồ, cách trung tâm thị xã Lai Châu chừng 6km về phía Tây trên độ cao 1.700m so với mực nước biển.

- Đoàn khởi hành đi Điện Biên, xe di chuyển dọc theo con sông Nậm Na, vượt Cầu Hang Tôm đến thị xã Mường Lay Quý Khách dừng chân nghỉ ngơi

- Đến Điện Biên, Đoàn khởi hành tham quan các di tích nổi tiếng tại đây như:

- Bảo Tàng lịch sử Điện Biên Phủ – Bảo tàng có 5 khu trưng bầy với 274 hiện vật và 122 bức tranh theo từng chủ đề: Vị trí chiến lược, Tập đoàn cứ điểm của địch, Đường lối chỉ đạo của Đảng, Ảnh hưởng của chiến thắng Điện Biên Phủ và Điện Biên Phủ ngày nay. đặc biệt chiêm ngưỡng

Bức Tranh Panorama - tái hiện toàn cảnh Chiến dịch Điện Biên Phủ, đây là tác phẩm đi vào lịch sử của Việt Nam, với hơn 6 năm khởi công và Hoàn Thành.

- Viếng tượng đài chiến thắng đồi A1 – nghe thuyết minh về trận chiến và sự mất mát của chiến dịch điện biên phủ tại đồi A1.

- Tham quan chụp hình hầm chỉ huy của Tướng Đờ Cát.

- Đoàn nhận phòng, quý khách tự do dạo phố Điện Biên về đêm, thưởng thức đặc sản Tây Bắc.

 NGÀY 4 | ĐIỆN BIÊN - SƠN LA - MỘC CHÂU (Ăn sáng, ăn trưa, ăn chiều)
- Buổi sáng, Quý khách ăn sáng tại khách sạn, trả phòng khởi hành đi Sơn La.

- Đến thăm Khu Di Tích Lịch Sử Mường Phăng: đây chính là Sở chỉ huy chiến dịch Điện Biên Phủ, là nơi ở và làm việc của Đại tướng Võ Nguyên Giáp, Tham mưu trưởng Hoàng Văn Thái và Bộ chỉ huy chiến dịch năm xưa.

- Đoàn vượt đèo Tằng Quái, đèo huyền thoại Pha Đin dài 32km vẫn còn văng vẳng bóng đoàn quân xưa (Đèo Pha Din anh thồ, chị gánh...) là một trong tứ đại đèo nổi tiếng.

- Qúy khách tiếp tục khởi hành đi Mộc Châu, Quý khách tham quan Cầu kính Bạch Long được xây dựng tại xã Mường Sang, huyện Mộc Châu, có tổng chiều dài 632 m. Hiện cầu kính Bạch Long đã được công nhận Kỷ lục Guinness "Cầu kính đi bộ dài nhất thế giới". (phí tự túc )

- Buổi tối Quý Khách tự do khám phá thành phố Cao Nguyên về đêm, nghỉ đêm tại Mộc Châu.

NGÀY 5 | MỘC CHÂU - HÒA BÌNH - NỘI BÀI - SÀI GÒN (Ăn sáng, ăn trưa)
- Buổi sáng, Sau khi ăn sáng tại khách sạn. Quý khách trả phòng.

- Quý khách khởi hành đi thành phố Hòa Bình. Trên đường Quý Khách sẽ được ngắm cảnh, chụp ảnh đồi chè, đồng cỏ, vườn hoa cải (theo mùa). Thưởng thức ly sữa tươi, mua đặc sản sữa bò Mộc Châu và các loại bánh kẹo làm từ sữa tươi đặc sản Mộc Châu.

- Đoàn dừng chân chụp ảnh đèo Đá Trắng với núi non trùng điệp mây phủ như tranh thủy mặc.

- Qúy khách ghé tham quan thủy điện Hòa Bình, ngắm toàn cảnh thành phố và dòng sông Đà uốn khúc.

- Sau đó Quý khách khởi hành trở về sân bay Nội Bài đáp chuyến bay về Sài Gòn trên chuyến bay HAN-SGN 20:05.

- Về đến sân bay Tân Sơn Nhất chia tay đoàn hẹn ngày gặp lai.', CAST(10750000 AS Decimal(18, 0)), 18, 6, 8)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (33, N'ĐẢO NGỌC PHÚ QUỐC-GRAND WORLD–SHOW SẮC MÀU VENICE-3N2D', 3, N'/Uploads/2023/12/e0b7bcc4-70d5-452f-a8fd-b5bcae23854d.png', N'NGÀY 1 | HCM - DINH CẬU PHÚ QUỐC (Ăn trưa, chiều)
HDV đón quý khách tại sân bay Tân Sơn Nhất, làm thủ tục check in cho quý khách đáp chuyến bay đi Phú Quốc.

- Xe và hướng dẫn đón khách ở sân bay Phú Quốc đưa đoàn về nhận phòng ( nếu có phòng sớm )

- Trưa: Xe và HDV đưa đoàn đi ăn trưa nhà hàng. Sau đó, Qúy khách về nhận phòng khách sạn nghỉ ngơi

- Chiều: Quý khách lựa chọn tham quan một trong các chương trình sau:

Lựa chọn 1: Tham quan Đông đảo:

- Vườn tiêu Phú Quốc: là vườn tiêu lớn nhất ĐBSCL và được mệnh danh là “Vương quốc hồ tiêu” nổi tiếng chắc hạt, thơm ngon

- Làng chài cổ Hàm Ninh: nằm trên bờ biển phía Ðông đảo. Nơi đây nổi tiếng với nghề đánh bắt lưới ghẹ, cá ngựa, hải sâm, hái rong biển. Quý khách có dịp thưởng thức hải sản tươi vừa đánh bắt với giá gốc. Đặc sản ghẹ Hàm Ninh ngay tại bè

- Cơ sở ủ rượu vang Sim: một đặc sản của hòn Đảo vô cùng nổi tiếng mà ai cũng đều biết đến. Khi đến tham quan, quý khách sẽ được thưởng thức rượu Sim rừng, mật sim và siro sim miễn phí. Đặc biệt tự do dạo và chụp ảnh với vườn sim

- Quý khách khởi hành tham quan Dinh Bà - Dinh Cậu và tự do dạo chợ thưởng thức các đặc sản của người dân phú quốc.

Lựa chọn 2: Safari, Vinwonder, Gran world: ( chi phí tự túc – đi xe bus của Vinwonders đưa đón )

- Grand World – thành phố giải trí không ngủ “ ( vào cổng miễn phí ). Qúy khách thưởng thức đặc sản “ Bún Quậy Phú Quốc Kiến Xây “ tại trung tâm Grand World ( chi phí tự túc ), sau đó tự do check in, sống ảo miễn phí trung tâm mua sắm sầm uất, lễ hội độc đáo, đa dạng bậc nhất Đông Nam Á xuyên suốt 24h, tại khu vực Hồ Tình Yêu thưởng thức show “ Sắc Màu Venice “ - Dâng chào cảm xúc với câu chuyện tình bên sông Venice của chàng họa sĩ và nàng tiểu thư được thể hiện bằng show nhạc nước kết hợp công nghệ mapping hình ảnh và các diễn viên múa chuyên nghiệp

- Vườn thú Safari ( vào cổng có phụ thu ): vườn thú bán hoang dã theo mô hình quốc tế lớn nhất Đông Nam Á, tại đây du khách sẽ được tận mắt ngắm nhìn những loài động quý hiếm như thể chúng đang sống ngoài môi trường tự nhiên

- Vinwonders Phú Quốc ( vào cổng có phụ thu ) : được ví như một “Disneyland” với hàng trăm trò chơi trong nhà và ngoài trời dành cho mọi lứa tuổi

- Chơi các trò chơi cảm giác mạnh - Biểu diễn cá heo

- Tàu lượng siêu tốc - Đu quay vòng xoay

- Thủy cung (hàng ngàn loài sinh vật biển và bò sát quý hiếm)

- Sân khấu nhạc nước hoành tráng - Phố mua sắm và ẩm thực đường phố

- Tối: Qúy khách dùng bữa tối tại Nhà hàng địa phương. Sau đó q b uý khách về khách sạn nghỉ ngơi, tự do dạo phố biển. Riêng khách lựa chọn 2 sẽ tự túc ăn tối - hoàn lại tiền ăn ( vui lòng báo trước 01 ngày )

NGÀY 2 | AM ĐẢO - CÂU CÁ NGẮM SAN HÔ (Ăn 3 bữa)
- Buổi sáng: Quý khách dùng điểm tâm sáng tại khách sạn, sau đó xe và hướng dẫn đưa du khách tham quan khu vực Nam Đảo:

 - Cơ sở nuôi cấy ngọc trai Ngọc Hiền: (liên doanh nước ngoài) – một trong những cơ sở ngọc trai lớn nhất Phú Quốc, tìm hiểu về quy trình nuôi trai lấy ngọc và xem mổ trai lấy ngọc tại bàn và tham quan mua sắm các sản phẩm làm từ Trai

- Di tích lịch sử nhà tù Phú Quốc: xem film tư liệu và những hình ảnh biết nói, cảm nhận nỗi đau của các chiến sĩ yêu nước và sống với niềm tự hào dân tộc

- Đoàn lên tàu tham gia câu cá và lặn ngắm san hô. Sau đó đoàn dùng cơm trưa trên tàu. Sau khi kết thúc chương trình trên biển đoàn di chuyển vào đất liền

- Cơ sở nước mắm Phú Quốc: thương hiệu hiện đã được bảo hộ trên toàn thế giới. Quý khách sẽ tham quan cơ sở Khải Hoàn/Phụng Hưng với cách ủ truyền thống có lịch sử hơn 100 năm phát triển tại Phú Quốc

- Chùa Hộ Quốc: một ngôi chùa thuộc thiền viện Trúc Lâm Phái thiền tọa lạc trên đỉnh núi rồng mặt hướng ra biển đông, huyền bí và uy nghi. Đến đây quý khách ngoài viếng chùa cầu an lành còn có thể tận hưởng không khí mát mẻ, có cho mình những bức ảnh kỷ niệm tuyệt vời nhất.

- Ăn tối,Xe đưa quý khách về lại khách sạn trung tâm nghỉ ngơi. Nghỉ đêm tại Phú Quốc

NGÀY 3 | TẠM BIỆT PHÚ QUỐC -TP. HỒ CHÍ MINH (Ăn sáng)
Buổi Sáng: Đoàn dùng điểm tâm sáng tại nhà hàng và thư giãn tự do tắm biển hoạc hồ bơi:

- Qúy khách làm thủ tục trả phòng trước 12h00. ( Nếu chuyến bay du khách về chiều hoặc tối, du khách gửi hành lý tại khách sạn và có thể đi Safari hoặc Vinwonder bằng xe bus của khu vui chơi - vé vào cổng tự túc

- Xe và hướng dẫn đón du khách tại khách tại khách sạn và đưa Quý khách ra sân bay Phú Quốc, làm thủ tục lên máy bay. Kết thúc chuyến đi vui vẻ chia tay hẹn tái ngộ cùng Quý khách trên các chuyến tour trong nước và quốc tế.

Lưu ý : Thứ tự các điểm tham quan trong chương trình có thể thay đổi tùy tình hình thực tế nhưng vẫn đảm bảo đầy đủ các điểm tham quan !', CAST(7900000 AS Decimal(18, 0)), 7, 6, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (34, N'DU LỊCH HÈ: ĐÀ NẴNG-SƠN TRÀ- BÀ NÀ -HỘI AN - HUẾ, 4N3D, T4,T7 HÀNG TUẦNDU LỊCH HÈ:ĐÀ NẴNG-SƠN TRÀ- BÀ NÀ -HỘI AN - HUẾ, 4N3D, T4,T7 HÀNG TUẦN', 4, N'/Uploads/2023/12/de90b03c-8fba-4af9-8cba-d9ab41e50f29.png', N'NGÀY 01 | HỒ CHÍ MINH-ĐÀ NẴNG - SƠN TRÀ – HỘI AN (Ăn trưa, ăn tối)
- Sáng-trưa:Đón quý khách tại Đà Nẵng (Sân bay, Ga, Bến Xe...) từ 07h00 đến 13h00 đưa đi ăn trưa với đặc sản nổi tiếng Đà Nẵng “Bánh tráng thịt heo 2 đầu da & Mỳ Quảng”. Nhận phòng K/sạn nghỉ ngơi.

- Chiều: Khởi hành đi tham quan một vòng Bán Đảo Sơn Trà – được mệnh danh là lá phổi xanh của Đà Nẵng, là ngôi nhà chung của rất nhiều loài động vật quý hiếm như vooc chà vá chân nâu, mèo rừng…, quý khách tham quan Chùa Linh Ứng - là một trong tứ trấn rất tâm linh của Đà Nẵng, nơi có tượng Phật Bà 65m cao nhất Việt Nam với lốc kiến trúc rất độc đáo hướng nhìn ra biển lớn. Tiếp tục vào Hội An bách bộ tham quan và mua sắm Phố Cổ với: Chùa Cầu Nhật Bản, Bảo tàng văn hóa Sa Huỳnh, Nhà Cổ hàng trăm năm tuổi, Hội Quán Phước Kiến & Xưởng thủ công mỹ nghệ.

- Tối: Ăn tối nhà hàng tại Hội An. Về lại Đà Nẵng tự do dạo chơi về đêm. Ngủ KS tại Đà Nẵng.

NGÀY 02 | LÀNG ĐÁ MỸ NGHỆ - BÀ NÀ - BIỂN MỸ KHÊ (Ăn sáng, trưa Option, ăn tối)
- Sáng: Khởi hành đi tham quan Làng Đá Mỹ Nghệ Non Nước – là Làng nghề truyền thống nổi tiếng và lâu đời của Đà Nẵng, dưới bàn tay tài hoa và điêu luyện của các nghệ nhân, hàng loạt sản phẩm điêu khắc đá phục vụ đời sống sinh hoạt và đời sống tâm linh như bát đĩa, bình hoa, tượng phật, tượng La hán, tượng Champa…được chế tác một cách vô cùng tinh tế và đẹp mắt. Quý khách tiếp tục khởi hành đến khu du lịch Bà Nà (Tự túc chi phí Option Bà Nà theo giá của Sun Group). Quý khách được chiêm ngưỡng hệ thống cáp treo lập nhiều kỷ lục thế giới và được công nhận là 1 trong 10 hệ thống cáp treo ấn tượng nhất thế giới.

- Trưa: Ăn trưa nhà hàng Buffet tại Bà Nà (Nếu quý khách không đăng ký đi Bà Nà thì tự túc chi phí ăn trưa)

- Chiều: Quý khách thả mình vào không gian tuyệt đẹp như nước Pháp và khí hậu tuyệt vời được ví như Đà Lạt của miền Trung, tham quan vườn hoa, hầm rượu, chùa Linh Ứng, Thích Ca Phật Đài, đặc biệt là chiêm ngưỡng và chụp ảnh Cầu Vàng, cây cầu có kiến trúc độc nhất vô nhị với đôi bàn tay khổng lồ nâng đỡ Cầu Vàng tuyệt đẹp. Quý khách xuống cáp về lại trung tâm và được thoải mái tắm biển Mỹ Khê, là một trong rất ít bãi biển đẹp nhất hành tinh.

- Tối: Ăn tối nhà hàng. Quý khách ngồi thuyền sông Hàn (Chi phí tự túc) ngắm thành phố Đà Nẵng lung linh về đêm với hàng loạt cây Cầu nổi tiếng và độc đáo nhất như Cầu Rồng (Phun Lửa, Nước vào thứ Bảy và Chủ Nhật hàng tuần), Cầu Quay Sông Hàn, Cầu Trần Thị Lý… Ngủ KS tại Đà Nẵng

NGÀY 03 | ĐÀ NẴNG-HUẾ-ĐẠI NỘI–CHÙA THIÊN MỤ (Ăn sáng, ăn trưa, ăn tối)
- Sáng: Điểm tâm. Rời Đà Nẵng đi Cố Đô Huế,hành trình xuyên hầm đường bộ đèo Hải Vân đến Huế nhận phòng KS nghỉ ngơi.

- Trưa: Ăn trưa nhà hàng tại Huế

-Chiều:Tham quan Đại Nội (Hoàng Cung của 13 vị vua triều Nguyễn, triều đại phong kiến cuối cùng của Việt Nam: Ngọ Môn, Điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh) và Chùa Thiên Mụ cổ kính, xây dựng từ những năm đầu của thế kỉ XVII

- Tối: Ăn tối nhà hàng. Quý khách thưởng ngoạn Ca Huế sông Hương và thả hoa đăng cầu may mắn, mạnh khỏe, hạnh phúc (Chi phí tự túc). Ngủ KS tại Huế.

NGÀY 04 | LĂNG TỰ ĐỨC – LÀNG HƯƠNG THỦY XUÂN-HỒ CHÍ MINH (Ăn sáng, ăn trưa)
- Sáng: Điểm tâm. Tham quan Lăng Tự Đức – được mệnh danh là một trong những công trình đẹp nhất thời nhà Nguyễn, với kiến trúc mang đậm nét truyền thống nhưng tinh tế, bao bọc bởi một không gian xanh mượt của cây xanh và hồ nước hòa quyện tạo cảm giác rất nên thơ và hữu tình. Quý khách tiếp tục đến với Làng nghề làm Hương và Nón lá – là làng nghề truyền thống lâu đời ở xứ Huế, nơi đây thu hút rất nhiều du khách thích sống ảo bởi khung cảnh rực rỡ của những bó hương đa sắc xanh, đỏ, tím, vàng.

- Trưa: Ăn trưa nhà hàng. Tiễn khách sân bay Huế lúc 13h00. Chào thân ái.Kết thúc chương trình.', CAST(7500000 AS Decimal(18, 0)), 8, 7, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (35, N'ĐÀ NẴNG-BÀ NÀ-HỘI AN-HUẾ- ĐỘNG THIÊN ĐƯỜNG/PHONG NHA 5N4D', 5, N'/Uploads/2023/12/1ca49fa1-41b8-40b4-83f4-02d36cc2c795.png', N'NGÀY 1 | BAY ĐẾN ĐÀ NẴNG – SƠN TRÀ – ĐÔ THỊ CỔ HỘI AN ( Ăn trưa, tối)
Sáng: Quý khách có mặt tại sân bay Tân Sơn Nhất trước giờ bay 2 tiếng, làm thủ tục check in đáp chuyến bay đi Đà Nẵng (Khách bay từ sân bay Tân Sơn Nhất sẽ có nhân viên hỗ trợ khách làm thủ tục check in)

- trưa: Đón quý khách tại sân bay Đà Nẵng (Từ 07h00 đến 13h00) đưa đoàn đi ăn trưa với đặc sản nổi tiếng Đà Nẵng “Bánh tráng thịt heo 2 đầu da & Mỳ Quảng”. Nhận phòng K/sạn nghỉ ngơi.

  - Chiều: Khởi hành đi tham quan một vòng Bán Đảo Sơn Trà – được mệnh danh là lá phổi xanh của Đà Nẵng, là ngôi nhà chung của rất nhiều loài động vật quý hiếm như vooc chà vá chân nâu, mèo rừng…, quý khách tham quan Chùa Linh Ứng  - là một trong tứ trấn rất tâm linh của Đà Nẵng, nơi có tượng Phật Bà 65m cao nhất Việt Nam với lối kiến trúc rất độc đáo hướng nhìn ra biển lớn. Tiếp tục vào Hội An bách bộ tham quan và mua sắm Phố Cổ với: Chùa Cầu Nhật Bản, Bảo tàng văn hóa Sa Huỳnh, Nhà Cổ hàng trăm năm tuổi, Hội Quán Phước Kiến & Xưởng thủ công mỹ nghệ.

- Tối:    Ăn tối nhà hàng tại Hội An. Về lại Đà Nẵng tự do dạo chơi về đêm. Ngủ KS tại Đà Nẵng.

NGÀY 02 | ĐÀ NẴNG - HUẾ - ĐẠI NỘI - CHÙA THIÊN MỤ (Ăn sáng, trưa, tối)
 - Sáng: Điểm tâm. Rời Đà Nẵng đi Cố Đô Huế, hành trình xuyên hầm đường bộ đèo Hải Vân đến Huế nhận phòng KS nghỉ ngơi.

 - Trưa:  Ăn trưa nhà hàng tại Huế

 - Chiều:Tham quan Đại Nội (Hoàng Cung của 13 vị vua triều Nguyễn, triều đại phong kiến cuối cùng của Việt Nam: Ngọ Môn, Điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh) và Chùa Thiên Mụ cổ kính, xây dựng từ những năm đầu của thế kỉ XVII

- Tối:    Ăn tối nhà hàng. Quý khách thưởng ngoạn Ca Huế sông Hương và thả hoa đăng cầu may mắn, mạnh khỏe, hạnh phúc (Chi phí tự túc). Ngủ KS tại Huế.

NGÀY 03 | LÀNG ĐÁ MỸ NGHỆ – BÀ NÀ - BIỂN MỸ KHÊ (Ăn sáng, trưa Option, tối)
- Sáng: Điểm tâm. Khởi hành đi tham quan Làng Đá Mỹ Nghệ Non Nước – là Làng nghề truyền thống nổi tiếng và lâu đời của Đà Nẵng, dưới bàn tay tài hoa và điêu luyện của các nghệ nhân, hàng loạt sản phẩm điêu khắc đá phục vụ đời sống sinh hoạt và đời sống tâm linh như bát đĩa, bình hoa, tượng phật, tượng La hán, tượng Champa…được chế tác một cách vô cùng tinh tế và đẹp mắt. Quý khách tiếp tục khởi hành đến khu du lịch Bà Nà. Quý khách được chiêm ngưỡng hệ thống cáp treo lập nhiều kỷ lục thế giới và được công nhận là 1 trong 10 hệ thống cáp treo ấn tượng nhất thế giới.

 - Trưa:  Ăn trưa Option Buffet tại Bà Nà (Nếu quý khách không đăng ký đi Bà Nà thì tự túc chi phí ăn trưa)

 - Chiều: Quý khách thả mình vào không gian tuyệt đẹp như nước Pháp và khí hậu tuyệt vời được ví như Đà Lạt của miền Trung, tham quan vườn hoa, hầm rượu, chùa Linh Ứng, Thích Ca Phật Đài, đặc biệt là chiêm ngưỡng và chụp ảnh Cầu Vàng, cây cầu có kiến trúc độc nhất vô nhị với đôi bàn tay khổng lồ nâng đỡ Cầu Vàng tuyệt đẹp. Quý khách xuống cáp về lại trung tâm và được thoải mái tắm biển Mỹ Khê, là một trong rất ít bãi biển đẹp nhất hành tinh.

- Tối:    Ăn tối nhà hàng.  Quý khách ngồi thuyền sông Hàn (Chi phí tự túc) ngắm thành phố Đà Nẵng lung linh về đêm với hàng loạt cây Cầu nổi tiếng và độc đáo nhất như Cầu Rồng (Phun Lửa, Nước vào thứ Bảy và Chủ Nhật hàng tuần), Cầu Quay Sông Hàn, Cầu Trần Thị Lý… Ngủ KS tại Đà Nẵng.

NGÀY 04 | HUẾ - ĐỘNG PHONG NHA (HOẶC THIÊN ĐƯỜNG) - HUẾ (Ăn sáng, trưa, tối)
 - Sáng: Điểm tâm. Khởi hành đi Quảng Bình, ghé thăm Thánh Địa La Vang.

 - Trưa:  Ăn trưa nhà hàng tại Phong Nha.

 - Chiều: Quý khách tiếp tục tham quan Động Phong Nha để khám phá vẻ đẹp được ví là Đệ Nhất Kỳ Quan Động với Hang Khô rộng và đẹp nhất, sau đó ngồi thuyền trên Sông Son tham quan Hang động nước dài nhất. (Hoặc Quý khách có thể chọn tham quan Động Thiên Đường với lỗi dẫn bằng cầu gỗ uốn lượn dài 1km chiêm ngưỡng các Khối thạch nhũ tuyệt đẹp được ví là Hoàng Cung Trong Lòng Đất). Sau đó Quý khách khởi hành về lại Huế.

- Tối:     Ăn tối nhà hàng tại Quảng Trị. Ngủ K/sạn tại Huế.
NGÀY 05 | LĂNG TỰ ĐỨC – LÀNG HƯƠNG THỦY XUÂN - Tiễn khách (Ăn sáng, trưa)
- Sáng:  Điểm tâm. Tham quan Lăng Tự Đức – được mệnh danh là một trong những công trình đẹp nhất thời nhà Nguyễn, với kiến trúc mang đậm nét truyền thống nhưng tinh tế, bao bọc bởi một không gian xanh mượt của cây xanh và hồ nước hòa quyện tạo cảm giác rất nên thơ và hữu tình. Quý khách tiếp tục đến với Làng nghề làm hương và nón lá – là làng nghề truyền thống lâu đời ở xứ Huế, nơi đây thu hút rất nhiều du khách thích sống ảo bởi khung cảnh rực rỡ của những bó hương đa sắc xanh, đỏ, tím, vàng.

- Trưa:  Ăn trưa nhà hàng.

- Chiều: Tiễn khách Ga / Sân bay Huế các chuyến bay Huế sau 13h00. Trường hợp các chuyến bay Huế trễ quá thì quý khách có thể gửi hành lý tại KS và tự do đi chơi sau đó tự túc ra Ga hoặc Sân bay Huế).   Đoàn khởi hành về Đà Nẵng mua sắm Đặc Sản Miền Trung. Tiễn khách sân bay (Thời gian chuyến bay từ 17h00 đến 24h00).

Chào thân ái. Kết thúc chương trình.', CAST(7880000 AS Decimal(18, 0)), 19, 6, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (36, N'TOUR QUY NHƠN - TÂY SƠN, 4N3Đ,KHỞI HÀNH HÀNG NGÀY', 4, N'/Uploads/2023/12/a25c95bc-119e-4fb1-b0dc-17c290506391.png', N'NGÀY 01 | BAY ĐẾN QUY NHƠN – CITY TOUR QUY NHƠN (ĂN TRƯA, TỐI)
Sáng: HDV Saigontours làm thủ tục check in cho quý khách đáp chuyến bay đi Quy Nhơn, tới sân bay Quy Nhơn, Xe và HDV đón Quý khách đi dùng bữa trưa tại nhà hàng. Sau đó đoàn nhận phòng khách sạn và nghỉ ngơi

Buổi chiều, bắt đầu chuyến tham quan:

Khu du lịch Ghềnh Ráng, Quý khách được dạo bước trên dốc Mộng Cầm, đồi Thi Nhân, bãi tắm Hoàng Hậu, Tiên Sa, và sống lại với những vần thơ Hàn Mặc Tử cùng tài nghệ của bút lửa Dzũ Kha.

Làng Phong Quy Hòa, nơi cuộc sống của con người bình yên, thong dong đến lạ bên dưới dàn hoa giấy rực rỡ, đây cũng là nơi Hàn Mặc Tử sinh sống trong thời gian cuối đời.

Tháp Đôi, là cụm 02 ngọn tháp Chăm được xây duyên dáng bên cạnh nhau nằm giữa lòng thành phố.

Quảng Trường Quy Nhơn, nơi tượng đài Nguyễn Sinh Sắc – Nguyễn Tất Thành uy nghi tượng trưng cho tình cha con hòa quyện với tình yêu nước.

18h00: Đưa quý khách ăn tối tại nhà hàng. Với những món ẩm thực đặc trưng miền đất võ

Nghỉ đêm tại Quy Nhơn.

NGÀY 02 | BẢO TÀNG QUANG TRUNG- HẦM HÔ (ĂN SÁNG, TRƯA, TỐI)
Sáng/Trưa: Xe và hướng dẫn viên Công ty đón Quý khách tại Khách sạn, sau đó khởi hành đi tham quan:

9h30: khởi hành đi Tây Sơn tham quan: Bảo Tàng Quang Trung - Dâng hương lên Tây Sơn Tam Kiệt và các văn quan võ tuớng. Cầu nguyện đuờng học hành, quan trường, sự nghiệp đỗ đạt thăng tiến. Quý khách thưởng thức show biểu diễn trống trận, võ thuật Tây Sơn (chi phí tự túc).

11h30: Ăn cơm trưa tại nhà hàng.

14h30: Tiếp tục đến với Khu du lịch sinh thái Hầm Hô – Đi thuyền trên kênh Lộc Giang (Một lượt đi thuyền vô- lượt đi ra chi phí tự túc) tới dòng sông Kut với Khúc Sông Trời lấp được ví như “Vịnh Hạ Long” thu nhỏ, hòa mình với thiên nhiên hoang sơ, cây cỏ non nước.

16h30: Qúy khách về Tp Quy Nhơn.

18h00: Xe và HDV đưa khách đi ăn tối tại nhà hàng và tự do khám phá TP về đêm

Nghỉ đêm tại quy Nhơn.

NGÀY 03 | KỲ CO- LẶN NGẮM SAN HÔ- EO GIÓ- TỊNH XÁ NGỌC HÒA (ĂN SÁNG, TRƯA, TỐI)
07h00: Điểm tâm sáng.

8h00: Xe và hướng dẫn viên đón khách tại khách sạn, khởi hành đi đảo Kỳ Co với những cảnh sắc thiên nhiên tuyệt đẹp đang đón chờ.

8h30:  Đến  bến thuyền Nhơn Lý, quý khách đi cano để di chuyển qua đảo Kỳ Co, với dải cát vàng ôm lấy biển, bọc thành một hình cung, mềm mại mềm mại như dải lụa uốn lượn, ôm trọn lấy làn nước trong xanh tận đáy. Tận hưởng những giây phút thư giãn giữa mênh mông sóng nước.

09h30: Đến nơi, Quý khách hòa mình vào thiên nhiên, một bên là biển nước màu xanh lam trong vắt, một bên là núi đá cao sừng sững. Khám phá bãi cát dài mịn, khung cảnh hoang sơ đầy quyến rũ, đặc biệt được chấm phá bằng những công trình đặc sắc như Cầu Yến, Cầu Trái Tim, Kỳ Co Resort,… và những hang đá, suối nước đẹp đến bất ngờ.

Quý khách có thể mua thêm dịch vụ Đi bộ dưới đáy biển, Motor nước, Jetsky,… (chi phí tự túc)

10h30: Cano đưa Quý khách ra Bãi Dứa lặn ngắm san hô, khu vực này có nhiều rặng san hô đa dạng, nhiều màu sắc, chủng loại, ngoài ra, thi thoảng còn có các loại Cầu gai, sao biển, nhiều loại cá đầy màu sắc.

11h30: Quý khách trở lại bến thuyền tắm nước ngọt và thưởng thức bữa trưa với các món hải sản tươi sống. Quý khách nghỉ trưa ngắn tại nhà hàng

13h30: Quý khách tham quan Eo Gió một bãi biển hoang sơ dưới sự bào mòn của nước và gió, tạo nên một eo biển tuyệt đẹp, quanh năm lộng gió.

14h30: Tiếp tục ghé thăm Tịnh xá Ngọc Hòa – một địa điểm lý tưởng để tĩnh tâm và thiền định – với kiến trúc nổi bật là tượng đôi Phật Bà Quan Âm cao nhất Việt Nam, gồm hai tượng phật Bà Quan Thế Âm, tượng hướng về phía Nam (Cổng chính Tịnh Xá) còn được gọi là Quan Thế Âm Kiết Tường phù trợ cho rừng vàng.

Còn bức tượng còn lại là Quan Thế Âm Nam Hải hướng ra biển được người dân xem là phù trợ cho biển bạc.

15h00: Quý khách khởi hành về lại điểm đón ban đầu tại Quy Nhơn.

18h00: Ăn tối tại nhà hàng. Đoàn tự do tham quan phố ẩm thực Ngô Văn Sở hoặc đi xe ngựa vòng quanh thành phố (chi phí tự túc).

Nghỉ đêm tại Quy Nhơn.

NGÀY 04 | CHÙA THIÊN HƯNG-TIỄN KHÁCH (ĂN SÁNG)
07h00: Quý khách ăn sáng tại khách sạn. Làm thủ tục trả phòng.

07h00: Quý khách ăn sáng. Trả phòng

8h30: Đưa quý khách đi mua sắm đặc sản Bình Định như:

Bánh ít lá gai, Nem Chợ Huyện, Bánh tráng nước dừa, Các món hải sản khô….

9h30: Xe và HDV đưa quý khách ra sân bay- ghé tham quan  Chùa Thiên Hưng-Một trong những ngôi chùa đặc biệt và nổi tiếng  tại Bình Định với lối kiến trúc độc đáo và phong cảnh tuyệt vời. Điều đặc biệt không chỉ là về vẻ đẹp kiến trúc tinh tế mà còn  là nơi có Ngọc Xá Lợi sẽ được Phật Tổ độ trì ban phúc.

Kết thúc chương trình tham quan Xứ Nẫu 4 ngày 3 đêm. Xe và hướng dẫn viên đưa quý khách ra sân bay làm thủ tục lên chuyến bay về Tp.Hà Nội

Chào tạm biệt và hẹn gặp lại quý khách trong những hành trình tiếp theo!', CAST(7900000 AS Decimal(18, 0)), 10, 7, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (37, N'ĐÀ LẠT-NẤC THANG LÊN THIÊN ĐƯỜNG-3N3D-KS 2 SAO', 3, N'/Uploads/2023/12/dd1568bb-62a1-4b0c-970a-e5013368cce7.jpg', N'ĐÊM NGÀY 1 | TP.HCM – ĐÀ LẠT (NGHỈ NGƠI TRÊN XE)
21h00 Xe và HDV đón quý khách tại văn phòng công ty Cty và các điểm hẹn khác trong chương trình đón, sau khi đón tại các điểm hẹn, xe khởi hành đưa đoàn đến Đà Lạt.
Trên xe quý khách sẽ nghe HDV thuyết minh về các điểm nổi tiếng đoàn sẽ đi qua. Sau đó nghỉ ngơi và dừng chân ăn nhẹ cũng như thư giãn tại các trạm dừng chân trên cung đường đoàn đi qua.

 NGÀY 1 | KDL CHUỒN CHUỒN – NHÀ THỜ DOMAIN – KDL FRESH GARDEN – THƯỞNG THỨC TIỆC BBQ         ĂN 03 BỮA
05h00     Xe đưa quý khách tham quan KDL Chuồn Chuồn, đoàn dùng bữa sáng nóng hổi & thưởng thức ly cà phê cực “chill”.
KDL Chuồn Chuồn đã khoác lên mình một màu áo mới với Vườn Hoa Lavender tuyệt đẹp được đầu tư & chăm sóc kĩ lưỡng. Cùng gia đình ngắm nhìn Chuồn Chuồn từ cabin thang máy kính siêu to. Tạo dáng check - in tại Tháp Vọng Cảnh view "triệu like", Hồ Vô Cực, Vườn Hoa Chuồn Chuồn.... với hàng trăm tiểu cảnh, cảnh quan đặc sắc khác. Hít thở bầu không khí trong lành giữa những ngọn đồi cà phê thơm ngát.
10h30    Đoàn khởi hành tham quan Nhà Thờ Domain De Maria Đà Lạt đã trở thành điểm du lịch cực hot của thị trấn sương mờ từ nhiều năm nay. Với không gian pha lẫn chút hiện đại và cổ kính, tòa nhà thờ màu hồng độc đáo là background chụp hình cực kì thú vị.
11h30    Đoàn dùng bữa trưa tại nhà hàng. Sau đó Quý khách về khách sạn nhận phòng nghỉ ngơi.
15h00    Đoàn tham quan Khu du lịch Fresh Garden Đà Lạt với vườn dâu công nghệ cao, mô hình trồng rau thủy , vườn bí ngô khổng lồ, vườn dưa Pepino, tự do chụp hình với khu nhà rơm đầy sáng tạo. Bạn sẽ vô cùng bất ngờ và thích thú với cả ngọn đồi, cánh đồng được phủ đầy các loại hoa như Lavender, Ngọc Thảo, Phong Lữ, Dạ Yến Thảo, Thạch Thảo, Cẩm Tú Cầu, Thu Hải Đường, Mõm Sói, Xác Pháo, Nữ Hoàng Xanh, Mai Địa Thảo…tạo thành bức tranh nhiều màu sắc với các dải màu hoa bất tận như các khu vườn của Dubai, Thái Lan, Nhật.
Buổi Tối: Đoàn dùng bữa tối với tiệc nướng BBQ tại Đà Lạt. 
Sau đó tự do khám phá chợ Đà Lạt về đêm, quý khách có thể thưởng thức các món ăn: Kem Bơ Thạch Thảo, Bánh Tráng Nướng – 112 Nguyễn Văn Trỗi, Bánh tráng nướng, sữa đậu nành, khoai lang nướng, xiên que,…

NGÀY 2 | THUNG LŨNG ĐÈN – QUẢNG TRƯỜNG – CHÙA LINH PHƯỚC – GA ĐÀ LẠT – PUPPY FARM – BUFFET RAU - NGHE NHẠC ACOUSTIC                 ĂN 02 BỮA  
  07h00     Quý khách dùng bữa điểm tâm tại Thung Lũng Đèn với vẻ đẹp xanh tươi, hữu tình. Điểm nhấn mới của Thung Lũng Đèn là “nấc thang lên thiên đường” “phím đàn trên mây” đẹp ảo diệu. Đứng từ đây, bạn có thể phóng tầm mắt xuống không gian bao la bên dưới( chi phí chụp hình tự túc ).
08h00    Quý khách đến Quảng trường Lâm Viên nằm ở nơi được ví như như “trái tim” của thành phố. Quý khách tự do check in chụp hình và thưởng thức cái lạnh của Đà Lạt vào buổi sáng tinh sương.
09h30    Quý khách tới thăm Chùa Linh Phước một ngôi chùa khá đặc biệt tại Đà Lạt. Đặc biệt là hình tượng con rồng chế tác từ hơn 12.000 vỏ chai sành, gây được ấn tượng mạnh cho phật tử cùng các du khách gần xa mỗi khi tới thăm chùa.
10h30    Tham quan Ga xe lửa cổ - Nhà ga cổ đẹp nhất Đông Dương, xây dựng từ những năm đầu thế kỷ trước, mang nét hài hòa giữa kiến trúc phương Tây và kiểu nhà rông Tây nguyên truyền thống. Quý khách sẽ tham quan chiếc đầu máy chạy bằng hơi nước được sản xuất từ năm 1936 với những thanh ray răng cưa ngày xưa khi tàu vượt qua đèo Ngoạn Mục.
11h30         Quý khách dùng bữa trưa buffet rau vô tận, sau đó về khách sạn nghỉ ngơi.
14h30    Đoàn ghé tham quan trang trại Puppy Farm tựa như Trang trại thú Châu Âu thu nhỏ cho bạn vui chơi thoả thích - vạn kiểu check-in. Đoàn tham quan chụp ảnh với lạc đà Alpaca “ máy bắn tỉa nước ngọt”, Ngựa lùn Pony đáng yêu. Ngoài ra còn có khoảng 100 con cún, từ Alaska, Pug, Corgi mông tròn hay Puddle đều có mặt đầy đủ để Quý khách thoải mái vui đùa. 
Bên cạnh đó, Quý khách còn được tham quan vườn rau củ thuỷ canh mới lạ theo công nghệ hiện đại: vườn cà chua, dâu tây công nghệ cao, bí thiên nga, bí ngôi khổng lồ, vườn cherry, vườn dưa pepino, …tận hưởng không khí trong lành cùng rau quả sạch chuẩn nhà trồng và những ngọn đồi đầy hoa thật nên thơ. 
16h00    Tham quan cơ sở sản xuất mứt và các sản phẩm sấy khô miễn phí, tại đây quý du khách có thể thưởng thức, ngoài ra quý khách có thể mua về làm quà cho bạn bè và người thân. 
Buổi Tối: Quý khách tự túc dùng bữa tối, tự do khám phá ẩm thực phố núi về đêm, hoặc khám phá chợ đêm Âm Phủ Đà Lạt với các món ăn hè phố.
     Tham Khảo: Chương Trình Nghe Nhạc Acoustic Ở Đà Lạt 
Đoàn có thể đến với Một quán cafe acoustic ở Đà Lạt đang được rất nhiều bạn trẻ tìm đến trong thời gian gần đây chính là tiệm cà phê Bình Minh Ơi. Quán thu hút các bạn trẻ không chỉ những đêm nhạc acoustic sôi động mà còn để lại nhiều ấn tượng bởi không gian thiết kế view đồi núi, view săn mây tuyệt đẹp, hứa hẹn sẽ đọng lại nhiều ký ức đẹp cho cả khách du lịch, khách địa phương; bởi sự nhẹ nhàng dễ thương, sâu lắng mà yên tĩnh vô cùng. Rời bỏ những xô bồ của cuộc sống; đến đây nghỉ ngơi, thưởng nhạc, ngắm mây ngắm cỏ cây…. (tự túc vé cổng + nước uống 120.000 vnđ/khách). Đoàn tự túc phương tiện di chuyển.

NGÀY 3 | THÁC PONGOUR  - TP.HỒ CHÍ MINH           ĂN 2 BỮA
Sáng     Đoàn làm thủ tục trả phòng khách sạn. Dùng điểm tâm sáng Buffet tại nhà hàng.
08h00      Đoàn khởi hành tham quan Thác Pongour còn được mệnh danh là Nam Thiên Đệ Nhất Thác. Đây là ngọn thác lớn nhất miền nam Việt Nam. Ngọn thác đổ xuống từ độ cao hơn 40m, trải dài trên 100m nhìn như một dãi lụa phủ trắng một vách núi.
12h00    Đến Bảo Lộc, đoàn dùng cơm trưa tại nhà hàng Tâm Châu (Lộc An). Quý khách thưởng thức trà cafe miễn phí tại tiền sảnh của nhà hàng. Trên đường về, xe dừng chân cho đoàn thư giãn và nghỉ ngơi tại các trạm dừng chân trên đường về.
18h00     Quý khách về đến Hồ Chí Minh, HDV chia tay Quý khách hẹn ngày gặp lại! Kết thúc chuyến tham quan!', CAST(2510000 AS Decimal(18, 0)), 4, 8, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (38, N'NHA TRANG-DIAMOND BAY– ĐẢO ROBINSON ĐẲNG CẤP 5 SAO-3N3D-ĐƯỜNG BỘ', 3, N'/Uploads/2023/12/4fcfa84c-83c0-41b1-86a8-15a5148fe052.jpg', N'ĐÊM NGÀY 1 | TP.HCM – NHA TRANG (NGHỈ NGƠI TRÊN XE)
20h30 Xe và HDV đón quý khách tại văn phòng Cty và các điểm hẹn. Sau đó cả đoàn khởi hành đi tour Nha Trang.

Trên xe quý khách sẽ nghe HDV thuyết minh về các điểm nổi tiếng đoàn sẽ đi qua và cùng chơi những trò chơi hấp dẫn…Sau đó quý khách nghỉ ngơi và dừng chân ăn nhẹ cũng như thư giãn tại các trạm dừng chân trên cung đường đoàn đi qua( Ăn nhẹ tự túc ).

NGÀY 1 | DIAMOND BAY – NHÀ YẾN – BUFFET HẢI SẢN TỐI NHA TRANG ( ĂN 03 BỮA)
Sáng Đoàn đến KDL DIAMOND BAY quý khách dùng bữa điểm tâm tại nhà hàng Khu Du Lịch, sau đó quý khách nhận ghế và chòi để đồ và tắm biển.

KDL DIAMOND BAY được biết đến là một trong những bãi tắm đẹp nhất Nha Trang, biển Nhũ Tiên hấp dẫn du khách bởi làn nước biển trong xanh, mát mẻ, được bao bọc bởi bãi cát dài trắng xóa và những hàng dừa lao xao trong gió. Với vẻ đẹp hoang sơ, thơ mộng, biển Nhũ Tiên tựa như nàng tiên đang ngủ vùi giữa không gian mênh mông của sóng, của gió, của núi và của mây.

11h00 Đoàn khởi hành về Nha Trang dùng cơm trưa, sau khi dùng cơm trưa đoàn về khách sạn nhận phòng nghỉ ngơi.

15h30 Đoàn tham quan Nhà Yến nơi khai thác Yến tổ yến ngay tại trung tâm thành phố Nha Trang. Đến nơi quý khách được tận mắt nhìn, thưởng thức trà yến miễn phí và nghe giới thiệu cũng như tìm hiểu về loài vật quý giá này.

16h30 Đoàn tham quan Tháp Chàm Ponagar - Một công trình kiến trúc Chăm cổ của người Champa. Là một địa điểm du lịch nổi tiếng của Nha Trang. Tháp Bà Ponagar nằm gọn trên một quả đồi xinh đẹp cạnh bờ sông Cái hiền hòa. Từ xa quý khách cũng có thể dễ dàng nhận ra tháp Ponagar bởi lối kiến trúc vô cùng đặc biệt.

18h00 Đoàn đến nhà hàng dùng bữa tối đặc biệt với Buffet hải hản đầy hấp dẫn.

NGÀY 2 | ĐẢO ROBINSON – THỦY CUNG TRÍ NGUYÊN - TẮM BÙN (ĂN 02 BUỔI)
Buổi sáng: Quý khách dùng Buffet sáng tại khách sạn.

08h30 Quý khách khởi hành đến cảng Du lịch Vĩnh Trường. Đoàn lên Cano bắt đầu hành trình khám phá Vịnh Nha Trang. HDV thuyết trình về Vịnh Nha Trang.

10h00 Đoàn tập trung tại điểm dừng trước Robinson chụp hình tập thể. Sau đó đoàn tham quan đảo Robinson:

- Tham quan nhà bè hải sản

- Ăn trưa tại nhà hàng Ocean view

- Tự do tắm biển

- Chèo thuyền Kayak

- Vui chơi các hoạt động thể thao: Moto nước, phao chuối… (chi phí tự túc).

14h30 Đoàn xuất phát về lại bến cảng, trên đường đoàn tham quan Thủy Cung Trí Nguyên (Chi phí tự túc - Số lượng 10 khách trở lên sẽ có tàu đưa Quý Khách tham quan), được mệnh danh là một đại dương thu nhỏ với sự sông của hàng ngàn sinh vật biển. Đây là điểm du lịch Nha Trang thú vị không nên bỏ lỡ, Thủy Cung Trí Nguyên được xây dựng cách đây gần 25 năm. Đây là điểm du lịch nổi tiếng để du khách có thể chiêm ngưỡng thiên nhiên Nha Trang tuyệt đẹp. Hòa mình vào thế giới của vua thủy tề, trải nghiệm cực kỳ thú vị với hệ sinh vật đa dạng.

Quý khách đến Khu Du Lịch Tắm Bùn Khoáng (chi phí tự túc). Tại đây quý khách được:

- Tham quan toàn cảnh khu du lịch với những phong cách thiết kế khá độc đáo và sang trọng.

- Ngâm mình trong hồ nước khoáng nóng.

- Sử dụng hệ thống ôn tuyền thủy liệu pháp. Thư giãn tại suối thác nước khoáng nóng dành cho khách tắm bùn. Vận động và vui chơi trong hồ bơi khoáng nóng, thác nước. Massage cơ thể với hệ thống thủy lực Jacuzzi tại hồ bơi.

Buổi tối: Quý khách ăn tối tự túc trải nghiệm ẩm thực Nha Trang, sau đó tự do khám phá ẩm thực thành phố biển Nha Trang.

NGÀY 3 | NHA TRANG – PHAN THIẾT - TP.HCM (ĂN 2 BUỔI)
06h30 Đoàn làm thủ tục trả phòng khách sạn. Sau đó dùng buffet tại khách sạn.

07h30 Đoàn di chuyển về Thành phố Hồ Chí Minh.

09h00 Đoàn đến Phan Rang thưởng thức đặc sản mật nho, rượu nho, mủ trôm tỏi Phan Rang miễn phí. Quý khách tham quan vườn nho và thoải mái chụp hình bên những chùm nho nặng trĩu.( Tại trạm dừng chân mua sắm ).

12h00 Đoàn dùng cơm trưa tại nhà hàng, nghỉ ngơi.

Chiều Quý khách dừng chân nghỉ ngơi tham quan mua sắm các đặc sản tại Phan Thiết.

Tối Về đến TP.HCM, kết thúc chuyến đi. HDV chia tay và hẹn gặp lại quý khách trong những chuyến tham quan sau.cảm ơn đến quý khách đã tin tưởng và chọn Cty là người bạn đồng hành
', CAST(3120000 AS Decimal(18, 0)), 5, 6, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (39, N'NHA TRANG,ĐÀ LẠT-DU NGOẠN 4 ĐẢO,SỨ SỞ MỘNG MƠ,4N4D', 4, N'/Uploads/2023/12/281712f1-62ac-491f-b17d-380c69f2fa27.png', N'ĐÊM NGÀY 01 | TP. HCM - NHA TRANG (Nghỉ đêm trên xe)
20h00: Xe và Hướng dẫn viên của Công Ty đón khách tại điểm hẹn, khởi hành đi Nha Trang - Đà Lạt. Quý khách nhận Tặng phẩm du lịch: Nón thời trang, nước suối, khăn lạnh… Quý khách ăn uống sinh hoạt và nghỉ đêm trên xe cùng Hướng dẫn viên.

(Bố trí 1 – 2 điểm dừng chân để quý khách vệ sinh cá nhân và ăn uống nhẹ, café giải khát…)

Địa điểm đón khách:

- 20h30: Đón khách tại 03 Hoàng Việt , P4, Quận Tân Bình.

- 21h00: Đón khách tại Nhà Văn Hóa Thanh Niên, 04 Phạm Ngọc Thạch, Quận 1

- 21h15: Đón khách tại Cây xăng Comeco, Ngã 4 Hàng Xanh, Quận Bình Thạnh

NGÀY 01 | DU NGOẠN TỨ ĐẢO – TẮM BIỂN BÃI TRANH (Ăn sáng, trưa, tối)
Buổi sáng:07h30: Qúy khách dùng điểm tâm tại Nhà hàng. Sau đó chuẩn bị đồ tắm, kem chống nắng để tham gia chuyến du ngoạn đảo.

08h30: Xe và hướng dẫn viên đưa quý khách đến cảng Cầu Đá, lên Cano bắt đầu chuyến du ngoạn vịnh Nha Trang, thuyền đưa quý khách đến Hòn Một, quý khách ngắm làn nước biển trong xanh và vẻ đẹp tuyệt mỹ của vịnh Nha Trang. Đến Hòn Một quý khách có thể bơi để đắm mình dưới làn nước trong xanh và chiêm ngưỡng hệ động vật san hô tại đây

Ngoài ra quý khách có thể tham gia các trò chơi cảm giác mạnh như: lặn biển khám phá đại dương, moto nước, bay dù,…. (tự túc chi phí các trò chơi cảm giác mạnh)

Quý khách tiếp tục đến với Làng Chài tại đây quý khách có thể chọn cho mình các loại hải sản tươi sống để làm phong phú thực đơn bữa trưa của mình (chi phí hải sản tự túc)

11h30: Ăn trưa trên bè hải sản tại Con sẻ Tre, nghỉ ngơi tại điểm.

Tàu đưa quý khách đến với khu du lịch Bãi Tranh. Quý khách nhận ghế dù nghĩ ngơi, tự do tắm biển tại đây.

16h00: Quý khách trở lại tàu. Tàu đưa quý khách về tới cảng. Xe và HDV đưa quý khách về khách sạn nghĩ ngơi.

Không bao gồm: Thức uống và các dịch vụ khác tại mỗi đảo:

• Vé đáy kính: 80.000/k

• Trò chơi thể thao trên nước: Nhiều loại giá

Tối: HDV đưa quý khách thưởng thức đặc sản Nem nướng Nha Trang. Sau đó quý khách tự do khám phá chợ đêm Nha Trang, công viên Phù Đổng, Cà phê Bốn Mùa, khu hải sản Tháp Bà.Về khách sạn nghỉ ngơi.

NGÀY 02 | THÁP BÀ PONAGAR – YẾN SÀO NHA TRANG - ĐÀ LẠT ( Ăn Sáng, Trưa, Tối)
06h00: Đoàn dùng Buffet sáng tại khách sạn

08h00: Quý khách làm thủ tục trả phòng, xe đón đoàn di chuyển tham quan City Nha Trang, đưa quý khách đi tham quan và mua sắm tại chợ Đầm Nha Trang

09h00: Xe và HDV đưa đoàn di chuyển tham quan Tháp Bà Ponagar - Với 3 tầng và 4 tòa tháp lớn, từng chi tiết ở bên trong công trình này đều thể hiện được hình dáng điêu khắc độc đáo của thời kỳ xa xưa. Bên cạnh đó, những viên gạch đất nung khiến cho du khách hoài niệm về một thời văn minh đã đi vào dĩ vãng. Giá trị của Tháp Bà Ponagar chính là dấu ấn về thời gian trên từng chi tiết kiến trúc của công trình này. Kiến trúc của công trình này còn là nơi được du khách đánh giá là điểm check-in Nha Trang tuyệt đẹp, giúp cho bạn có được những bức hình thật độc đáo, khác lạ.

10h30: Quý khách tham quan mua sắm Yến sào Nha Trang tốt nhất, giá cả rẻ nhất; được dùng trà Yến miễn phí và nếm vị Yến sào Nha Trang chính hiệu. Kế đến, Quý khách sẽ tận mắt nhìn thấy các quy trình sơ chế tổ Yến, được phổ biển tỉ mỉ kỹ thuật xây dựng nhà chim và nghệ thuật dẫn dụ chim Yến vào nhà…

11h15: Đoàn bắt đầu hành trình đến với thành phố ngàn hoa Đà Lạt.

11h45: Đoàn ăn trưa và tiếp tục hành trình.

16h00: Đoàn đến Đà Lạt, về khách sạn nhận phòng nghỉ ngơi.

18h30: Đoàn di chuyển dùng bữa tối – tiệc BBQ nướng Đà Lạt với nhiều món ăn hấp dẫn. Sau bữa tối, đoàn tự do tham quan và khám phá Đà Lạt về đêm.

NGÀY 03 | HAPPY HILL – THIỀN VIỆN TRÚC LÂM – PUPPY FARM – NHÀ THỜ DOMAINE (Ăn Sáng, Trưa)
07h00: Dùng điểm tâm sáng tại khách sạn.

08h00: Đoàn di chuyển tham quan Happy Hill - Phim trường này còn có một lợi thế lớn là nó nằm cạnh hồ Tuyền Lâm. Với lợi thế là nằm cạnh trái tim của Đà Lạt mà nó đã thu hút khách du lịch một cách dễ dàng hơn. Vì có một địa thế tuyệt vời đó nên phim trường này có nhiều view thung lũng và đồi thông đẹp tuyệt vời. Làm cho khu du lịch này tăng sức hút nhờ vẽ đẹp ngất ngây.

10h30: Đoàn tham quan Thiền Viện Trúc Lâm – địa điểm tâm linh nổi tiếng tại Thành Phố Đà Lạt nằm trên đồi Phụng Hoàng, bên cạnh Hồ Tuyền Lâm sẽ là điểm đến không thể thiếu đối với du khách khi đặt chân đến Đà Lạt.

12h00: Đoàn dùng bữa trưa tại nhà hàng. Sau đó đoàn về khách sạn nghỉ ngơi.

15h00: Xe và HDV đưa đoàn tham quan:

- Đoàn tham quan Nông trại Cún – Puppy farm - nông trại chó lớn nhất tại Đà Lạt. Tại đây hiện đang nuôi rất nhiều giống chó khác nhau, những chú cún tại đây rất dễ thương và cực kỳ thân thiện.

• Nơi đây có hơn 10 loại hoa khác nhau, đa dạng về màu sắc và giống loài. Đặc biệt có một số loại hoa khá nổi tiếng và đặc trưng. Phải kể đến như là: Phong Lữ, Cánh Bướm, Lavender, Mao Địa Hoàng, Thạch Thảo, Ngọc Hân,…

• Đặc biệt nơi đây có vườn dâu công nghệ cao, quý khách sẽ được chiêm ngưỡng quy trình trồng trọt và chăm sóc loại cây này. Lại còn được tự tay mình hái những quả dâu chín đỏ mọng, cực kỳ tươi ngon. Được thưởng thức ngay tại vườn sẽ có chất lượng tuyệt hảo hơn bao giờ hết.

Đoàn tham quan Nhà thờ Domaine - Ấn tượng đầu tiên mà nhà thờ Domaine De Marie mang đến chính là nét đặc trưng của phong cách kiến trúc châu Âu, nhà thờ không dùng xi măng mà sử dụng các loại chất kết dính tự nhiên khác như vôi, mật mía, tường xây bằng đá chẻ tới ngang bệ cửa sổ. Khi bước chân vào khuôn viên nhà thờ chúng ta có thể chiêm ngưỡng rất nhiều loại hoa đang khoe sắc, nhất là hoa hải tiên.

17h30: Quý khách trở về khách sạn nghỉ ngơi.

Tối: Đoàn tự do ăn tối và khám phá Thành phố hoa về đêm.

NGÀY 04 | KDL THUÝ THUẬN - TP. HCM ( Ăn sáng, trưa)
08h00: Đoàn ăn sáng tại khách sạn.

09h00: Đoàn di chuyển đi tham quan và mua sắm đặc sản về làm quà cho bạn bè và người thân tại chợ Đà Lạt.

10h00: Đoàn ghé tham quan KDL Thuý Thuận Coffee - du khách sẽ ấn tượng với các thiết bị độc đáo nơi đây. Đó là các thiết bị máy móc dùng để rang xay và đóng hộp cà phê. Bên cạnh đó du khách có thể tận mắt nhìn thấy quy trình sản xuất cà phê. Từ phần thô đến thành phẩm đều được làm trực tiếp ngay tại địa điểm này.

12¬h00: Đoàn di chuyển về TP.HCM, dùng cơm trưa, mua sắm đặc sản.Tiếp tục khởi hành về lại TP.HCM

Chiều tối: Đoàn về đến HCM xe đưa quý khách về điểm đón ban đầu kết thúc hành trình tour du lịch Nha Trang Đà Lạt 4N4Đ, HDV Cty chia tay và hẹn gặp lại quý khách trong hành trình khác.', CAST(4500000 AS Decimal(18, 0)), 4, 7, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (40, N'HCM-HÀ NỘI-HÀ GIANG-ĐỒNG VĂN-MÃ PÌ LÈNG-CAO BẰNG-THÁC BẢN GIỐC-LẠNG SƠN, 5N4Đ', 5, N'/Uploads/2023/12/a19870b7-357d-4189-a678-eb5933f5310d.jpg', N'NGÀY 1 | SÀI GÒN - HÀ NỘI - HÀ GIANG (Ăn trưa, tối)
- Buổi sáng: Nhân viên Công ty du lịch sẽ làm thủ tục chuyến bay Sài Gòn – Hà Nội, quý khách hạ cánh xuống sân bay Nội Bài, HDV đón tại sân bay Nội Bài khởi hành đi Hà Giang. Đến thành phố Tuyên Quang quý khách dùng cơm trưa, sau đó tham quan chụp ảnh di tích thành cổ nhà Mạc.

- Đoàn tiếp tục di chuyển đi Hà Giang - vùng đất có chè san tuyết, rượu mật ong và thắng cố, xứ sở của đào phai, hoa lê, truyền thống và náo nhiệt trong buổi chợ phiên. Đến Hà Giang quý khách ghé tham quan chụp ảnh km số 0.

- Xe đưa quý khách dùng bữa tối sau đó về khách sạn làm thủ tục nhận phòng nghỉ ngơi.

- Quý Khách tự do nghỉ ngơi hoặc dạo phố thưởng thức cà phê Núi Cấm điểm cao nhất Hà Giang.

NGÀY 2 | HÀ GIANG-QUẢN BẠ-YÊN NINH - ĐỒNG VĂN (Ăn sáng,trưa,tối)
- Buổi Sáng, Quý khách làm thủ tục trả phòng, ăn sáng. Đoàn khởi hành theo quốc lộ 4C đi Quản Bạ. Trên đường, Quý Khách dừng chân ngắm cảnh và chụp ảnh tại dốc Bắc Sum.

- Tiếp tục khởi hành qua Cổng trời, Núi Đôi là du khách đã lên đến Cổng trời Quản Bạ - nơi tiếp giáp giữa trời và đất. Đoàn thỏa sức chiêm ngưỡng phong cảnh thơ mộng vùng đồi núi thị trấn Tam Sơn từ trên cao.

- Sau đó khởi hành đi Yên Minh. Dùng cơm trưa tại thị trấn Yên Minh.

- Buổi Chiều: Sau khi ngắm cảnh dốc Thẩm Mã , dốc Chín Khoanh, đoàn đến Sủng Là thăm nhà cổ H''mông với tường trình bằng đất - nơi đã được sử dụng làm bối cảnh để quay bộ phim nhựa "Chuyện của Pao" năm 2006 của đạo diễn Ngô Quang Hải được chuyển thể từ truyện ngắn "Tiếng đàn môi sau bờ rào đá"

- Xe đưa Quý Khách đến khu di tích Dinh Vua Mèo - Vương Chính Đức nằm trong một thung lũng của xã Sà Phìn, đây là dòng họ giàu có và uy quyền nhất trong lịch sử dân tộc H’mông ở huyện Đồng Văn đầu thế kỷ 20, là di tích lịch sử văn hóa đã được Nhà nước công nhận.

- Đoàn khởi hành đi thăm cột cờ Lũng Cú, điểm cực bắc và là nóc nhà của Việt Nam –“Nơi mà cúi mặt sát đất, ngẩng mặt đụng trời". Đoàn về đến Đồng Văn ăn tối, nhận phòng nghỉ ngơi.

- Buổi tối, Quý Khách tự do dạo phố, khám phá hoặc thưởng thức đặc sản phố cổ Đồng Văn về đêm. Nghỉ đêm tại Đồng Văn .

NGÀY 3 | ĐỒNG VĂN - MÃ PÌ LÈNG- HẺM TU SẢN - CAO BẰNG (Ăn,sáng,trưa,tối)
- Buổi sáng : Quý khách ăn sáng tại khách sạn trả phòng, Đoàn khởi hành đi Mèo Vạc.

- Qúy khách dừng chân ngắm cảnh đèo Mã Phì Lèng, một trong “Tứ Đại Đèo” nổi tiếng nước ta, là đoạn đẹp nhất trên con đường mang tên "Đường Hạnh phúc". Chụp hình với vẻ đẹp hùng vĩ của hẻm vực Mã Pì Lèng sâu 800m - nơi địa hình bị chia cắt sâu nhất của Việt Nam. Quý khách đi xe ôm xuống bến thuyền quý khách lên thuyền ngắm cảnh sông Nho Quế và hẻm vực Tu Sản khoảng 1 tiếng . (chi phí tự túc xe ôm 150.000đ / thuyền 100.000đ. nếu điều kiện thời tiết tốt)

- Đến thị trấn Mèo Vạc, đoàn có cơ hội tham quan chợ Mèo Vạc .

- Tiếp tục khởi hành đi Cao Bằng, dùng cơm trưa tại tại thị trấn Bảo Lạc. Sau đó tiếp tục qua đèo Mẽ Pia, hay còn gọi là dốc 14 tầng.

- Ghé tham quan di tích hang Pắc Bó nơi chủ tịch Hồ Chí Minh từng sinh sống và hoạt động cách mạng những năm đầu khi mới về nước. Đến Cao Bằng, đòan nhận phòng khách sạn.

- Buổi tối, đi bộ tham quan phố đêm vào tối thứ 6,7. nghỉ đêm tại Cao Bằng.

NGÀY 4 | CAO BẰNG-THÁC BẢN GIỐC- LẠNG SƠN (Ăn sáng,trưa,tối)
- Buổi Sáng, Đoàn trả phòng, khởi hành đi ăn sáng sau đó di chuyển đi tham quan thác Bản Giốc, thác có độ cao hơn 50m, chia làm 3 tầng được coi là thác đẹp nhất Việt Nam và là thác lớn nhất Đông Nam Á. Đây là thác nước lớn thứ 4 trong top 10 thác nước trên thế giới.

- Tiếp tục hành trình, Quí khách khám phá động Ngườm Ngao hay còn gọi là động hổ, một trong những hang động đẹp nhất không chỉ của Cao Bằng mà của cả miền Bắc.

- Sau khi dùng cơm trưa quý khách khởi hành đi Lạng Sơn ( 180km ) theo đường Phục Hòa – Đông khê Trên đường đi Quí khách dừng chân mua sắm tại chợ cửa khẩu Tân Thanh, tham quan cửa khẩu Hữu Nghị Quan nơi bắt đầu con đường thiên ký Bắc Nam (Ải Nam Quan).

- Buổi tối, quý khách tự do đi chợ đêm Kỳ Lừa.

NGÀY 5 | LẠNG SƠN - ĐỘNG TAM THANH - NỘI BÀI (Ăn sáng,trưa,chiều)
- Buổi sáng, Đoàn dùng bữa sáng tại khách sạn khởi hành tham quan chùa Tam Thanh, động Tam Thanh nổi tiếng, chiêm ngưỡng Hòn Vọng Phu trên núi Tô Thị nổi tiếng trong văn thơ Việt Nam.

- Đoàn tham quan mua sắm tại chợ Đông Kinh, ngôi chợ lớn nhất xứ Lạng.

- Đoàn dùng cơm trưa sau đó trả phòng khởi hành trở về sân bay Nội Bài đáp chuyến bay về lại Sài Gòn.

- Về đến sân bay Tân Sơn Nhất chia tay đoàn hẹn ngày gặp lại.

Lưu ý : Thứ tự các điểm tham quan trong chương trình có thể thay đổi tùy tình hình thực tế nhưng vẫn đảm bảo đầy đủ các điểm tham quan!
', CAST(8590000 AS Decimal(18, 0)), 15, 6, 8)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (41, N'MỸ THO - CHÂU ĐỐC – CẦN THƠ - SÓC TRĂNG- CÀ MAU, 4N3Đ, T2,T5 HÀNG TUẦN', 4, N'/Uploads/2023/12/8f545b95-cf3a-489e-bc0e-703bc4ca519b.jpg', N'NGÀY 01 | SÀI GÒN – MỸ THO – CHÂU ĐỐC (ăn trưa, tối)
06h00 – 06h30  Xe đón quý khách tại điểm hẹn khởi hành đi Tiền Giang, bắt đầu tour Du Lịch Miền Tây 4 ngày quý khách ăn sáng tại Mỹ Tho, sau đó tiếp tục hành trình đến bến tàu 30/04 quý khách lên tàu, du ngoạn trên sông tham quan … 

Tàu cập bến đưa quý khách tham quan các làng nghề truyền thống như nuôi ong mật, và chế biến các sản phẩm làm từ mật ong như sữa ong chúa phấn hoa,…

tham quan lò sản xuất kẹo dừa, lò cốm, lò nấu rượu…tại đấy quý khách trực tiếp xem các các mô hình sản xuất và thưởng thức sản phẩm trực tiếp.

Tiếp tục đưa quý khách, nghỉ ngơi thưởng thức trái cây miệt vườn,  uống trà và nghe biểu diễn đàn ca tài tử Nam Bộ đặc sắc. Sau đó quý khách ra bến đò đi đò chèo (xuồng ba lá) đi dọc bờ kênh dưới những tán dừa rợp mát ngắm cảnh miệt vườn với những vườn trái cây như sầu riêng, nhãn, bưởi, sapôchê…

Quý khách dùng bữa trưa Miệt Vườn tại nhà hàng đậm chất Miệt Vườn Tây Nam Bộ, với những món đặc trưng cho vùng sông nước Miền Tây, quý khách sẽ cảm thấy lạ miệng và đặc biệt là rất ngon, ngoài ra quý khách còn được thưởng thức nước uống từ lá Sake …

Tàu đưa quý khách trở lại bến tàu Mỹ Tho, sau đó lên xe tiếp tục hành trình Du Lịch Miền Tây 4 ngày điểm đến tiếp theo đó là Châu Đốc. Trên đường ngắm cảnh cầu Mỹ Thuận, cây cầu nổi tiếng nhất miền tây. Hành trình đưa quý khách đi dọc miền tây qua các địa danh của Đồng Tháp như Sa Đéc, Lai Vung, Cao Lãnh, tứ giác Long Xuyên…Đến thành phố Châu Đốc quý khách nhận phòng khách sạn.

Tới Châu Đốc quý khách nhận phòng khách sạn, dùng bữa tối, tự do dạo chơi khám thành phố Châu Đốc về đêm, quý khách có thể thưởng thức món Chè Buởi nổi tiếng xứ An Giang, 

NGÀY 02 | CHÂU ĐỐC – TRÀ SƯ – CẦN THƠ (Ăn 3 bữa)
06h00 – 06h30  Xe đón quý khách tại điểm hẹn khởi hành đi Tiền Giang, bắt đầu tour Du Lịch Miền Tây 4 ngày quý khách ăn sáng tại Mỹ Tho, sau đó tiếp tục hành trình đến bến tàu 30/04 quý khách lên tàu, du ngoạn trên sông tham quan … 

Tàu cập bến đưa quý khách tham quan các làng nghề truyền thống như nuôi ong mật, và chế biến các sản phẩm làm từ mật ong như sữa ong chúa phấn hoa,…

tham quan lò sản xuất kẹo dừa, lò cốm, lò nấu rượu…tại đấy quý khách trực tiếp xem các các mô hình sản xuất và thưởng thức sản phẩm trực tiếp.

Tiếp tục đưa quý khách, nghỉ ngơi thưởng thức trái cây miệt vườn,  uống trà và nghe biểu diễn đàn ca tài tử Nam Bộ đặc sắc. Sau đó quý khách ra bến đò đi đò chèo (xuồng ba lá) đi dọc bờ kênh dưới những tán dừa rợp mát ngắm cảnh miệt vườn với những vườn trái cây như sầu riêng, nhãn, bưởi, sapôchê…

Quý khách dùng bữa trưa Miệt Vườn tại nhà hàng đậm chất Miệt Vườn Tây Nam Bộ, với những món đặc trưng cho vùng sông nước Miền Tây, quý khách sẽ cảm thấy lạ miệng và đặc biệt là rất ngon, ngoài ra quý khách còn được thưởng thức nước uống từ lá Sake …

Tàu đưa quý khách trở lại bến tàu Mỹ Tho, sau đó lên xe tiếp tục hành trình Du Lịch Miền Tây 4 ngày điểm đến tiếp theo đó là Châu Đốc. Trên đường ngắm cảnh cầu Mỹ Thuận, cây cầu nổi tiếng nhất miền tây. Hành trình đưa quý khách đi dọc miền tây qua các địa danh của Đồng Tháp như Sa Đéc, Lai Vung, Cao Lãnh, tứ giác Long Xuyên…Đến thành phố Châu Đốc quý khách nhận phòng khách sạn.

Tới Châu Đốc quý khách nhận phòng khách sạn, dùng bữa tối, tự do dạo chơi khám thành phố Châu Đốc về đêm, quý khách có thể thưởng thức món Chè Buởi nổi tiếng xứ An Giang, 

NGÀY 03 | CHỢ NỔI CÁI RĂNG – SÓC TRĂNG – MŨI CÀ MAU    (Ăn 3 bữa)
05h00 – 05h05 quý khách đi chợ nổi Cái Răng một trong những chợ nổi đông đúc và nổi tiếng nhất Cần Thơ. Đây là chợ đầu mối chuyên mua bán trao đổi hàng hóa trên sông, đặc biệt các loại rau, củ, quả và trái cây bốn mùa… Quý khách về khách sạn dùng điểm tâm sáng, trả phòng. Sau đó quý khách lên xe khởi hành đi Cà Mau

Quý khách dừng chân ở trạm dừng chân Tân Huê Viên –  Sóc Trăng mua đặc sản. Đến Năm Căn – Cà Mau quý khách dùng cơm trưa, nghỉ ngơi …

Xe đưa đoàn đi khám phá Đất Mũi Cà Mau – trên đường ngắm cảnh hệ sinh thái rừng ngập mặn phong phú…Đến mũi Cà Mau – dãi đất thiêng liêng của tổ quốc cuối cùng của bản đồ Việt Nam. Quý khách sẽ được tận mắt ngắm cảnh và chụp ảnh lưu niệm tại Mốc tọa độ Quốc gia – GPS 0001, con thuyền biểu tượng Mũi Cà Mau. Tham quan hệ sinh thái rừng ngập mặn tại Vườn Quốc Gia Mũi Cà Mau – Khu Dự trữ Sinh quyển Thế giới Quý khách được tặng áo cờ đỏ sao vàng check in Đất Mũi Thêng Liêng của Tổ Quốc. Quý khách về thành phố Cà Mau nhận phòng khách sạn, nghỉ ngơi …

Quý khách dùng bữa tối tại nhà hàng, tự do dạo chơi khám phá thành phố Cà Mau về đêm. Nghỉ đêm tại khách sạn

NGÀY 04 | CÀ MAU – BẠC LIÊU – SÓC TRĂNG – HCM    (Ăn 2 bữa)
Ăn sáng tại khách sạn, trả phòng, sau đó lên xe khởi hành về Bạc Liêu tham quan nhà thờ Tắc Sậy – Giá Rai Bạc Liêu viếng mộ Cha Trương Bửu Diệp – vị linh mục nổi tiếng được xem như một vị thánh thi ân, giáng phúc cho những ai tin tưởng, nguyện cầu. Đoàn tiếp tục ghé tham quan Khu tưởng niệm nhạc sĩ Cao Văn Lầu - Được biệt, khu lưu niệm trước đây là khu mộ của gia đình nhạc sĩ, sau được tu bổ và xây dựng thêm các công trình nhằm mục đích tổ chức các sự kiện quan trọng, đồng thời làm nơi tiếp đón du khách phương xa.

Tiếp theo trong hành trình quý khách đến với Cánh Đồng Điện Quạt Gió – Nhà máy điện gió Bạc Liêu được xem là công trình điện gió lớn nhất cả nước, đây cũng là cánh đồng điện gió đầu tiên của Đông Nam Á tới đâu quý khách được ngắm nhìn 62 trụ Turbine khổng lồ bên bờ Biển mênh mông …

Sau đó khởi hành về Sóc Trăng  đến nhà hàng dùng cơm trưa, nghỉ ngơi. Sau đó tiếp tục hành trình quý khách tham quan chùa Som Rông, tiếp tục hành trình về Sài Gòn …

18h00 – 18h30 về đến Sài Gòn kết thúc hành trình khám phá Du lịch Miền Tây 4 ngày. Kính chào tạm biệt quý khách, hẹn gặp lại quý khách trong những hành trình sau. Chúc quý khách nhiều điều may mắn bình an. Trân trọng!', CAST(3890000 AS Decimal(18, 0)), 16, 6, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (42, N'MỸ THO – CẦN THƠ – CHÂU ĐỐC, 3N2Đ, T5 hàng tuần', 3, N'/Uploads/2023/12/80cb33e1-c015-4ef6-92c7-d1644d4d7e22.jpg', N'NGÀY 01 | SÀI GÒN – MỸ THO – CHÂU ĐỐC (Ăn Sáng, Trưa, Tối)
06h00 – 06h30  Xe đón quý khách tại điểm hẹn khởi hành đi Tiền Giang, bắt đầu tour Du Lịch Miền Tây 3 ngày quý khách ăn sáng tại Mỹ Tho, sau đó tiếp tục hành trình đến bến tàu 30/04 quý khách lên tàu, du ngoạn trên sông tham quan. Tàu cập bến đưa quý khách tham quan các làng nghề truyền thống như nuôi ong mật, và chế biến các sản phẩm làm từ mật ong như sữa ong chúa phấn hoa,…tham quan lò sản xuất kẹo dừa, lò cốm, lò nấu rượu, trải nghiệm đi Xe Ngựa trên đường Làng…tại đấy quý khách trực tiếp xem các các mô hình sản xuất và thưởng thức sản phẩm trực tiếp. Tàu tiếp tục đưa quý khách đến nhà hàng miệt vườn dùng cơm trưa, nghỉ ngơi thưởng thức trái cây miệt vườn,  uống trà và nghe biểu diễn đàn ca tài tử Nam Bộ đặc sắc. Sau đó quý khách ra bến đò đi đò chèo (xuồng ba lá) đi dọc bờ kênh dưới những tán dừa rợp mát ngắm cảnh miệt vườn với những vườn trái cây như sầu riêng, nhãn, bưởi, sapôchê…

Quý khách dùng bữa trưa Miệt Vườn tại nhà hàng đậm chất Miệt Vườn Tây Nam Bộ, với những món đặc trưng cho vùng sông nước Miền Tây, quý khách sẽ cảm thấy lạ miệng và đặc biệt là rất ngon, ngoài ra quý khách còn được thưởng thức nước uống từ lá Sake …

Tàu đưa quý khách trở lại bến tàu Mỹ Tho, sau đó lên xe tiếp tục hành trình Du Lịch Miền Tây 3 ngày điểm đến tiếp theo đó là Châu Đốc. Trên đường ngắm cảnh cầu Mỹ Thuận, cây cầu nổi tiếng nhất miền tây. Hành trình đưa quý khách đi dọc miền tây qua các địa danh của Đồng Tháp như Sa Đéc, Lai Vung, Cao Lãnh, tứ giác Long Xuyên…Đến thành phố Châu Đốc quý khách nhận phòng khách sạn.

Tới Châu Đốc quý khách nhận phòng khách sạn, dùng bữa tối, tự do dạo chơi khám thành phố Châu Đốc về đêm, quý khách có thể thưởng thức món Chè Buởi nổi tiếng xứ An Giang. 

NGÀY 02  | CHÂU ĐỐC – TRÀ SƯ – CẦN THƠ (Ăn Sáng, Trưa, Tối)
Quý khách ăn sáng tại khách sạn. Điểm đến tiếp theo trong hành trình Du lịch Miền Tây 3 ngày đó là núi Sam viếng chùa Bà Chúa Sứ, lăng Thoại Ngọc Hầu, chùa Tây An Cổ Tự…Sau đó tiếp tục hành trình theo hướng Tịnh Biên dọc kênh Vĩnh Tế  đi qua dãy Thất Sơn – Núi Cấm, Núi Két và những ngôi chùa Khơme có kiến trúc độc đáo. Đến huyện Nhà Bàng sau đó vào rừng tràm Trà Sư. Quý khách bắt đầu tham quan hệ sinh thái rừng tràm ngập nước tuyệt đẹp vào buổi sáng theo lộ trình. Quý khách tản bộ 500m từ bãi xe vào đến bến đò sau đó đi tắc rán (xuồng máy) khoảng 10 phút chạy dọc bờ kênh trong rừng tràm rợp mát đến trạm dừng đầu tiên. Quý khách chuyển sang đi đò chèo đây là hành trình thú vị nhất. Đò chèo nhẹ nhàng rẽ nước đi vào rừng tràm xanh mướt với khung cảnh tuyệt đẹp. Trên mặt nước phủ đầy một màu xanh lơ của những mãng bèo màu xanh như những tấm thảm khổng lồ bao phủ khắp rừng tràm. Trong không khí mát mẻ xuồng lướt đi nhè nhẹ tạo cảm giác lâng lâng khó tả, cuộc sống chậm lại, chỉ số hạnh phúc như tăng lên rỏ rệt. Quý khách như gạt bỏ những điều phiền muộng của cuộc sống, tận hưởng cảm giác sản khoái khi đi giữa thiên nhiên hoang dã tuyệt đẹp. Tại đây quý khách được tận mắt xem những chú chim dạn dỹ kiếm mồi trên những đám bèo màu xanh. Sau một vòng khám phá, đò đưa quý khách về lại bến đỗ và chuyển sang hành trình tiếp theo. Tắc rán đưa quý khách lướt đi trên con đường độc đạo giữa rừng tràm đến trạm dừng chân tiếp theo. Tại đây quý khách có thể lên đài quan sát ngắm toàn cảnh rừng tràm Trà Sư, đi bộ trên đường đất giữa rừng tràm săn những bức ảnh đẹp, chụp ảnh cây cầu bắt ngang qua bờ kênh. Sau đó đến khu vực nhà hàng gữa chốn thiên nhiên hoang dã được bố trí những cụm nhà sàn nhỏ giữa rừng rất lãn mạng.

Quý khách dùng bữa trưa các món dân dã, đạm bạc như: Cá lóc nướng hay gà nướng muối ớt, gà hấp lá chúc, lẩu chua cá, rau ngỗ xào, cá rô đồng với thịt kho tộ….sau bữa trưa tắc ráng đưa quý khách về lại bến đò kết thúc chuyền tham quan rừng tràm Trà Sư.

Xe đưa quý khách khởi hành đi Cần Thơ đến với vùng đất Tây Đô sầm uất nhất miền tây đồng bằng sông Cửu Long. Đến Cần Thơ, quý khách nhận phòng.

Dùng cơm tối trên nhà hàng du thuyền Cần Thơ, thưởng thức các món đặc sản miền tây, nghe những làn điệu đàn ca tài tử mượt mà trên dòng sông Hậu thơ mộng…Tàu cập bến quý khách tự do khám phá Tây Đô về đêm.

NGÀY 03  | CHỢ NỔI – CÁI RĂNG – MIỆT VƯỜN - SÀI GÒN (Ăn Sáng, Trưa)
Quý khách thức dậy sớm  05h00 Sáng – HDV cùng Qúy khách xuống bến tàu Cần Thơ để tham quan Chợ nổi Cái Răng lúc sáng sớm, đến đây đoàn tham quan và tìm hiểu nét sinh hoạt đặc trưng của cư dân miền sông nước, nơi hàng trăm chiếc thuyền, tàu buôn bán trao đổi hàng hóa, đặc sản địa phương, du khách cùng mua bán với thương nhân miền tây. Sau đó quý khách về lại khách sạn trả phòng khách sạn, dùng điểm tâm sáng.Đoàn sẽ tiếp tục di chuyển đến bến đò Cô Bắc. Đò ngang đưa đoàn đến Cồn Sơn. Quý khách tham quan Vườn chôm chôm/bưởi hay vú sữa tùy vào từng thởi điểm. Khám phá tuyệt chiêu “cá lóc bay” của nông dân sông Hậu. Trong suốt hình trình khám phá và tìm hiểu về người và đất Cồn Sơn quý khách sẽ được vào vườn Trái Cây thưởng thức các trái cây đặc sản địa phương (theo mùa như: vú sữa, ổi, bưởi…) Quý khách sẽ  được  người dân Cồn Sơn mến khách chào đón bằng loại nước mát đặc trưng được nấu từ lá cây Sa Kê và Đinh Lăng trong vườn nhà, trải nghiệm làm các loại bánh ngon dân dã mang đậm chất Nam Bộ.

Quý khách dùng bữa trưa bên Cồn Sơn

14h00 – 14h30 Khởi hành về Sài Gòn – Về tới thành phố xe trả quý khách về điểm đón ban đầu. Kết thúc hành trình tour Du lịch Miền Tây 3 ngày. Kính chào và hẹn gặp lại quý khách trong những hành trình sau, Chúc quý khách sức khoẻ bình an và gặp nhiều may mắn, Trân trọng !', CAST(3500000 AS Decimal(18, 0)), 16, 7, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (43, N'DU LỊCH PHAN THIẾT-2N1D-RESOT 4 SAO', 2, N'/Uploads/2023/12/5304c1ae-3104-49b0-8c95-627cc44b0d9c.jpg', N'NGÀY 01 | TP. HỒ CHÍ MINH – NÚI TÀ CÚ – PHAN THIẾT – ĐỒI CÁT BAY (ĂN 3 BUỔI)
05h00      Xe và hướng dẫn viên Saigontours đón khách tại điểm hẹn. Quý khách khởi hành về Phan Thiết. Đoàn dừng chân ăn sáng tại Nhà hàng khu vực Đồng Nai. 
    Trên xe HDV tổ chức các trò chơi vui nhộn như: tìm người bí ẩn, truy tìm báu vật, chiếc nón kỳ cục, hành trình kết nối với nhiều phần quà hấp dẫn và nghe giới thiệu những điểm trên cung đường mà đã đi qua. 
10h30    Đoàn dừng chân tham quan Núi Tà Cú, du khách đi Cáp treo (phí cáp treo tự túc), ngắm cảnh đồng bằng Hàm Thuận Nam với những Vườn Thanh Long xanh bạt ngàn. Quý khách tham quan Chùa Linh Sơn Trường Thọ với Bộ tượng tam thế Phật được tạc bằng gỗ trầm hương trên 100 năm tuổi và chụp hình lưu niệm với Tượng Phật Nhập Niết Bàn lớn nhất Khu Vực, dài 49m, cao 11m.   
11h50    Đoàn dùng cơm trưa tại nhà hàng Tà Cú dưới chân núi. 
13h00    Đoàn khởi hành về khu Resort nhận phòng nghỉ ngơi. 
17h00    Quý khách tham quan Đồi Cát Bay, ngắm hoàng hôn trên đỉnh đồi. Đây cũng là nơi khơi nguồn cảm hứng bất tận của các nhà nhiếp ảnh. Đồi cát muôn hình, muôn vẻ cùng với những hoạt động, sinh sống của người dân trên cát góp phần cho ra đời những tác phẩm đẹp. Ngoài ra quý khách có thể tự do tham quan trò chơi trượt cát và thưởng thức dừa ba nhát, đậu hủ non hoặc món bánh tai vạt ngay trên đồi cát (Chi phí tự túc).
18h30    Xe đưa quý khách đến nhà hàng dùng bữa tối. Sau đó quý khách tự do khám phá thành phố biển về đêm.

NGÀY 02 | KDL BÀU TRẮNG – LÂU ĐÀI RƯỢU VANG – TP.HCM (ĂN 2 BUỔI)
06h30     Quý khách dùng Buffet sáng tại resort. 
08h00    Xe đưa quý khách tham quan KDL Bàu Trắng – Nằm giữa những triền cát trắng nên Bàu Bà còn được gọi là Bàu Trắng và ngày nay cũng thường được gọi với cái tên Bàu Sen bởi trong hồ khi vào mùa sen nở, phủ kín cả một vùng hồ. được thiên nhiên ban tặng khiến cho hồ đẹp đến tuyệt vời.Từ trên đồi cát nhìn xuống hồ phẳng lặng, xa xa những đồi cát sẫm màu nhấp nhô lên xuống khiến du khách không khỏi trầm trồ, thán phục. Quý khách có thể chọn lựa chơi các trò chơi mạo hiểm như đi xe địa hình hoặc đi xe Jeep khám phá Bàu Trắng (Chi phí tự túc). 
09h30     Quý khách về resort nghỉ ngơi, tắm biển, tắm hồ bơi. 
11h30    Đoàn làm thủ tục trả phòng. Đoàn dùng cơm trưa tại nhà hàng. 
12h30    Trên đường về ghé thăm Lâu Đài Rượu Vang trực thuộc Sealinks City – với kiến trúc Tây Âu, đây là lâu đài rượu vang đầu tiên và duy nhất tại Việt Nam hiện nay (Chi phí tự túc - Số lượng 10 khách trở lên sẽ có xe đưa Quý Khách tham quan). 
    Trên đường về xe dừng tại cơ sở sản xuất nước mắm,khô các loại ..vv, tại đây quý khách có thể mua quà cho người thân và bạn bè. 
18h00    Quý khách về đến TP.HCM HDV Saigontours chia tay quý khách hẹn ngày gặp lại! Kết thúc chuyến tham quan!', CAST(2789000 AS Decimal(18, 0)), 14, 8, 11)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (44, N'TOUR BUÔN MÊ THUỘT, 3N2Đ, Ô TÔ', 3, N'/Uploads/2023/12/cc9d3e7b-1f58-4d09-9f12-1c57201dfb12.jpg', N'NGÀY 1 | TP. HỒ CHÍ MINH - BUÔN MÊ THUỘT - HỒ LĂK (402 Km) (ăn sáng, trưa, tối)
Buổi sáng, xe đưa đoàn khởi hành rời TP.Hồ Chí Minh đi Buôn Mê Thuột, theo QL14 qua các địa danh Đồng Xoài, Sóc Bom Bo, Bù Đăng , đường Hồ Chí Minh.
Buổi chiều, du khách ghé tham quan thác Dray Nur hoặc Dray Sap thác hùng vĩ nhất trên dòng sông Sêrêpôk. Đoàn tiếp tục về khách sạn nhận phòng nghỉ ngơi.
Buổi tối, Quý khách đi dạo phố về đêm hoặc xe đưa đoàn đi tham quan làng cà phê Trung Nguyên thưởng thức hương vị cà phê phố núi, Quý khách có thể mua về làm quà cho người thân và gia đình .
(Ăn sáng, trưa, chiều)

NGÀY 2 | BUÔN MÊ THUỘT - BUÔN JUN - BUÔN ĐÔN (ăn sáng, trưa, tối)
Buổi sáng, đoàn thăm Buôn Akô Dhong, nơi cư trú của đồng bào Eđê với những căn nhà sàn truyền thống, viếng chùa Khải Đoan, tham quan Bảo tàng Dân Tộc, tìm hiểu đời sống vật chất, tinh thần của cộng đồng các dân tộc Tây Nguyên. Tiếp tục khởi hành đi Buôn Đôn, tham quan cầu treo và ngắm cảnh sông Sêrêpôk, nhà sàn cổ 120 năm của người Lào, tham quan mộ và nghe kể chuyện về Vua săn voi; vào khu du lịch sinh thái Bản Đôn, bắt đầu chương trình dã ngoại, du khách có thể đi bộ hoặc đạp xe ngắm cảnh rừng quốc gia Yok Đôn, cưỡi voi xuyên rừng và thăm buôn làng.
Buổi chiều, Quý khách tham quan và trải nghiệm những điểm đặc sắc ở Buôn Jun như: cưỡi voi dạo chơi buôn làng, đi thuyền độc mộc trên hồ Lăk ...chiêm ngưỡng cảnh đẹp thơ mộng nơi miền sơn cước.
Buổi tối, Quý khách có thể tham dự đêm lửa trại, uống rượu cần, văn nghệ cồng chiêng, giao lưu văn hóa với đồng bào dân tộc Tây Nguyên (chi phí tự túc). Quý khách nghỉ đêm tại hồ Lăk hoặc Buôn Mê Thuột.
(Ăn sáng, trưa, chiều)

NGÀY 3 | BUÔN MÊ THUỘT - TP. HỒ CHÍ MINH (352 Km) (ăn sáng, trưa)
Buổi sáng, trả phòng, xe đưa đoàn ra chợ chợ Buôn Mê Thuột, Quý khách mua đặc sản. Sau đó đoàn lên xe khởi hành về TP.Hồ Chí Minh.
Buổi chiều, đoàn về đến Sài Gòn chia tay tạm biệt, hẹn tái ngộ cùng Quý khách.', CAST(4200000 AS Decimal(18, 0)), 22, 6, 8)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (45, N'BUÔN MÊ THUỘT - PLEIKU - KON TUM, 5N4Đ, Ô TÔ', 5, N'/Uploads/2023/12/7c9f8e10-d79e-423e-8400-4ab76b77810f.png', N'NGÀY 1 | TP. HỒ CHÍ MINH - BAN MÊ THUỘT - HỒ LĂK (402 Km) (ăn sáng, trưa, tối)
- Buổi sáng, đoàn khởi hành rời TP.Hồ Chí Minh đi Ban Mê Thuột, theo QL14 qua các địa danh Đồng Xoài, Sóc Bom Bo, Bù Đăng , đường Hồ Chí Minh. 

- Buổi chiều, Quý khách ghé tham quan thác Dray Nur hoặc DraySap thác hùng vĩ nhất trên dòng sông Sêrêpôk. Đoàn tiếp tục đi Hồ Lăk. Đến nơi, Quý khách nhận phòng nghỉ ngơi.

- Buổi tối, nghỉ ngơi tự do hoặc Quý khách có thể tham dự đêm lửa trại, uống rượu cần, văn nghệ cồng chiêng, giao lưu văn hóa với đồng bào  dân tộc Tây Nguyên (chi phí tự túc). Quý khách nghỉ đêm ở Hồ Lăk hoặc ở Ban Mê Thuột.

NGÀY 2 | BAN MÊ THUỘT - BUÔN JUN - BUÔN ĐÔN (ăn sáng, trưa, tối)
- Buổi sáng, Quý khách tham quan và trải nghiệm những điểm đặc sắc ở Buôn Jun như: cưỡi voi, đi thuyền độc mộc,  chiêm ngưỡng cảnh đẹp nơi miền sơn cước. Sau đó đoàn về thành phố Ban Mê Thuột thăm Buôn Akô Dhong, nơi cư trú của đồng bào Eđê với những căn nhà sàn truyền thống. Đoàn tiếp tục viếng chùa Khải Đoan, tham quan Bảo tàng Dân Tộc, tìm hiểu đời sống vật chất, tinh thần của cộng đồng các dân tộc Tây Nguyên.

- Buổi chiều, đoàn đi Buôn Đôn, tham quan cầu treo và ngắm cảnh sông Sêrêpôk, nhà sàn cổ 120 năm của người Lào, tham quan mộ và nghe kể chuyện về Vua săn voi; vào Khu du lịch sinh thái Bản Đôn, bắt đầu chương trình dã ngoại, Quý khách có thể đi bộ hoặc đạp xe ngắm cảnh rừng quốc gia Yok Đôn, cưỡi voi xuyên rừng và thăm buôn làng.  

- Buổi tối, Quý khách đi dạo thành phố về đêm, thưởng thức hương vị cà phê phố núi, nghỉ đêm tại Ban Mê Thuột hoặc Hồ Lak

NGÀY 3 | BAN MÊ THUỘT - GIA LAI - MĂNG ĐEN (296 Km)  (ăn sáng, trưa, tối)
- Buổi sáng, Quý khách trả phòng sớm, sau đó đoàn khởi hành đi Gia Lai. Đến Gia Lai Quý khách tham quan biển hồ Tơ Nưng.

- Buổi chiều, đoàn tiếp tục tham quan thủy điện Yaly, một công trình đặc sắc của vùng đất Tây nguyên. Sau đó đoàn đi Măng Đen, nơi có khí hậu trong lành và mát mẻ quanh năm, được mệnh danh là Đà Lạt 2 trên cao nguyên xanh. Tới Măng Đen, xe đưa Quý Khách về khách sạn nhận phòng nghỉ ngơi.

- Buổi tối, đoàn nghỉ đêm tại Măng Đen.

NGÀY 4 | MĂNG ĐEN - KON TUM - GIA LAI - BAN MÊ THUỘT (296 Km)
- Buổi sáng, Quý khách dạo theo lối mòn qua những cánh rừng sim đến với tiểu vườn thú Safari; viếng tượng Đức Mẹ Măng Đen; tham quan hồ Đak Ke, thác Pa Sỉ... Sau đó khởi hành về Kon Tum. 

- Buổi chiều, đến Kon Tum, đoàn tham quan cầu treo Kon Klor thuộc địa phận làng Kon Klor, thành phố Kon Tum. Cầu nối liền hai bờ của dòng sông Đăk Bla huyền thoại. Đến đây Quý khách ghé thăm nhà Rông của dân tộc Ba Na ở hữu ngạn dòng sông, viếng Nhà thờ gỗ Kon Tum, một công trình kiến trúc mang đậm sắc thái Tây Nguyên. Khởi hành về Ban Mê Thuột, đến nơi, Quý Khách nhận phòng nghỉ ngơi.

- Buổi tối, Quý khách tự do dạo phố và nghỉ đêm tại Ban Mê Thuột.

NGÀY 5 | BUÔN MÊ THUỘT - TP HỒ CHÍ MINH (352 Km) (ăn sáng, trưa)
- Buổi sáng, sau khi dùng điểm tâm sáng, Quý Khách trả phòng,  xe đưa đoàn đi chợ Ban Mê Thuột, mua đặc sản và khởi hành về TP.Hồ Chí Minh. 

- Buổi chiều, đoàn về đến Sài Gòn chia tay tạm biệt, hẹn tái ngộ cùng Quý khách.', CAST(4750000 AS Decimal(18, 0)), 22, 7, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (46, N'TOUR CỦ CHI NỬA NGÀY', 1, N'/Uploads/2023/12/0f2f639c-ab9d-421c-ba6b-e133cd70ab2a.jpg', N'NGÀY 1 | SÀI GÒN - CỦ CHI (không ăn)
Buổi Sáng: Sài Gòn -> Địa Đạo Củ Chi

8h30 sáng, khởi hành tại điểm hẹn bắt đầu chuyến tham quan Tour Củ Chi Nửa Ngày (65km).

Đến địa đạo Củ Chi (Bến Đình): Quý khách sẽ được xem phim tư liệu về chiến tranh du kích của người dân địa phương, thăm Bảo Tàng vũ khí chiến tranh và địa đạo: khoảng 200km dưới lòng đất, hệ thống chiến đấu hầm (ụ), hệ thống chông mìn tự tạo, bếp Hoàng Cầm - khi nấu khói giấu sẽ được sử dụng trong suốt cuộc chiến tranh Viet Nam – USA (Mỹ).

Tại đây, quý khách có cơ hội thưởng thức khoai mì để hiểu thêm về cuộc sống khó khăn và thiếu thốn của quân và dân ta trong cuộc kháng chiến chống Mỹ cứu nước như thế nào.

Buổi Chiều: Củ Chi -> Sài Gòn

Xe đưa quý khách về lại Sài Gòn, kết thúc chương trình Tour Củ Chi Nửa Ngày lúc 2h30 chiều.', CAST(500000 AS Decimal(18, 0)), 2, 8, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (47, N'CITY TOUR HỒ CHÍ MINH, 1 NGÀY', 1, N'/Uploads/2023/12/ccda95fb-cbf8-46cf-b57d-65a1bf072154.jpg', N'NGÀY 1 | TOUR CITY TOUR SÀI GÒN (Ăn trưa)
Buồi sáng: Bảo Tàng Chứng Tích Chiến Tranh - Chùa Bà Thiên Hậu - Chợ Lớn - Chợ Bình Tây:

Sáng 8h30, quý khách khởi hành từ văn phòng côn ty du lịch bắt đầu Tour Du Lịch Tham Quan Sài Gòn 1 Ngày.

Quý khách đến tham quan Bảo tàng chiến tích chiến tranh

Chùa Bà Thiên Hậu: hay còn được gọi là chùa Bà Chợ Lớn là một trong những ngôi chùa có lịch sử lâu đời nhất của người Hoa ở Thành phố Hồ Chí Minh. Bên cạnh giá trị về nghệ thuật kiến trúc, điêu khắc, hiện vật cổ, nơi đây còn có một giá trị khác, đó không chỉ là nơi đáp ứng nhu cầu tín ngưỡng mà còn là nơi qui tụ và tương trợ lẫn nhau của bà con người Việt gốc Hoa.

Những khu vực Chợ Lớn - Chợ Bình Tây - trung tâm trao đổi mua bán của cộng đồng người Việt và người Hoa tại Sài Gòn. Nơi đây còn bảo tồn nguyên vẹn giá trị kiến trúc của người Hoa từ hàng trăm năm trước.


Ăn trưa tại nhà hàng.

 

Buổi Chiều: Dinh Thống Nhất - Nhà Thờ Đức Bà - Bưu Điện Thành Phố - UBND TP 

Buổi chiều, tham quan Dinh Thống Nhất, nơi trước đây là tổng hành dinh của Mỹ đặt tại miền Nam Việt Nam. Bên cạnh đó, quý khách sẽ được chiêm ngưỡng nhà thờ Đức Bà và Bưu điện Thành phố, cả hai đều là những công trình kiến trúc độc đáo theo lối Gothic cổ.

Quý khách còn được đi ngang qua Uỷ Ban Nhân Dân Thành Phố nằm ngay trung tâm quận 1.

5h00 chiều, quý khách kết thúc Tour Du Lịch Tham Quan Sài Gòn 1 Ngày tại văn phòng. Chia tay quý khách và hẹn gặp lại.', CAST(750000 AS Decimal(18, 0)), 2, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (48, N'MỸ THO - CẦN THƠ - BẠC LIÊU - CÀ MAU 3N2D T3,T6 hàng tuần', 3, N'/Uploads/2023/12/aaa0dab2-cfea-492e-b9bd-9f17c4405603.jpg', N'NGÀY 1 | SÀI GÒN – MỸ THO – CẦN THƠ (ăn trưa, tối)
06h00 – 06h30 Xe và HDV đón quý khách tại điểm hẹn khởi hành đi Mỹ Tho. Bắt đầu hành trình khám phá Du Lịch Cà Mau 3 ngày. Quý khách dùng điểm tâm sáng tại trạm dừng chân Mekong Restop – với đặc sản hủ tiếu Mỹ Tho.

Sau đó quý khách khởi hành đến bến tàu 30/4 quý khách lên tàu tham quan. Tàu tiếp tục đưa quý khách đến tham quan làng nghề truyền thống, Cơ sở nuôi ong mật và các sản phẩm làm từ ong như sữa ong chúa, phấn hoa…tham quan lò sản xuất kẹo dừa, lò bánh tráng, lò cốm, lò nấu rượu… tại đây quý khách xem mô hình sản xuất và trực tiếp thưởng thức sản phẩm.

Tàu tiếp tục đưa quý khách đến nhà vườn nghỉ ngơi, thưởng thức trái cây miệt vườn, uống trà và nghe biểu diễn Đờn ca tài tử Nam Bộ đặc sắc. Sau đó quý khách ra bến tàu đi đò chèo trên con rạch đẹp nhất cù lao Tân Phong với thời lượng 45 phút dưới những rặng bần đẹp mắt ngắm cảnh sông nước miền tây đích thực với những vườn trái trái cây trĩu quả như sầu riêng, chôm chôm, măng cụt…Sau đó tiếp tục băng qua sông sang Long Hồ Vĩnh Long đến nhà hàng sinh thái miệt vườn bên bờ sông Tiền mênh mang sóng nước .

Quý khách dùng bữa trưa với các món đặc sản miền tây, nghỉ ngơi thư giãn…

14h30 tàu đưa quý khách lướt trên dòng sông Tiền mênh mang sóng nước đón những làn gió mát rượi ngắm cảnh dòng sông hù ng vỹ chở nặng phù sa bồi đắp cho đồng bằng sông Cửu Long. Tàu cập bến, sau đó lên xe tiếp tục đi Cần Thơ. 16h30 đến Cần Thơ quý khách nhận phòng khách sạn, nghỉ ngơi.

Buổi tối quý khách dùng bữa tối trên du thuyền Cần Thơ với các món đặc sản miền tây, du thuyền trên sông Hậu nghe những làn điệu đờn ca tài tử…sau khi tàu cập bến quý khách tự do nghỉ ngơi tại Cần Thơ.

NGÀY 2 | CHỢ NỔI – SÓC TRĂNG – CÀ MAU (ăn sáng, trưa, tối)
05h00 – 05h05 quý khách đi chợ nổi Cái Răng một trong những chợ nổi đông đúc và nổi tiếng nhất Cần Thơ – đây là chợ đầu mối chuyên mua bán trao đổi hàng hóa trên sông, đặc biệt các loại rau, củ, quả và trái cây bốn mùa… Quý khách về khách sạn dùng điểm tâm sáng, trả phòng. Sau đó quý khách lên xe khởi hành tiệp tục hành trình Du Lịch Cà Mau. Quý khách dừng chân ở trạm dừng chân Sóc Trăng mua đặc sản.

Đến Cà Mau quý khách dùng cơm trưa tại nhà hàng Năm Căn Cà Mau, nghỉ ngơi.

Quý khách lên xe tiếp tục lịch trình Du Lịch Cà Mau, điểm tiếp theo đó là Mũi Cà Mau – trên đường đi ngắm cảnh rừng ngập mặn hệ sinh thái phong phú…Đến mũi Cà Mau – Dải đất thiêng liêng cuối trời Phương Nam tận cùng của tổ quốc. Quý khách sẽ được tận mắt ngắm cảnh và chụp ảnh lưu niệm tại Mốc tọa độ Quốc gia – GPS 0001, Biểu tượng Mũi Cà Mau – Hình con thuyền rẽ sóng ra khơi. Quý khách ngắm nhìn toàn cảnh Mũi Cà Mau, tham quan hệ sinh thái rừng ngập mặn tại Vườn Quốc Gia Mũi Cà Mau – Khu Dự trữ Sinh quyển thế giới với hệ động thực vật phong phú tại bãi bồi phù sa – Quý khách được tặng áo cờ đỏ sao vàng check in Đất Mũi Thiêng Liêng của Tổ Quốc 

Sau đó xe đưa quý khách về lại TP. Cà Mau nhận phòng khách sạn, ăn tối, nghỉ ngơi. Buổi tối quý khách tự do khám phá ẩm thực Cà Mau về đêm.

NGÀY 3 | CÀ MAU – BẠC LIÊU – SÓC TRĂNG – SÀI GÒN (ĂN SÁNG, TRƯA)
Ăn sáng tại khách sạn, trả phòng, sau đó lên xe khởi hành về Bạc Liêu tham quan nhà thờ Tắc Sậy – Giá Rai Bạc Liêu viếng mộ Cha Trương Bữu Diệp – vị linh mục nổi tiếng được xem như một vị thánh thi ân, giáng phúc cho những ai tin tưởng, nguyện cầu. Đoàn tiếp tục ghé tham quan Khu tưởng niệm nhạc sĩ Cao Văn Lầu - Được biệt, khu lưu niệm trước đây là khu mộ của gia đình nhạc sĩ, sau được tu bổ và xây dựng thêm các công trình nhằm mục đích tổ chức các sự kiện quan trọng, đồng thời làm nơi tiếp đón du khách phương xa.

 tiếp theo trong hành trình quý khách đến với Cánh Đồng Điện Quạt Gió – Nhà máy điện gió Bạc Liêu được xem là công trình điện gió lớn nhất cả nước, đây cũng là cánh đồng điện gió đầu tiên của Đông Nam Á tới đâu quý khách được ngắm nhìn 62 trụ Turbine khổng lồ bên bờ Biển mênh mông … Sau đó khởi hành về Sóc Trăng quý khách tham quan chùa Som Rông

Đến nhà hàng dùng cơm trưa, quý khách nghỉ ngơi. Sau đó tiếp tục hành trình về Sài Gòn 

Quý khách tiếp tục lên xe về lại Tp.HCM. dừng chân nghỉ ngơi tại trạm dừng chân chân Cái Bè – Tiền Giang, sau đó tiếp tục hành trình. 

18h30 – 19h00 Xe đưa quý khách về đến Sài Gòn. Kết thúc Chương trình Du Lịch Cà Mau 3 ngày 2 đêm Hẹn gặp lại quý khách trong những chương trình sau, Trân trọng !', CAST(3500000 AS Decimal(18, 0)), 16, 7, 8)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (49, N'HỒ CHÍ MINH-CITY HÀ NỘI - NINH BÌNH - HẠ LONG - SAPA 6N5D, 1 ĐÊM DU THUYỀN 5 SAO', 6, N'/Uploads/2023/12/8c2080aa-a3e7-4aeb-a129-a194dcadf068.jpg', N'NGÀY 1 | HCM - City Hà Nội ( Ăn Trưa, tối)
04h30: Quý khách ra sân bay Tân Sơn Nhất, làm thủ tục check in, đáp chuyến bay đi Hà Nội lúc 6h00 sáng

Ra tới sân bay Nội Bài lúc 8h00, Xe đón quý khách về trung tâm Phố cổ Hà Nội, quý khách gặp HDV và nhập đoàn. Đoàn thăm quan:

Chùa Trấn Quốc - nằm trên một hòn đảo phía Đông của Hồ Tây (quận Tây Hồ). Chùa có lịch sử gần 1500 năm cùng với cây Bồ đề hàng trăm năm tuổi có nguồn gốc từ Ấn Độ, được coi là Chùa lâu đời nhất ở Thăng Long - Hà Nội. Kiến trúc chùa có sự kết hợp hài hoà giữa tính uy nghiêm, cổ kính với cảnh quan thanh nhã giữa nền tĩnh lặng của một hồ nước mênh mang. Là trung tâm Phật giáo của kinh thành Thăng Long vào thời nhà Lý và nhà Trần.
Quần thể di tích Lăng chủ tịch Hồ Chí Minh (gồm Lăng và khu vực nhà sàn) - Nơi mà vị lãnh tụ vĩ đại đã sống và làm việc cho đến những năm cuối đời. Tại đây, Quý khách sẽ có cơ hội tìm hiểu cuộc sống giản dị của Bác. Ngoài ra, Quý khách sẽ có cơ hội ghé qua chùa Một Cột để chiêm ngưỡng một trong 4 biểu tượng của Hà Nội. 
Lưu ý: Với các ngày thứ 2 và 6, Ban quản lý Lăng sẽ tiến hành bảo trì Lăng, Quý khách sẽ chỉ tham quan phía bên ngoài Lăng, sau đó sẽ đi thăm khu vực nhà sàn, ao cá và chùa Một Cột.

Văn Miếu - Quốc Tử Giám, nơi được coi là trường đại học đầu tiên tại Việt Nam. Đó là một kiến trúc cổ, được xây dựng với quy mô khá lớn được xây dựng từ tháng 10 năm 1073 và tồn tại cho đến ngày nay. Văn Miếu được xây dựng để thờ Khổng Tử, người sáng lập của Nho giáo và Chu Văn An - hiệu trưởng của Quốc Tử Giám - đại diện cho triết lý đạo đức cao của giáo dục Việt Nam.
Trưa: Đoàn ăn trưa tại nhà hàng trong khu vực Phố Cổ và nghỉ ngơi. Quý khách có thể tranh thủ ít phút sau bữa ăn để dạo bộ ngắm nhìn và tìm hiểu về những cái tên của Hà Nội 36 phố phường…

Chiều: Quý khách tiếp tục tham quan:

Với các ngày thứ 2,4,6 xe sẽ đưa quý khách tới thăm Làng Gốm Bát Tràng - một trong 2 làng gốm nổi tiếng của Hà Nội. Tại đây Quý khách sẽ được tìm hiểu về lịch sử, xuất xứ của làng. Quá trình làm gốm và nét đặc biệt làm nên thương hiệu Bát Trang nổi tiếng.
Với các ngày thứ 3,5,7 và chủ nhật xe sẽ đưa quý khách tới Bảo tàng Dân tộc học, nơi lưu giữ và trưng bày nhiều hiện vật văn hoá của cả 54 dân tộc Việt Nam.
Thăm Hồ Gươm hay còn gọi là Hồ Hoàn Kiếm, tìm hiểu về kiến trúc của Việt Nam và Pháp xung quanh khu vực hồ. Quý khách sẽ vào thăm quan đền Ngọc Sơn thờ thánh Văn Xương và Trần Hưng Đạo - vị tướng nổi danh trong lịch sử Việt Nam và thế giới và Cầu Thê Húc.
16h00: Xe đưa quý khách về khách sạn nhận phòng, nghỉ ngơi. Quý khách tự túc ăn tối khám phá ẩm thực phố Cổ Hà Nội. Buổi tối Quý khách tự do dạo bộ khám phá phố Cổ về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 2 | HÀ NỘI - NINH BÌNH ( Ăn sáng, Trưa)
Sáng: Ăn sáng tại khách sạn.

07h00-07h30: Xe và hướng dẫn viên đón Quý khách tại các khách sạn trong phố cổ và Nhà hát lớn Hà Nội

sau đó khởi hành đi Ninh Bình.

10h30: Tới Bái Đính. Hướng dẫn viên đưa Quý khách vào thăm chùa Bái Đính - ngôi chùa nổi tiếng với

nhiều kỷ lục: Khuôn viên cả khu chùa Bái Đính có diện tích 107ha, trong đó, Điện thờ Tam Thế và Pháp

Chủ rộng hàng ngàn mét vuông; tại ngôi chùa này có tượng Phật Tổ Như Lai bằng đồng lớn nhất Đông Nam

Á (nặng 100 tấn) và ba pho tượng Tam Thế, mỗi pho nặng 50 tấn.

12h30: Quý khách về nhà hàng nghỉ ngơi ăn trưa.

14h00: Xe đưa Quý khách ra bến Tràng An, lên thuyền thăm Khu du lịch sinh Thái Tràng An - nơi những

dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí. Quý khác ngồi

trên thuyền thư giãn và tham quan 4 hang động tự nhiên trong số những hang động đẹp nhất trong khu du

lịch Tràng An là Hang Lấm, Hang Vạng, Hang Thánh Trượt và hang cuối cùng là Hang Đại. Quý khách còn

dừng chân ghé thăm các điểm tâm linh như đền Suối Tiên và Hành Cung Vũ Lâm. Tuyến này sẽ rất phù hợp

với những bạn trẻ, những người thích chụp ảnh Check in, Quý khách có thể có những trải nghiệm đầy đủ về

hành trình ngồi đò thăm hang cũng như có thể lưu lại những cảm xúc, những bức hình đẹp trong hành trình

về thăm Tràng An.

16h30: Quý khách lên xe trở về Hà Nội.

19h30: Quý khách về đến Hà Nội. Nhận phòng khách sạn, nghỉ ngơi. Quý khách tự túc ăn tối khám phá ẩm thực phố Cổ Hà Nội. Buổi tối Quý khách tự do dạo bộ khám phá phố Cổ về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 3 | HÀ NỘI - VỊNH HẠ LONG (ăn sáng, trưa, tối)
07h00: Ăn sáng và trả phòng.

08h00 – 08h40: Xe limosine đón quý khách tại khách sạn, Quý khách lên xe khởi hành đi Hạ Long (trên xe không có HDV). Trên đường đi quý khách nghỉ chân tại Hải Dương để nghỉ ngơi và tự do mua sắm các đặc sản Hải Dương.

12h30: Xe đến bến tàu Tuần Châu. Hướng dẫn viên của du thuyền đón quý khách làm thủ tục cho khách lên tàu. Quý khách được chào đón bằng “welcome drink”. Quý khách dùng bữa trưa trên tàu, giữa mênh mông biển nước, đem lại một cảm giác rất thú vị. Vừa thưởng thức những món ăn mang hương sắc của biển cả, quý khách vừa có thể thưởng ngoạn những cảnh quan thiên nhiên hùng vĩ của vịnh Hạ long như: Hòn Đinh Hương, Gà Chọi, Chó Đá...

Chiều: Quý khách tiếp tục:

Thăm hang Sửng Sốt - một trong những hang đẹp nhất của Vịnh Hạ Long. Trần hang được phủ bằng một lớp “thảm nhung” óng mượt vô số những “chùm đèn treo” bằng nhũ đá rực rỡ sáng long lanh, những tượng đá, voi đá, hải cẩu, mâm xôi, hoa lá… Tới đỉnh cao nhất của động, có hồ nước trong vắt, phong cảnh sơn thủy hữu tình.
Thăm đảo Titov và tắm biển
Tham gia cooking class (chủ yếu là gói nem, hoạt động hấp dẫn với người nước ngoài)
17h00: Quý khách trở lại tàu, nghỉ ngơi, thư giãn thưởng thức rượu vang và hoa quả trong buổi hoàng hôn.

19h00: Quý khách dùng bữa tối trên tàu. Sau đó có thể tham gia các trò chơi trên du thuyền như câu mực đêm, nghe nhạc, chơi game, dancing… Tận hưởng cảm giác nằm giữa biển nước mênh mông ngắm những vì sao chắc chắn sẽ làm quý khách không bao giờ quên.

(Lịch trình sẽ tùy thuộc vào từng du thuyền đặt sẽ có hành trình du thuyền khác nhau, Saigontours sẽ báo tên du thuyền và hành trình của du thuyền cụ thể khi quý khách đặt tour)

NGÀY 4 | VỊNH HẠ LONG - HÀ NỘI (ăn sáng, trưa)
05h00: Quý khách nên dậy sớm để tận hưởng không khí trong lành và yên tĩnh của biển khởi trên boong tàu và tham gia tập dưỡng sinh (Taichi) buổi sáng (lưu ý: Hướng dẫn tập Tai Chi chỉ có ở tàu 4 và 5 sao). 

07h00-07h45: Quý khách sẽ dùng bữa sáng tại nhà hàng.

08h00: Quý khách chèo thuyền kayak hoặc thuyền nan khám phá Hang Luồn, đây là một hoạt động rất thú vị và hấp dẫn đối với rất nhiều du khách. Trong trường hợp có thời gian, tàu sẽ ghé dừng thăm Làng chài nơi nuôi cấy ngọc trai. Du khách được tận mắt chứng kiến các quy trình hình thành nên một viên ngọc quý, từ việc nuôi cấy cho đến khi thu hoạch, chế tác. Không những thế, ở đây còn có cả một khu bảo tàng giới thiệu hình ảnh về quá trình sản xuất ngọc trai. Sau đó đến khu nuôi trồng, chế tác và kết thúc là khu trưng bày những sản phẩm, đồ trang sức làm từ ngọc trai.

10h30: Quý khách sẽ thưởng thức bữa trưa nhẹ trên tàu trước khi cập bến về Hà Nội.

11h30: Tàu cập bến Tuần Châu. Xe ô tô đón quý khách để trở về Hà Nội.

14h30 – 15h30: Đến Hà Nội. Xe đưa Quý khách về nhận phòng. Quý khách tự túc ăn tối khám phá ẩm thực phố Cổ. Buổi tối Quý khách tự do dạo bộ khám phá phố Cổ về đêm. Nghỉ đêm tại Hà Nội.

NGÀY 5 | HÀ NỘI - SAPA – CÁT CÁT (Ăn sáng, trưa, tối)
06h00: Quý khách ăn sáng và trả phòng, Quý khách tự bắt taxi di chuyển ra điểm tập trung Trần Quang Khải để đi Sapa.

Khi đi Sapa chúng tôi sẽ bố trí đi bằng xe giường nằm. Đây là xe bus chuyên phục vụ khách du lịch đi Sapa và ngược lại. Không có hdv trên xe.

13h00-13h30: Đến Sapa, xe đón Quý khách về ăn trưa tại khách sạn. Sau đó nhận phòng khách sạn.

Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông, thăm thác Tiên Sa. Thưởng thức chương trình biểu diễn văn nghệ truyền thống tại nhà máy thủy điện cũ.

18h30: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa hay là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng đê sưởi ấm bớt cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 6 | SAPA - CÁP TREO FANSIPAN - HÀ NỘI ( Ăn Sáng, Trưa)
07h00: Quý khách ăn sáng tại khách sạn.

08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách. Sau đó tiếp tục chinh phục 600 bậc đá lên đỉnh Fansipan trên độ cao 3.143m - nóc nhà của Đông Dương.

() Lưu ý: Hiện tại Quý khách cũng có thể có những phương án khác để lên đỉnh Fansipan vừa được trải nghiệm cảm giác mới lạ, vừa không phải mất sức đi bộ nhiều (phù hợp với người lớn tuổi) đó chính là:

Tàu điện Mường Hoa đưa Quý khách từ Sapa đến thẳng Ga cáp treo Fansipan (phí tự túc)
Tàu hỏa leo núi đưa Quý khách từ Ga trên của cáp treo Fansipan lên đỉnh Fansipan (phí tự túc)
12h00: Quay lại khách sạn, trả phòng. Sau đó ăn trưa, nghỉ ngơi và lên xe về Hà Nội.

Chiều: quý khách lên xe trở về sân bay Nội Bài, Về đến Nội Bài khoảng 19h00, quý khách tự làm thủ tục check in, đáp chuyến bay về HCM. Kết Thúc chương trình. Hẹn gặp lại Quý khách trong những chuyến hành trình tiếp theo!', CAST(13050000 AS Decimal(18, 0)), 6, 8, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (50, N'DU LỊCH PÙ LUÔNG - THANH HÓA - NGHỆ AN - HÀ TĨNH', 5, N'/Uploads/2023/12/71882491-3061-4865-a42e-344cc5fcd463.jpg', N'NGÀY 01: TP. HCM – THANH HÓA – LAM KINH – PÙ LUÔNG (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại cổng D2 – Ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành ra Thanh Hóa trên chuyến bay VN1272 lúc 6:45. Đến sân bay Thọ Xuân, đoàn tham quan khu di tích lịch sử Lam Kinh – được xây dựng từ thế kỷ 15, viếng Lăng vua Lê Thái Tổ - vị Vua đầu tiên của nhà Hậu Lê và bia Vĩnh Lăng – mô tả sự nghiệp của vua Lê Thái Tổ và nhà Hậu Lê. Tiếp tục hành trình đến khu bảo tồn thiên nhiên Pù Luông với những thửa ruộng bậc thang, rạng núi thơ mộng, những đồng lúa nước và các con sông rặng suối êm đềm. Cư dân chủ yếu là người dân tộc Thái vô cùng hiếu khách. Nhận phòng, nghỉ đêm tại Pù Luông.

NGÀY 02: PÙ LUÔNG – SUỐI CÁ THẦN – THANH HÓA (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn tự do dạo quanh những thửa ruộng bậc thang, tận hưởng không khí trong lành nơi núi rừng buổi sớm mai. Trả phòng, đoàn khởi hành đến suối cá thần Cẩm Lương – hiện tượng thiên nhiên kỳ thú có từ hàng trăm năm nay bên chân núi Trường Sinh với hàng ngàn cá thể sinh sống, bơi lội; động Cây Đăng. Đoàn đến Thanh Hóa nhận phòng. Buổi chiều, quý khách tự do dạo phố hoặc tự túc chi phí di chuyển và tắm biển Sầm Sơn. Nghỉ đêm tại Thanh Hóa.

NGÀY 03: THANH HÓA – NGHỆ AN (Ăn sáng, trưa, chiều)
Xe đưa đoàn đến viếng Thiền Viện Trúc Lâm Hàm Rồng bên dòng sông Mã. Khởi hành đi Nghệ An, đoàn đến khu du lịch sinh thái Mường Thanh tại Diễn Châu – viếng chùa Lâm Hà, tham quan vườn thú safari với rất nhiều loài động vật quý hiếm: tê giác, sư tử, cọp, gấu,… Tiếp tục về Vinh, đoàn dừng chân thăm đền Cuông – nơi chôn cất và thờ cúng An Dương Vương. Buổi tối, tự do khám phá thành phố về đêm. Nghỉ đêm tại Vinh.

NGÀY 04: VINH – NAM ĐÀN – THANH CHƯƠNG (Ăn sáng, trưa, chiều)
Buổi sáng, đến Nam Đàn thăm quê hương của Chủ tịch Hồ Chí Minh. Quý khách sẽ lần lượt viếng thăm Khu Mộ bà Hoàng Thị Loan – thân mẫu của Bác Hồ, Quê Ngoại (làng Chùa, làng Hoàng Trù) và Quê Nội (làng Sen, làng Kim Liên) – nơi gắn bó với nhiều kỷ niệm tuổi thơ của Bác. Đoàn tiếp túc đến xã Thanh An, lên thuyền ngắm đảo chè Thanh Chương. Nghỉ đêm tại Cửa Lò.

NGÀY 04: VINH – NAM ĐÀN – THANH CHƯƠNG (Ăn sáng, trưa, chiều)
Buổi sáng, đến Nam Đàn thăm quê hương của Chủ tịch Hồ Chí Minh. Quý khách sẽ lần lượt viếng thăm Khu Mộ bà Hoàng Thị Loan – thân mẫu của Bác Hồ, Quê Ngoại (làng Chùa, làng Hoàng Trù) và Quê Nội (làng Sen, làng Kim Liên) – nơi gắn bó với nhiều kỷ niệm tuổi thơ của Bác. Đoàn tiếp túc đến xã Thanh An, lên thuyền ngắm đảo chè Thanh Chương. Nghỉ đêm tại Cửa Lò.

NGÀY 05: VINH – HÀ TĨNH – TPHCM (Ăn sáng, trưa)
Buổi sáng, quý khách nghỉ ngơi hoặc tự do mua sắm. Xe đưa đoàn tham quan khu lưu niệm Đại thi hào Nguyễn Du tại Tiên Điền (Hà Tĩnh). Tiếp tục đến tham quan khu du lịch Núi Quyết – Phượng Hoàng Trung Đô. Buổi chiều, xe đưa đoàn ra sân bay Vinh, đáp chuyến bay về lại TPHCM trên chuyến bay VN1267 lúc 16:35. Kết thúc chương trình, quý khách tự túc phương tiện về lại nhà.', CAST(10179000 AS Decimal(18, 0)), 19, 6, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (51, N'DU LỊCH ĐÀ NẴNG - HỘI AN - KDL BÀ NÀ - CẦU VÀNG - BẢO TÀNG TRANH 3D', 3, N'/Uploads/2023/12/c55c0d34-fad3-4342-a709-36beb50eda60.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH – ĐÀ NẴNG – HỘI AN - TẶNG SHOW KÝ ỨC HỘI AN (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Cổng D2, Ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách, hỗ trợ làm thủ tục. Khởi hành ra Đà Nẵng trên chuyến bay VN110 lúc 6h55 hoặc chuyến bay VN106 lúc 6h. Đến Đà Nẵng, tham quan bán đảo Sơn Trà, ngắm cảng Tiên Sa, viếng chùa Linh Ứng Bãi Bụt - ngôi chùa lớn nhất ở thành phố Đà Nẵng, chiêm bái tượng Phật Quan Thế Âm cao nhất Việt Nam. Buổi chiều, khởi hành vào Hội An. Tham quan Ngũ Hành Sơn và làng nghề điêu khắc đá Hòa Hải. Tiếp tục đến Phố cổ Hội An với các công trình tiêu biểu: Chùa Cầu Nhật Bản, chùa Ông, hội quán Phúc Kiến, khu phố đèn lồng. Công Viên Ấn Tượng Hội An - Tái hiện Hội An của quá khứ, một cảng thị quốc tế sầm uất với sự hiện diện của các nền văn hóa Á, Âu với rất nhiều mini shows tương tác …. Đặc biệt xem Show “Ký Ức Hội An” - vở diễn thực cảnh ngoài trời với số lượng diễn viên đạt kỷ lục Việt Nam, tái hiện nhịp nhàng sinh động miền ký ức Faifo đa văn hóa: Champa, Bồ Đào Nha, Nhật, Trung… chứng kiến cuộc sống thôn quê bình dị bên dòng sông Hoài, khoảnh khắc hùng tráng trong lịch sử, nét hoàng kim của cảng thị một thời hay phố Hội nhộn nhịp của hiện tại. Sau khi xem show đoàn trở về và nghỉ đêm tại Đà Nẵng.

NGÀY 02: ĐÀ NẴNG - KHU DU LỊCH  BÀ NÀ (Ăn sáng, chiều)
Sau bữa sáng, quý khách sẽ được tự do tham quan hoàn toàn. Lữ hành Saigontourist xin phép gợi ý 3 chương trình để quý khách tham khảo: 
- Lựa chọn 1 (Tự túc ăn trưa) Tự do để khám phá TP.Đà Nẵng. Quý khách có thể ra sông Hàn ngắm cầu Rồng - một trong những con rồng thép lớn nhất thế giới, cầu Trần Thị Lý - với kiến trúc tựa con thuyền căng buồm vươn ra biển lớn, tượng Cá chép hóa rồng - một biểu tượng mang đậm tính nghệ thuật và tín ngưỡng dân gian, cầu Tình Yêu - cây cầu trái tim với những ổ khóa dễ thương trên thành cầu rất thú vị và lãng mạn. Hoặc đến chợ Hàn (hoặc chợ Cồn), mua sắm đặc sản địa phương. Quý khách tự túc ăn trưa, trải nghiệm phong vị ẩm thực độc đáo của Đà Nẵng.
- Lựa chọn 2 (Cáp treo Bà Nà Hills & tự túc ăn trưa): Xe đưa quý khách đến Ga cáp treo của KDL Bà Nà Hills. Lên Bà Nà bằng cáp treo, dạo bước trên Cầu Vàng tọa lạc tại Vườn Thiên Thai. Viếng chùa Linh Ứng, khám phá Fantasy Park - khu vui chơi giải trí trong nhà và trò chơi Hiệp sĩ Thần thoại (Máng trượt). Dạo bộ giữa Khu làng Pháp một không gian kiến trúc tái hiện sinh động nước Pháp thời cận đại đầy lãng mạn, sang trọng và lịch lãm. Trải nghiệm Tàu hỏa leo núi, tham quan vườn hoa, Hầm rượu cổ Debay (không bao gồm thưởng thức rượu vang). Trải nghiệm Tàu hỏa leo núi số 2 qua Lâu Đài công trình mới tại KDL Bà Nà được đưa vào hoạt động năm 2022. Tự túc chi phí khám phá Khu trưng bày tượng sáp - duy nhất tại Việt Nam. Ăn trưa tự túc tại Bà Nà. Xe đưa quý khách về lại TP.Đà Nẵng.
- Lựa chọn 3 (Combo cáp treo + buffet trưa tại Bà Nà Hills): Xe đưa quý khách đến Ga cáp treo KDL Bà Nà Hills. Đoàn tự do tham quan như lựa chọn 2. Đến trưa, ăn buffet trưa tại Bà Nà Hills. Xe đưa quý khách về lại TP.Đà Nẵng.

NGÀY 03: ĐÀ NẴNG – BẢO TÀNG TRANH 3D – TP.HCM (Ăn sáng, trưa)
Buổi sáng, đoàn tự do nghỉ ngơi. Sau khi làm thủ tục trả phòng, xe đưa quý khách đi tham quan Bảo tàng tranh 3D Art In Paradise Đà Nẵng, du khách sẽ hóa thân và diễn xuất thành các nhân vật trong những tác phẩm 3D đầy thú vị. Ra sân bay Đà Nẵng để về TPHCM trên chuyến bay VN139 lúc 18h15. Kết thúc chương trình. Quý khách tự túc phương tiện từ sân bay TSN về nhà.
Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình
- Giờ bay có thể bị thay đổi bởi hãng hàng không
', CAST(6679000 AS Decimal(18, 0)), 3, 7, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (52, N' DU LỊCH BẢO LỘC - TU VIỆN BÁT NHÃ - CHÙA DI ĐÀ - THÁC BOBLA - NÔNG TRƯỜNG TRÀ PHƯỚC LẠC', 3, N'/Uploads/2023/12/a013bfcf-d6a0-4452-9ebe-fcf9c4ff32ea.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - BẢO LỘC (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist:  45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, hởi hành đi Bảo Lộc. Đến Bảo Lộc, xe đưa đoàn đi  tham quan Tu viện Bát Nhã nằm nổi bật giữa đồi chè xanh mướt và bên dưới ba thác nước hùng vĩ, cảnh quan thơ mộng cùng lối kiến trúc theo xu hướng Á Đông đặc trưng khiến tu viện trở thành một trong những địa điểm hấp dẫn của thành phố lộng gió Bảo Lộc. Tiếp tục hành trình đoàn đến với Chùa Di Đà - một quần thể kiến trúc độc đáo, kết hợp hài hoà phong cách Phật Giáo, Châu Mạ và Tây Nguyên, tới đây du khách cùng trải bước nhẹ nhàng tham quan từng địa điểm của chùa để cảm nhận sự bình an, thanh tịnh. Nếu quý khách đam mê chụp ảnh thì đừng nên bỏ qua địa điểm Nông trường trà Phước Lạc trong hình trình này vì cả một khoảng đồi xanh mướt nằm trọn dưới áng mây trời lơ lửng cùng những tia nắng trong veo sẽ giúp du khách có những tấm hình siêu xinh. Ngoài ra, bầu không khí ở đây cũng trong lành, tươi mát giúp quý khách cảm thấy thư thái, dễ chịu, quên đi mọi muộn phiền. Đoàn di chuyển về khách sạn nhận phòng nghỉ ngơi. Buổi tối, quý khách tự do khám phá phố núi B’Lao về đêm. Nghỉ đêm tại Bảo Lộc.

NGÀY 02: THÁC BOBLA (Ăn sáng, trưa)
Sau khi dùng bữa sáng, xe đưa đoàn theo quốc lộ 20 để đến với Khu du lịch Thác Bobla - ngọn thác hùng vĩ bậc nhất giữa cao nguyên đại ngàn, vẫn giữ được cho mình nét đẹp riêng trong sự tĩnh lặng, một vẻ đẹp vừa nguyên sơ, vừa huyền bí của núi rừng cao nguyên Di Linh. Đến đây du khách cùng trải nghiệm tham quan thác, vườn chim, thú ngoại nhập quý hiếm.Tận hưởng ẩm thực hấp dẫn đậm chất Tây Nguyên, khu trưng bày cổ vật, mua sắm đồ lưu niệm cùng hàng triệu góc check-in sống ảo giúp quý khách lưu lại những kỷ niệm tuyệt đẹp trong chuyến đi. Trên đường về lại khách sạn, quý khách dừng chân tại nhà thờ Thánh mẫu Bảo Lộc với lối kiến trúc độc đáo mang phong cách Pháp đặc trưng chính là điểm đến tâm linh cực kỳ thu hút khách tham quan. Buổi chiều quý khách tự do dạo phố thưởng thức ẩm thực địa phương cũng như mua đặc sản Bảo Lộc về làm quà tặng cho người thân. Nghỉ đêm tại Bảo Lộc.

NGÀY 03: BẢO LỘC - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Quý khách ăn sáng tại khách sạn, xe đưa đoàn đến với Zenda Coffee - nằm trong khu vực Zenda Glamping - nơi quý khách vừa thưởng thức ly cà phê (chi phí tự túc) vừa chiêm ngưỡng vẻ đẹp hoang sơ của thiên nhiên với những cây rừng cổ thụ, nghe tiếng chim hót ríu rít trên tán cây, tiếng thác nước đổ và tiếng suối reo vui nhộn giữa không gian yên bình như đang đi dạo trong rừng mưa nhiệt đới. Đoàn khởi hành về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chương trình tour.', CAST(3890000 AS Decimal(18, 0)), 4, 8, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (53, N'DU LỊCH ĐÀ LẠT - MONGO LAND - ĐỒI CHÈ CẦU ĐẤT - CHÙA LINH PHƯỚC - THÁC DATANLA', 4, N'/Uploads/2023/12/4d58a540-4410-4d03-bcda-c4998dee9e2e.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - ĐÀ LẠT (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, khởi hành đi Đà Lạt. Đến Đà Lạt tham quan Quảng trường Lâm Viên với không gian rộng lớn, thoáng mát hướng ra hồ Xuân Hương cùng công trình nghệ thuật khối bông hoa dã quỳ và khối nụ hoa Atiso khổng lồ được thiết kế bằng kính màu rất đẹp mắt. Du khách tự do dạo thành phố Đà Lạt về đêm, thưởng thức nhịp sống phố núi. Nghỉ đêm tại Đà Lạt.
Lựa chọn: (tự túc chi phí di chuyển và vé tham quan)
- Tham dự đêm giao lưu văn hóa cồng chiêng với người dân tộc Tây Nguyên và uống rượu Cần.
- Tham quan Vườn ánh sáng Lumiere - tổ hợp 7 khu giải trí với công nghệ 3D mapping đầy hư ảo.

NGÀY 02: THAM QUAN ĐÀ LẠT (Ăn sáng, trưa)
Sau khi dùng bữa sáng, xe đưa đoàn đi ngang qua làng hoa Vạn Thành sau đó trải nghiệm cung đường uốn lượn tuyệt đẹp của đèo Tà Nung để đến với Mongo Land - nơi được mệnh danh là tiểu Mông Cổ ở Đà Lạt với hàng ngàn góc check-in sống ảo siêu dễ thương như khu vực lều Mông Cổ, cối xay gió, sa mạc xương rồng, ruộng cỏ Tây Bắc, nông trại thú cưng như lạc đà Alpaca, hươu sao, dê mini, thỏ sư tử...Qúy khách tham gia trò chơi trượt cỏ, hóa thân thành những chàng trai cô gái du mục (chi phí thuê trang phục tự túc), cùng trải nghiệm đường trượt phao khô dài nhất Đà Lạt với nguồn cảm hứng từ dải lụa cầu vồng trên thảo nguyên đầy màu sắc. Buổi chiều, quý khách tự do dạo hồ Xuân Hương, chợ Đà Lạt, mua sắm đặc sản và tự túc thưởng thức đặc sản phố núi. Nghỉ đêm tại Đà Lạt.

NGÀY 03: THAM QUAN ĐÀ LẠT (Ăn sáng, trưa, chiều)
Buổi sáng, xe đưa quý khách đến Đồi chè Cầu Đất với đồi quạt gió khổng lồ bên những luống trà dưới nền trời biếc xanh, trải nghiệm khu cầu gỗ săn mây, ghé quán cà phê Phin Deli nổi bật giữa bạt ngàn núi rừng... (chi phí tự túc). Đoàn dừng chân viếng Chùa Linh Phước - một trong những công trình kiến trúc cổ kính mang đậm đà bản sắc văn hóa, ngôi chùa đạt nhiều kỷ lục gia nhất từ trước tới giờ. Buổi chiều, đoàn ghé thăm nhà thờ Domain de Marie. Xe đưa đoàn tham quan Thác Datanla - nổi tiếng với vẻ đẹp hoang sơ, thơ mộng mà dữ dội, đặc trưng của đại ngàn Tây Nguyên (tự túc chi phí tham gia trò chơi máng trượt). Nghỉ đêm tại Đà Lạt.

NGÀY 04: ĐÀ LẠT - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Sau bữa sáng, quý khách trả phòng, khởi hành về TP.HCM. Về đến thị trấn Nam Ban, quý khách dừng chân thưởng thức trà và cà phê tại Tám Trình Coffee (tự túc chi phí) - quán cà phê sở hữu tầm nhìn ra Thác Voi ngày đêm tuôn chảy và tượng Phật Bà Quan Âm cao nhất Việt Nam. Về tới TP.HCM, xe đưa quý khách về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chương trình.', CAST(4000000 AS Decimal(18, 0)), 4, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (54, N' DU LỊCH ĐÀ NẴNG - HỘI AN - KHU DU LỊCH BÀ NÀ - HUẾ', 4, N'/Uploads/2023/12/549de461-7d6e-4b80-90c3-491e51cb6149.jpg', N'NGÀY 01: TP. HCM – ĐÀ NẴNG – HỘI AN – TẶNG VÉ CV ẤN TƯỢNG & SHOW KÝ ỨC HỘI AN (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Cổng D2, Ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách, hỗ trợ làm thủ tục. Khởi hành ra Đà Nẵng trên chuyến bay VN106 lúc 06h. Đến Đà Nẵng, tham quan bán đảo Sơn Trà, ngắm cảng Tiên Sa, viếng chùa Linh Ứng Bãi Bụt - ngôi chùa lớn nhất ở thành phố Đà Nẵng, chiêm bái tượng Phật Quan Thế Âm cao nhất Việt Nam đoàn nhận phòng. Buổi chiều, đoàn tham quan Ngũ Hành Sơn và làng nghề điêu khắc đá Hòa Hải. Khởi hành vào Hội An tham quan Phố cổ Hội An với các công trình tiêu biểu: Chùa Cầu Nhật Bản, chùa Ông, hội quán Phúc Kiến, phố đèn lồng. Công Viên Ấn tượng Hội An – Tái hiện Hội An của quá khứ, một cảng thị quốc tế sầm uất với sự hiện diện của các nền văn hóa Á, Âu với rất nhiều mini shows tương tác ... Đặc biệt xem Show “Ký Ức Hội An” - vở diễn thực cảnh ngoài trời với số lượng diễn viên đạt kỷ lục Việt Nam, tái hiện nhịp nhàng sinh động miền ký ức Faifo đa văn hóa: Champa, Bồ Đào Nha, Nhật, Trung… chứng kiến cuộc sống thôn quê bình dị bên dòng sông Hoài, khoảnh khắc hùng tráng trong lịch sử, nét hoàng kim của cảng thị một thời hay phố Hội nhộn nhịp của hiện tại... Trở ra và nghỉ đêm tại Đà Nẵng

NGÀY02: ĐÀ NẴNG – KDL BÀ NÀ HILLS – CẦU VÀNG (Ăn sáng, chiều)
Sau bữa sáng, quý khách sẽ được tự do tham quan hoàn toàn. Lữ hành Saigontourist xin phép gợi ý 3 chương trình để quý khách tham khảo: 
- Lựa chọn 1 (Tự túc ăn trưa) Tự do để khám phá TP.Đà Nẵng. Quý khách có thể ra sông Hàn ngắm cầu Rồng - một trong những con rồng thép lớn nhất thế giới, cầu Trần Thị Lý - với kiến trúc tựa con thuyền căng buồm vươn ra biển lớn, tượng Cá chép hóa rồng - một biểu tượng mang đậm tính nghệ thuật và tín ngưỡng dân gian, cầu Tình Yêu - cây cầu trái tim với những ổ khóa dễ thương trên thành cầu rất thú vị và lãng mạn. Hoặc đến chợ Hàn (hoặc chợ Cồn), mua sắm đặc sản địa phương. Quý khách tự túc ăn trưa, trải nghiệm phong vị ẩm thực độc đáo của Đà Nẵng.
- Lựa chọn 2 (Cáp treo Bà Nà Hills & tự túc ăn trưa): Xe đưa quý khách đến Ga cáp treo của KDL Bà Nà Hills. Lên Bà Nà bằng cáp treo, dạo bước trên Cầu Vàng tọa lạc tại Vườn Thiên Thai. Viếng chùa Linh Ứng, khám phá Fantasy Park - khu vui chơi giải trí trong nhà và trò chơi Hiệp sĩ Thần thoại (Máng trượt). Dạo bộ giữa Khu làng Pháp một không gian kiến trúc tái hiện sinh động nước Pháp thời cận đại đầy lãng mạn, sang trọng và lịch lãm. Trải nghiệm Tàu hỏa leo núi, tham quan vườn hoa, Hầm rượu cổ Debay (không bao gồm thưởng thức rượu vang). Trải nghiệm Tàu hỏa leo núi số 2 qua Lâu Đài công trình mới tại KDL Bà Nà được đưa vào hoạt động năm 2022. Tự túc chi phí khám phá Khu trưng bày tượng sáp - duy nhất tại Việt Nam. Ăn trưa tự túc tại Bà Nà. Xe đưa quý khách về lại TP.Đà Nẵng.
- Lựa chọn 3 (Combo cáp treo + buffet trưa tại Bà Nà Hills): Xe đưa quý khách đến Ga cáp treo KDL Bà Nà Hills. Đoàn tự do tham quan như lựa chọn 2. Đến trưa, ăn buffet trưa tại Bà Nà Hills. Xe đưa quý khách về lại TP.Đà Nẵng.
Nghỉ đêm tại Đà Nẵng.

NGÀY 03: ĐÀ NẴNG – HUẾ (Ăn sáng, trưa, chiều)
Buổi sáng, quý khách khởi hành ra Huế. Di chuyển qua đường hầm Hải Vân - hầm đường bộ hiện đại nhất Đông Nam Á. Ngắm biển Lăng Cô - một trong những vịnh biển đẹp nhất thế giới. Đến Huế, đoàn viếng lăng Minh Mạng – vị vua có nhiều đóng góp vào việc ổn định và xây dựng vương triều nhà Nguyễn, củng cố nền thống nhất quốc gia. Tiếp tục đến viếng lăng Khải Định – chiêm ngưỡng một công trình kết hợp hài hòa giữa kiến trúc truyền thống Huế và hiện đại của Tây phương. Buổi tối, đoàn tự do khám phá đất Cố Đô. Nghỉ đêm tại Huế.

NGÀY 04: HUẾ – TPHCM (Ăn sáng, trưa)
Buổi sáng, quý khách tham quan Di sản Văn hóa Thế giới Kinh Thành Huế - Hoàng cung của 13 vị Vua triều Nguyễn với các công trình tiêu biểu: Ngọ Môn, điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh, …. Đoàn đến vãng cảnh chùa Thiên Mụ - ngôi chùa cổ và nổi tiếng nhất ở đất Cố Đô. Buổi chiều, đoàn tham quan Cung An Định – một đại diện tiêu biểu của phong cách cổ kính Á – Âu. Xe khởi hành ra sân bay Phú Bài để về TPHCM trên chuyến bay VN1375 lúc 17h45. Kết thúc chương trình. Quý khách tự túc phương tiện từ sân bay TSN về nhà

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình
- Giờ bay có thể bị thay đổi bởi hãng hàng không
- Show tặng Ký Ức Hội An và vé vào cổng Công Viên Ấn tượng Hội An sẽ không hoàn lại chi phí trong trường hợp quý khách không tham quan hoặc phải hủy do các trường hợp khách quan có thông báo của đơn vị tổ chức', CAST(7790000 AS Decimal(18, 0)), 9, 7, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (55, N'DU LỊCH HÀ NỘI - YÊN TỬ - HẠ LONG - NINH BÌNH -TRÀNG AN - BÁI ĐÍNH', 4, N'/Uploads/2023/12/b248c53d-4f61-402e-b8a5-ce3817fcc420.jpg', N'NGÀY 01: TP. HCM – HÀ NỘI (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Cổng D2 – Ga đi trong nước – SB.Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành ra Hà Nội trên chuyến bay VN240 lúc 7h. Đáp xuống sân bay Nội Bài. Xe đưa đoàn đi tham quan hồ Tây, viếng Chùa Trấn Quốc. Buổi chiều, đoàn tham quan Hoàng Thành Thăng Long – ngắm cột cờ Hà Nội. Buổi tối, đoàn tự do dạo quanh phố đi bộ Hồ Gươm, khám phá “36 phố phường” – khu phố cổ với những ngành nghề đặc trưng và truyền thống của cư dân Thủ Đô, tự túc trải nghiệm chương trình đêm tại Văn Miếu Quốc Tử Giám với chủ đề “Tinh Hoa Đạo Học” trong khung 19h – 22h thứ 4, thứ 7 & CN hàng tuần. Nghỉ đêm tại Hà Nội.

NGÀY 02: HÀ NỘI – YÊN TỬ – HẠ LONG (Ăn sáng, trưa, chiều)
Buổi sáng, đoàn viếng Lăng Bác (*). Xe đưa đoàn đến chân núi Yên Tử - nơi khai sinh ra thiền phái Trúc Lâm. Quý khách lên núi bằng cáp treo, ngắm cảnh núi rừng Đông Bắc, thăm chùa Hoa Yên, tháp Tổ - thờ vua Trần Nhân Tông và các quan đại thần đời Trần, viếng chùa Đồng. Tiếp tục đến Hạ Long, đoàn tự do khám phá Hạ Long về đêm. Nghỉ đêm tại Hạ Long.
Lựa chọn (tự túc chi phí di chuyển & tham quan):
- Trải nghiệm xe bus 2 tầng vừa khai thác từ T2.2023, chiêm ngưỡng cảnh quan trên trục đường ven biển thành phố Hạ Long
- Tham quan Quần thể Du lịch - Giải trí Sun World Hạ Long Park, gồm 2 khu công viên vui chơi ven biển Bãi Cháy và  trên núi Ba Đèo - được kết nối với nhau bởi hệ thống cáp treo vượt biển Nữ Hoàng đạt 2 kỷ lục thế giới (cabin có sức chứa lớn nhất thế giới và cáp treo có trụ cao nhất thế giới so với mặt đất). Trải nghiệm trò chơi mạo hiểm, Vòng quay Mặt Trời – một trong những vòng quay cao nhất thế giới,...

NGÀY 03: HẠ LONG – NINH BÌNH (Ăn sáng, trưa, chiều)
Buổi sáng, quý khách lên thuyền du ngoạn vịnh Hạ Long – một trong 7 kỳ quan thiên nhiên mới của thế giới, chiêm ngưỡng động Thiên Cung, các hòn Đỉnh Hương – Trống Mái (Gà Chọi) – Chó Đá. Đoàn khởi hành đi Ninh Bình. Xe đưa đoàn đến khám phá phố cổ Hoa Lư, ngắm tháp Chùa Bạc lung linh ánh đèn soi bóng bên hồ Kỳ Lân. Nghỉ đêm tại Ninh Bình.

NGÀY 04: NINH BÌNH – TPHCM (Ăn sáng, trưa)
Buổi sáng, đoàn tham quan Khu du lịch Tràng An – có cảnh quan ngoạn mục với hệ thống sông, suối chảy tràn trong các thung lũng, các hang xuyên thủy động, các dãy núi đá vôi trùng điệp. Khu du lịch nằm trong quần thể danh thắng Tràng An đã được UNESCO công nhận di sản hỗn hợp đầu tiên của Việt Nam và khu vực ĐNÁ (đạt cả hai tiêu chí về văn hóa và thiên nhiên). Viếng chùa Bái Đính. Xe đưa ra đưa đoàn về Hà Nội, ra sân bay Nội Bài để về TPHCM trên chuyến bay VN263 lúc 20h. Kết thúc chương trình.

Ghi chú:
- (*) Lăng Chủ tịch Hồ  Chí Minh đóng cửa vào thứ 2, 6 hàng tuần. Trong những ngày này, Quý khách sẽ tham quan bên ngoài lăng, gồm: quảng trường Ba Đình, khu di tích Phủ Chủ Tịch. Không vào viếng trong lăng.
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(9790000 AS Decimal(18, 0)), 15, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (56, N'DU LỊCH TÂY NINH - TÒA THÁNH TÂY NINH - VƯỜN DÂU TẰM BA PHONG - NÚI BÀ ĐEN', 2, N'/Uploads/2023/12/c9056bcc-0678-44f9-b33b-cac753c20dbd.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - TÂY NINH (Ăn sáng, trưa, chiều)
8h Quý khách tập trung tại văn phòng lữ hành Saigontourist. (Qúy khách vui lòng tự túc bữa sáng) Xe và Hướng dẫn viên đưa đoàn đến với Thành phố Tây Ninh, điểm dừng chân đầu tiên là chùa Thiền Lâm (chùa Gò Kén) - ngôi cổ tự trên trăm năm tuổi. Tiếp tục hành trình, quý khách sẽ được chiêm ngưỡng công trình Tòa Thánh Tây Ninh - một quần thể kiến trúc độc đáo, tìm hiểu về Đạo Cao Đài - tôn giáo có xuất xứ tại Việt Nam (tùy theo thời gian mà quý khách có thể tham quan phía bên trong và tham dự lễ cúng tứ thời). Sau khi dùng bữa trưa, đoàn nhận phòng nghỉ ngơi. Buồi chiều, đoàn sẽ khởi hành tham quan vườn dâu tằm Ba Phong với hơn 1000 cây dâu tằm được trồng theo mô hình nông nghiệp hữu cơ tuần hoàn chuẩn Nhật Bản trên diện tích 2 ha, tại đây quý khách có thể trải nghiệm hái dâu và thưởng thức các loại đặc sản từ dâu ngay tại vườn như dâu tươi, dâu sấy, mật dâu, rượu dâu, bưởi, dừa...Nghỉ đêm tại Tây Ninh.

NGÀY 02: TÂY NINH - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Sau bữa sáng, quý khách trả phòng. Xe đưa đoàn đến quần thể danh thắng Núi Bà Đen - ‘’nóc nhà Đông Nam Bộ’’. Đến với Nhà ga Bà Đen - được chứng nhận kỷ lục Guinness là nhà Ga lớn nhất thế giới, đoàn sẽ lần lượt trải nghiệm 2 tuyến cáp hiện đại:
- Tuyến cáp treo Chùa Hang - đưa quý khách đến Quần Thể Tâm Linh Chùa Bà: ở độ cao 350 mét giữa lưng chừng núi là quần thể kiến trúc hang động, chùa chiền mang nét đẹp thiên phú và nhân tạo với nhiều truyền thuyết ly kỳ, bí ẩn gồm Chùa Bà, Chùa Hang, Động Hoàng Chung, Chùa Trung, Chùa Mới…
- Tuyến cáp treo Đình Đồng - Tâm An kết nối Quần Thể Tâm Linh Chùa Bà lên đến khu vực đỉnh núi Bà - ngọn núi cao nhất Đông Nam Bộ, check in mốc tọa độ 986m, chiêm bái tượng phật bà bằng đông cao nhất Châu Á, ngắm nhìn toàn cảnh Tây Ninh và hồ Dầu Tiếng từ trên cao.
Ngoài những tải nghiệm thú vị như ngồi cáp treo vượt qua biển mây đỉnh núi, quần thể triển lãm nghệ thuật Phật giáo thế giới, vãn cảnh vườn Vô Ngã với hàng ngàn loài hoa rực rỡ, du khách có thể thử thưởng thức món kem mới với hương vị và hình dáng độc đáo chỉ có tại Sun World Ba Den như kem vị dâu hình đáo hoa sen ngọt ngào, kem vị cốm hình cabin cáp treo, kem vị sô cô la hình chóp đỉnh 986m và kem vị chanh dây hình nhà ga Bà Đen xinh xắn (chi phí tự túc).
Sau khi thưởng thức bữa trưa buffet, đoàn xuống núi bằng Tuyến cáp treo Vân Sơn - đưa quý khách từ đỉnh trở lại chân núi tại Nhà ga Bà Đen. Trước khi khởi hành về lại TP.HCM, đoàn tham quan, mua sắm tại cơ sở trà Hoàn Ngọc 7 Nga - thương hiệu nổi tiếng tại Tây Ninh với các sản phẩm thảo dược: trà hoàn ngọc, đông trùng hạ thảo, yến sào...Xe đón đoàn về TP.HCM, đưa quý khách về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chương trình.', CAST(2890000 AS Decimal(18, 0)), 23, 7, 10)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (57, N' DU LỊCH BẢO LỘC - THÁC DAMBRI - TÀ ĐÙNG - KHU BẢO TỒN THIÊN NHIÊN NẬM NUNG', 3, N'/Uploads/2023/12/1bc26c0c-d595-434d-ba08-25181a312c8f.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - DAMBRI - BẢO LỘC (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc  6h00 sáng. Khởi hành đi Bảo Lộc, Hướng dẫn viên đưa đoàn đi tham quan Khu du lịch thác Dambri - một trong những ngọn thác cao và hùng vĩ nhất khu vực Bảo Lộc, quý khách có thể tham gia hệ thống máng trượt xuyên qua những tán cây rừng tại đây (chi phí tự túc). Đoàn tham quan Tu viện Bát Nhã nằm nổi bật giữa đồi chè xanh mướt. Đoàn di chuyển về TP. Bảo Lộc nhận phòng nghỉ ngơi. Buổi tối, quý khách tự do khám phá phố núi B’Lao về đêm. Nghỉ đêm tại Bảo Lộc.

NGÀY 02: BẢO LỘC - HỒ TÀ ĐÙNG - GIA NGHĨA (Ăn sáng, trưa, chiều)
Sau khi ăn sáng, xe đưa đoàn theo quốc lộ 28 đi Tà Đùng, qua những cung đường đèo với khung cảnh núi rừng, thiên nhiên xanh mát của những đồi café, tiêu bạt ngàn dọc hai bên đường. Quý khách xuống thuyền dạo một vòng quanh hồ Tà Đùng, đắm mình trong cảnh đẹp lung linh của mặt nước hồ màu ngọc bích và những hòn đảo nhỏ xanh ngắt. Dừng chân tại Tà Đùng Top View Homestay (“nhà Chú Đông”) - thưởng thức cà phê, trà và các món ăn nhẹ, thư giãn, ngắm nhìn toàn cảnh Tà Đùng từ trên cao - nơi được ví von là Vịnh Hạ Long của Tây Nguyên... Đoàn ăn trưa và tiếp tục di chuyển về Gia Nghĩa. Đoàn tiếp tục tham quan và trải nghiệm quy trình rang xay cà phê và ca cao. Nghỉ đêm tại Gia Nghĩa.

NGÀY 03: KHU BẢO TỒN THIÊN NHIÊN NẬM NUNG - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Quý khách ăn sáng tại khách sạn, xe đưa đoàn qua những cánh rừng và những rẫy cây công nghiệp xanh ngắt trên nền đất đỏ bazan đặc trưng của Tây Nguyên, đến Khu Bảo tồn thiên nhiên Nậm Nung. Tại đây, du khách sẽ viếng Thiền Viện Trúc Lâm Đạo Nguyên - nằm trong khu rừng thông thuộc vùng lõi của khu bảo tồn thiên nhiên Nậm Nung, dựa lưng vào dãy Nậm Nung cao 1.500m nên khí hậu quanh năm mát mẻ. Đoàn tiếp tục tham quan Hoa Đất Garden - nơi được Unessco công nhận là đối tác công viên địa chất toàn cầu của tỉnh Đắk Nông - tận hưởng khung cảnh thiên nhiên mờ ảo trong sương với nhiều góc chụp ảnh siêu đẹp cùng thác nước, vườn hoa,.. ngay bên cạnh hồ thủy điện Đắk Tik. Đoàn theo quốc lộ 14 khởi hành về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chương trình tour.

', CAST(400000 AS Decimal(18, 0)), 22, 8, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (58, N'DU LỊCH PHÚ QUỐC - CÁP TREO HÒN THƠM - TẶNG VÉ BUFFET TRƯA', 3, N'/Uploads/2023/12/56761e07-6f99-42bf-9b7d-a63b7845b98f.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - PHÚ QUỐC (Ăn trưa)
Buổi sáng, quý khách tập trung tại ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn viên lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành đi Phú Quốc (chuyến bay VN1821 lúc 6h35). Quý khách tự túc ăn sáng. Đến Phú Quốc, đoàn khởi hành tham quan suối Tranh - quý khách có thể đi dạo trong rừng, thư giãn, tắm suối (suối đặc biệt nhiều nước trong mùa hè). Nhận phòng nghỉ ngơi. Buổi tối, tự do dạo chợ đêm Phú Quốc, ăn chiều tự túc. Nghỉ đêm tại Phú Quốc.
Lựa chọn (tự túc chi phí tham quan & di chuyển):
- Tham quan VinWonder Phú Quốc: có diện tích gần 50ha, là công viên theo chủ đề đầu tiên tại Việt Nam. Khu vực công viên được chia làm 6 phân khu, tượng trưng cho 6 vùng lãnh địa với 12 chủ đề, lấy cảm hứng từ các nền văn minh nổi tiếng, các câu chuyện cổ tích, giai thoại thế giới, sẽ đưa du khách đi từ ngạc nhiên này đến bất ngờ khác, tạo nên những trải nghiệm mới lạ, đầy cuốn hút, mang tính giải trí, giáo dục và nghệ thuật cao. 
- Khám phá Khu Vinpearl Safari: khám phá Vườn Thú hoang dã đầu tiên tại Việt Nam với quy mô 180ha, cùng hơn 130 loài động vật quý hiếm và các chương trình Biểu diễn động vật, Chụp ảnh với động vật, Khám phá và trải nghiệm Vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người.
- Tham quan Grand World: với các công trình tre, công viên nghệ thuật đương đại thuộc Open Park, bảo tàng Gấu Teddy…; tản bộ bên dòng “kênh đào Venice” và nhìn ngắm những chiếc thuyền Gondola, khu phố shophouse lộng lẫy sắc màu, cổng lâu đài tráng lệ, ba cây cầu vòm bán nguyệt...

NGÀY 02: PHÚ QUỐC - CÁP TREO HÒN THƠM - TẶNG BUFFET (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn tham quan Trung tâm nuôi cấy ngọc trai, viếng Thiền Viện Trúc Lâm Hộ Quốc - ngôi chùa đẹp và lớn nhất đảo ngọc. Quý khách đến trải nghiệm “Cáp treo 3 dây vượt biển dài nhất thế giới tại Hòn Thơm” với tổng chiều dài 7.899,9m, thời gian di chuyển 15 phút. Cáp treo sẽ đưa du khách đến với một hành trình du ngoạn kỳ thú trên cao, để thu vào tầm mắt 360 độ vẻ đẹp tựa thiên đường của biển, đảo, rừng xanh và những bãi tắm trong cụm đảo An Thới, nam Phú Quốc. Tham gia các trò chơi tại khu công viên chủ đề và Aquatopia Water Park, công viên nước đầu tiên ở Việt Nam mang phong cách đảo hoang và thổ dân, không gian công viên được thiết kế theo hai chủ đề chính là “Đảo hoang huyền bí” và “Thổ dân hoang dã”, đưa du khách vào hành trình khám phá phấn khích, khi lần lượt trải nghiệm từng khu vực chủ đề gồm sinh vật biển, động vật hoang dã, thủy quái, thổ dân, cướp biển. Các trò chơi được phân chia thành khu vực các trò chơi dành riêng cho trẻ em và khu vui chơi mạo hiểm cho người lớn. Ngắm hoàng hôn tại Sunset Town với những căn nhà ven biển đầy sắc màu - được mệnh danh là nơi ngắm hoàng hôn đẹp nhất Phú Quốc, chiêm ngưỡng cầu Cầu Hôn, biểu tượng của tình yêu... Nghỉ đêm tại Phú Quốc.

NGÀY 03: PHÚ QUỐC - TP. HỒ CHÍ MINH (Ăn sáng, trưa, chiều)
Quý khách tự do tắm biển và nghỉ ngơi tại khách sạn đến giờ trả phòng. Xe đưa quý khách ra sân bay trên đường đi đoàn dừng chân tham quan Vườn tiêu, Nhà thùng làm nước mắm, Lò rượu Sim… Đến sân bay Phú Quốc, đoàn bay về TP.Hồ Chí Minh (chuyến bay VN1834 lúc 20h20). Kết thúc chương trình (quý khách tự túc phương tiện từ sân bay về lại nhà)./.

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(7770000 AS Decimal(18, 0)), 7, 6, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (59, N'DU LỊCH HÀ GIANG - ĐỒNG VĂN - HỒ BA BỂ - CAO BẰNG - BẢN GIỐC - LẠNG SƠN', 6, N'/Uploads/2023/12/d39f699f-a7eb-480d-81dc-5587661f0f71.jpg', N'NGÀY 01: TP. HCM – HÀ NỘI – HÀ GIANG (Ăn trưa, chiều)
Buổi sáng, quý khách tập trung tại Cổng D2 – Ga đi trong nước – SB.Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành ra Hà Nội trên chuyến bay VN206 lúc 6h. Đáp xuống sân bay Nội Bài. Xe đưa đoàn đến Tuyên Quang, viếng Đền Thác Cái – nơi thờ “Thánh Mẫu Sông Lô” theo tín  ngưỡng địa phương. Tiếp tục khởi hành đến Hà Giang, chụp hình lưu niệm tại Cột mốc số 0 tại thành phố Hà Giang, nhận phòng nghỉ ngơi. Buổi tối, đoàn tự do thưởng thức cháo ấu tẩu, cà phê núi Cấm (tự túc chi phí). Nghỉ đêm tại Hà Giang.

NGÀY 02: HÀ GIANG – LŨNG CÚ – ĐỒNG VĂN (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn khởi hành đến Cao nguyên đá Đồng Văn – Công viên địa chất toàn cầu. Thưởng ngoạn cảnh sắc ngoạn mục từ những “vườn đá”, “rừng đá” tai mèo giữa những dãy núi trùng điệp. Đến Quản Bạ, chiêm ngưỡng Núi đôi Cô Tiên. Đến thung lũng Sà Phìn, tham quan Dinh thự nhà họ Vương – dòng họ giàu có và uy quyền nhất vùng một thời, khám phá những câu chuyện huyền bí, thú vị về “Vua Mèo”. Chinh phục Cột cờ Lũng Cú – nơi đánh dấu điểm địa cầu cực Bắc của Việt Nam (bao gồm xe điện). Nghỉ đêm tại Đồng Văn.

NGÀY 03: ĐỒNG VĂN – MÈO VẠC – BA BỂ (Ăn sáng, trưa, chiều)
Buổi sáng, đoàn tự do dạo phố cổ Đồng Văn, chợ phiên Đồng Văn (sáng Chủ Nhật hàng tuần). Dừng chân tại tượng đài TNXP, bảo tàng “Con đường Hạnh Phúc”. Vượt đèo Mã Pí Lèng – một trong “Tứ đại danh đèo” của vùng núi biên viễn phía Bắc. Chiêm ngưỡng cảnh quan nơi dòng sông Nho Quế chảy qua khe vực Tu Sản sâu hun hút, thăm thẳm giữa những vách núi dựng đứng, sừng sững. Đoàn dừng chụp hình lưu niệm tại Làng Văn hóa Du lịch Cộng đồng dân tộc Mông Pả Vi. Tiếp tục hành trình qua các địa danh Bảo Lâm, Bảo Lạc, Tĩnh Túc, … đi Ba Bể. Nghỉ đêm tại KS Sài Gòn – Ba Bể 4*.

NGÀY 04: BA BỂ - BẢN GIỐC (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn khám phá Vườn Quốc Gia Ba Bể, quý khách lên thuyền du ngoạn dọc theo dòng sông Năng, ngắm nhìn cảnh quan và đời sông của người dân tộc Tày, Nùng ở đôi bờ. Tham quan động Puông. Đến hồ Ba Bể - viên ngọc trong xanh giữa núi rừng Đông  Bắc, thưởng ngoạn phong cảnh của một trong một trăm hồ nước ngọt đẹp nhất toàn cầu. Tham quan đảo An Mã. Tiếp tục đến Bản Giốc. Nghỉ đêm tại KS Sài Gòn – Bản Giốc 4*.

NGÀY 05: BẢN GIỐC – LẠNG SƠN (Ăn sáng, trưa, chiều)
Buổi sáng, đoàn đến chiêm ngưỡng cảnh sắc đầy hùng vĩ và thơ mộng của thác Bản Giốc – một trong bốn thác nước là đường biên giới tự nhiên giữa các quốc gia lớn nhất thế giới, đi bè tre ngắm cận cảnh thác (tự túc chi phí). Tiếp tục đến tham quan Động Ngườm Ngao khám phá vẻ đẹp lung linh của một hang động đá vôi còn nguyên sơ. Thăm làng đá Khuổi Ky của dân tộc Tày. Khởi hành đi Lạng Sơn. Buổi tối, đoàn tự do tham quan chợ đêm Kỳ Lừa, chinh phục cột cờ Phai Vệ - ngắm toàn cảnh thành phố miền biên ải. Nghỉ đêm tại KS Mường Thanh 5*.

NGÀY 06: LẠNG SƠN – NỘI BÀI – TPHCM (Ăn sáng, trưa)
Sau bữa sáng, đoàn tham quan di tích thành nhà Mạc, động Tam Thanh – ngắm núi Tô Thị, mua sắm tại chợ Đông Kinh. Xe đưa đoàn ra sân bay Nội Bài về TPHCM trên chuyến bay VN219 lúc 19h. Kết thúc chương trình.

Ghi chú:
- Lịch trình này chỉ sử dụng xe 29 chỗ trở xuống.
- Ăn sáng tại một số địa phương sẽ theo hình thức 1 tô-ly/khách.
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.
- Giờ bay có thể bị thay đổi bởi hãng hàng không', CAST(13100000 AS Decimal(18, 0)), 15, 7, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (60, N'DU LỊCH GIÁP TẾT 2024 BẾN BÌNH ĐÔNG - PHÚ MỸ HƯNG - XE BUS 2 TẦNG', 1, N'/Uploads/2023/12/513e36b8-6f2d-4507-8120-7036028998d3.jpg', N'Buổi sáng:
- 08h00 Xe và Hướng dẫn viên đón quý khách tại văn phòng lữ hành Saigontourist.
Xe đưa đoàn qua khu vực Chợ Bình Tây (Chợ Lớn), dừng chân tham quan Bến Bình Đông - cảm nhận không khí nhộn nhịp trên thuyền dưới bến nơi các loại cây kiểng, hoa kiểng tấp nập người mua kẻ bán để chuẩn bị đón những ngày Tết cổ truyền.
- Đoàn tiếp tục dạo một vòng quanh khu đô thị hiện đại Phú Mỹ Hưng - sự vươn mình điển hình trong việc quy hoạch đô thị của Sài Gòn “Hòn Ngọc Viễn Đông”, hòa mình vào hội hoa xuân quanh khu vực Hồ Bán Nguyệt - trái tim của khu đô thị, dạo bộ cầu Ánh Sao... Trở về khu vực trung tâm, quý khách thưởng thức buffet trưa.

Buổi chiều:
- Đoàn dạo bộ ngắm nhìn thành phố hiện đại xen lẫn với các công trình kiến trúc xưa: nhà hát Lớn, Ủy Ban Nhân Dân thành phố... Tiếp tục hành trình với trải nghiệm trên xe bus 2 tầng Hop On & Hop Off (lộ trình ngang qua các điểm đến: Bưu điện trung tâm - Thảo Cầm Viên - phố Tây Bùi Viện - chợ Bến Thành - Bitexco Tower - Bến Bạch Đằng - phố đi bộ Nguyễn Huệ - Dinh Độc Lập...), từ trên xe quý khách có thể ngắm nhìn những hoạt động, đời sống của người dân thành phố náo nức đón chào năm mới sắp đến.... Xe đưa quý khách về văn phòng lữ hành Saigontourist số 19 Hoàng Việt, Phường 4, Quận Tân Bình. Kết thúc chương trình./.
Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình.', CAST(999000 AS Decimal(18, 0)), 2, 8, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (61, N'DU LỊCH TẾT NGUYÊN ĐÁN 2024 HUẾ - HỘI AN - ĐÀ NẴNG - BÀ NÀ - BẢO TÀNG TRANH 3D [MÙNG 1 TẾT]', 4, N'/Uploads/2023/12/651f3f71-32b6-42e5-8684-594238ff93d4.jpg', N'NGÀY 01: TPHCM – HUẾ - NHÀ VƯỜN AN HIÊN (Ăn chiều)
Buổi sáng, quý khách tập trung tại Ga đi trong nước, sân bay Tân Sơn Nhất. Hướng dẫn vie6nLu74 hành Saigontourist đón quý khách, hỗ trợ làm thủ tục. Khởi hành ra Huế trên chuyến bay VN1372 lúc 11:25. Đến Huế, đoàn vãng cảnh chùa Thiên Mụ - ngôi chùa cổ và nổi tiếng nhất ở đất Cố Đô. Đoàn tiếp tục tham quan Nhà vườn An Hiên – ngoài kiến trúc nhà cổ, quý khách sẽ được ngắm không gian xanh mướt với nhiều loại cây ăn quả ba miền, nơi được mệnh danh là nhà vườn đẹp nhất xứ Huế. Buổi tối, tự do khám phá cố đô về đêm. Nghỉ đêm tại Huế.

NGÀY 02: HUẾ – ĐÀ NẴNG – HỘI AN (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn trả phòng. Khởi hành tham quan Di sản Văn hóa Thế giới Kinh Thành Huế - Hoàng cung của 13 vị Vua triều Nguyễn với các công trình tiêu biểu: Ngọ Môn, điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh, Bảo tàng Cổ vật Cung đình Huế. Khởi hành vào Đà Nẵng. Trên đường, ngắm biển Lăng Cô, di chuyển qua đường hầm Hải Vân – hầm đường bộ hiện đại nhất Đông Nam Á. Đến Đà Nẵng, tham quan thắng cảnh Ngũ Hành Sơn và làng nghề điêu khắc đá Hòa Hải. Tiếp tục khởi hành tham quan Phố cổ Hội An – tái hiện Hội An của quá khứ, một cảng thị quốc tế sầm uất với sự hiện diện của các nền văn hóa Á Âu với rất nhiều mini shows tương tác ... Đặc biệt xem Show “Ký Ức Hội An” - vở diễn thực cảnh ngoài trời với số lượng diễn viên đạt kỷ lục Việt Nam, tái hiện nhịp nhàng sinh động miền ký ức Faifo đa văn hóa: Champa, Bồ Đào Nha, Nhật, Trung… chứng kiến cuộc sống thôn quê bình dị bên dòng sông Hoài, khoảnh khắc hùng tráng trong lịch sử, nét hoàng kim của cảng thị một thời hay phố Hội nhộn nhịp của hiện tại... Sau khi xem show đoàn quay về Đà Nẵng. Nghỉ đêm tại Đà Nẵng.

NGÀY 03: ĐÀ NẴNG – KDL BÀ NÀ HILLS – CẦU VÀNG (Ăn sáng, chiều)
Sau bữa sáng, quý khách sẽ được tự do tham quan hoàn toàn. Lữ hành Saigontourist xin phép gợi ý 03 chương trình để quý khách tham khảo:
- Lựa chọn 1 (Tự túc ăn trưa) Tự do để khám phá Hội An hoặc TP.Đà Nẵng. Quý khách có thể ra sông Hàn ngắm cầu Rồng - một trong những con rồng thép lớn nhất thế giới, cầu Trần Thị Lý - với kiến trúc tựa con thuyền căng buồm vươn ra biển lớn, tượng Cá chép hóa rồng - một biểu tượng mang đậm tính nghệ thuật và tín ngưỡng dân gian, cầu Tình Yêu - cây cầu trái tim với những ổ khóa dễ thương trên thành cầu rất thú vị và lãng mạn. Hoặc đến chợ Hàn (hoặc chợ Cồn), mua sắm đặc sản địa phương. Quý khách tự túc ăn trưa, trải nghiệm phong vị ẩm thực độc đáo của Đà Nẵng.
- Lựa chọn 2 (Cáp treo Bà Nà Hills & tự túc ăn trưa): Xe đưa quý khách đến Ga cáp treo của KDL Bà Nà Hills. Lên Bà Nà bằng cáp treo, dạo bước trên Cầu Vàng tọa lạc tại Vườn Thiên Thai. Viếng chùa Linh Ứng, khám phá Fantasy Park - khu vui chơi giải trí trong nhà và trò chơi Hiệp sĩ Thần thoại (Máng trượt). Dạo bộ giữa Khu làng Pháp một không gian kiến trúc tái hiện sinh động nước Pháp thời cận đại đầy lãng mạn, sang trọng và lịch lãm. Trải nghiệm Tàu hỏa leo núi, tham quan vườn hoa, Hầm rượu cổ Debay (không bao gồm thưởng thức rượu vang). Trải nghiệm Tàu hỏa leo núi số 2 qua Lâu Đài công trình mới tại KDL Bà Nà được đưa vào hoạt động năm 2022. Tự túc chi phí khám phá Khu trưng bày tượng sáp - duy nhất tại Việt Nam. Ăn trưa tự túc tại Bà Nà. Xe đưa quý khách về lại TP.Đà Nẵng.
- Lựa chọn 3 (Combo cáp treo + buffet trưa tại Bà Nà Hills): Xe đưa quý khách đến Ga cáp treo KDL Bà Nà Hills. Đoàn tự do tham quan như lựa chọn 2. Đến trưa, ăn buffet trưa tại Bà Nà Hills. Xe đưa quý khách về lại TP.Đà Nẵng.
Nghỉ đêm tại Đà Nẵng.

NGÀY 04: ĐÀ NẴNG – BẢO TÀNG 3D – TP.HCM (Ăn sáng, trưa)
Buổi sáng, quý khách ngoạn cảnh một vòng bán đảo Sơn Trà ngắm cảnh cảng Tiên Sa, viếng chùa Linh Ứng Bãi Bụt – ngôi chùa lớn nhất ở thành phố Đà Nẵng, chiêm bái tượng Phật Quan Thế Âm cao nhất Việt Nam. Xe đưa đoàn tham quan Bảo tàng tranh 3D Art in Paradise Đà Nẵng, du khách sẽ hóa thân và diễn xuất thành các nhân vật trong những tác phẩm 3D đầy thú vị. Ra sân bay Đà Nẵng, trở về TPHCM trên chuyến bay VN137 lúc 18:15. Kết thúc chương trình. Quý khách tự túc phương tiện từ sân bay TSN về nhà.

Ghi chú:
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình
- Giờ bay có thể bị thay đổi bởi hãng hàng không
- Show tặng Ký Ức Hội An và vé vào cổng Công Viên Ấn tượng Hội An sẽ không hoàn lại chi phí trong trường hợp quý khách không tham quan hoặc phải hủy do các trường hợp khách quan có thông báo của đơn vị tổ chức', CAST(11100000 AS Decimal(18, 0)), 8, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (62, N'DU LỊCH XANH HÒA BÌNH - MỘC CHÂU - ĐIỆN BIÊN - LAI CHÂU - SAPA - KHỞI HÀNH TỪ CẦN THƠ', 5, N'/Uploads/2023/12/20a44237-6d50-4342-a3cd-25dd77837473.jpg', N'Ngày 01: CẦN THƠ - HÀ NỘI - HÒA BÌNH - MỘC CHÂU (Ăn trưa, chiều)
- Buổi sáng, quý khách tập trung tại sân bay Cần Thơ. HDV Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành đi Hà Nội. Đáp xuống sân bay Nội Bài, xe đưa đoàn đến Hòa Bình, tham quan nhà máy thủy điện Hòa Bình. Đoàn dừng chân nghỉ ngơi tại Thung Khe - đèo Đá Trắng. Đến Mộc Châu, tham quan đồi chè Mộc Châu. Nghỉ đêm tại Mộc Châu.

Ngày 02: MỘC CHÂU - SƠN LA - ĐIỆN BIÊN (Ăn sáng, trưa, chiều)
- Xe đưa đoàn đến tham quan khu du lịch Mộc Châu Island.
Lựa chọn (tự túc chi phí tham quan)­: Quý khách đến trải nghiệm hệ thống cầu kính Bạch Long - cầu kính đi bộ dài nhất thế giới , thưởng ngoạn cảnh quan thiên nhiên hùng vỹ....    
- Khởi hành qua Sơn La, đoàn chinh phục đèo Pha Đin - một trong những đường đèo dài và hiểm trở nhất Việt Nam, ranh giới 2 tỉnh Sơn La & Điện Biên. Buổi chiều, đoàn thăm Tượng đài chiến thắng Điện Biên Phủ (đồi D1), ngắm toàn cảnh thành phố Điện Biên Phủ và cánh đồng Mường Thanh từ trên cao. Nghỉ đêm tại Điện Biên.

Ngày 03: ĐIỆN BIÊN - LAI CHÂU (Ăn sáng, trưa, chiều)
- Đoàn đến tham quan các di tích gắn liền với chiến thắng Điện Biên Phủ: bảo tàng chiến thắng Điện Biên Phủ, đồi A1, Hầm tướng De Castries. Khởi hành đi Lai Châu, đoàn sẽ đi ngang qua các địa danh: Mường Chà, Mường Lay, cầu Hang Tôm - ranh giới 2 tỉnh Điện Biên & Lai Châu, Phong Thổ,... Trên đường đi, đoàn có dịp chiêm ngưỡng khung cảnh hùng vĩ của núi rừng Tây Bắc. Tham quan động Pu Sam Cáp. Nghỉ đêm tại Lai Châu.

Ngày 04: LAI CHÂU - FANSIPAN - SAPA (Ăn sáng, trưa, chiều)
- Xe đưa đoàn theo quốc lộ 4D, chinh phục dãy Hoàng Liên Sơn. Đoàn tiếp tục hành trình về Sapa, đoàn chinh phục đỉnh đèo Ô Quy Hồ, ngắm cảnh Thác Bạc trên đường đi... Đoàn tham quan bản Cát Cát
Đến Ga cáp treo Fansipan, quý khách tự do tham quan vườn hoa, khu chợ phiên, mua sắm…
Lựa chọn (tự túc chi phí tham quan): Đoàn đi cáp treo, chinh phục đỉnh Fansipan với hệ thống cáp treo 3 dây hiện đại vừa khánh thành tháng 2/2016. Trải nghiệm cảm giác đi giữa biển mây. Viếng khu tâm linh Fanpsian, vượt gần 600 bậc thang, chinh phục “Nóc nhà Đông Dương” - đỉnh Fansipan 3,143m.
- Buổi chiều, đoàn tự do ngắm nhà thờ đá, dạo chợ Sapa... Nghỉ đêm tại Sapa. 

Ngày 05: SAPA - LÀO CAI - NỘI BÀI – CẦN THƠ (Ăn sáng, trưa)
- Buổi sáng, Khởi hành về Lào Cai, tham quan cột mốc biên giới và cửa khẩu quốc tế Lào Cai. Xe đưa đoàn ra sân bay Nội Bài, về Cần Thơ (chuyến bay Vietnam Airlines  lúc 16h35). Kết thúc chương trình.

', CAST(10890000 AS Decimal(18, 0)), 18, 7, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (63, N'RỪNG DỪA BẢY MẪU', 1, N'/Uploads/2023/12/b83a7678-0352-45b0-bed6-7a87f0100a0a.jpg', N'- 07:00 Xe và HDV Saigontourist đón khách tại điểm hẹn khởi hành đi Khu du lịch Rừng dừa Hội An.
- 08:00 Đến Hội An. Quý khách di chuyển đi tham quan Khu du lịch Rừng dừa bảy mẫu. Quý khách tham quan Rừng dừa Bảy Mẫu trên những chiếc thuyền thúng một phương tiện đặc trưng của làng chài thôn Vạn Lăng.
Đoàn thúng len lỏi vào những con kênh nhỏ trong Rừng dừa và tìm hiểu về nguồn gốc cây dừa nước ở Hội An & những chiến tích của quân dân Cẩm Thanh gắn liền Rừng dừa Bảy Mẩu trong hai cuộc kháng chiến chống Pháp – Mỹ cứu nước.
Tận mắt xem người dân địa phương quăng chài trên sông để đánh bắt cá & có thể tự tay trải nghiệm kỹ năng quăng chài của mình. Sau đó, xem màn lắc thúng chém nước đặc sắc của nghệ nhân lắc thúng của thôn Vạn Lăng.
- 11:30 Quý khách dùng bữa trưa, nghỉ ngơi tại nhà hàng.
- Chiều: Tiếp tục tự do vui chơi tại khu du lịch.
- 15:30 Đoàn di chuyển về lại Đà Nẵng, kết thúc chương trình.', CAST(500000 AS Decimal(18, 0)), 9, 6, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (64, N'DU LỊCH MỘC CHÂU - ĐIỆN BIÊN - SAPA - KHỞI HÀNH TỪ CẦN THƠ [TẾT DƯƠNG LỊCH]', 5, N'/Uploads/2023/12/143ddc65-799d-4955-bde6-89e6f8fc58ad.jpg', N'Ngày 01: CẦN THƠ - HÀ NỘI - HÒA BÌNH - MỘC CHÂU (Ăn trưa, chiều)
- Buổi sáng, quý khách tập trung tại sân bay Cần Thơ. HDV Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành đi Hà Nội (chuyến bay Vietnam Airlines  lúc 9h40). Đáp xuống sân bay Nội Bài, xe đưa đoàn đến Hòa Bình, tham quan nhà máy thủy điện Hòa Bình. Đoàn dừng chân nghỉ ngơi tại Thung Khe - đèo Đá Trắng. Đến Mộc Châu, tham quan đồi chè Mộc Châu. Nghỉ đêm tại Mộc Châu.

Ngày 02: MỘC CHÂU - SƠN LA - ĐIỆN BIÊN (Ăn sáng, trưa, chiều)
- Xe đưa đoàn đến tham quan khu du lịch Mộc Châu Island.
Lựa chọn (tự túc chi phí tham quan)­: Quý khách đến trải nghiệm hệ thống cầu kính Bạch Long - cầu kính đi bộ dài nhất thế giới , thưởng ngoạn cảnh quan thiên nhiên hùng vỹ....    
- Khởi hành qua Sơn La, đoàn chinh phục đèo Pha Đin - một trong những đường đèo dài và hiểm trở nhất Việt Nam, ranh giới 2 tỉnh Sơn La & Điện Biên. Buổi chiều, đoàn thăm Tượng đài chiến thắng Điện Biên Phủ (đồi D1), ngắm toàn cảnh thành phố Điện Biên Phủ và cánh đồng Mường Thanh từ trên cao. Nghỉ đêm tại Điện Biên.

Ngày 03: ĐIỆN BIÊN - LAI CHÂU (Ăn sáng, trưa, chiều)
- Đoàn đến tham quan các di tích gắn liền với chiến thắng Điện Biên Phủ: bảo tàng chiến thắng Điện Biên Phủ, đồi A1, Hầm tướng De Castries. Khởi hành đi Lai Châu, đoàn sẽ đi ngang qua các địa danh: Mường Chà, Mường Lay, cầu Hang Tôm - ranh giới 2 tỉnh Điện Biên & Lai Châu, Phong Thổ,... Trên đường đi, đoàn có dịp chiêm ngưỡng khung cảnh hùng vĩ của núi rừng Tây Bắc. Tham quan động Pu Sam Cáp. Nghỉ đêm tại Lai Châu.Ngày 03: ĐIỆN BIÊN - LAI CHÂU (Ăn sáng, trưa, chiều)
- Đoàn đến tham quan các di tích gắn liền với chiến thắng Điện Biên Phủ: bảo tàng chiến thắng Điện Biên Phủ, đồi A1, Hầm tướng De Castries. Khởi hành đi Lai Châu, đoàn sẽ đi ngang qua các địa danh: Mường Chà, Mường Lay, cầu Hang Tôm - ranh giới 2 tỉnh Điện Biên & Lai Châu, Phong Thổ,... Trên đường đi, đoàn có dịp chiêm ngưỡng khung cảnh hùng vĩ của núi rừng Tây Bắc. Tham quan động Pu Sam Cáp. Nghỉ đêm tại Lai Châu.

Ngày 04: LAI CHÂU - FANSIPAN - SAPA (Ăn sáng, trưa, chiều)
- Xe đưa đoàn theo quốc lộ 4D, chinh phục dãy Hoàng Liên Sơn. Đoàn tiếp tục hành trình về Sapa, đoàn chinh phục đỉnh đèo Ô Quy Hồ, ngắm cảnh Thác Bạc trên đường đi... Đoàn tham quan bản Cát Cát
Đến Ga cáp treo Fansipan, quý khách tự do tham quan vườn hoa, khu chợ phiên, mua sắm…
Lựa chọn (tự túc chi phí tham quan): Đoàn đi cáp treo, chinh phục đỉnh Fansipan với hệ thống cáp treo 3 dây hiện đại vừa khánh thành tháng 2/2016. Trải nghiệm cảm giác đi giữa biển mây. Viếng khu tâm linh Fanpsian, vượt gần 600 bậc thang, chinh phục “Nóc nhà Đông Dương” - đỉnh Fansipan 3,143m.
- Buổi chiều, đoàn tự do ngắm nhà thờ đá, dạo chợ Sapa... Nghỉ đêm tại Sapa. 

Ngày 05: SAPA - LÀO CAI - NỘI BÀI – CẦN THƠ (Ăn sáng, trưa)
- Buổi sáng, Khởi hành về Lào Cai, tham quan cột mốc biên giới và cửa khẩu quốc tế Lào Cai. Xe đưa đoàn ra sân bay Nội Bài, về Cần Thơ (chuyến bay Vietnam Airlines  lúc 16h35). Kết thúc chương trình.', CAST(11000000 AS Decimal(18, 0)), 18, 8, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (65, N'DU LỊCH PHAN THIẾT-TÀ CÚ-2N1D-RESORT 3 SAO', 2, N'/Uploads/2023/12/c4bd6623-6e63-4968-b87d-c84fa870d59c.jpg', N'NGÀY 01 | TP. HỒ CHÍ MINH – PHAN THIẾT – KDL NÚI TÀ CÚ (ĂN 3 BUỔI)
05h00    Xe và hướng dẫn viên đón khách tại điểm hẹn. 
Quý khách khởi hành về Phan Thiết. Đoàn dừng chân ăn  sáng tại Nhà hàng khu vực Đông Nai.
Trên xe HDV tổ chức các trò chơi vui nhộn như: tìm người bí ẩn, truy tìm báu vật, chiếc nón kỳ cục, hành trình kết nối với nhiều phần quà hấp dẫn và nghe giới thiệu những điểm trên cung đường mà đã đi qua.
10h30     Đoàn dừng chân tham quan Núi Tà Cú, du khách đi Cáp treo (phí cáp treo tự túc), ngắm cảnh đồng bằng Hàm Thuận Nam với những Vườn Thanh Long xanh bạt ngàn. Quý khách tham quan Chùa Linh Sơn Trường Thọ với Bộ tượng tam thế Phật được tạc bằng gỗ trầm hương trên 100 năm tuổi và chụp hình lưu niệm với Tượng Phật Nhập Niết Bàn lớn nhất Khu Vực, dài 49m, cao 11m.
12h00    Đoàn dùng cơm trưa tại nhà hàng.
14h00   Đoàn khởi hành về Resort nhận phòng. Tự do tắm biển, hồ bơi.
17h30   Quý khách tham quan Đồi Cát Bay, ngắm hoàng hôn trên đỉnh Đồi. Đây cũng là nơi khơi nguồn cảm hứng bất tận của các nhà nhiếp ảnh. Đồi cát muôn hình, muôn vẻ cùng với những hoạt động,sinh sống của người dân trên cát  góp phần cho ra đời những tác phẩm đẹp. Ngoài ra Quý khách có thể tham quan trò chơi trượt cát và thưởng thức Dừa ba nhát và Đậu hủ non và món bánh tai vạt ngay trên đồi cát.
18h30   Quý khách dùng cơm tối tại nhà hàng Resort. Buổi tối quý khách tự do khám phá thưởng thức hải sản về đêm.

NGÀY 02 | KDL BÀU TRẮNG – TP.HCM (ĂN 2 BUỔI)
06h30   Quý khách dùng Buffet sáng tại resort.
08h00   Xe đưa quý khách tham quan KDL Bàu Trắng – Nằm giữa những triền cát trắng nên Bàu Bà còn được gọi là Bàu Trắng và ngày nay cũng thường được gọi với cái tên Bàu Sen bởi trong hồ khi vào mùa sen nở, phủ kín cả một vùng hồ. được thiên nhiên ban tặng khiến cho hồ đẹp đến tuyệt vời.Từ trên đồi cát nhìn xuống hồ phẳng lặng, xa xa những đồi cát sẫm màu nhấp nhô lên xuống khiến du khách không khỏi trầm trồ, thán phục. Quý khách có thể chọn lựa chơi các trò chơi mạo hiểm như đi xe địa hình hoặc đi xe Jeep khám phá Bàu
Trắng (Chi phí tự túc).
10h30   Quý khách về resort nghỉ ngơi, tắm biển, tắm hồ bơi.
11h30  Đoàn làm thủ tục trả phòng. Đoàn dùng cơm trưa tại nhà hàng.
Trên đường về xe dừng tại cơ sở sản xuất nước mắm,khô  các loại ..vv, tại đây quý khách có thể mua quà cho người thân và bạn bè.
18h00   Quý khách về đến TP.HCM  HDV chia  tay  quý khách hẹn ngày gặp lại! Kết thúc chuyến tham quan!', CAST(3200000 AS Decimal(18, 0)), 14, 6, 1)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (66, N'DU LỊCH PHÚ QUỐC - BÃI SAO - SUNSET TOWN', 3, N'/Uploads/2023/12/c704bcb2-736e-4920-a136-e7fb556fb735.jpg', N'NGÀY 01: TP. HCM – PHÚ QUỐC – GRAND WORLD (Ăn trưa)
Buổi sáng, quý khách tập trung tại Cổng D2 – Ga đi trong nước – SB.Tân Sơn Nhất. Hướng dẫn viên Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành ra Phú Quốc trên chuyến bay VN1821 lúc 6h35. Đến Phú Quốc, đoàn khởi hành tham quan trung tâm nuôi cấy ngọc trai Phú Quốc. Tiếp tục đến tham quan Dinh Cậu – biểu tượng văn hóa và tín ngưỡng của đảo Phú Quốc, nơi ngư dân địa phương cầu may mắn, an lành và gởi gắm niềm tin cho một chuyến ra khơi đánh bắt đầy ắp khi trở về. Đoàn viếng Dinh Bà Thủy Long Thánh Mẫu. Buổi chiều, xe đưa đoàn đến “Thành phố không ngủ” Grand World tự do tham quan và tự túc chi phí các trải nghiệm tại Grand World: bảo tàng Gấu Teddy, thuyền trên sông Venice, Tinh hoa Việt Nam, … Quý khách tự túc ăn chiều tại Grand World hoặc ẩm thực địa phương. Nghỉ đêm tại Phú Quốc.

NGÀY 02: PHÚ QUỐC – BÃI SAO – SUNSET TOWN (Ăn sáng, trưa, chiều)
Sau bữa sáng, đoàn đến tham quan Thiền Viện Trúc Lâm Hộ Quốc – ngôi chùa đẹp và lớn nhất đảo ngọc. Xe đưa đoàn đến tắm biển Bãi Sao – một trong những bãi biển đẹp nhất Phú Quốc. Buổi chiều, xe đưa đoàn đến tham quan và dạo bộ Thị trấn Hoàng Hôn (Sunset Town) – được mệnh danh là nơi ngắm hoàng hôn đẹp nhất Phú Quốc, chiêm ngưỡng những kiến trúc độc đáo và công trình tiêu biểu: Cầu Hôn, Tháp Đồng Hồ, Quảng trường Con Sò, Khải Hoàn Môn Gavi,  … và những ngôi nhà ven biển đầy màu sắc cùng kiến trúc Địa Trung Hải. Quý khách tự túc chi phí trải nghiệm Kiss The Stars Show – buổi biểu diễn được dàn dựng công phu nhờ công nghệ Multimedia – sự kết hợp của lửa, nước và ánh sáng, pháo hoa, laser, âm nhạc và các nghệ sĩ biểu diễn đầy hấp dẫn. Nghỉ đêm tại Phú Quốc.

NGÀY 03: PHÚ QUỐC – TPHCM (Ăn sáng)
Buổi sáng, xe đưa đoàn tham quan lò chế biến rượu Sim rừng, cơ sở nước mắm và vườn tiêu Phú Quốc. Đoàn khởi hành ra sân bay Phú Quốc để về TPHCM trên chuyến bay VN1824 lúc 12h50 hoặc VN1828 lúc 17h25. Kết thúc chương trình.
Lưu ý: Đối với các chuyến bay KH lúc 17h25, Lữ hành Saigontourist sẽ hỗ trợ 01 bữa ăn trưa.', CAST(4379000 AS Decimal(18, 0)), 7, 7, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (67, N'DU LỊCH CÔN ĐẢO', 3, N'/Uploads/2023/12/f960f1da-0881-471a-816b-5f11914ea603.jpg', N'NGÀY 1: TP. HỒ CHÍ MINH - CÔN ĐẢO (Ăn trưa, chiều)
Du khách tập trung tại sân bay Tân Sơn Nhất. Bay đi Côn Đảo. Xe đón tại sân bay Cỏ Ống (Cách trung tâm Côn Đảo 13km), trên đường đi sẽ qua các địa danh: Làng Cỏ Ống mang tên một loại cỏ hình ống, chiều cao từ nửa thước trở lên, lò vôi – được người Pháp xây nên nhằm sản xuất vôi và kết hợp một số phụ gia tạo thành chất kết dính thay cho xi măng, nghĩa địa Hàng Keo – nghĩa địa đầu tiên tại Côn Đảo. Du khách về khách sạn.
Chiều xe và hướng dẫn viên đưa đoàn đi tham quan Cảng Bến Đầm: Cảng lớn nhất tại Côn Đảo, là địa điểm hoạt động trung chuyển hàng hóa, hành khách, giao dịch, buôn bán thủy sản và cung ứng các dịch vụ hậu cần nghề biển; Mũi Cá Mập : Mỏm núi vươn dài ra biển có hình tượng giống hàm cá mập; Đỉnh Tình Yêu:  Là chóp núi có hình tượng của đôi trai gái đang tâm tình mà thiên nhiên đã ban tặng cho Côn Đảo; Bãi Nhát:  Một bãi tắm bị tác động của thuỷ triều, khi nước xuống sẽ lộ thiên một bãi tắm với cát trắng mịn, nước trong xanh. Quay về khách sạn. Tự do. Nghỉ đêm ở Côn Đảo

NGÀY 2: THAM QUAN CÔN ĐẢO (Ăn sáng, trưa, chiều)
Sáng: Xe đưa khách tham quan Dinh chúa đảo - Nơi lưu giữ các tư liệu và hình ảnh của Côn Đảo từ thời Pháp thuộc đến những năm 2000, Trại tù Phú Hải, Cầu tàu 914, Viếng nghĩa trang Hàng Dương nơi yên nghĩ của hơn 2.000 nấm mộ và đặc biệt là mộ cô Sáu (Võ Thị Sáu), Khu Chuồng Cọp Pháp - Mỹ hệ thống biệt giam đặc biệt tại Côn Đảo. Chuồng Bò Miếu bà Phi Yến nơi thờ phượng bà Lê Thị Râm, vợ chúa Nguyễn Ánh. Quay về khách sạn nghỉ ngơi.
Chiều:. Xe và HDV resort đưa đoàn tắm biển tại bãi Đầm Trầu (cách trung tâm thị trấn Côn Đảo khoảng 13km) Đầm Trầu: Một bãi tắm gần như còn hoang sơ chưa bị bàn tay con nguời khai phá , tuyệt đẹp với cát vàng mịn màng, làn nước trong xanh màu ngọc bích. Từ lộ chính, quý khách đi bộ theo đường mòn khoảng 1,5km để đến bãi tắm, trên đường đi quý khách hãy dừng  chân tại Miếu Cậu để thắp nén nhang nơi thờ hoàng tử Cải, con trai của chúa Nguyễn Ánh và bà Hoàng Phi Yến. Quay về khách sạn. Tự do. Nghỉ đêm ở Côn Đảo. 

NGÀY 3: CÔN ĐẢO - TP. HỒ CHÍ MINH (Ăn sáng)
Du khách trả phòng, đi tham quan chợ Côn Đảo, du khách có thể mua đặc sản làm quà cho gia đình. Xe đưa du khách ra sân bay Cỏ Ống bay về Tp. HCM. Đến sân bay Tân Sơn Nhất. Kết thúc chuyến tham quan. (Quý khách tự túc phương tiện từ sân bay về lại nhà).

Ghi chú:
- Từ ngày 10/06 – 30/09/2023, Côn Đảo thực hiện chủ trương hạn chế tiến tới dừng dâng cúng, đốt vàng mã trong các điểm di tích thuộc Khu di tích lịch sử Quốc Gia đặc biệt Côn Đảo (gồm: nghĩa trang Hàng Dương, nghĩa trang Hàng Keo, Bia tưởng niệm di tích bãi sọ người, Bia tưởng niệm di tích Cầu Ma Thiên Lãnh, Bia tưởng niệm vượt  ngục, Bia tưởng niệm Cầu tàu 914, đền thờ Côn Đảo, ...). Từ 01/10/2023, dừng hoàn toàn việc cúng, đốt vàng mã trong các điểm di tích.
- Điểm tham quan có thể sắp xếp lại cho phù hợp mà vẫn bảo đảm đầy đủ nội dung của từng chương trình', CAST(6789000 AS Decimal(18, 0)), 19, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (68, N' DU LỊCH CẦN THƠ - CỒN SƠN - CHÂU ĐỐC - TRÀ SƯ - SA ĐÉC', 3, N'/Uploads/2023/12/a5d2e0aa-7b6e-43f4-9ebb-745b8e3afa8b.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - CỒN SƠN - CẦN THƠ (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, Xe và Hướng dẫn viên Lữ hành Saigontourist đón khách, khởi hành đi Cần Thơ. Đoàn xuống thuyền đến Cồn Sơn, trải nghiệm cuộc sống bình dị của cư dân miền sông nước Nam Bộ. Quý khách lên tham quan bè cá, tìm hiểu quy trình nuôi cá thát lát, cá trạch lẩu, lươn,... Đến cồn Sơn, quý khách tản bộ trên con đường qua những vườn cây ăn trái xum xuê rợp bóng mát, thưởng thức các loại trái cây (tùy mùa): vú sữa, nhãn, chôm chôm, bưởi, dâu da,... Đoàn ăn trưa với những món ăn Nam Bộ được chế biến từ nguồn thực phẩm sạch tự cung tự cấp trên cồn,  được hướng dẫn và trải nghiệm tự làm một loại bánh dân gian: bánh khọt, bánh in, bánh kẹp cuốn,... Xe đón đoàn tại bến thuyền về khách sạn nhận phòng nghỉ ngơi, buổi tối tự do đi dạo bến Ninh Kiều, chợ đêm Cần Thơ. Nghỉ đêm tại Cần Thơ.

NGÀY 02: CẦN THƠ - CÁI RĂNG - TRÀ SƯ - CHÂU ĐỐC (Ăn sáng, trưa, chiều)
Buổi sáng, quý khách xuống thuyền tại bến Ninh Kiều đi tham quan chợ nổi Cái Răng - một trong những chợ nổi lớn của Đồng Bằng sông Cửu Long, tìm hiểu nét độc đáo trong đời sống sinh hoạt của cư dân sông nước. Khởi hành đi Châu Đốc, trên đường tham quan rừng tràm Trà Sư, du khách sẽ được bước đi trên  – “Cầu tre vạn bước” với chiều dài hơn 2km len lỏi vào rừng, hòa mình vào thiên nhiên sinh thái hoang dã, thông thả khám phá những bí ẩn mà một khu rừng đang hiện hữu, đi tắc ráng theo những con rạch xuyên qua Lung Sen và khu Rừng Giống, lên tháp vọng cảnh cao 23m nhìn toàn cảnh rừng tràm. Nghỉ đêm tại Châu Đốc.

NGÀY 03: CHÂU ĐỐC - SA ĐÉC - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Buổi sáng  trả phòng viếng Miếu Bà Chúa Xứ, Tây An cổ tự, Lăng Thoại Ngọc Hầu - danh nhân có công khai mở đất An Giang, Chùa Hang - ngôi chùa gắn liền với truyền thuyết 2 con rắn lớn biết nghe kinh Phật. Khởi hành về TP. HCM. Đến Sa Đéc tham quan Thất phủ Thiên Hậu miếu - còn gọi là chùa Bà Sa Đéc hoặc tham quan Kiến An Cung - còn gọi là chùa Ông Sa Đéc. Đến TP.HCM, xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình. Kết thúc chương trình.', CAST(3879000 AS Decimal(18, 0)), 16, 8, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (69, N' DU LỊCH MỸ THO - BẾN TRE - TÂN PHƯỚC - THIỀN VIỆN TRÚC LÂM CHÁNH GIÁC - THÁNH TÍCH "TỨ ĐỘNG TÂM"', 2, N'/Uploads/2023/12/a08c3c2e-0e37-4fd8-bae3-41eb0fab5aaa.jpg', N'NGÀY 01: TP. HỒ CHÍ MINH - MỸ THO - BẾN TRE (Ăn sáng, trưa, chiều)
Đón quý khách tại văn phòng Saigontourist 45 Lê Thánh Tôn lúc 5h30 sáng hoặc 01 Nguyễn Chí Thanh lúc 6h00 sáng, khởi hành đi Mỹ Tho bằng đường cao tốc Sài Gòn - Trung Lương. Du khách dừng chân dùng điểm tâm tại Mỹ Tho. Đoàn viếng Chùa Vĩnh Tràng. Tiếp tục khởi hành đi Bến Tre, qua cầu Rạch Miễu, xe đưa đoàn đến xứ dừa Bến Tre -  tham quan lò gạch, cơ sở chế biến dừa dọc hai bên sông, thăm lò kẹo dừa, thưởng thức trái cây bốn mùa, mật ong. Thuyền máy đưa du khách vào những kênh rạch chằng chịt hiền hòa của miền Tây sông nước, thăm làng nghề dệt chiếu truyền thống. Quý khách ngồi xe lôi ngắm nhìn cảnh làng quê yên ả với vườn dừa, rẫy hoa màu.Trải nghiệm cảm giác len lỏi qua các kênh rạch bằng đò chèo, tận hưởng không khí trong lành, mát mẻ. Sau bữa trưa, tàu đưa khách về bến. Đoàn tham quan khu lưu niệm bà Nguyễn Thị Định. Xe đưa quý khách về nhận phòng nghỉ ngơi. Buổi chiều, du khách lên tàu ngắm hoàng hôn trên sông Hàm Luông (nếu tình hình thời tiết thuận lợi). Quý khách tự do dạo chợ đêm. Nghỉ đêm tại Bến Tre.

NGÀY 02: MỸ THO - TÂN PHƯỚC - TP. HỒ CHÍ MINH (Ăn sáng, trưa)
Buổi sáng, sau khi dùng điểm tâm đoàn trả phòng. Quý khách lên xe đi Tân Phước, viếng Thiền viện Trúc lâm Chánh Giác chiêm bái mô hình phục dựng Thánh tích “Tứ động tâm” bằng đá hoa cương. Dừng chân mua sắm đặc sản tại xứ khóm Tân Phước. Khởi hành về TP. Hồ Chí Minh, xe đưa quý khách về văn phòng Lữ hành Saigontourist số 19 Hoàng Việt, Phường 04, Quận Tân Bình .Kết thúc chương trình.', CAST(2879000 AS Decimal(18, 0)), 16, 6, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (70, N'TOUR NHA TRANG,BIỂN NHŨ TIÊN-KHÁM PHÁ 3 ĐẢO-3N3D(ĐƯỜNG BỘ)(TỐI MỒNG 1,2,3,4 TẾT) ', 4, N'/Uploads/2023/12/e2f00b72-ef19-4b36-aaa7-bc5dfbac0c35.jpg', N'TỐI NGÀY 1 | TP HỒ CHÍ MINH – NHA TRANG (Nghỉ đêm trên xe)
- 22h00 - 23h00: Xe và Hướng dẫn viên Công Ty Du Lịch đón khách tại điểm hẹn tập trung khởi hành đi Nha Trang.
Quý khách thư giản, nghỉ ngơi trên xe.

NGÀY 1 | BIỂN NHŨ TIÊN – CHÙA LONG SƠN – NHÀ THỜ ĐÁ – TẮM BÙN (Ăn Sáng, Trưa, Tối)
- Buổi sáng:  06h00: Đoàn đến khu vực Cam Ranh dùng bữa sáng.
07h00: Quý khách tham quan check in tại Bãi Biển Nhũ Tiên. Đến với Nhũ Tiên, ngoài việc tận hưởng nghỉ dưỡng, bạn còn có thể thử sức với vô số các môn thể thao nước như lướt ván, dù lượn, mô tô nước…
09h00: Quý khách lên xe tiếp tục di chuyển đến với Thành phố Biển Nha Trang.
Đoàn tham quan Nhà Thờ Đá, Nhà thờ Núi Nha Trang là địa điểm du lịch nổi tiếng bậc nhất tại thành phố biển. Mang nét đẹp xưa cũ với lịch sử hơn 80 năm tuổi, ngôi nhà thờ tọa lạc giữa trung tâm thành phố Nha Trang chắc chắn sẽ mang đến cho du khách những trải nghiệm thú vị.
Buổi trưa: 
Đoàn khởi hành đến nhà hàng dùng cơm trưa,  sau đó xe khởi hành về khách sạn nhận phòng nghỉ ngơi.
Buổi chiều:
14h00: Xe đưa quý khách tiếp tục tham quan Chùa Long Sơn. Chùa Long Sơn được biết tới là ngôi cổ tự lâu đời tại Nha Trang. Nơi đây sở hữu bức tượng Phật Tổ ngoài trời lớn nhất được ghi tên vào sách kỷ lục Guiness Việt Nam. Quý khách có thời gian để chiêm ngưỡng tượng Phật cũng như cầu bình an, sức khỏe.
14h30: Sau đó đoàn tiếp tục di chuyển check-in tại Nhà Hát Đó Nha Trang, nơi đây sở hữu kiến trúc đầy mê hoặc và sự sáng tạo không giới hạn. Đây không chỉ là một nhà hát mà là một tác phẩm nghệ thuận sống động, cùng những tác phẩm điêu khắc tinh xảo đến những buổi diễn đầy ánh tượng đang chờ đón bạn.
16h30: Quý khách ghé Trung tâm du lịch suối khoáng Tháp Bà với dịch vụ “Ôn tuyền thủy liệu pháp” ngâm nước khoáng nóng, tắm bùn khoáng (chi phí tự túc).
18h30: Đoàn di chuyển đi dùng bữa tối với đặc sản Nem Nướng Nha trang thay cho bữa cơm tối.
Buổi tối: 
Quý khách tự do khám phá TP. Nha Trang về đêm.

NGÀY 2 | DU NGOẠN 3 ĐẢO HOẶC TRẢI NGHIỆM, KHÁM PHÁ VINWONDER (Ăn Sáng, Trưa)
- Buổi sáng: Quý khách dậy sớm ngắm vẻ đẹp của bình minh trên biển, tự do đi dạo trên bãi biển Trần Phú tuyệt đẹp sáng sớm.
Đoàn ăn sáng tại khách sạn lấy năng lượng để chuẩn bị một hành trình du ngoạn, khám phá 3 đảo: Hòn Một, Hòn Miễu, Con Sẻ Tre.
08h00: Tàu đưa đoàn đi tham quan 3 đảo: Ăn trưa trên đảo. (Đã bao gồm trọn gói)
−    Hòn Miễu: Tàu sẽ ghé Hòn Miễu đoàn tự do tham quan đảo hoặc tự mua vé Thủy Cung Trí Nguyên để khám phá một một đại dương thu nhỏ như lạc vào cung điện của vua thủy tề. (vé tự túc)
−    Bãi Tranh: Tại Bãi Tranh đoàn có thể tham gia các trò chơi trên biển hoặc lên đảo khám phá hòn đảo tuyệt đẹp ngắm nhìn thiên nhiên lưu lại kỹ niệm bằng những bức ảnh tự chụp.
−    Con Sẻ Tre: Quý khách di chuyển lên khu vực ghế dù, nghỉ ngơi tự do tắm biển và chụp hình với các tảng đá hình mặt cười tại đây. 
Buổi trưa:
12h00: Đoàn dùng cơm trưa nhà hàng Con Sẻ Tre.
14h00: Đoàn lên Cano về lại đất liền. 
Quý Khách sẽ được đưa đến một số điểm tham quan mua sắm: Làng Tre Việt, Trung Tâm Yến Sào. 
Sau đó, về khách sạn nghỉ ngơi. 
Đoàn tự do tắm biển, khám phá TP Nha Trang (Ăn tối tự túc).
Lựa chọn khác: Nếu Quý khách không tham quan, xe có thể đưa quý khách đến cảng Vinpearl, để đến với công viên vui chơi giải trí lớn nhất Nha Trang – Vinwonder. Đến Vinpearl Land, quý khách sẽ từng bước tận hưởng những trò chơi theo những cung bậc rất khác nhau nhẹ  nhàng êm ái như cưỡi ngựa, cảm giác lạ lùng tại khu chiếu phim 4D, mạnh mẽ, giật mình la hét tại Tàu Lượn Siêu Tốc hay đang được Bay vào vũ trụ như Chiếc Búa Ngược, xem xiếc cá voi, xiếc thú, các hoạt động sôi nổi...
Quý khách tự do Vui chơi tại thiên đường giải trí Winwonder - Vinpearland (Chi phí tự túc)
-    Người lớn : 800.000 (trên 140cm)
-    Trẻ em: 600.000 (từ 100cm - dưới 140cm)
-    Người cao tuổi: 600.000đ (>=60t trở lên)
Hoặc du khách có thể tham gia trò chơi xe trượt núi dài nhất Đông Nam Á và còn rất nhiều những trò chơi đầy thú vị khác cũng như Tắm biển nhân tạo với cát trắng và công viên nước.
19h00: Quý khách đến Sân khấu nhạc nước xem chương trình biểu diễn nhạc nước độc đáo nhất Việt Nam tại Vinpearl Land. 
20h00: Xe đón quý khách về lại khách sạn.
Quý khách sẽ có thời gian khám phá và thưởng thức các món ăn đặc trưng tại Tp. Nha Trang. Quý khách tự túc ăn tối.
Quý khách nghỉ đêm tại Nha Trang.

NGÀY 3 | NHA TRANG – TP HỒ CHÍ MINH  (Ăn Sáng, Trưa)
-Buổi sáng: 07h00: Quý khách dùng điểm tâm sáng, làm thủ tục Trả phòng, tham quan mua sắm tại Chợ Đầm. Khởi hành về thành phố Hồ Chí Minh.
11h00: Ăn trưa Tại Nhà Hàng Cà Ná Quán. Trên đường về quý khách Ghé Mua Đặc Sản, Nho, Tỏi Nước Mắm...
Dự kiến 19h00: Đoàn về tới TP Hồ Chí Minh. Hướng dẫn viên chia tay và hẹn gặp lại quý khách ở chuyến tour sau!
(Trình tự các điểm tham quan có thể thay đổi tùy theo tình hình thực tế 
nhưng vẫn đảm bảo đầy đủ các điểm tham quan theo chương trình)
KÍNH CHÚC QUÝ KHÁCH MỘT CHUYẾN DU LỊCH VUI VẺ & BỔ ÍCH!!', CAST(3000000 AS Decimal(18, 0)), 16, 6, 12)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (71, N'TOUR QUY NHƠN - TÂY SƠN - PHÚ YÊN - KỲ CO - HÒN KHÔ - EO GIÓ - CITY TOUR, 4N3D', 4, N'/Uploads/2023/12/76c52339-aa2b-4eb7-8ccd-ec293cf41261.jpg', N'NGÀY 01 | ĐÓN KHÁCH – BẢO TÀNG QUANG TRUNG  (ĂN TRƯA, TỐI)
Sáng: Xe đón quý khách tại điểm hẹn TP. Hà Nội, đưa quý khách ra sân bay Nội Bài, Quý khách làm thủ tục check in đáp chuyến bay đi Quy Nhơn
Trưa  Xe và HDV đón quý khách tại sân bay Phù Cát.
11h00: Qúy khách ăn trưa tại nhà hàng sân bay.
12h30: khởi hành đi Tây Sơn tham quan: Bảo Tàng Quang Trung - Dâng hương lên Tây Sơn Tam Kiệt và các văn quan võ tuớng. Cầu nguyện đuờng học hành, quan trường, sự nghiệp đỗ đạt thăng tiến. Quý khách thưởng thức show biểu diễn trống trận, võ thuật Tây Sơn (chi phí tự túc).
14h30: Tiếp tục đến với Khu du lịch sinh thái Hầm Hô – Đi thuyền trên kênh Lộc Giang (Một lượt đi thuyền vô- lượt đi ra chi phí tự túc) tới dòng sông Kut với Khúc Sông Trời lấp được ví như “Vịnh Hạ Long” thu nhỏ, hòa mình với thiên nhiên hoang sơ, cây cỏ non nước.
16h30: Qúy khách về Tp Quy Nhơn làm thủ tục nhận phòng nghỉ ngơi.
17h30: Xe và HDV đưa khách đi ăn tối tại nhà hàng và tự do khám phá TP về đêm
Nghỉ đêm tại quy Nhơn.

NGÀY 02 | PHÚ YÊN – XỨ NẪU HOA VÀNG CỎ XANH (ĂN SÁNG, TRƯA, TỐI)
07h00: Điểm tâm sáng. 
07h30: Đoàn khởi hành tham quan Phú Yên.
09h30: Tham quan Nhà thờ Mằng Lăng, được thiết kế theo lối kiến trúc Gothic với các họa tiết tinh xảo, một khám phá mới mẻ ở đây là hang thánh đường trong lòng quả đồi nhân tạo, cũng là nơi lưu giữ Cuốn sách có in chữ Quốc ngữ đầu tiên của nước ta.
10h30: Đoàn đến Ghềnh Đá Đĩa, một thắng cảnh thiên nhiên cấp quốc gia đầy kỳ thú, trông xa như một tổ ong đen bóng hay là những chồng đĩa trong lò gạch dưới bàn tay sắp đặt của tạo hóa.
11h30: Ăn trưa tại nhà hàng trên đầm Ô Loan cùng món sò huyết nổi tiếng. Nghỉ ngơi ngắn tại nhà hàng.
13h30: Khởi hành đến Bãi Xép – Ghềnh Ông, hình ảnh quen thuộc từ Bộ phim Tôi thấy hoa vàng trên cỏ xanh, ấn tượng phải kể đến là bãi cỏ rộng mênh mông của Ghềnh Ông phía bên trên một bãi Xép sóng vỗ hiền hòa. 
14h30: Quý khách tham quan Chùa Thanh Lương- Tiểu cảnh hồ nước nơi đây có tượng Phật Bà Quan Âm lớn, được tạo hình như đang ẩn mình dưới nước độc đáo. Trước mặt tượng có lối đi nổi trên mặt nước, nên du khách có thể lại gần tượng hơn để chiêm ngưỡng, chụp ảnh check-in..
15h30: Quý khách lên xe hành trình về lại Quy Nhơn.
Đoàn đi tham quan, mua sắm đặc sản Bình Định về làm quà cho người thân.
Sau đó, về lại khách sạn nghỉ ngơi, tự do tắm biển.
18h00: Ăn tối các món đặc sản của Bình Định, Quý khách sẽ được dạo một vòng ăn các món chính, món phụ, món tráng miệng (Bánh xèo tôm nhảy/ Bún thịt nướng/ Bánh canh + Bánh cuốn,…Kem, chè, nem nướng,…). Tự do khám phá TP về đêm.
Nghỉ đêm tại Quy Nhơn.

NGÀY 03 | KỲ CO - EO GIÓ- HÒN KHÔ (ĂN SÁNG, TRƯA, TỐI)
07h00: Điểm tâm sáng. 
8h00: Xe và hướng dẫn viên đón khách tại điểm hẹn, khởi hành đi tour 2 đảo kết hợp với những cảnh sắc thiên nhiên tuyệt đẹp đang đón chờ.
8h30:  Khởi hành từ bến thuyền Nhơn Hải, quý khách đi cano để di chuyển qua đảo Kỳ Co với dải cát vàng ôm lấy biển, bọc thành một hình cung, mềm mại mềm mại như dải lụa uốn lượn, ôm trọn lấy làn nước trong xanh tận đáy. Tận hưởng những giây phút thư giãn giữa mênh mông sóng nước. 
09h30: Đến nơi, Quý khách hòa mình vào thiên nhiên, một bên là biển nước màu xanh lam trong vắt, một bên là núi đá cao sừng sững. Khám phá bãi cát dài mịn, khung cảnh hoang sơ đầy quyến rũ, đặc biệt được chấm phá bằng những công trình đặc sắc như Cầu Yến, Cầu Trái Tim, Kỳ Co Resort,… và những hang đá, suối nước đẹp đến bất ngờ. 
Quý khách có thể mua thêm dịch vụ Đi bộ dưới đáy biển, Motor nước, Jetsky,… (chi phí tự túc)

10h30: Cano đưa Quý khách ra Đảo hòn khô lặn ngắm san hô, khu vực này có nhiều rặng san hô đa dạng, nhiều màu sắc, chủng loại, ngoài ra, thi thoảng còn có các loại Cầu gai, sao biển, nhiều loại cá đầy màu sắc. 
11h30: Quý khách trở lại bến thuyền tắm nước ngọt và thưởng thức bữa trưa với các món hải sản tươi sống. Quý khách nghỉ trưa ngắn tại nhà hàng

13h30: Quý khách tham quan Eo Gió một bãi biển hoang sơ dưới sự bào mòn của nước và gió, tạo nên một eo biển tuyệt đẹp, quanh năm lộng gió.
14h30: Tiếp tục ghé thăm Tịnh xá Ngọc Hòa – một địa điểm lý tưởng để tĩnh tâm và thiền định – với kiến trúc nổi bật là tượng đôi Phật Bà Quan Âm cao nhất Việt Nam, gồm hai tượng phật Bà Quan Thế Âm, tượng hướng về phía Nam (Cổng chính Tịnh Xá) còn được gọi là Quan Thế Âm Kiết Tường phù trợ cho rừng vàng.
Còn bức tượng còn lại là Quan Thế Âm Nam Hải hướng ra biển được người dân xem là phù trợ cho biển bạc. Trên đường về quý khách sẽ ghé Đồi Cát phương Mai checkin.
16h00: Quý khách khởi hành về lại điểm đón ban đầu tại Quy Nhơn 
18h00: Ăn tối tại nhà hàng. Đoàn tự do tham quan phố ẩm thực Ngô Văn Sở hoặc đi xe ngựa vòng quanh thành phố (chi phí tự túc).
Nghỉ đêm tại Quy Nhơn.

NGÀY 04 | CITY- CHÙA THIÊN HƯNG – TIỄN KHÁCH (ĂN SÁNG)
07h00: Quý khách ăn sáng tại khách sạn. Làm thủ tục trả phòng
8h00: Xe và HDV đón Quý khách khởi hành đi tham quan điểm đầu tiên - Khu du lịch Ghềnh Ráng, Quý khách được dạo bước trên dốc Mộng Cầm, đồi Thi Nhân, bãi tắm Hoàng Hậu, Tiên Sa, và sống lại với những vần thơ Hàn Mặc Tử cùng tài nghệ của bút lửa Dzũ Kha. 
9h00: Quý khách hành trình đến Làng Phong Quy Hòa, nơi cuộc sống của con người bình yên, thong dong đến lạ bên dưới dàn hoa giấy rực rỡ, đây cũng là nơi Hàn Mặc Tử sinh sống trong thời gian cuối đời.
09h30: Đoàn đến Tháp Đôi, là cụm 02 ngọn tháp Chăm được xây dựng duyên dáng bên cạnh nhau.
10h30: Đưa quý khách ra sân bay, trên đường ghé chùa thiên hưng-Một trong những ngôi chùa đặc biệt và nổi tiếng nhất tại Bình Định với lối kiến trúc độc đáo và phong cảnh tuyệt vời. Điều đặc biệt không chỉ là về vẻ đẹp kiến trúc tinh tế mà còn là nơi  Ngọc Xá Lợi của Đức Phật Thích Ca Mâu Ni, và rằng nơi nào có Ngọc Xá Lợi sẽ được Phật Tổ độ trì ban phúc
Kết thúc chương trình tham quan Xứ Nẫu 4 ngày 3 đêm.
Chào tạm biệt và hẹn gặp lại!', CAST(7890000 AS Decimal(18, 0)), 19, 7, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (72, N'TOUR PÙ LUÔNG: THIÊN ĐƯỜNG XANH THANH HÓA, 2N1Đ', 2, N'/Uploads/2023/12/51edc69c-fe3d-40e8-8442-7e8286c269ed.jpg', N'NGÀY 1 | HÀ NỘI – PÙ LUÔNG ( Ăn trưa, tối)
Sáng 5h30: Xe và hướng dẫn viên (HDV) đón Quý khách tại điểm hẹn, khởi hành đi Pù Luông – Thanh Hóa. Đoàn dừng nghỉ ăn sáng trên đường đi (Chi phí tự túc).
Trên đường đi, Quý khách dừng chân nghỉ ngơi, chụp hình tại Thung Khe – đèo đá trắng. Thưởng ngoạn toàn cảnh thung lũng thơ mộng và yên bình, cung đèo hiểm trở, nơi ngắm cảnh đẹp nhất tỉnh Hòa Bình.

Tiếp tục hành trình, quý khách tới Pù Luông. Trên đường đi, đoàn sx chiêm ngưỡng những thửa ruộng bậc thang đặc trưng của núi rừng Tây Bắc, ngắm nhìn khu bảo tồn thiên nhiên Pù Luông hung vĩ và nguyên sơ.
Trưa: Quý khách đến Pù Luông, đoàn ăn trưa tại nhà hàng.

Sau bữa trưa, quý khách về homestay nhận phòng nghỉ ngơi.
Chiều: Quý khách thăm quan ruộng bậc thang Bản Báng là ngôi làng của người dân tộc Thái đen nằm giữa thung lũng yên bình của khu bảo tồn thiên nhiên quốc gia Pù Luông. Nơi này được bao bọc xung quanh bởi những cánh đồng ruộng bậc thang đang vào mùa lúa chín nằm xen kẽ với những tảng đá lớn tạo thành một bức tranh yên bình giữa núi rừng Pù Luông. 

Tại đây, quý khách có thể đi bộ và thả hồn vào thiên nhiên giữa những cánh đồng ruộng bậc thang bao la đến tận chân trời.
Tối: Quý khách dùng bữa tối với những món ăn đặc sản của núi rừng.
Sau đó, quý khách nghỉ ngơi tại homestay.

NGÀY 2 | PÙ LUÔNG – THÁC HIÊU – HÀ NỘI ( Ăn sáng, trưa)
Sáng:  Quý khách dậy sớm tận hưởng không khí trong lành của vùng núi Tây Bắc, ngắm bình minh lấp ló sau những cánh núi. Quý khách ăn sáng tại homestay.

Xe đưa quý khách đến thác Hiêu. Tại đây, quý khách tự do tham quan hoặc có thể tắm thác Hiêu.

Trưa: Quý khách ăn trưa và trả phòng.
Chiều: Đoàn lên xe khởi hành về Hà Nội. Trên đường về, xe dừng cho đoàn mua đặc sản Tây Bắc.
Tối: Đoàn về đến Hà Nội, HDV chia tay đoàn và kết thúc chương trình.', CAST(2300000 AS Decimal(18, 0)), 19, 8, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (73, N'SAPA - MOANA - FANSIPAN - Y TÝ - LŨNG PÔ, 3n2đ', 3, N'/Uploads/2023/12/90c84819-bdfa-4052-b698-bd6c89db2d51.jpeg', N'NGÀY 01 | HÀ NỘI - NỘI BÀI - SAPA - CÁT CÁT (ĂN - / TRƯA / TỐI)
06h20: Quý khách có mặt tại điểm hẹn trên đường Trần Quang Khải được hẹn trước ngày khởi hành để làm thủ tục lên xe khởi hành đi Sapa theo hướng cao tốc Hà Nội - Lào Cai. Thông thường xe của chúng tôi sẽ di chuyển theo hướng Đại học Ngoại ngữ, Công viên Hòa Bình, KCN Thăng Long, Nội Bài và ra cao tốc. Do đó có thể đón Quý khách tại các điểm trên. Quý khách cần đăng ký điểm đón trước ngày khởi hành.
Lưu ý: Nếu Quý khách bay ra xuống Sân bay Nội Bài chuyến sớm và check out trước 07h45 thì chúng tôi sẽ hỗ trợ đón tại sân bay với chi phí đón trong sân bay là 50.000đ/khách hoặc những Quý khách bay ra từ đêm hôm trước và có đặt phòng nghỉ đêm tại các khách sạn khu vực Nội Bài chúng tôi sẽ đón tập trung tại điểm Ngã 3 Kim Anh (đầu cao tốc Hà Nội - Lào Cai, cách sân bay Nội Bài 03km trong khoảng thời gian 07h45-08h00).
13h00: Tới Sapa, Quý khách về khách sạn ăn trưa sau đó nhận phòng khách sạn, nghỉ ngơi.
Chiều: Hướng dẫn viên đón và đưa Quý khách đi thăm bản Cát Cát tìm hiểu đời sống sinh hoạt của người đồng bào dân tộc H''mông, thăm thác Tiên Sa cùng rất nhiều điểm chụp hình sống ảo khác trong khu du lịch. Thưởng thức show biểu diễn văn nghệ truyền thống (theo khung thời gian cố định tại nhà máy thủy điện cũ). 
18h00: Ăn tối. Buổi tối tự do vui chơi. Chụp hình với Nhà thờ Đá Sapa, tìm hiểu đêm chợ tình Sapa vào các tối thứ 7 hàng tuần hay đơn giản là thưởng thức những món ăn đặc sản nướng uống cùng rượu San Lùng nổi tiếng để sưởi ấm cái lạnh của Sapa. Nghỉ đêm tại Sapa.

NGÀY 2 | NGÀY 02: SAPA - FANSIPAN - MƯỜNG HUM - Y TÝ (ĂN SÁNG/ TRƯA/ TỐI)
07h00: Quý khách ăn sáng tại khách sạn và nghỉ ngơi. Nhâm nhi ly cafe nóng buổi sáng tại nhà hàng.
08h00: Xe và hướng dẫn đưa Quý khách tới Ga cáp treo Fansipan để bắt đầu cuộc hành trình chinh phục Fansipan bằng hệ thống cáp treo 3 dây hiện đại nhất thế giới với cabin có sức chứa tới 30 du khách.
Từ ga trên, đi qua Cổng Trời Thanh Vân Đắc Lộ là đến được tới chốn mây ngàn. Bích Vân Thiền Tự nằm trên độ cao trên 2.000m đón du khách và Phật tử bốn phương bằng nét kiến trúc thuần Việt, giữa bảng lảng sương giăng; Rảo bước đi trong tiếng chuông vọng giữa mây ngàn gió núi, tới độ cao 3.000m, bạn thu vào tầm mắt Đại tượng Phật A Di Đà bằng đồng cao 21,5m, sừng sững uy nghiêm trong mây bay huyền ảo, hướng ánh nhìn từ bi xuống nhân gian. Trong thời khắc trầm mặc mà linh thiêng ấy, chắp tay nguyện cầu giữa tiết xuân đang tràn về ấm áp, giữa những chồi non của đỗ quyên, mâm xôi, đào mận… đang cựa mình, bật mầm mới, bạn sẽ thấy trong lòng những cánh hoa của tình thương yêu và hi vọng cũng đang bung nở; Từ Đại tượng Phật, con đường La Hán - nơi ngự tọa 18 bức tượng La Hán bằng đồng cao 2,5m từ bi, trầm mặc trong bảng lảng mây bay, sẽ dẫn bạn tới quần thể Kim Sơn Bảo Thắng Tự với vẻ đẹp cổ kính của những ngôi chùa gỗ Việt Nam từ thế kỷ 15-16, Quý khách cùng chiêm bái tượng Quan thế âm Bồ Tát, Miếu Sơn thần... Hòa quyện trong khung cảnh ấy là những cây đỗ quyên hàng trăm năm tuổi vươn mình trong giá rét, đang bật lên mầm nụ, chờ sang tháng 3, tháng 4 là bung nở những sắc trắng, vàng, đỏ, tím hồng…
Cuối cùng là sau khi đã vượt qua 600 bậc đá xanh, Quý khách đã lên tới đỉnh Fansipan trên độ cao 3.143m,  nóc nhà của Đông Dương. Từ đây, phóng tầm mắt ra bốn bề xung quanh, mỗi người sẽ có những cảm xúc đặc biệt và những điều mong ước chỉ muốn giữ cho riêng mình.
Trưa: Trở lại thị trấn Sapa và ăn trưa tại nhà hàng.
13h00: Quý khách lên xe đi Y Tý, mảnh đất vừa xa, vừa cao, vừa đẹp lại hùng vỹ. Trên đường Quý khách chụp hình với những cánh đồng ruộng bậc thang. Dừng chân chụp hình từ trên cao xuống một vùng thung lũng xinh đẹp với con suối khởi nguồn từ suối tình Mường Hum, cảm nhận vẻ đẹp của rừng già Y Tý.
16h30: Tới Y Tý, Quý khách nhận phòng nhà nghỉ tắm rửa sau đó ăn tối tại nhà hàng. Buổi tối tự do nghỉ ngơi, thư giãn. Nghỉ đêm tại Y Tý.

NGÀY 3 | Y TÝ - LŨNG PÔ - HÀ NỘI (ĂN SÁNG/ TRƯA)
Buổi sáng sớm, nếu như may mắn có thể bắt gặp được biển biển mây thì hướng dẫn viên sẽ đưa Quý khách đến vị trí tốt nhất để săn mây buổi sáng sớm. Nếu may mắn Quý khách sẽ có thể bắt gặp những biển mây nằm lặng im như đang ngủ ở dưới những thung lũng mà người ta hay gọi là biển mây Y Tý.
06h30: Quý khách ăn sáng sau đó đi thăm bản Choản Thèn cùng những nếp nhà hình nấm với những bức tường trình bằng đất của người Hà Nhì.
08h30: Trả phòng, thu dọn hành lý và lên xe đi Lũng Pô.
09h30: Thăm Cột Cờ Lũng Pô và chụp hình với Ngã 3 sông Hồng, nơi con sông Hồng chảy vào đất Việt.
11h30: Ăn trưa tại thành phố Lào Cai sau đó tự do mua sắm tại chợ cửa khẩu Cốc Lếu.
15h00: Quý khách lên xe ô tô về Hà Nội từ khu vực chân cầu Cốc San (Lào Cai).
19h00: Trả khách điểm đầu tiên sau khi hết cao tốc là tại Ngã 3 Kim Anh để Quý khách có thể bắt taxi vào sân bay Nội Bài (cách 3km) hoặc Quý khách có thể trả trước thêm chi phí 50.000đ/khách để xe đưa Quý khách vào tận trong sân bay.
20h00: Về đến điểm dừng xe tại Hà Nội. Kết thúc chương trình. Hẹn gặp lại Quý khách!', CAST(3200000 AS Decimal(18, 0)), 18, 6, 9)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (74, N'NHA TRANG- DU NGOẠN ĐẢO, 4N3Đ,', 4, N'/Uploads/2023/12/d2ab0016-69ff-404d-802d-3a65f051e623.jpg', N'NGÀY 1 | TPHCM-HÀ NỘI-NHA TRANG    (Ăn 02 bữa)
Sáng: Quý khách tập trung tại sân bay Quốc Nội, làm thủ tục check in, đáp chuyến bay đi Nha Trang (Riêng sân bay Tân Sơn Nhất có nhân viên hỗ trợ quý khách làm thủ tục check in)
Xe và HDV đón khách  sân bay Cam Ranh. Sau đó xe và HDV đưa quý khách về nhận phòng khách sạn (nếu có phòng sớm, nếu chưa có phòng, quý khách đợi ở sảnh khách sạn chờ đến thời gian ăn trưa).
Trưa:Quý khách dùng cơm trưa tại nhà hàng. Sau đó về khách sạn nghĩ ngơi.
Chiều:                 QUÝ KHÁCH CÓ THỂ LỰA CHON 1 TRONG 2 CHƯƠNG TRÌNH SAU:
Chương trình 1 : Đi Vinpearlland chi phí tự túc 
1.    vé sự dụng cáp treo & vui chơi 950.000 VND/ vé người lớn + 710.000 VND/ vé trẻ em (dự định hoạt cáp treo hoạt động vào tháng 6/2023)
2.    vé sự dụng tàu cao tốc & vui chơi 800.000 VND/vé người lớn + 600.000 VND/vé trẻ em) 
Xe và HDV đến đưa quý khách khởi hành tham quan khu vui chơi giải trí đẳng cấp 5 sao VINPEARLLAND NHA TRANG.
Xe và HDV đưa quý khách xuống Cảng Phú Quý. Quý khách đi tàu ca tốc để sang đảo ngọc quý khách chiên ngưỡng Vịnh Nha Trang và toàn cảnh thành phố thơ mộng. Quý khách thử sức mình với các trò chơi cảm giác mạnh như : đu quay dây văng, đu quay lộn đầu, tàu lượn siêu tốc, …. Thỏa sức mình với những trò chơi trong nhà hay những bộ phim 4D đầy ấn tượng. 
Quý khách tham quan Vườn thú Quý Vương với những động vật hoang giã của rừng xanh như hổ, sư tử trắng, báo, tê giác, hưu cao cổ,…. 
Tham quan đồi Vạn Hoa với hàng trăm loại hoa khoe sắc, check in tiểu hoang mạc của Châu Phi với vườn xương rồng vô cũng đặc sắc, khám phá vườn Nhật Bản với nhà Nhật, cổng trời, ….
Tham quan thế giới đại dương đầy màu sắc tại Thủy Cung Vinpearlland cùng với khoảng gần 10.000 sinh vật biển đang tung tăng bới lội.
Quý khách check in khung trời Châu Âu tại Quảng Trường Đại Dương.
Đặc biệt đến đây quý khách chiên ngưỡng màn trình diễn lung linh đầy sắc màu của chương trình nhạc nước diễn ra vào lúc 19h các ngày trong tuần.
Tối: Quý khách tàu cao tốc trở về đất liền. HDV và xe sẽ đón quý khách tại khu vực bến cảng Sau đó đưa quý khách dùng cơm tối tại nhà hàng. Về khách sạn nghĩ ngơi. Quý khách có thể tham gia khu chợ đêm tại khu vực Quảng Trường trung tâm thành phố hoặc đi dạo bộ dọc bờ biển Nha Trang.
Chương trình 2: city tham tham quan Nha Trang và tắm biển Nha Trang.
Xe và HDV đưa quý khách quý khách tham quan Nhà thờ Chánh Tòa hay còn gọi là Nhà thờ Núi tọa lạc ngay trung tâm thành phố được xây dựng trên một đỉnh đồi với diện tích 4.500m2, với kiến trúc Gỗ – tích nổi bật và tường vách được xây bằng tấp lô xi măng đã tạo cho nhà thờ một kiến trúc độc đáo nếu chân du khách phải dừng lại khi qua đây.
Tham quan Chùa Long Sơn một trong 20 ngôi chùa lớn tại thành phố Nha Trang.Quý khách chiêm ngưỡng bức tượng Kim Thân Phật Tổ cao 24m ngự trên đồi Thủy Trại được xây đựng năm 1963.
Về lại khách san. Tự do tắm biển Nha Trang.
Tối: HDV và xe sẽ đón quý khách dùng cơm tối tại nhà hàng. Về khách sạn nghĩ ngơi. Quý khách có thể tham gia khu chợ đêm tại khu vực Quảng Trường trung tâm thành phố hoặc đi dạo bộ dọc bờ biển Nha Trang.

NGÀY 2 | DU NGOẠN VỊNH NHA TRANG (ăn sáng, trưa, tối)
Sáng : Quý khách ăn sáng tại khách sạn. Sau đó chuẩn bị đồ tắm, kem chống nắng để tham gia chuyến du ngoạn đảo. 
8h30 – 8h45 : Xe và hướng dẫn viên đến đón khách tại khách sạn. Sau đó đưa quý khách xuống cảng Cầu Đá.
Tiếp theo ca nô đưa quý khách đến Vịnh San Hô hoặc Con Sẽ Tre, quý khách ngắm làn nước biển trong xanh và vẻ đẹp tuyệt mỹ của vịnh Nha Trang. Đến Vịnh San Hô quý khách lên đảo nhận ghế nghỉ ngơi và tự do bơi lội để đắm mình dưới làn nước trong xanh và chiên ngưỡng hệ động vật san hô tại đây. 
Ngoài ra quý khách có thể tham gia các trò chơi cảm giác mạnh như : lặn biển khám phá đại dương, moto nước, bay dù,…. (tự túc chi phí các trò chơi cảm giác mạnh)
Quý khách tiếp tục đến với Làng Chài tại đây quý khách có thể chọn cho mình các loại hải sản tươi sống để làm phong phú thực đơn bữa trưa của mình (chi phí hải sản tự túc).
12h00: Quý khách dùng cơm trưa tại trên bè hoặc nhà hàng của khu du lịch. 
Ca nô đưa quý khách đến với khu du lịch Bãi Tranh. Quý khách nhận ghế dù nghĩ ngơi, tự do tắm biển tại đây.
15h30: Quý khách trở lại ca nô. Ca nô đưa quý khách về tới cảng. Xe và HDV đưa quý khách về khách sạn nghĩ ngơi.
Không bao gồm: Thức uống và các dịch vụ khác tại mỗi đảo: 
-    Trò chơi thể thao trên nước:              Nhiều loại giá
-    Chi phí tắm nước ngọt tại đảo
Tối: HDV đưa quý khách dùng cơm tối tại nhà hàng. Sau đó quý khách tự do khám phá chợ đêm Nha Trang, công viên Phù Đổng, Cà phê Bốn Mùa, khu hải sản Tháp Bà. Về khách sạn nghỉ ngơi.

NGÀY 3 | CITY TOUR THÀNH PHỐ NHA TRANG (Ăn sáng, trưa, tối)
Sáng : Quý khách dùng điểm tâm sáng. Quý khách tham quan Tháp Bà Ponagar một trong những tháp cổ của người Chăm để lại, nằm cạnh bờ sông Cái Nha Trang.Đến đây quý khách còn có thể thưởng thức những điệu múa của người Chăm, tìm hiểu về ngành nghề làm gốm, dệt vải cổ truyền của dân tộc Chăm.
Xe tiếp tục đưa Quý khách đến khu du lịch suối khoáng nóng Tháp Bà sử dụng “Ôn tuyền thủy liệu pháp”, Đến đây quý khách ngâm mình thư giãn với bùn khoáng trong vòng 20 phút. Sau đó chuyển qua phương pháp mát xa trị liệu bằng những tia nước bắn vào các huyệt đạo làm cho cơ thể giải mỏi trong vòng 10 phút, quý khách tiếp tục thư giãn với dịch vụ ngâm khoáng nóng hồ bơi và thác nước giúp cho quý khách cải thiện các bệnh về xương khớp kèm theo đó tẩy đi các tế bào chết của da làm cho da sẽ mịn màng hơn. Tắm bùn giúp quý khách chăm sóc tốt hơn cho sức khỏe và da ( chi phí tắm bùn khoáng tự túc)
Trưa: Quý khách dùng bữa trưa với đặc sản Nem Nướng và Bún Cá - một nét văn hóa ẩm thực của người dân Nha Trang.
Xe và HDV đưa quý khách đến Nhà Yến Nha Trang, đến đây quý khách tìm hiểu về đặc sản Nha Trang cũng như tìm hiểu ngành nghề khai thác chế biến tổ yến sào.
Quý khách tham quan Viện Hải Dương Học tìm hiểu về các loài thủy sản nước mặn và nước ngọt. Đây là cơ sở nghiên cứu khoa học ra đời sớm nhất tại Việt Nam và được coi là cơ sở lưu trữu hiện vật và nghiên cứu về biển lớn nhất Đông Nam Á.Tự do tắm biển Nha Trang, nghỉ ngơi.
Tối: HDV đưa quý khách dùng cơm tối tại nhà hàng. Sau đó quý khách có thể tự do nhâm nhi tách café của thành phố biển hoặc chọn tầng 41 của khách sạn Havana thưởng thức cocktail và ngắm thành phố biển trên cao về đêm.

NGÀY 4 | KDL BÃI DÀI - TP.HCM (ăn sáng, trưa)
Sáng : Quý khách dùng điểm tâm sáng. Làm thủ tục trả phòng khách sạn. Xe và HDV đưa quý khách mua sắm đặc sản Nha Trang về làm quà cho người thân.
Tiếp tục hành trình quý khách đến Khu du lịch Bãi Dài có tổng diện tích mặt nước 5.000 m2, nằm trong vùng biển đẹp có bãi cát mịn, nước biển trong xanh. Tại đây, du khách sẽ được trải nghiệm các dịch vụ thể thao trên biển như dù bay, chạy mô tô nước, lướt ván…hoặc thưởng thức hải sản tươi sống đặc trưng của miền biển (chi phí tự túc).
Quý khách dùng cơm trưa. Sau đó tự do tắm biển nghĩ ngơi.
Chiều: Xe và HDV đưa quý khách ra sân bay Cam Ranh, bến xe hoặc ga. Kết thúc chương trình.Chia tay quý khách và hẹn gặp lại.', CAST(7000000 AS Decimal(18, 0)), 5, 7, 2)
INSERT [dbo].[Tour] ([Matour], [Tentour], [Songaydi], [Hinhanh], [Gioithieu], [Giatour], [Maloaitour], [MaNV], [MaKM]) VALUES (75, N'TOUR THĂM QUAN THỦ ĐÔ HÀ NỘI', 1, N'/Uploads/2023/12/e95d7b17-2969-4cb3-b8cc-a589cf413600.jpg', N'08h00-08h20: Xe đón Quý khách tại khách sạn phố Cổ hoặc Nhà hát lớn khởi hành cho chuyến thăm quan thủ đô Hà Nội. Buổi sáng, đoàn thăm quan với:

Chùa Trấn Quốc - nằm trên một hòn đảo phía Đông của Hồ Tây (quận Tây Hồ). Chùa có lịch sử gần 1500 năm cùng với cây Bồ đề hàng trăm năm tuổi có nguồn gốc từ Ấn Độ, được coi là Chùa lâu đời nhất ở Thăng Long - Hà Nội. Kiến trúc chùa có sự kết hợp hài hoà giữa tính uy nghiêm, cổ kính với cảnh quan thanh nhã giữa nền tĩnh lặng của một hồ nước mênh mang. Là trung tâm Phật giáo của kinh thành Thăng Long vào thời nhà Lý và nhà Trần.
Quần thể di tích Lăng chủ tịch Hồ Chí Minh (gồm Lăng và khu vực nhà sàn) - Nơi mà vị lãnh tụ vĩ đại đã sống và làm việc cho đến những năm cuối đời. Tại đây, Quý khách sẽ có cơ hội tìm hiểu cuộc sống giản dị của Bác. Ngoài ra, Quý khách sẽ có cơ hội ghé qua chùa Một Cột để chiêm ngưỡng một trong 4 biểu tượng của Hà Nội. 
Lưu ý: Với các ngày thứ 2 và 6, Ban quản lý Lăng sẽ tiến hành bảo trì Lăng, Quý khách sẽ chỉ tham quan phía bên ngoài Lăng, sau đó sẽ đi thăm khu vực nhà sàn, ao cá và chùa Một Cột.

Văn Miếu - Quốc Tử Giám, nơi được coi là trường đại học đầu tiên tại Việt Nam. Đó là một kiến trúc cổ, được xây dựng với quy mô khá lớn được xây dựng từ tháng 10 năm 1073 và tồn tại cho đến ngày nay. Văn Miếu được xây dựng để thờ Khổng Tử, người sáng lập của Nho giáo và Chu Văn An - hiệu trưởng của Quốc Tử Giám - đại diện cho triết lý đạo đức cao của giáo dục Việt Nam.
Trưa: Đoàn ăn trưa tại nhà hàng trong khu vực Phố Cổ và nghỉ ngơi. Quý khách có thể tranh thủ ít phút sau bữa ăn để dạo bộ ngắm nhìn và tìm hiểu về những cái tên của Hà Nội 36 phố phường…

Chiều: Quý khách tiếp tục tham quan:

Với các ngày thứ 2,4,6 xe sẽ đưa quý khách tới thăm Làng Gốm Bát Tràng - một trong 2 làng gốm nổi tiếng của Hà Nội. Tại đây Quý khách sẽ được tìm hiểu về lịch sử, xuất xứ của làng. Quá trình làm gốm và nét đặc biệt làm nên thương hiệu Bát Trang nổi tiếng.
Với các ngày thứ 3,5,7 và chủ nhật xe sẽ đưa quý khách tới Bảo tàng Dân tộc học, nơi lưu giữ và trưng bày nhiều hiện vật văn hoá của cả 54 dân tộc Việt Nam.
Thăm Hồ Gươm hay còn gọi là Hồ Hoàn Kiếm, tìm hiểu về kiến trúc của Việt Nam và Pháp xung quanh khu vực hồ. Quý khách sẽ vào thăm quan đền Ngọc Sơn thờ thánh Văn Xương và Trần Hưng Đạo - vị tướng nổi danh trong lịch sử Việt Nam và thế giới và Cầu Thê Húc.
16h00: Kết thúc chương trình City tour Hà Nội, xe ô tô đưa Quý khách trở lại khách sạn trong phố Cổ hoặc Quý khách có thể tự túc chi phí thuê xe xích lô dạo một vòng khu vực phố Cổ và Hồ Gươm hoặc đi xem biểu diễn múa rối nước (chi phí tự túc, lịch biểu diễn có thể thay đổi tùy từng giai đoạn cụ thể).', CAST(700000 AS Decimal(18, 0)), 1, 7, 12)
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
