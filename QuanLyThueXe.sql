USE [master]
GO
/****** Object:  Database [QuanLyThueXe]    Script Date: 26/9/2024 11:41:21 PM ******/
CREATE DATABASE [QuanLyThueXe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThueXe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyThueXe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyThueXe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyThueXe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyThueXe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThueXe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThueXe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThueXe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThueXe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyThueXe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThueXe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThueXe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThueXe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThueXe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThueXe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThueXe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyThueXe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyThueXe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThueXe', N'ON'
GO
ALTER DATABASE [QuanLyThueXe] SET QUERY_STORE = OFF
GO
USE [QuanLyThueXe]
GO
/****** Object:  Table [dbo].[DanhGiaXe]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaXe](
	[DanhGiaID] [varchar](255) NOT NULL,
	[NoiDungDanhGia] [text] NULL,
	[XepHang] [int] NULL,
	[NgayDanhGia] [date] NULL,
	[KhachHangID] [varchar](255) NULL,
	[XeID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[DanhGiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonThueXe]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonThueXe](
	[DonThueXeID] [varchar](255) NOT NULL,
	[NgayThue] [date] NULL,
	[NgayTraXe] [date] NULL,
	[TongTien] [float] NULL,
	[TrangThaiDonHang] [varchar](50) NULL,
	[KhachHangID] [varchar](255) NULL,
	[XeID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[DonThueXeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [varchar](255) NOT NULL,
	[HoTen] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[DiaChi] [varchar](255) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[NgayDangKy] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[KhuyenMaiID] [varchar](255) NOT NULL,
	[TenKhuyenMai] [varchar](255) NULL,
	[GiaTriKhuyenMai] [float] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[DieuKienApDung] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[KhuyenMaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiChoThue]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiChoThue](
	[NguoiChoThueID] [varchar](255) NOT NULL,
	[HoTen] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[DiaChi] [varchar](255) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[NgayDangKy] [date] NULL,
	[DanhGiaNguoiChoThue] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[NguoiChoThueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[ThanhToanID] [varchar](255) NOT NULL,
	[PhuongThucThanhToan] [varchar](255) NULL,
	[NgayThanhToan] [date] NULL,
	[SoTienThanhToan] [float] NULL,
	[DonThueXeID] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ThanhToanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 26/9/2024 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[XeID] [varchar](255) NOT NULL,
	[NguoiChoThueID] [varchar](255) NULL,
	[LoaiXe] [varchar](255) NULL,
	[HangXe] [varchar](255) NULL,
	[BienSoXe] [varchar](20) NULL,
	[NamSanXuat] [int] NULL,
	[GiaThue] [float] NULL,
	[TrangThaiXe] [varchar](50) NULL,
	[SoKmDaDi] [int] NULL,
	[SoGhe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[XeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG001', N'Xe m?i, s?ch s?, ch?y r?t êm.', 5, CAST(N'2024-09-04' AS Date), N'KH001', N'XE001')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG002', N'Xe ?n, nhung n?i th?t không du?c nhu mong d?i.', 4, CAST(N'2024-09-08' AS Date), N'KH002', N'XE002')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG003', N'Xe d?p, d?ch v? t?t, giá c? h?p lý.', 5, CAST(N'2024-09-10' AS Date), N'KH003', N'XE003')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG004', N'Xe có chút mùi nhung ch?y ?n.', 3, CAST(N'2024-09-12' AS Date), N'KH004', N'XE004')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG005', N'Xe ?n d?nh, không có gì phàn nàn.', 4, CAST(N'2024-09-15' AS Date), N'KH005', N'XE005')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG006', N'Xe ch?t lu?ng t?t, nhân viên nhi?t tình.', 5, CAST(N'2024-09-16' AS Date), N'KH006', N'XE006')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG007', N'Xe hoi cu nhung v?n t?t.', 3, CAST(N'2024-09-17' AS Date), N'KH007', N'XE007')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG008', N'Xe d?p, không g?p v?n d? gì.', 5, CAST(N'2024-09-18' AS Date), N'KH008', N'XE008')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG009', N'Xe lái r?t thích, d?ch v? chuyên nghi?p.', 5, CAST(N'2024-09-20' AS Date), N'KH009', N'XE009')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG010', N'Xe ch?y ?n, nhung giá cao.', 3, CAST(N'2024-09-21' AS Date), N'KH010', N'XE010')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG011', N'R?t hài lòng v?i d?ch v? và ch?t lu?ng xe.', 5, CAST(N'2024-09-22' AS Date), N'KH011', N'XE011')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG012', N'Xe ?n, nhung không quá d?c bi?t.', 4, CAST(N'2024-09-23' AS Date), N'KH012', N'XE012')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG013', N'Xe có chút v?n d? v?i di?u hòa.', 3, CAST(N'2024-09-24' AS Date), N'KH013', N'XE013')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG014', N'Xe s?ch s?, nhân viên h? tr? t?t.', 4, CAST(N'2024-09-25' AS Date), N'KH014', N'XE014')
INSERT [dbo].[DanhGiaXe] ([DanhGiaID], [NoiDungDanhGia], [XepHang], [NgayDanhGia], [KhachHangID], [XeID]) VALUES (N'DG015', N'Không có gì phai phàn nàn, xe ch?y mu?t.', 5, CAST(N'2024-09-26' AS Date), N'KH015', N'XE015')
GO
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX001', CAST(N'2024-09-01' AS Date), CAST(N'2024-09-05' AS Date), 1200000, N'Completed', N'KH001', N'XE001')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX002', CAST(N'2024-09-02' AS Date), CAST(N'2024-09-06' AS Date), 1500000, N'Completed', N'KH002', N'XE002')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX003', CAST(N'2024-09-03' AS Date), CAST(N'2024-09-07' AS Date), 1800000, N'Completed', N'KH003', N'XE003')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX004', CAST(N'2024-09-04' AS Date), CAST(N'2024-09-08' AS Date), 800000, N'Completed', N'KH004', N'XE004')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX005', CAST(N'2024-09-05' AS Date), CAST(N'2024-09-09' AS Date), 1100000, N'Completed', N'KH005', N'XE005')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX006', CAST(N'2024-09-06' AS Date), CAST(N'2024-09-10' AS Date), 1250000, N'Completed', N'KH006', N'XE006')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX007', CAST(N'2024-09-07' AS Date), CAST(N'2024-09-11' AS Date), 1300000, N'Completed', N'KH007', N'XE007')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX008', CAST(N'2024-09-08' AS Date), CAST(N'2024-09-12' AS Date), 900000, N'Completed', N'KH008', N'XE008')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX009', CAST(N'2024-09-09' AS Date), CAST(N'2024-09-13' AS Date), 950000, N'Completed', N'KH009', N'XE009')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX010', CAST(N'2024-09-10' AS Date), CAST(N'2024-09-14' AS Date), 1400000, N'Completed', N'KH010', N'XE010')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX011', CAST(N'2024-09-11' AS Date), CAST(N'2024-09-15' AS Date), 1150000, N'Completed', N'KH011', N'XE011')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX012', CAST(N'2024-09-12' AS Date), CAST(N'2024-09-16' AS Date), 1050000, N'Completed', N'KH012', N'XE012')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX013', CAST(N'2024-09-13' AS Date), CAST(N'2024-09-17' AS Date), 700000, N'Completed', N'KH013', N'XE013')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX014', CAST(N'2024-09-14' AS Date), CAST(N'2024-09-18' AS Date), 800000, N'Completed', N'KH014', N'XE014')
INSERT [dbo].[DonThueXe] ([DonThueXeID], [NgayThue], [NgayTraXe], [TongTien], [TrangThaiDonHang], [KhachHangID], [XeID]) VALUES (N'DTX015', CAST(N'2024-09-15' AS Date), CAST(N'2024-09-19' AS Date), 900000, N'Completed', N'KH015', N'XE015')
GO
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH001', N'Nguyen Van A', N'nguyenvana@gmail.com', N'0912345678', N'123 Nguyen Trai, Ha Noi', N'nguyenvana', N'pass123', CAST(N'2024-05-15' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH002', N'Le Thi B', N'lethib@gmail.com', N'0987654321', N'456 Tran Hung Dao, Da Nang', N'lethib', N'password', CAST(N'2024-05-20' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH003', N'Pham Minh C', N'phamminhc@gmail.com', N'0934567890', N'789 Le Loi, Ho Chi Minh', N'phamminhc', N'minh123', CAST(N'2024-06-10' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH004', N'Tran Van D', N'tranvand@gmail.com', N'0901234567', N'321 Le Thanh Ton, Ha Noi', N'tranvand', N'dtran', CAST(N'2024-04-05' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH005', N'Hoang Thi E', N'hoangthe@gmail.com', N'0919876543', N'12 Pham Ngu Lao, Hai Phong', N'hoangthe', N'hoang321', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH006', N'Vu Thi F', N'vuthif@gmail.com', N'0945678901', N'456 Bach Dang, Da Nang', N'vuthif', N'vu1234', CAST(N'2024-07-01' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH007', N'Do Van G', N'dovang@gmail.com', N'0923456789', N'678 Tran Quang Khai, Ha Noi', N'dovang', N'do789', CAST(N'2024-02-25' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH008', N'Nguyen Thi H', N'nguyenthih@gmail.com', N'0981245678', N'23 Ba Trieu, Ho Chi Minh', N'nguyenthih', N'hnguyen', CAST(N'2024-01-15' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH009', N'Pham Van I', N'phamvani@gmail.com', N'0913456789', N'35 Ly Thuong Kiet, Ha Noi', N'phamvani', N'pham098', CAST(N'2024-05-18' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH010', N'Tran Thi J', N'tranthij@gmail.com', N'0948765432', N'789 Cach Mang Thang 8, Ho Chi Minh', N'tranthij', N'tranpass', CAST(N'2024-08-01' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH011', N'Nguyen Quang K', N'nguyenquangk@gmail.com', N'0937654321', N'321 Hai Ba Trung, Hue', N'quangknguyen', N'quang123', CAST(N'2024-03-25' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH012', N'Do Thi L', N'dothil@gmail.com', N'0976543210', N'98 Le Hong Phong, Hai Phong', N'dothil', N'dot123', CAST(N'2024-06-20' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH013', N'Phan Van M', N'phanvanm@gmail.com', N'0912348765', N'15 Nguyen Hue, Da Nang', N'phanvanm', N'mphan', CAST(N'2024-05-10' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH014', N'Le Quang N', N'lequangn@gmail.com', N'0943456789', N'64 Dien Bien Phu, Ha Noi', N'lequangn', N'le1234', CAST(N'2024-02-10' AS Date))
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy]) VALUES (N'KH015', N'Bui Thi O', N'buithio@gmail.com', N'0902345678', N'110 Nguyen Van Cu, Ho Chi Minh', N'buithio', N'buipass', CAST(N'2024-04-22' AS Date))
GO
INSERT [dbo].[KhuyenMai] ([KhuyenMaiID], [TenKhuyenMai], [GiaTriKhuyenMai], [NgayBatDau], [NgayKetThuc], [DieuKienApDung]) VALUES (N'KM01', N'Giam giá mùa hè', 10.5, CAST(N'2024-06-01' AS Date), CAST(N'2024-08-31' AS Date), N'Áp d?ng cho khách hàng thuê trên 3 ngày')
INSERT [dbo].[KhuyenMai] ([KhuyenMaiID], [TenKhuyenMai], [GiaTriKhuyenMai], [NgayBatDau], [NgayKetThuc], [DieuKienApDung]) VALUES (N'KM02', N'Uu dãi cuoi tuan', 5, CAST(N'2024-09-01' AS Date), CAST(N'2024-09-30' AS Date), N'Áp d?ng cho thuê xe vào th? 7, CN')
INSERT [dbo].[KhuyenMai] ([KhuyenMaiID], [TenKhuyenMai], [GiaTriKhuyenMai], [NgayBatDau], [NgayKetThuc], [DieuKienApDung]) VALUES (N'KM03', N'Giam giá dac biet', 15, CAST(N'2024-07-01' AS Date), CAST(N'2024-07-15' AS Date), N'Áp d?ng cho khách hàng VIP')
INSERT [dbo].[KhuyenMai] ([KhuyenMaiID], [TenKhuyenMai], [GiaTriKhuyenMai], [NgayBatDau], [NgayKetThuc], [DieuKienApDung]) VALUES (N'KM04', N'Uu dãi tháng 9', 8, CAST(N'2024-09-01' AS Date), CAST(N'2024-09-15' AS Date), N'Áp d?ng cho t?t c? các lo?i xe SUV')
INSERT [dbo].[KhuyenMai] ([KhuyenMaiID], [TenKhuyenMai], [GiaTriKhuyenMai], [NgayBatDau], [NgayKetThuc], [DieuKienApDung]) VALUES (N'KM05', N'Uu dãi tháng 9', 20, CAST(N'2024-10-01' AS Date), CAST(N'2024-10-10' AS Date), N'Áp d?ng cho don hàng trên 5 tri?u')
INSERT [dbo].[KhuyenMai] ([KhuyenMaiID], [TenKhuyenMai], [GiaTriKhuyenMai], [NgayBatDau], [NgayKetThuc], [DieuKienApDung]) VALUES (N'KM06', N'Uu dãi thành viên moi', 12, CAST(N'2024-08-01' AS Date), CAST(N'2024-08-31' AS Date), N'Ch? áp d?ng cho khách hàng dang ký m?i')
GO
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT01', N'Tran Van A', N'tranvana@gmail.com', N'0902345678', N'123 Hoang Hoa Tham, Ha Noi', N'tranvana', N'van123', CAST(N'2024-03-01' AS Date), 4.7)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT02', N'Pham Thi B', N'phamthib@gmail.com', N'0934567890', N'345 Ba Dinh, Ha Noi', N'phamthib', N'thipass', CAST(N'2024-03-12' AS Date), 4.5)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT03', N'Nguyen Van C', N'nguyenvanc@gmail.com', N'0912345678', N'123 Truong Chinh, Da Nang', N'nguyenvanc', N'nguyen123', CAST(N'2024-04-05' AS Date), 4.6)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT04', N'Le Thi D', N'lethid@gmail.com', N'0943456789', N'456 Nguyen Thai Hoc, Ho Chi Minh', N'lethid', N'led123', CAST(N'2024-04-10' AS Date), 4.8)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT05', N'Hoang Van E', N'hoangvane@gmail.com', N'0976543210', N'789 Le Hong Phong, Hai Phong', N'hoangvane', N'hoang789', CAST(N'2024-02-22' AS Date), 4.3)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT06', N'Do Van F', N'dovanf@gmail.com', N'0903456789', N'456 Hai Ba Trung, Hue', N'dovanf', N'do1234', CAST(N'2024-01-28' AS Date), 4.7)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT07', N'Bui Thi G', N'buithig@gmail.com', N'0923456789', N'123 Phan Dinh Phung, Ha Noi', N'buithig', N'gpass', CAST(N'2024-03-18' AS Date), 4.5)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT08', N'Pham Van H', N'phamvanh@gmail.com', N'0941234567', N'789 Ly Thuong Kiet, Ho Chi Minh', N'phamvanh', N'hpham', CAST(N'2024-02-14' AS Date), 4.4)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT09', N'Nguyen Thi I', N'nguyenthii@gmail.com', N'0987654321', N'456 Ngo Quyen, Da Nang', N'nguyenthii', N'ithipass', CAST(N'2024-05-05' AS Date), 4.6)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT10', N'Le Quang J', N'lequangj@gmail.com', N'0912348765', N'321 Tran Phu, Ho Chi Minh', N'lequangj', N'jqle', CAST(N'2024-04-18' AS Date), 4.7)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT11', N'Do Thi K', N'dothik@gmail.com', N'0937654321', N'123 Nguyen Van Linh, Da Nang', N'dothik', N'dkpass', CAST(N'2024-05-22' AS Date), 4.5)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT12', N'Tran Van L', N'tranvanl@gmail.com', N'0918765432', N'456 Dien Bien Phu, Hue', N'tranvanl', N'tvl123', CAST(N'2024-03-01' AS Date), 4.8)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT13', N'Vu Thi M', N'vuthim@gmail.com', N'0902345678', N'789 Truong Dinh, Ha Noi', N'vuthim', N'mvu123', CAST(N'2024-05-15' AS Date), 4.4)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT14', N'Bui Van N', N'buivann@gmail.com', N'0931234567', N'456 Nguyen Thai Binh, Ho Chi Minh', N'buivann', N'nvbuipass', CAST(N'2024-02-25' AS Date), 4.3)
INSERT [dbo].[NguoiChoThue] ([NguoiChoThueID], [HoTen], [Email], [SoDienThoai], [DiaChi], [TenDangNhap], [MatKhau], [NgayDangKy], [DanhGiaNguoiChoThue]) VALUES (N'NCT15', N'Le Thi O', N'lethio@gmail.com', N'0908765432', N'123 Le Loi, Da Nang', N'lethio', N'lopass', CAST(N'2024-01-20' AS Date), 4.6)
GO
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT001', N'Tien mat', CAST(N'2024-09-01' AS Date), 1200000, N'DTX001')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT002', N'MoMo', CAST(N'2024-09-02' AS Date), 1500000, N'DTX002')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT003', N'Chuyen khoan ngan hang', CAST(N'2024-09-03' AS Date), 1800000, N'DTX003')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT004', N'Credit Card', CAST(N'2024-09-04' AS Date), 800000, N'DTX004')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT005', N'Tien mat', CAST(N'2024-09-05' AS Date), 1100000, N'DTX005')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT006', N'MoMo', CAST(N'2024-09-06' AS Date), 1250000, N'DTX006')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT007', N'Chuyen khoan ngan hang', CAST(N'2024-09-07' AS Date), 1300000, N'DTX007')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT008', N'Credit Card', CAST(N'2024-09-08' AS Date), 900000, N'DTX008')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT009', N'Tien mat', CAST(N'2024-09-09' AS Date), 950000, N'DTX009')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT010', N'MoMo', CAST(N'2024-09-10' AS Date), 1400000, N'DTX010')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT011', N'Chuyen khoan ngan hang', CAST(N'2024-09-11' AS Date), 1150000, N'DTX011')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT012', N'Credit Card', CAST(N'2024-09-12' AS Date), 1050000, N'DTX012')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT013', N'Chuyen khoan ngan hang', CAST(N'2024-09-13' AS Date), 700000, N'DTX013')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT014', N'MoMo', CAST(N'2024-09-14' AS Date), 800000, N'DTX014')
INSERT [dbo].[ThanhToan] ([ThanhToanID], [PhuongThucThanhToan], [NgayThanhToan], [SoTienThanhToan], [DonThueXeID]) VALUES (N'TT015', N'Chuyen khoan ngan hang', CAST(N'2024-09-15' AS Date), 900000, N'DTX015')
GO
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE001', N'NCT01', N'SUV', N'Toyota', N'30A-12345', 2019, 1200000, N'Available', 50000, 7)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE002', N'NCT02', N'Sedan', N'Honda', N'31B-67890', 2021, 800000, N'Rented', 20000, 5)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE003', N'NCT03', N'Hatchback', N'Hyundai', N'32C-23456', 2020, 600000, N'Available', 35000, 5)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE004', N'NCT04', N'Crossover', N'Mazda', N'33D-34567', 2022, 1300000, N'Available', 15000, 7)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE005', N'NCT05', N'SUV', N'Ford', N'34E-45678', 2018, 1100000, N'Rented', 60000, 7)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE006', N'NCT06', N'Sedan', N'Kia', N'35F-56789', 2020, 700000, N'Available', 30000, 5)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE007', N'NCT07', N'Pickup', N'Chevrolet', N'36G-67890', 2021, 1400000, N'Rented', 25000, 4)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE008', N'NCT08', N'SUV', N'Nissan', N'37H-78901', 2019, 1150000, N'Available', 40000, 7)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE009', N'NCT09', N'Sedan', N'Mercedes', N'38I-89012', 2021, 1500000, N'Rented', 20000, 5)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE010', N'NCT10', N'Crossover', N'Honda', N'39J-90123', 2022, 1350000, N'Available', 10000, 7)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE011', N'NCT11', N'SUV', N'Hyundai', N'40K-12345', 2021, 1250000, N'Rented', 30000, 7)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE012', N'NCT12', N'Sedan', N'Toyota', N'41L-23456', 2019, 750000, N'Available', 45000, 5)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE013', N'NCT13', N'Pickup', N'Ford', N'42M-34567', 2020, 1300000, N'Available', 35000, 4)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE014', N'NCT14', N'Hatchback', N'Kia', N'43N-45678', 2021, 650000, N'Available', 30000, 5)
INSERT [dbo].[Xe] ([XeID], [NguoiChoThueID], [LoaiXe], [HangXe], [BienSoXe], [NamSanXuat], [GiaThue], [TrangThaiXe], [SoKmDaDi], [SoGhe]) VALUES (N'XE015', N'NCT15', N'Crossover', N'Mazda', N'44O-56789', 2022, 1400000, N'Rented', 12000, 7)
GO
ALTER TABLE [dbo].[DanhGiaXe]  WITH CHECK ADD FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[DanhGiaXe]  WITH CHECK ADD FOREIGN KEY([XeID])
REFERENCES [dbo].[Xe] ([XeID])
GO
ALTER TABLE [dbo].[DonThueXe]  WITH CHECK ADD FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[DonThueXe]  WITH CHECK ADD FOREIGN KEY([XeID])
REFERENCES [dbo].[Xe] ([XeID])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([DonThueXeID])
REFERENCES [dbo].[DonThueXe] ([DonThueXeID])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([NguoiChoThueID])
REFERENCES [dbo].[NguoiChoThue] ([NguoiChoThueID])
GO
USE [master]
GO
ALTER DATABASE [QuanLyThueXe] SET  READ_WRITE 
GO
