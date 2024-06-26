USE [master]
GO
/****** Object:  Database [QLQuanAo]    Script Date: 24/05/2024 7:16:18 PM ******/
CREATE DATABASE [QLQuanAo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLQuanAo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLBN10\MSSQL\DATA\QLQuanAo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLQuanAo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLBN10\MSSQL\DATA\QLQuanAo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLQuanAo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLQuanAo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLQuanAo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLQuanAo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLQuanAo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLQuanAo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLQuanAo] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLQuanAo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLQuanAo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLQuanAo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLQuanAo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLQuanAo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLQuanAo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLQuanAo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLQuanAo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLQuanAo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLQuanAo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLQuanAo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLQuanAo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLQuanAo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLQuanAo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLQuanAo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLQuanAo] SET  MULTI_USER 
GO
ALTER DATABASE [QLQuanAo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLQuanAo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLQuanAo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLQuanAo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLQuanAo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLQuanAo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLQuanAo', N'ON'
GO
ALTER DATABASE [QLQuanAo] SET QUERY_STORE = OFF
GO
USE [QLQuanAo]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDG] [nchar](10) NOT NULL,
	[UserID] [nchar](10) NULL,
	[MaSP] [nchar](10) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaDH] [nchar](10) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[NgayDatHang] [datetime] NULL,
	[DiaChiGiao] [nvarchar](max) NULL,
	[TongGia] [numeric](18, 0) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[UserID] [nchar](10) NULL,
	[TenKH] [nchar](20) NULL,
	[SDT] [nchar](20) NULL,
	[Diachi] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanLoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[UserID] [nchar](10) NULL,
	[TenNV] [nvarchar](50) NULL,
	[NamSinh] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[SDT] [nchar](20) NULL,
	[IDCard] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[MaLoai] [nchar](10) NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThongTinSP] [ntext] NULL,
	[Gia] [int] NULL,
	[SoLuong] [int] NULL,
	[KichThuoc] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24/05/2024 7:16:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nchar](10) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nchar](20) NULL,
	[Quyen] [bit] NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (N'DH1000    ', N'QL503     ', 1, 500000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (N'DH1110    ', N'AK116     ', 3, 3000000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (N'DH2100    ', N'QL503     ', 3, 2500000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (N'DH2450    ', N'QN405     ', 1, 300000)
GO
INSERT [dbo].[DanhGia] ([MaDG], [UserID], [MaSP], [NoiDung], [MaDH]) VALUES (N'DGDH1000  ', N'kh1105    ', N'QL503     ', N'Tốt', N'DH1000    ')
INSERT [dbo].[DanhGia] ([MaDG], [UserID], [MaSP], [NoiDung], [MaDH]) VALUES (N'DGDH2450  ', N'kh0095    ', N'QN405     ', N'Hàng rất đẹp', N'DH2450    ')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayDatHang], [DiaChiGiao], [TongGia], [TrangThai]) VALUES (N'DH1000    ', N'MK008     ', CAST(N'2023-12-15T00:00:00.000' AS DateTime), N'Quận 1, TP.HCM', CAST(500000 AS Numeric(18, 0)), N'Giao hàng thành công')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayDatHang], [DiaChiGiao], [TongGia], [TrangThai]) VALUES (N'DH1110    ', N'MKH001    ', CAST(N'2024-05-24T00:00:00.000' AS DateTime), N'Quận 11,TP.HCM', CAST(3000000 AS Numeric(18, 0)), N'Đang vận chuyển')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayDatHang], [DiaChiGiao], [TongGia], [TrangThai]) VALUES (N'DH2100    ', N'MKH004    ', CAST(N'2024-05-03T00:00:00.000' AS DateTime), N'Quận 5, TP.HCM', CAST(2500000 AS Numeric(18, 0)), N'Giao hàng không thành công')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayDatHang], [DiaChiGiao], [TongGia], [TrangThai]) VALUES (N'DH2450    ', N'MKH005    ', CAST(N'2023-09-18T00:00:00.000' AS DateTime), N'Hóc Môn', CAST(300000 AS Numeric(18, 0)), N'Giao hàng thành công')
GO
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MK008     ', N'kh1105    ', N'Le Thi Thai Ha      ', N'0937865452          ', N'Quận 1, TP.HCM')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MK009     ', N'kh1110    ', N'Tran Thi Quyen      ', N'0945868589          ', N'Quận 11.TPHCM')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH001    ', N'kh1001    ', N'Nguyen Van Thanh    ', N'0945734878          ', N'Quận 11,TP.HCM')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH002    ', N'kh0001    ', N'Ho Nguyen Bao Long  ', N'0927464327          ', N'Quận 7, TP.HCM')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH003    ', N'kh0034    ', N'Nguyen Huynh Yen Nhi', N'09386276322         ', N'Quận 1, TP.HCM')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH004    ', N'kh0054    ', N'Le Thi Thu Thao     ', N'0966347282          ', N'Quận 5, TP.HCM')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH005    ', N'kh0095    ', N'Tran Hue Tran       ', N'0947767646          ', N'Hóc Môn')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH006    ', N'kh0105    ', N'Nguyen Anh Duong    ', N'0947584334          ', N'Nhà Bè')
INSERT [dbo].[KhachHang] ([MaKH], [UserID], [TenKH], [SDT], [Diachi]) VALUES (N'MKH007    ', N'kh0999    ', N'Nguyen Tung Duong   ', N'0967366743          ', N'Quận 5, TP.HCM')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Ao1       ', N'Áo Sơ Mi ')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Ao2       ', N'Áo Thun ')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Ao3       ', N'Áo Khoác')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Ao4       ', N'Áo Hai Dây')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'CV1       ', N'Chân Váy Ngắn')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'CV2       ', N'Chân Váy Dài')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'D1        ', N'Đầm Dạo Phố')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'D2        ', N'Đầm Dạ Hội')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Q1        ', N'Quần Dài')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Q2        ', N'Quần Short')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (N'Q3        ', N'Quần Lửng')
GO
INSERT [dbo].[NhanVien] ([MaNV], [UserID], [TenNV], [NamSinh], [ChucVu], [SDT], [IDCard]) VALUES (N'NV1       ', N'admin01   ', N'Nguon Gia Linh', N'2003', N'Quản Lý', N'0934257986          ', N'0795554793')
INSERT [dbo].[NhanVien] ([MaNV], [UserID], [TenNV], [NamSinh], [ChucVu], [SDT], [IDCard]) VALUES (N'NV2       ', N'admin02   ', N'Trần Bội Nhi ', N'2003', N'Quản Lý', N'0975221369          ', N'0794594589')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AD120     ', N'Ao4       ', N'Áo 2 Dây - AD120     ', N'Nhẹ nhàng, bay bổng đầy nữ tính', 200000, 30, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AD121     ', N'Ao4       ', N'Áo 2 Dây - AD121     ', N'Nhẹ nhàng, bay bổng đầy nữ tính', 200000, 20, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AD122     ', N'Ao4       ', N'Áo Không Tay - AD122     ', N'Áo ôm sử dụng chi tiết bo chun, kết hợp cùng chất liệu Lụa mát mẻ', 150000, 20, N'FreeSize  ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AK111     ', N'Ao3       ', N'Áo Khoác Thể Thao - AK111     ', N'Vải gió, dáng bom bo chun ', 400000, 30, N'FreeSize  ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AK112     ', N'Ao3       ', N'Áo Khoác Không Tay - AK112     ', N'Chất liệu thô', 400000, 40, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AK113     ', N'Ao3       ', N'Áo Khoác Không Tay - AK113     ', N'Chất liệu thô', 400000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AK114     ', N'Ao3       ', N'Áo Khoác Denim - AK114     ', N'Vải denim', 560000, 40, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AK115     ', N'Ao3       ', N'Áo Khoác Denim - AK115     ', N'Vải denim', 570000, 45, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AK116     ', N'Ao3       ', N'Áo Khoác Măng Tô - AK116     ', N'Họa tiết kẻ ô luôn khiến các tín đồ thời trang chao đảo bởi nét cá tính, hiện đại', 1000000, 20, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM001    ', N'Ao1       ', N'Áo Sơ Mi Công Sở Đơn Giản - ASM001    ', N'Vải thô, dáng suông cổ tròn nhún tạo kiểu ', 700000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM002    ', N'Ao1       ', N'Áo Sơ Mi Kiểu Dạo Phố - ASM002    ', N'Vải thô, dáng suông cổ bẻ bản to cài cúc ', 600000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM003    ', N'Ao1       ', N'Áo Sơ Mi Công Sở Đính Nơ - ASM003    ', N'Vải voan nhăn, dáng suông cổ tròn đính nơ trang trí', 480000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM004    ', N'Ao1       ', N'Áo Kiểu Công Sở Tay Bèo - ASM004    ', N'Vải thô, dáng suông tay bèo cài cúc ngọc trai ', 530000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM005    ', N'Ao1       ', N'Áo Kiểu Công Sở Croptop Bo Eo - ASM005    ', N'Vải lụa, dáng croptop bo em cổ V vạt chồng vai liền tay chờm lỡ ', 500000, 20, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM006    ', N'Ao1       ', N'Áo Sơ Mi Công Sở Đơn Giản - ASM006    ', N'Vải thô, dáng suông cổ tròn nhún tạo kiểu ', 750000, 20, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM007    ', N'Ao1       ', N'Áo Sơ Mi Kiểu Dạo Phố - ASM007    ', N'Vải thô, dáng suông cổ bẻ bản to cài cúc ', 650000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM008    ', N'Ao1       ', N'Áo Sơ Mi Công Sở Đính Nơ - ASM008    ', N'Vải voan nhăn, dáng suông cổ tròn đính nơ trang trí', 530000, 45, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM009    ', N'Ao1       ', N'Áo Kiểu Công Sở Tay Bèo - ASM009    ', N'Vải thô, dáng suông tay bèo cài cúc ngọc trai ', 580000, 50, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'ASM010    ', N'Ao1       ', N'Áo Kiểu Công Sở Croptop Bo Eo - ASM010    ', N'Vải lụa, dáng croptop bo em cổ V vạt chồng vai liền tay chờm lỡ ', 550000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT101     ', N'Ao2       ', N'Áo Phông Cổ Cao - AT101     ', N'Vải co giãn và đàn hồi, thông thoáng ', 160000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT102     ', N'Ao2       ', N'Áo Phông Cổ Cao - AT102     ', N'Vải co giãn và đàn hồi, thông thoáng ', 160000, 50, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT103     ', N'Ao2       ', N'Áo Thun Sticker Yoguu - AT103     ', N'Thiết kế form rộng hiện đại, thoải mái, tạo điểm nhấn cho người mặc ', 230000, 50, N'OverSize  ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT104     ', N'Ao2       ', N'Áo Polo "What Make You Happy" - AT104     ', N'Thiết kế form rộng hiện đại, thoải mái, tạo điểm nhấn cho người mặc ', 280000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT105     ', N'Ao2       ', N'Áo Polo "What Make You Happy" - AT105     ', N'Thiết kế form rộng hiện đại, thoải mái, tạo điểm nhấn cho người mặc ', 280000, 40, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT106     ', N'Ao2       ', N'T-Shirt Nữ Croptop In Chữ - AT106     ', N'Chất liệu thun co giãn tốt, giữ form khi giặt và sử dụng', 200000, 50, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'AT107     ', N'Ao2       ', N'T-Shirt Nữ Croptop In Chữ - AT107     ', N'Chất liệu thun co giãn tốt, giữ form khi giặt và sử dụng', 210000, 40, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVD210    ', N'CV2       ', N'Chân Váy Dài Công Sở - CVD210    ', N'ải tuytsi dáng bút chì có lót habutai thân phối nẹp túi trang trí kèm đai tạo kiểu', 1300000, 20, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVD211    ', N'CV2       ', N'Chân Váy Dài Công Sở - CVD211    ', N'ải tuytsi dáng bút chì có lót habutai thân phối nẹp túi trang trí kèm đai tạo kiểu', 1300000, 15, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVN200    ', N'CV1       ', N'Chân Váy Công Sở - CVN200    ', N'Không kén người mặc, dễ dàng tạo sự thoải mái, không gò bó và mang đến nét đẹp năng động, trẻ trung cho người mặc', 1100000, 10, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVN201    ', N'CV1       ', N'Chân Váy Công Sở - CVN201    ', N'Không kén người mặc, dễ dàng tạo sự thoải mái, không gò bó và mang đến nét đẹp năng động, trẻ trung cho người mặc', 1100000, 10, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVN202    ', N'CV1       ', N'Chân Váy Xòe - CVN202    ', N'Không kén người mặc, tạo sự thoải mái', 400000, 45, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVN203    ', N'CV1       ', N'Chân Váy Xòe - CVN203    ', N'Không kén người mặc, tạo sự thoải mái', 400000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVN204    ', N'CV1       ', N'Chân Váy Xếp Ly - CVN204    ', N'Không kén người mặc, tạo sự thoải mái', 350000, 45, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'CVN205    ', N'CV1       ', N'Chân Váy Xếp Ly - CVN205    ', N'Không kén người mặc, tạo sự thoải mái', 350000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'DDH701    ', N'D2        ', N'Đầm Dạ Hội Trễ Vai - DDH701    ', N'Chất liệu:Ren - 100% Polyester', 1500000, 10, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'DDH702    ', N'D2        ', N'Đầm Dạ Hội Trễ Vai - DDH702', N'Chất liệu:Ren - 100% Polyester', 1500000, 5, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'DDP601    ', N'D1        ', N'Đầm Dạo Phố Dáng Xòe - DDP601', N'Vải habutai ', 900000, 6, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'DDP602    ', N'D1        ', N'Đầm Dạo Phố Dáng Xòe - DDP602', N'Vải habutai ', 900000, 10, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'DDP603    ', N'D1        ', N'Đầm Dạo Phố Dáng Suông - DDP603', N'Vải lụa', 900000, 40, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'DDP604    ', N'D1        ', N'Đầm Dạo Phố 2 Dây - DDP604', N'Vải thô', 500000, 30, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QD301     ', N'Q1        ', N'Quần Dài Xẻ Tà - QD301     ', N'Phong cách trẻ trung hiện đại dễ dàng mix với nhiều áo khác nhau', 300000, 30, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QD302     ', N'Q1        ', N'Quần Dài Xẻ Tà - QD302     ', N'Phong cách trẻ trung hiện đại dễ dàng mix với nhiều áo khác nhau', 300000, 35, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QD303     ', N'Q1        ', N'Quần Dáng Suông - QD303     ', N'Chất liệu:Phi cát - 100% Polyester', 300000, 45, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QD304     ', N'Q1        ', N'Quần Dáng Suông - QD304     ', N'Chất liệu:Phi cát - 100% Polyester', 300000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QD305     ', N'Q1        ', N'Quần Baggy - QD305     ', N'Vải thô, dáng baggy cạp liền bối dây thắt lưng ', 350000, 35, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QD306     ', N'Q1        ', N'Quần Baggy - QD306     ', N'Vải thô, dáng baggy cạp liền bối dây thắt lưng ', 360000, 35, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL501     ', N'Q3        ', N'Quần Lửng Ống Rộng - QL501     ', N'Chất liệu:Dạ - 97% Polyester - 3% Spandex', 300000, 37, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL502     ', N'Q3        ', N'Quần Lửng Ống Rộng - QL502    ', N'Chất liệu:Dạ - 97% Polyester - 3% Spandex', 300000, 14, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL503     ', N'Q3        ', N'Quần Lửng Dáng Ôm - QL503', N'Thành phần vải: 100% Polyester', 500000, 15, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL504     ', N'Q3        ', N'Quần Lửng Dáng Ôm - QL504', N'Thành phần vải: 100% Polyester', 500000, 15, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL505     ', N'Q3        ', N'Quần Lửng Vải Đũi - QL505', N'Chất liệu: Thô đũi - 100% Polyester', 630000, 12, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL506     ', N'Q3        ', N'Quần Lửng Vải Đũi - QL506', N'Chất liệu: Thô đũi - 100% Polyester', 630000, 10, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL507     ', N'Q3        ', N'Quần Lửng Vải Lụa - QL507', N'Thành phần vải 95% Polyester 5% Spandex
', 870000, 5, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QL508     ', N'Q3        ', N'Quần Lửng Vải Lụa - QL508', N'Thành phần vải 95% Polyester 5% Spandex
', 870000, 5, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QN401     ', N'Q2        ', N'Quần Short Kaki - QN401     ', N'Chất liệu:Kaki - 85% Polyester 15% Rayon', 250000, 40, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QN402     ', N'Q2        ', N'Quần Short Kaki - QN402     ', N'Chất liệu:Kaki - 85% Polyester 15% Rayon', 260000, 35, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QN403     ', N'Q2        ', N'Quần Short Giả Váy - QN403     ', N'Chất liệu:Thô - 100% Nano', 270000, 27, N'S         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QN404     ', N'Q2        ', N'Quần Short Giả Váy - QN404     ', N'Chất liệu:Thô - 100% Nano', 275000, 30, N'M         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [TenSP], [ThongTinSP], [Gia], [SoLuong], [KichThuoc]) VALUES (N'QN405     ', N'Q2        ', N'Quần Short Khóa Thân Sau - QN405     ', N'Vải tuytsi dáng suông thân trước giả váy phối khóa đồng kéo khóa thân sau', 300000, 50, N'S         ')
GO
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'admin01   ', N'NguonGiaLinh', N'1234', N'gialinh@gmail.com', N'0934257986          ', 1)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'admin02   ', N'TranBoiNhi', N'7890', N'boinhi@gmail.com', N'0975221369          ', 1)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh0001    ', N'HoNguyenBaoLong', N'2948', N'longnguyen2k2@gmail.com', N'0927464327          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh0034    ', N'NguyenHuynhYenNhi', N'4565634', N'nhinguyen88@gmail.com', N'09386276322         ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh0054    ', N'LeThiThuThao', N'thuthao2003', N'thuthao2@gmail.com', N'0966347282          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh0095    ', N'TranHueTran', N'84395', N'huetran2007@gmail.com', N'0947767646          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh0105    ', N'NguyenAnhDuong', N'5542', N'nguyenanhduong22@gmail.com', N'0947584334          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh0999    ', N'NguyenTungDuong', N'56858', N'duongnguyen99@gmail.com', N'0967366743          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh1001    ', N'NguyenVanThanh', N'1111', N'vanthanh11@gmail.com', N'0945734878          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh1105    ', N'LeThiThaiHa', N'57904', N'hale@gmail.com', N'0937865452          ', 0)
INSERT [dbo].[User] ([UserID], [UserName], [MatKhau], [Email], [SDT], [Quyen]) VALUES (N'kh1110    ', N'TranThiQuyen', N'4422', N'quyen@gmail.com', N'0945868589          ', 0)
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_DonHang]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_User]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_User]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_User]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
USE [master]
GO
ALTER DATABASE [QLQuanAo] SET  READ_WRITE 
GO
