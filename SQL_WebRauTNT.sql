CREATE DATABASE [WebRauTNT]
GO
USE [WebRauTNT]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MaSP] [int] NULL,
	[MaKH] [nvarchar](128) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaSP] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[TrangThaiGiaoHang] [bit] NULL,
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
	[MaKH] [nvarchar](128) NOT NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHes]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](30) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/12/2022 3:09:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](255) NULL,
	[Gia] [float] NULL,
	[SoLuong] [int] NULL,
	[DonVi] [nvarchar](10) NULL,
	[GiamGia] [float] NULL,
	[Hinh] [varchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'user')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'029be8f4-43f0-4928-bbeb-f6dcc16ab7c4', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address]) VALUES (N'029be8f4-43f0-4928-bbeb-f6dcc16ab7c4', N'admin@gmail.com', 0, N'AHcnalWm5CjWIOxwmGSbXgFO3Aw18PhbJDZy+YKLkGoqLn5NiLqnNcyfsFwAWKFM7Q==', N'ea699d01-9a7b-4c1a-a978-ba0883669286', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address]) VALUES (N'6d8d607a-1276-4ed9-9577-232b07e0b127', N'user@gmail.com', 0, N'AEoHJukKvFDwE+W9kV9XlWsHmWq60Q3HvoCBoLsM7o4YyJmBCmW1FnGLF3tFAGdbbA==', N'e1665f48-73ec-44f8-ac05-a382d75abca0', NULL, 0, 0, NULL, 1, 0, N'user@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LienHes] ON 

INSERT [dbo].[LienHes] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (1, N'test', N'test123@gmail.com', 1234567890, N'test', N'test', 0, NULL, CAST(N'2022-05-12 14:34:56.927' AS DateTime), CAST(N'2022-05-12 14:34:56.927' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[LienHes] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (1, N'Rau tươi')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (2, N'Củ quả')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (3, N'Rau mùi')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (4, N'Trái cây')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (5, N'Khác')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (161, 1, N'Cải Kale Hữu Cơ', N'Best Seller', 62500, 6, N'kg', 0, N'Content/images/products/caikale.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (163, 1, N'Cải Thìa Hữu Cơ', N'Best Seller', 60000, 4, N'kg', 0, N'Content/images/products/caithia.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (164, 1, N'Cải Ngọt Hữu Cơ', N'Best Seller', 45000, 10, N'kg', 0, N'Content/images/products/caingot.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (165, 1, N'Cải Bẹ Xanh Hữu Cơ', N'Best Seller', 249000, 10, N'kg', 0, N'Content/images/products/caibexanh.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (166, 1, N'Cải Bó Xôi Hữu Cơ', N'Best Seller', 240000, 10, N'kg', 0, N'Content/images/products/caiboxoi.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (167, 1, N'Cải Ngồng Hữu Cơ', N'Best Seller', 450000, 10, N'kg', 0, N'Content/images/products/caingong.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (168, 1, N'Cải ThảoHữu Cơ', N'Best Seller', 600000, 10, N'kg', 0, N'Content/images/products/caithao.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (169, 1, N'Cải Thìa Hữu Cơ', N'Best Seller', 990000, 10, N'kg', 0, N'Content/images/products/caithia.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (170, 2, N'Củ Cải Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/caingot.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (171, 2, N'Cà Chua Bee Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/cachuabee.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (172, 2, N'Cà Rốt Baby Hữu Cơ', N'Best Seller', 25000, 10, N'kg', 0, N'Content/images/products/carotbaby.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (173, 2, N'Cà Tím Hữu Cơ', N'Best Seller', 25000, 10, N'kg', 0, N'Content/images/products/catim.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (174, 2, N'Chanh Không Hạt', N'Best Seller', 35000, 10, N'kg', 0, N'Content/images/products/chanhkhonghat.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (175, 3, N'Lá Hương Thảo (50g)', N'Best Seller', 25000, 10, N'kg', 0, N'Content/images/products/lahuongthao.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (176, 3, N'Hành lá (50g)', N'Best Seller', 24000, 10, N'kg', 0, N'Content/images/products/hanhla.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (177, 3, N'Bạc Hà (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/bacha.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (178, 3, N'Húng Quế Hữu Cơ', N'Best Seller', 27000, 10, N'kg', 0, N'Content/images/products/hungque.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (179, 4, N'Kiwi Vàng Hữu Cơ', N'Best Seller', 280000, 10, N'kg', 0, N'/Content/images/products/kiwivang.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (180, 4, N'Cherry New Zealand Hữu Cơ', N'Best Seller', 16000, 10, N'kg', 0, N'/Content/images/products/cherry.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (181, 4, N'Nho Không Hạt Mỹ Hữu Cơ', N'Best Seller', 75000, 10, N'kg', 0, N'/Content/images/products/nhokhonghat.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (182, 4, N'Nho Móng Tay Hữu Cơ', N'Best Seller', 85000, 10, N'kg', 0, N'/Content/images/products/nhomongtay.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (183, 4, N'Táo Fuji Mỹ Hữu Cơ', N'Best Seller', 25000, 50000, N'g', 0, N'/Content/images/products/taofujimy.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (184, 4, N'Dâu Tây Hữu Cơ', N'Best Seller', 12000, 100, N'Kg', 0, N'/Content/images/products/dautay.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (185, 5, N'Nấm linh chi', N'Best Seller', 15000, 46, N'Kg', 0, N'/Content/images/products/namlinhchi.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (186, 5, N'Nấm đùi gà', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/namduiga.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (187, 1, N'Cải Xanh Hữu Cơ', N'Best Seller', 990000, 10, N'kg', 0, N'Content/images/products/caixanh.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (188, 2, N'Cà Chua Beef Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/cachuabeef.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (189, 2, N'Cà Rốt Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/carot.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (190, 2, N'Chanh Vàng Mỹ Hữu Cơ', N'Best Seller', 67000, 10, N'kg', 0, N'Content/images/products/chanhvangmy.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (191, 2, N'Củ Cải Đỏ Hữu Cơ', N'Best Seller', 47000, 10, N'kg', 0, N'Content/images/products/cucaido.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (192, 2, N'Củ Cải Trắng Hữu Cơ', N'Best Seller', 43000, 10, N'kg', 0, N'Content/images/products/cucaitrang.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (193, 2, N'Củ Dền Đỏ Hữu Cơ', N'Best Seller', 70000, 10, N'kg', 0, N'Content/images/products/cudendo.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (194, 2, N'Khổ Qua Hữu Cơ', N'Best Seller', 64000, 10, N'kg', 0, N'Content/images/products/khoqua.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (195, 2, N'Hành Tây Hữu Cơ', N'Best Seller', 55000, 10, N'kg', 0, N'Content/images/products/hanhtay.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (196, 2, N'Dưa Leo Hữu Cơ', N'Best Seller', 78000, 10, N'kg', 0, N'Content/images/products/dualeo.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (197, 2, N'Đậu Bắp Hữu Cơ', N'Best Seller', 45000, 10, N'kg', 0, N'Content/images/products/daubap.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (198, 2, N'Gừng Hữu Cơ', N'Best Seller', 89000, 10, N'kg', 0, N'Content/images/products/gung.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (199, 2, N'Bí Đỏ Hữu Cơ', N'Best Seller', 56000, 10, N'kg', 0, N'Content/images/products/bido.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (200, 2, N'Bông Cải Xanh Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bongcaixanh.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (201, 2, N'Bắp Cải Tím Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bapcaitim.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (202, 2, N'Bắp Cải Trái Tim Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bapcaitraitim.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (203, 2, N'Bắp Mỹ Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bapmy.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (204, 2, N'Bắp Nếp Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bapnep.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (205, 2, N'Bầu Xanh Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bauxanh.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (206, 2, N'Bí Đao Hữu Cơ', N'Best Seller', 60000, 10, N'kg', 0, N'Content/images/products/bidao.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (207, 3, N'Hành Paro (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/hanhparo.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (208, 3, N'Kinh Gioi (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/kinhgioi.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (209, 3, N'Diếp Cá (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/diepca.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (210, 3, N'Tía Tô (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/tiato.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (211, 3, N'Rau Răm (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/rauram.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (212, 3, N'Lá Lốt (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/lalot.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (213, 3, N'Ngò Gai (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/ngogai.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (214, 3, N'Rau Ngổ (50g)', N'Best Seller', 32000, 10, N'kg', 0, N'Content/images/products/raungo.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (215, 4, N'Lê Hàn Quốc Hữu Cơ', N'Best Seller', 12000, 100, N'Kg', 0, N'/Content/images/products/lehanquoc.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (216, 4, N'Quýt Úc Hữu Cơ', N'Best Seller', 12000, 100, N'Kg', 0, N'/Content/images/products/quytuc.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (217, 4, N'Dưa Lưới Hữu Cơ', N'Best Seller', 12000, 100, N'Kg', 0, N'/Content/images/products/dualuoi.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (218, 5, N'Nấm đông cô (250g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/namdongco.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (219, 5, N'Nấm Tuyết Khô (100g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/namduiga.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (220, 5, N'Nấm Ngọc Thạch (100g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/namngocthach.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (221, 5, N'Nấm kim châm', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/namkimcham.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (222, 5, N'Ớt Hiểm (100g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/othiem.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (223, 5, N'Set Lẩu Nấm (250g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/setlaunam.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (224, 5, N'Rong Nho Tách Nước (100g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/rongnho.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (225, 5, N'Củ Tỏi (250g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/cutoi.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (226, 5, N'Củ Hành (250g)', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/cuhanh.png')
INSERT [dbo].[SanPham] ([MaSP], [MaLoai], [Ten], [MoTa], [Gia], [SoLuong], [DonVi], [GiamGia], [Hinh]) VALUES (227, 5, N'Củ Nén', N'Best Seller', 68000, 27, N'Kg', 0, N'/Content/images/products/cunen.png')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/12/2022 3:09:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 5/12/2022 3:09:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 5/12/2022 3:09:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 5/12/2022 3:09:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 5/12/2022 3:09:38 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/12/2022 3:09:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
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
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_AspNetUsers] FOREIGN KEY([MaKH])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_AspNetUsers]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
USE [master]
GO
ALTER DATABASE [WebRauTNT] SET  READ_WRITE 
GO
