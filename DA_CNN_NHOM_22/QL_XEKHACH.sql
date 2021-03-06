USE [QLXeKhach]
GO
/****** Object:  Table [dbo].[ChiTietVeXe]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietVeXe](
	[MaCTVX] [int] NOT NULL,
	[MaVe] [int] NULL,
	[MaXe] [char](10) NULL,
	[Vi_Tri_Ghe_Ngoi] [int] NULL,
	[Ghi_Chu] [nvarchar](max) NULL,
 CONSTRAINT [PK_CTVX] PRIMARY KEY CLUSTERED 
(
	[MaCTVX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenXe]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenXe](
	[MaChuyenXe] [char](10) NOT NULL,
	[TenChuyenXe] [nvarchar](max) NULL,
	[Ma_Tuyen] [char](10) NULL,
	[NgayDi] [date] NULL,
	[NgayDen] [date] NULL,
	[MaNV] [int] NULL,
	[Cho_Trong] [int] NULL,
	[MaTX] [int] NULL,
 CONSTRAINT [PK_CX] PRIMARY KEY CLUSTERED 
(
	[MaChuyenXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[MaLoai] [int] NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[CMND] [nchar](12) NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [char](10) NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiKH]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKH](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiKH] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNV]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNV](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiNV] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[MaLoaiXe] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiXe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](max) NULL,
	[GioiTinh] [nchar](4) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[CMND] [nchar](12) NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nvarchar](max) NULL,
	[LoaiNV] [int] NULL,
	[MatKhau] [char](10) NULL,
 CONSTRAINT [PK_NV] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTX] [int] IDENTITY(1,1) NOT NULL,
	[TenTX] [nvarchar](max) NULL,
	[GioiTinh] [nchar](4) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[CMND] [nchar](12) NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [char](10) NULL,
 CONSTRAINT [PK_TaiXe] PRIMARY KEY CLUSTERED 
(
	[MaTX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TuyenXe](
	[Ma_Tuyen] [char](10) NOT NULL,
	[TenTuyen] [nvarchar](max) NULL,
	[DiemDi] [nvarchar](max) NULL,
	[DiemDen] [nvarchar](max) NULL,
	[BangGiaXe] [float] NULL,
 CONSTRAINT [PK_TX] PRIMARY KEY CLUSTERED 
(
	[Ma_Tuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[MaChuyenXe] [char](10) NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 11/20/2019 9:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [char](10) NOT NULL,
	[TenXe] [nvarchar](50) NULL,
	[BienSoXe] [nchar](20) NULL,
	[SoGhe] [int] NULL,
	[LoaiXe] [int] NULL,
 CONSTRAINT [PK_Xe] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaXe], [Vi_Tri_Ghe_Ngoi], [Ghi_Chu]) VALUES (1, 1, N'1         ', 2, NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaXe], [Vi_Tri_Ghe_Ngoi], [Ghi_Chu]) VALUES (2, 2, N'3         ', 10, NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaXe], [Vi_Tri_Ghe_Ngoi], [Ghi_Chu]) VALUES (3, 4, N'2         ', 12, NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaXe], [Vi_Tri_Ghe_Ngoi], [Ghi_Chu]) VALUES (4, 2, N'4         ', 6, NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaXe], [Vi_Tri_Ghe_Ngoi], [Ghi_Chu]) VALUES (5, 3, N'2         ', 13, NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [TenChuyenXe], [Ma_Tuyen], [NgayDi], [NgayDen], [MaNV], [Cho_Trong], [MaTX]) VALUES (N'1         ', N'SG_TN', N'1         ', CAST(0x5D400B00 AS Date), CAST(0x5E400B00 AS Date), 1, NULL, 1)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [TenChuyenXe], [Ma_Tuyen], [NgayDi], [NgayDen], [MaNV], [Cho_Trong], [MaTX]) VALUES (N'2         ', N'SG_HN', N'2         ', CAST(0x66400B00 AS Date), CAST(0x68400B00 AS Date), 5, NULL, 2)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [TenChuyenXe], [Ma_Tuyen], [NgayDi], [NgayDen], [MaNV], [Cho_Trong], [MaTX]) VALUES (N'3         ', N'DN_DG', N'3         ', CAST(0x7C400B00 AS Date), CAST(0x7D400B00 AS Date), 5, NULL, 3)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [TenChuyenXe], [Ma_Tuyen], [NgayDi], [NgayDen], [MaNV], [Cho_Trong], [MaTX]) VALUES (N'4         ', N'DL_SG', N'4         ', CAST(0x7D400B00 AS Date), CAST(0x7E400B00 AS Date), 1, NULL, 4)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [TenChuyenXe], [Ma_Tuyen], [NgayDi], [NgayDen], [MaNV], [Cho_Trong], [MaTX]) VALUES (N'5         ', N'SG_HP', N'5         ', CAST(0x92400B00 AS Date), CAST(0x90400B00 AS Date), 1, NULL, 5)
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [MaLoai], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (1, N'Phan Văn Hớn', 1, CAST(0x5A220B00 AS Date), N'Nam', N'Hà Nội', N'0291493874  ', N'0988983749', N'honpv123@gmail.com', N'123       ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [MaLoai], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (2, N'Bùi Xuân Phái', 2, CAST(0xA4040B00 AS Date), N'Nam', N'Hồ Chí Minh', N'0281873263  ', N'0370849829', N'phaixv19875@gmail.com', N'12344143  ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [MaLoai], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (3, N'Nguyễn Sơn', 3, CAST(0x1F1D0B00 AS Date), N'Nam', N'Bình Dương', N'1092348981  ', N'0892348895', N'sonnguyen@gmail.com', N'12352312  ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [MaLoai], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (4, N'Hoàng Thị Hồng', 4, CAST(0x0F240B00 AS Date), N'Nữ', N'Tiền Giang', N'2321434521  ', N'0398723489', N'honghoangthi@gmail.com', N'09277111  ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [MaLoai], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (5, N'Mai Anh Trang', 3, CAST(0x9B190B00 AS Date), N'Nữ', N'Đà Nẵng', N'3983349279  ', N'0903248723', N'tranganhmai1892@gmail.com', N'123148    ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiKH] ON 

INSERT [dbo].[LoaiKH] ([MaLoai], [TenLoai]) VALUES (1, N'Sinh viên, học sinh')
INSERT [dbo].[LoaiKH] ([MaLoai], [TenLoai]) VALUES (2, N'Người già')
INSERT [dbo].[LoaiKH] ([MaLoai], [TenLoai]) VALUES (3, N'Người khuyết tật')
INSERT [dbo].[LoaiKH] ([MaLoai], [TenLoai]) VALUES (4, N'Người bình thường')
SET IDENTITY_INSERT [dbo].[LoaiKH] OFF
SET IDENTITY_INSERT [dbo].[LoaiNV] ON 

INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (1, N'Tiếp viên xe')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (2, N'Nhân viên thu vé')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (3, N'Administrator')
SET IDENTITY_INSERT [dbo].[LoaiNV] OFF
SET IDENTITY_INSERT [dbo].[LoaiXe] ON 

INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (1, N'Hyundai Aero Hi-class')
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (2, N'Toyota')
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (3, N'Hyundai Solati')
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (4, N' HYUNDAI SAMCO PRIMAS')
SET IDENTITY_INSERT [dbo].[LoaiXe] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNV], [MatKhau]) VALUES (1, N'Lê Lợi', N'Nam ', CAST(0x5C150B00 AS Date), N'Bắc Giang', N'0234879324  ', N'0934789244', N'leloi192@gmail.com', 1, N'1294      ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNV], [MatKhau]) VALUES (2, N'Mai Anh', N'Nữ  ', CAST(0x15120B00 AS Date), N'Hà Nội', N'0393423423  ', N'0912343424', N'maianh2912@gmail.com', 2, N'1235      ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNV], [MatKhau]) VALUES (3, N'Hồ Giang', N'Nam ', CAST(0x5B080B00 AS Date), N'Quảng Bình', N'0237464553  ', N'0374324236', N'giangho@gmail.com', 3, N'admins32  ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNV], [MatKhau]) VALUES (4, N'Huỳnh Ngọc Mẫn', N'Nữ  ', CAST(0x01160B00 AS Date), N'Bến Tre', N'0298434875  ', N'0983248577', N'mannhi329@gmail.com', 3, N'admins34  ')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [LoaiNV], [MatKhau]) VALUES (5, N'Giang Anh Tuấn', N'Nam ', CAST(0x79140B00 AS Date), N'Cà Mau', N'0243243765  ', N'0989575324', N'tuandt@gmail.com', 1, N'9832      ')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[TaiXe] ON 

INSERT [dbo].[TaiXe] ([MaTX], [TenTX], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (1, N'Nguyễn Kiện', N'Nam ', CAST(0x82120B00 AS Date), N'An Giang', N'0293478624  ', N'0923462378', N'kiennguyen0109@gmail.com', N'19843     ')
INSERT [dbo].[TaiXe] ([MaTX], [TenTX], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (2, N'Hồ Anh Hùng', N'Nam ', CAST(0xDD070B00 AS Date), N'Quảng Nam', N'0249394876  ', N'0374598945', N'hungah@gmail.com', N'2134      ')
INSERT [dbo].[TaiXe] ([MaTX], [TenTX], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (3, N'Mùng Ai Hưng', N'Nam ', CAST(0xCC140B00 AS Date), N'Đà Nẵng', N'0234384785  ', N'0832746959', N'hungmai', N'39843     ')
INSERT [dbo].[TaiXe] ([MaTX], [TenTX], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (4, N'Trần Ngọc Giàu', N'Nam ', CAST(0x06160B00 AS Date), N'Lào Cai', N'0234345885  ', N'0989234554', N'ngocgiau32@gmail.com', N'32732     ')
INSERT [dbo].[TaiXe] ([MaTX], [TenTX], [GioiTinh], [NgaySinh], [DiaChi], [CMND], [SDT], [Email], [MatKhau]) VALUES (5, N'Nguyễn Tuấn ANh', N'Nam ', CAST(0x1B130B00 AS Date), N'Nghệ An', N'0253492324  ', N'0902349579', N'tuananh213@gmail.com', N'39284     ')
SET IDENTITY_INSERT [dbo].[TaiXe] OFF
INSERT [dbo].[TuyenXe] ([Ma_Tuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGiaXe]) VALUES (N'1         ', N'Tây Ninh', N'Bến xe Miền Tây', N'Bến xe Tây Ninh', 60000)
INSERT [dbo].[TuyenXe] ([Ma_Tuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGiaXe]) VALUES (N'2         ', N'Hà Nội', N'Bến xe Miền Đông', N'Bến xe Hà Nội', 720000)
INSERT [dbo].[TuyenXe] ([Ma_Tuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGiaXe]) VALUES (N'3         ', N'Đà Nẵng', N'Bến xe Miền Đông', N'Bến xe Đà Nẵng', 350000)
INSERT [dbo].[TuyenXe] ([Ma_Tuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGiaXe]) VALUES (N'4         ', N'Đà Lạt', N'Bến xe Miền Đông', N'Bến xe Liên tỉnh Đà Lạt', 150000)
INSERT [dbo].[TuyenXe] ([Ma_Tuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGiaXe]) VALUES (N'5         ', N'Hải Phòng', N'Bến xe Miền Đông', N'Bến xe Cầu Rào', 700000)
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaKH], [MaChuyenXe]) VALUES (1, 1, 1, N'1         ')
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaKH], [MaChuyenXe]) VALUES (2, 5, 2, N'3         ')
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaKH], [MaChuyenXe]) VALUES (3, 1, 3, N'4         ')
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaKH], [MaChuyenXe]) VALUES (4, 1, 4, N'5         ')
INSERT [dbo].[Ve] ([MaVe], [MaNV], [MaKH], [MaChuyenXe]) VALUES (5, 5, 5, N'2         ')
SET IDENTITY_INSERT [dbo].[Ve] OFF
INSERT [dbo].[Xe] ([MaXe], [TenXe], [BienSoXe], [SoGhe], [LoaiXe]) VALUES (N'1         ', N'Xe giường nằm', N'51D - 6789          ', 45, 4)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [BienSoXe], [SoGhe], [LoaiXe]) VALUES (N'2         ', N'Xe ghế ngồi', N'51G-29874           ', 45, 1)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [BienSoXe], [SoGhe], [LoaiXe]) VALUES (N'3         ', N'Xe 16 chỗ', N'51B-9898            ', 16, 3)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [BienSoXe], [SoGhe], [LoaiXe]) VALUES (N'4         ', N'Xe 7 chỗ', N'51D-9849            ', 7, 2)
ALTER TABLE [dbo].[ChiTietVeXe]  WITH CHECK ADD  CONSTRAINT [FK_CTVX_VE] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
GO
ALTER TABLE [dbo].[ChiTietVeXe] CHECK CONSTRAINT [FK_CTVX_VE]
GO
ALTER TABLE [dbo].[ChiTietVeXe]  WITH CHECK ADD  CONSTRAINT [FK_CTVX_XE] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[ChiTietVeXe] CHECK CONSTRAINT [FK_CTVX_XE]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_CX_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_CX_NV]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_CX_Tuyen] FOREIGN KEY([Ma_Tuyen])
REFERENCES [dbo].[TuyenXe] ([Ma_Tuyen])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_CX_Tuyen]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_CX_TX] FOREIGN KEY([MaTX])
REFERENCES [dbo].[TaiXe] ([MaTX])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_CX_TX]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KH_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiKH] ([MaLoai])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KH_Loai]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NV_LoaiNV] FOREIGN KEY([LoaiNV])
REFERENCES [dbo].[LoaiNV] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NV_LoaiNV]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_KH]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NV]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_LoaiXe] FOREIGN KEY([LoaiXe])
REFERENCES [dbo].[LoaiXe] ([MaLoaiXe])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_LoaiXe]
GO
