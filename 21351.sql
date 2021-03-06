USE [master]
GO
/****** Object:  Database [CuaHang_XeMay]    Script Date: 01/01/2021 11:10:16 ******/
CREATE DATABASE [CuaHang_XeMay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHang_XeMay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CuaHang_XeMay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CuaHang_XeMay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CuaHang_XeMay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CuaHang_XeMay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHang_XeMay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHang_XeMay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHang_XeMay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHang_XeMay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CuaHang_XeMay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHang_XeMay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CuaHang_XeMay] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHang_XeMay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHang_XeMay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHang_XeMay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHang_XeMay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CuaHang_XeMay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CuaHang_XeMay] SET QUERY_STORE = OFF
GO
USE [CuaHang_XeMay]
GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[ma_CN] [int] IDENTITY(5000,1) NOT NULL,
	[ten_CN] [ntext] NULL,
	[ma_UI] [ntext] NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[ma_CN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PhieuNhap]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuNhap](
	[ma_PN] [int] NOT NULL,
	[ma_SP] [int] NOT NULL,
	[gianhap_SP] [int] NULL,
	[soluong_SP] [int] NULL,
	[tongtien_SP] [int] NULL,
 CONSTRAINT [PK_CT_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ma_PN] ASC,
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Quyen]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Quyen](
	[ma_NV] [int] NOT NULL,
	[ma_CN] [int] NOT NULL,
 CONSTRAINT [PK_CT_Quyen] PRIMARY KEY CLUSTERED 
(
	[ma_NV] ASC,
	[ma_CN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD_BanHang]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD_BanHang](
	[ma_HD] [int] NOT NULL,
	[ma_SP] [int] NOT NULL,
	[gia_SP] [int] NULL,
	[soluong_SP] [int] NULL,
	[tongtien_SP] [int] NULL,
 CONSTRAINT [PK_CTHD_BanHang] PRIMARY KEY CLUSTERED 
(
	[ma_HD] ASC,
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD_DichVu]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD_DichVu](
	[ma_HDDV] [int] NOT NULL,
	[ma_DV] [int] NOT NULL,
	[gia_DV] [int] NULL,
	[soluong_DV] [int] NULL,
	[tongtien_DV] [int] NULL,
 CONSTRAINT [PK_CTHD_DichVu] PRIMARY KEY CLUSTERED 
(
	[ma_HDDV] ASC,
	[ma_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[ma_DM] [int] IDENTITY(4000,1) NOT NULL,
	[ten_DM] [ntext] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[ma_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[ma_DV] [int] IDENTITY(8000,1) NOT NULL,
	[ten_DV] [ntext] NULL,
	[mota_DV] [ntext] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[ma_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia_DV]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia_DV](
	[ma_GiaDV] [int] IDENTITY(9000,1) NOT NULL,
	[ma_DV] [int] NULL,
	[gia_DV] [int] NULL,
	[ngay_DBDV] [date] NULL,
	[ngay_KTDV] [date] NULL,
 CONSTRAINT [PK_Gia_DV] PRIMARY KEY CLUSTERED 
(
	[ma_GiaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia_SP]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia_SP](
	[ma_GiaSP] [int] IDENTITY(10000,1) NOT NULL,
	[ma_SP] [int] NULL,
	[gia_SP] [int] NULL,
	[ngay_BDSP] [date] NULL,
	[ngay_KTSP] [date] NULL,
 CONSTRAINT [PK_Gia_SP] PRIMARY KEY CLUSTERED 
(
	[ma_GiaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang_SX]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang_SX](
	[ma_Hang] [int] IDENTITY(3000,1) NOT NULL,
	[ten_Hang] [ntext] NULL,
 CONSTRAINT [PK_Hang_SX] PRIMARY KEY CLUSTERED 
(
	[ma_Hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HD_BanHang]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_BanHang](
	[ma_HD] [int] IDENTITY(12000,1) NOT NULL,
	[ma_KH] [int] NULL,
	[ma_NV] [int] NULL,
	[ngaylap_HD] [date] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_HD_BanHang] PRIMARY KEY CLUSTERED 
(
	[ma_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HD_DichVu]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_DichVu](
	[ma_HDDV] [int] IDENTITY(13000,1) NOT NULL,
	[ma_KH] [int] NULL,
	[ma_NV] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_HD_DichVu] PRIMARY KEY CLUSTERED 
(
	[ma_HDDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma_KH] [int] IDENTITY(7000,1) NOT NULL,
	[ten_HK] [ntext] NULL,
	[mail_KH] [ntext] NULL,
	[sdt_KH] [ntext] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ma_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_SP]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_SP](
	[ma_Loai] [int] IDENTITY(2000,1) NOT NULL,
	[ten_Loai] [ntext] NULL,
 CONSTRAINT [PK_Loai_SP] PRIMARY KEY CLUSTERED 
(
	[ma_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha_CungCap]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_CungCap](
	[ma_NCC] [int] IDENTITY(1000,1) NOT NULL,
	[ten_NCC] [ntext] NULL,
 CONSTRAINT [PK_Nha_CungCap] PRIMARY KEY CLUSTERED 
(
	[ma_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ma_NV] [int] IDENTITY(6000,1) NOT NULL,
	[ten_NV] [ntext] NULL,
	[mail_NV] [ntext] NULL,
	[sdt_NV] [ntext] NULL,
	[mk_DangNhap] [ntext] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ma_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[ma_PN] [int] IDENTITY(11000,1) NOT NULL,
	[ma_NCC] [int] NULL,
	[ma_NV] [int] NULL,
	[ngaylap_PN] [date] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ma_PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 01/01/2021 11:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ma_SP] [int] IDENTITY(14000,1) NOT NULL,
	[ma_DM] [int] NULL,
	[ma_Loai] [int] NULL,
	[ma_Hang] [int] NULL,
	[ten_SP] [ntext] NULL,
	[soluong_SP] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4000, N'Wave Alpha')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4001, N'PCX')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4002, N'SH ')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4003, N'Winner')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4004, N'Vario')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4005, N'Vision')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4006, N'AirBlack')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4007, N'Wave RSX')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4008, N'Black')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4009, N'Rebel 500')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4010, N'SH mode')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4011, N'CBR1000RR')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4012, N'CB500X')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4013, N'TFX')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4014, N'MT-15')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4015, N'YZF-R15')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4016, N'MT-03')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4017, N'YZF-R3')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4018, N'Sirius')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4019, N'Grande')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4020, N'Latte')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4021, N'Jupiter')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4022, N'Janus')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4023, N'Exciter')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4024, N'Freego')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4025, N'Acruzo')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4026, N'Raider')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4027, N'Address')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4028, N'GZ150-A')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4029, N'GD110HU')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4030, N'INTRUDER150')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4031, N'Attila')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4032, N'Passing')
INSERT [dbo].[DanhMuc] ([ma_DM], [ten_DM]) VALUES (4033, N'Klara ')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8000, N'Bảo dưỡng cổ phốt', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8001, N'Bảo dưỡng độ cơ khỏi động', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8002, N'Bảo dưỡng dây công tơ mét', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8003, N'Bảo dưỡng dây phanh', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8004, N'Bảo dưỡng bát phanh trước', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8005, N'Bảo dưỡng công tắc đèn', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8006, N'Bảo dưỡng toàn bộ xe côn tay', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8007, N'Thay cổ bô', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8008, N'Vệ sinh kim phun', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8009, N'Vệ sinh buồn đốt', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8010, N'Vệ sinh họng ga', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8011, N'Vệ sinh lọc gió', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8012, N'Súc nạp Acquy', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8013, N'Bảo dưỡng phanh sau', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8014, N'Bảo dưỡng phanh trước', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8015, N'Thay hộp xích', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8016, N'Kiểm tra hệ thống điện', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8017, N'Nắn khung càng xe tai nạn', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8018, N'Bảo dưỡng giảm sóc trước', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8019, N'Bảo dưỡng giảm sóc sau', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8020, N'Bảo dưỡng bộ chế hòa khí', NULL)
INSERT [dbo].[DichVu] ([ma_DV], [ten_DV], [mota_DV]) VALUES (8021, N'Thay vỏ nhựa', NULL)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
GO
SET IDENTITY_INSERT [dbo].[Gia_SP] ON 

INSERT [dbo].[Gia_SP] ([ma_GiaSP], [ma_SP], [gia_SP], [ngay_BDSP], [ngay_KTSP]) VALUES (10000, 14000, 20000000, CAST(N'2020-11-20' AS Date), NULL)
INSERT [dbo].[Gia_SP] ([ma_GiaSP], [ma_SP], [gia_SP], [ngay_BDSP], [ngay_KTSP]) VALUES (10001, 14001, 23200000, CAST(N'2020-12-01' AS Date), NULL)
INSERT [dbo].[Gia_SP] ([ma_GiaSP], [ma_SP], [gia_SP], [ngay_BDSP], [ngay_KTSP]) VALUES (10002, 14002, 22000000, CAST(N'2020-12-30' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Gia_SP] OFF
GO
SET IDENTITY_INSERT [dbo].[Hang_SX] ON 

INSERT [dbo].[Hang_SX] ([ma_Hang], [ten_Hang]) VALUES (3000, N'Honda')
INSERT [dbo].[Hang_SX] ([ma_Hang], [ten_Hang]) VALUES (3001, N'Yamaha')
INSERT [dbo].[Hang_SX] ([ma_Hang], [ten_Hang]) VALUES (3002, N'Suzuki')
INSERT [dbo].[Hang_SX] ([ma_Hang], [ten_Hang]) VALUES (3004, N'VinFast')
INSERT [dbo].[Hang_SX] ([ma_Hang], [ten_Hang]) VALUES (4002, N'SYM')
SET IDENTITY_INSERT [dbo].[Hang_SX] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([ma_KH], [ten_HK], [mail_KH], [sdt_KH]) VALUES (7000, N'Khách hàng 1', N'khachhang1', N'111111')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_HK], [mail_KH], [sdt_KH]) VALUES (7001, N'Khách hàng 2', N'khachhang2', N'222222')
INSERT [dbo].[KhachHang] ([ma_KH], [ten_HK], [mail_KH], [sdt_KH]) VALUES (7002, N'Khách hàng 3', N'khachhang3', N'333333')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai_SP] ON 

INSERT [dbo].[Loai_SP] ([ma_Loai], [ten_Loai]) VALUES (2000, N'Xe Ga')
INSERT [dbo].[Loai_SP] ([ma_Loai], [ten_Loai]) VALUES (2001, N'Xe Tay Côn')
INSERT [dbo].[Loai_SP] ([ma_Loai], [ten_Loai]) VALUES (2002, N'Xe Số')
INSERT [dbo].[Loai_SP] ([ma_Loai], [ten_Loai]) VALUES (2003, N'Xe Điện')
INSERT [dbo].[Loai_SP] ([ma_Loai], [ten_Loai]) VALUES (2004, N'Xe Phân Khối Lớn')
SET IDENTITY_INSERT [dbo].[Loai_SP] OFF
GO
SET IDENTITY_INSERT [dbo].[Nha_CungCap] ON 

INSERT [dbo].[Nha_CungCap] ([ma_NCC], [ten_NCC]) VALUES (1000, N'Nhà cung cấp 1')
INSERT [dbo].[Nha_CungCap] ([ma_NCC], [ten_NCC]) VALUES (1001, N'Nhà cung cấp 2')
INSERT [dbo].[Nha_CungCap] ([ma_NCC], [ten_NCC]) VALUES (1002, N'Nhà cung cấp 3')
INSERT [dbo].[Nha_CungCap] ([ma_NCC], [ten_NCC]) VALUES (1004, N'Nhà cung cấp 4')
SET IDENTITY_INSERT [dbo].[Nha_CungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [mail_NV], [sdt_NV], [mk_DangNhap]) VALUES (6000, N'Nguyễn Hoàng Dương', N'hoangduong150199@gmail.com', N'0123456789', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[NhanVien] ([ma_NV], [ten_NV], [mail_NV], [sdt_NV], [mk_DangNhap]) VALUES (6001, N'Lê Đức Tín', NULL, NULL, N'e10adc3949ba59abbe56e057f20f883e')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ma_SP], [ma_DM], [ma_Loai], [ma_Hang], [ten_SP], [soluong_SP]) VALUES (14000, 4000, 2002, 3000, N'Wave Alpha 110 Trắng', 2)
INSERT [dbo].[SanPham] ([ma_SP], [ma_DM], [ma_Loai], [ma_Hang], [ten_SP], [soluong_SP]) VALUES (14001, 4002, 2000, 3000, N'SH 150i Đen Bóng', 0)
INSERT [dbo].[SanPham] ([ma_SP], [ma_DM], [ma_Loai], [ma_Hang], [ten_SP], [soluong_SP]) VALUES (14002, 4000, 2002, 3000, N'Wave Alpha 110 Xanh', 0)
INSERT [dbo].[SanPham] ([ma_SP], [ma_DM], [ma_Loai], [ma_Hang], [ten_SP], [soluong_SP]) VALUES (14003, 4000, 2002, 3000, N'Wave Alpha 110 Đen', 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
/****** Object:  StoredProcedure [dbo].[Get_GiaSPList]    Script Date: 01/01/2021 11:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_GiaSPList]
AS
BEGIN
	SELECT G.ma_GiaSP, ten_SP, G.gia_SP, G.ngay_BDSP FROM SanPham SP, Gia_SP G
	WHERE G.ma_SP = SP.ma_SP
END
GO
/****** Object:  StoredProcedure [dbo].[Get_SanPhamList]    Script Date: 01/01/2021 11:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_SanPhamList]
AS
BEGIN
	SELECT ma_SP, ten_SP, ten_DM, ten_Loai, ten_Hang, soluong_SP FROM SanPham SP, DanhMuc DM,Loai_SP LSP, Hang_SX HSX
	WHERE SP.ma_DM = DM.ma_DM AND SP.ma_Hang = HSX.ma_Hang AND SP.ma_Loai = LSP.ma_Loai
END
GO
USE [master]
GO
ALTER DATABASE [CuaHang_XeMay] SET  READ_WRITE 
GO
