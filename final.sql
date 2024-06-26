USE [BDS]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[BaiVietID] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungID] [int] NULL,
	[TieuDe] [varchar](255) NOT NULL,
	[NoiDung] [text] NOT NULL,
	[AnhURL] [varchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__BaiViet__ED45388D6A67EC4A] PRIMARY KEY CLUSTERED 
(
	[BaiVietID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[BinhLuanID] [int] IDENTITY(1,1) NOT NULL,
	[BaiVietID] [int] NULL,
	[NguoiDungID] [int] NULL,
	[NoiDung] [text] NOT NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__BinhLuan__54F56E500BAA5E6D] PRIMARY KEY CLUSTERED 
(
	[BinhLuanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDauGiaTaiSan]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDauGiaTaiSan](
	[ChiTietID] [int] IDENTITY(1,1) NOT NULL,
	[TaiSanID] [int] NULL,
	[DanhMuc] [varchar](100) NOT NULL,
	[MoTa] [text] NULL,
	[GiaKhoiDiem] [decimal](10, 2) NOT NULL,
	[NgayDauGia] [datetime] NOT NULL,
	[DiaDiemDauGia] [varchar](255) NOT NULL,
 CONSTRAINT [PK__ChiTietD__B117E9EACB991EAA] PRIMARY KEY CLUSTERED 
(
	[ChiTietID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKyThongBao]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyThongBao](
	[DangKyID] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungID] [int] NULL,
	[TaiSanID] [int] NULL,
	[NgayDangKy] [datetime] NULL,
 CONSTRAINT [PK__DangKyTh__03CF2CBB3E8841A1] PRIMARY KEY CLUSTERED 
(
	[DangKyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DauGiaTaiSanThanhLy]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauGiaTaiSanThanhLy](
	[DauGiaID] [int] IDENTITY(1,1) NOT NULL,
	[TaiSanID] [int] NULL,
	[NgayDauGia] [datetime] NOT NULL,
	[DiaDiemDauGia] [varchar](255) NOT NULL,
 CONSTRAINT [PK__DauGiaTa__5668BEE0D6629651] PRIMARY KEY CLUSTERED 
(
	[DauGiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DauThau]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauThau](
	[DauThauID] [int] IDENTITY(1,1) NOT NULL,
	[TinhThanhPhoID] [int] NULL,
	[HuyenQuanID] [int] NULL,
	[MoTaDauThau] [text] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DauThauID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiemDauGia]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemDauGia](
	[DiaDiemID] [int] IDENTITY(1,1) NOT NULL,
	[TenDiaDiem] [varchar](100) NOT NULL,
	[DiaChi] [varchar](255) NOT NULL,
	[TinhThanhPhoID] [nchar](10) NULL,
	[Kinhdo] [int] NULL,
	[Vido] [int] NULL,
 CONSTRAINT [PK__DiaDiemD__FBBC26629A15ED06] PRIMARY KEY CLUSTERED 
(
	[DiaDiemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhQuyHoach]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhQuyHoach](
	[HinhAnhID] [int] IDENTITY(1,1) NOT NULL,
	[QuyHoachID] [int] NULL,
	[ImageURL] [varchar](255) NOT NULL,
	[KinhDoTopLeft] [decimal](9, 6) NOT NULL,
	[KinhDoTopRight] [decimal](9, 6) NULL,
	[VidoTopLeft] [decimal](9, 6) NULL,
	[VidoTopRight] [decimal](9, 6) NULL,
	[Zoom] [float] NOT NULL,
 CONSTRAINT [PK__HinhAnhQ__8EF32B7BDF1FD3D3] PRIMARY KEY CLUSTERED 
(
	[HinhAnhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoNguoiDung]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoNguoiDung](
	[HoSoID] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungID] [int] NULL,
	[HoTen] [varchar](100) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[DiaChi] [varchar](255) NULL,
	[AnhDaiDienURL] [varchar](255) NULL,
 CONSTRAINT [PK__HoSoNguo__A9F1AA18A02ACD46] PRIMARY KEY CLUSTERED 
(
	[HoSoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HuyenQuan]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuyenQuan](
	[HuyenQuanID] [int] IDENTITY(1,1) NOT NULL,
	[TenHuyenQuan] [varchar](100) NOT NULL,
	[TinhThanhPhoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HuyenQuanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuDauGia]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDauGia](
	[LichSuID] [int] IDENTITY(1,1) NOT NULL,
	[TaiSanID] [int] NULL,
	[NguoiDungID] [int] NULL,
	[SoTienDau] [decimal](10, 2) NOT NULL,
	[ThoiGianDau] [datetime] NOT NULL,
 CONSTRAINT [PK__LichSuDa__CD0C1E3B2383ACEC] PRIMARY KEY CLUSTERED 
(
	[LichSuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGiaoDich]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGiaoDich](
	[GiaoDichID] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungID] [int] NULL,
	[MoTa] [text] NOT NULL,
	[SoTien] [decimal](10, 2) NOT NULL,
	[NgayGiaoDich] [datetime] NOT NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__LichSuGi__D8D14B3192DBF545] PRIMARY KEY CLUSTERED 
(
	[GiaoDichID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[NguoiDungID] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [varchar](50) NOT NULL,
	[MatKhauHash] [varchar](255) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[VaiTro] [varchar](50) NOT NULL,
	[NgayDangKy] [datetime] NULL,
	[Sodienthoai] [nchar](10) NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__NguoiDun__C4BBA4DDCCD6E026] PRIMARY KEY CLUSTERED 
(
	[NguoiDungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__NguoiDun__57E5A81D4B9EAAF4] UNIQUE NONCLUSTERED 
(
	[TenNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__NguoiDun__A9D105340DB2CFCD] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyHoach]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyHoach](
	[QuyHoachID] [int] IDENTITY(1,1) NOT NULL,
	[HuyenQuanID] [int] NULL,
	[TenQuyHoach] [varchar](255) NOT NULL,
	[MoTa] [text] NULL,
 CONSTRAINT [PK__QuyHoach__283EDC453483178D] PRIMARY KEY CLUSTERED 
(
	[QuyHoachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiSanDauGia]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiSanDauGia](
	[TaiSanID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiSan] [varchar](100) NOT NULL,
	[MoTa] [text] NULL,
	[GiaKhoiDiem] [decimal](10, 2) NOT NULL,
	[NgayDauGia] [datetime] NOT NULL,
	[DiaDiemDauGia] [varchar](255) NOT NULL,
	[LoaiDauGia] [varchar](50) NOT NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__TaiSanDa__8995137BF5821968] PRIMARY KEY CLUSTERED 
(
	[TaiSanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[ThongBaoID] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungID] [int] NULL,
	[NoiDung] [text] NOT NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__ThongBao__6E51A53B8D02CA37] PRIMARY KEY CLUSTERED 
(
	[ThongBaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhThanhPho]    Script Date: 5/15/2024 4:36:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanhPho](
	[TinhThanhPhoID] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanhPho] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TinhThanhPhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT ('draft') FOR [TrangThai]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  DEFAULT ('visible') FOR [TrangThai]
GO
ALTER TABLE [dbo].[DangKyThongBao] ADD  CONSTRAINT [DF__DangKyTho__NgayD__75A278F5]  DEFAULT (getdate()) FOR [NgayDangKy]
GO
ALTER TABLE [dbo].[LichSuGiaoDich] ADD  CONSTRAINT [DF__LichSuGia__Trang__7A672E12]  DEFAULT ('pending') FOR [TrangThai]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF__NguoiDung__NgayD__44FF419A]  DEFAULT (getdate()) FOR [NgayDangKy]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF__NguoiDung__Trang__45F365D3]  DEFAULT ('active') FOR [TrangThai]
GO
ALTER TABLE [dbo].[TaiSanDauGia] ADD  CONSTRAINT [DF__TaiSanDau__Trang__5BE2A6F2]  DEFAULT ('upcoming') FOR [TrangThai]
GO
ALTER TABLE [dbo].[ThongBao] ADD  CONSTRAINT [DF__ThongBao__NgayTa__6FE99F9F]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThongBao] ADD  CONSTRAINT [DF__ThongBao__TrangT__70DDC3D8]  DEFAULT ('unread') FOR [TrangThai]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK__BaiViet__NguoiDu__5070F446] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK__BaiViet__NguoiDu__5070F446]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK__BinhLuan__BaiVie__571DF1D5] FOREIGN KEY([BaiVietID])
REFERENCES [dbo].[BaiViet] ([BaiVietID])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK__BinhLuan__BaiVie__571DF1D5]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK__BinhLuan__NguoiD__5812160E] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK__BinhLuan__NguoiD__5812160E]
GO
ALTER TABLE [dbo].[ChiTietDauGiaTaiSan]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDa__TaiSa__5FB337D6] FOREIGN KEY([TaiSanID])
REFERENCES [dbo].[TaiSanDauGia] ([TaiSanID])
GO
ALTER TABLE [dbo].[ChiTietDauGiaTaiSan] CHECK CONSTRAINT [FK__ChiTietDa__TaiSa__5FB337D6]
GO
ALTER TABLE [dbo].[DangKyThongBao]  WITH CHECK ADD  CONSTRAINT [FK__DangKyTho__Nguoi__76969D2E] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[DangKyThongBao] CHECK CONSTRAINT [FK__DangKyTho__Nguoi__76969D2E]
GO
ALTER TABLE [dbo].[DangKyThongBao]  WITH CHECK ADD  CONSTRAINT [FK__DangKyTho__TaiSa__778AC167] FOREIGN KEY([TaiSanID])
REFERENCES [dbo].[TaiSanDauGia] ([TaiSanID])
GO
ALTER TABLE [dbo].[DangKyThongBao] CHECK CONSTRAINT [FK__DangKyTho__TaiSa__778AC167]
GO
ALTER TABLE [dbo].[DauGiaTaiSanThanhLy]  WITH CHECK ADD  CONSTRAINT [FK__DauGiaTai__TaiSa__66603565] FOREIGN KEY([TaiSanID])
REFERENCES [dbo].[TaiSanDauGia] ([TaiSanID])
GO
ALTER TABLE [dbo].[DauGiaTaiSanThanhLy] CHECK CONSTRAINT [FK__DauGiaTai__TaiSa__66603565]
GO
ALTER TABLE [dbo].[DauThau]  WITH CHECK ADD FOREIGN KEY([HuyenQuanID])
REFERENCES [dbo].[HuyenQuan] ([HuyenQuanID])
GO
ALTER TABLE [dbo].[DauThau]  WITH CHECK ADD FOREIGN KEY([TinhThanhPhoID])
REFERENCES [dbo].[TinhThanhPho] ([TinhThanhPhoID])
GO
ALTER TABLE [dbo].[DiaDiemDauGia]  WITH CHECK ADD  CONSTRAINT [FK__DiaDiemDa__TinhT__5AEE82B9] FOREIGN KEY([Vido])
REFERENCES [dbo].[TinhThanhPho] ([TinhThanhPhoID])
GO
ALTER TABLE [dbo].[DiaDiemDauGia] CHECK CONSTRAINT [FK__DiaDiemDa__TinhT__5AEE82B9]
GO
ALTER TABLE [dbo].[HinhAnhQuyHoach]  WITH CHECK ADD  CONSTRAINT [FK__HinhAnhQu__QuyHo__3F466844] FOREIGN KEY([QuyHoachID])
REFERENCES [dbo].[QuyHoach] ([QuyHoachID])
GO
ALTER TABLE [dbo].[HinhAnhQuyHoach] CHECK CONSTRAINT [FK__HinhAnhQu__QuyHo__3F466844]
GO
ALTER TABLE [dbo].[HoSoNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK__HoSoNguoi__Nguoi__49C3F6B7] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[HoSoNguoiDung] CHECK CONSTRAINT [FK__HoSoNguoi__Nguoi__49C3F6B7]
GO
ALTER TABLE [dbo].[HuyenQuan]  WITH CHECK ADD FOREIGN KEY([TinhThanhPhoID])
REFERENCES [dbo].[TinhThanhPho] ([TinhThanhPhoID])
GO
ALTER TABLE [dbo].[LichSuDauGia]  WITH CHECK ADD  CONSTRAINT [FK__LichSuDau__Nguoi__6383C8BA] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[LichSuDauGia] CHECK CONSTRAINT [FK__LichSuDau__Nguoi__6383C8BA]
GO
ALTER TABLE [dbo].[LichSuDauGia]  WITH CHECK ADD  CONSTRAINT [FK__LichSuDau__TaiSa__628FA481] FOREIGN KEY([TaiSanID])
REFERENCES [dbo].[TaiSanDauGia] ([TaiSanID])
GO
ALTER TABLE [dbo].[LichSuDauGia] CHECK CONSTRAINT [FK__LichSuDau__TaiSa__628FA481]
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [FK__LichSuGia__Nguoi__7C4F7684] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [FK__LichSuGia__Nguoi__7C4F7684]
GO
ALTER TABLE [dbo].[QuyHoach]  WITH CHECK ADD FOREIGN KEY([HuyenQuanID])
REFERENCES [dbo].[HuyenQuan] ([HuyenQuanID])
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK__ThongBao__NguoiD__72C60C4A] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK__ThongBao__NguoiD__72C60C4A]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD CHECK  (([TrangThai]='deleted' OR [TrangThai]='draft' OR [TrangThai]='published'))
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD CHECK  (([TrangThai]='deleted' OR [TrangThai]='hidden' OR [TrangThai]='visible'))
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [CK__LichSuGia__Trang__7B5B524B] CHECK  (([TrangThai]='failed' OR [TrangThai]='pending' OR [TrangThai]='completed'))
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [CK__LichSuGia__Trang__7B5B524B]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [CK__NguoiDung__Trang__46E78A0C] CHECK  (([TrangThai]='banned' OR [TrangThai]='inactive' OR [TrangThai]='active'))
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [CK__NguoiDung__Trang__46E78A0C]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [CK__NguoiDung__VaiTr__440B1D61] CHECK  (([VaiTro]='moderator' OR [VaiTro]='user' OR [VaiTro]='admin'))
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [CK__NguoiDung__VaiTr__440B1D61]
GO
ALTER TABLE [dbo].[TaiSanDauGia]  WITH CHECK ADD  CONSTRAINT [CK__TaiSanDau__LoaiD__5AEE82B9] CHECK  (([LoaiDauGia]='Don vi tu nhan' OR [LoaiDauGia]='Ngan hang thanh ly' OR [LoaiDauGia]='Trung tam phat trien quy dat'))
GO
ALTER TABLE [dbo].[TaiSanDauGia] CHECK CONSTRAINT [CK__TaiSanDau__LoaiD__5AEE82B9]
GO
ALTER TABLE [dbo].[TaiSanDauGia]  WITH CHECK ADD  CONSTRAINT [CK__TaiSanDau__Trang__5CD6CB2B] CHECK  (([TrangThai]='completed' OR [TrangThai]='ongoing' OR [TrangThai]='upcoming'))
GO
ALTER TABLE [dbo].[TaiSanDauGia] CHECK CONSTRAINT [CK__TaiSanDau__Trang__5CD6CB2B]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [CK__ThongBao__TrangT__71D1E811] CHECK  (([TrangThai]='read' OR [TrangThai]='unread'))
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [CK__ThongBao__TrangT__71D1E811]
GO
