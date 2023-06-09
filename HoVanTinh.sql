USE [HoVanTinh]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[MetaDesc] [nvarchar](max) NOT NULL,
	[MetaKey] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configs]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Configs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Tilte] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[TypeLink] [nvarchar](max) NOT NULL,
	[TableId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[TypeMenu] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
	[Position] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[CreateBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Orders] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TopicId] [int] NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[PostType] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Metakey] [nvarchar](max) NOT NULL,
	[Metadesc] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Metakey] [nvarchar](max) NOT NULL,
	[Metadesc] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[CatId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Pricesale] [decimal](18, 2) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NULL,
	[Slug] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Addres] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NOT NULL,
	[Metadesc] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[MetaKey] [nvarchar](max) NOT NULL,
	[MetaDesc] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/13/2023 11:52:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NOT NULL,
	[CountError] [int] NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Roles] [nvarchar](max) NOT NULL,
	[Gender] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [MetaDesc], [MetaKey], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (36, N'Thời  nữ áo dài', N'thoi--nu-ao-dai', 36, 4, N'ao dai', N'áo dài', 1, CAST(N'2023-04-08T21:43:04.000' AS DateTime), 1, CAST(N'2023-04-10T23:52:08.483' AS DateTime), 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [MetaDesc], [MetaKey], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (39, N'Thời trang nam', N'thoi-trang-nam', 36, 5, N'va', N'sa', 1, CAST(N'2023-04-10T21:53:51.337' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [MetaDesc], [MetaKey], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (40, N'Thời trang nam', N'thoi-trang-nam', 36, 6, N'trang nam', N'trang nam', 1, CAST(N'2023-04-11T18:18:25.663' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [MetaDesc], [MetaKey], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (41, N'Thời trang nam3a', N'thoi-trang-nam3a', 36, 5, N'3a', N'3a', 1, CAST(N'2023-04-12T18:22:28.983' AS DateTime), NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (13, N'thoi--nu-ao-dai', N'category', 36)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (14, N'tin-tuc', N'topic', 1)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (25, N'lien-quan', N'supplier', 10)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (27, N'sang-sang', N'supplier', 12)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (29, N'ho-van-tinh', N'supplier', 13)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (30, N'thoi-trang-2', N'supplier', 14)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (31, N'thoi-trang-2', N'supplier', 15)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (32, N'thoi-trang-2', N'supplier', 16)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (36, N'lien-quan-33', N'supplier', 20)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (37, N'thoi-trang-nam', N'category', 39)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (38, N'thoi-trang-2', N'supplier', 21)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (39, N'thoi-van-tinh', N'supplier', 22)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (40, N'thoi-trang-nam', N'category', 40)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (41, N'ho-tinh-van-', N'supplier', 23)
INSERT [dbo].[Links] ([Id], [Slug], [TypeLink], [TableId]) VALUES (42, N'thoi-trang-nam3a', N'category', 41)
SET IDENTITY_INSERT [dbo].[Links] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (4, N'Thời trang nam', N'thoi-trang-nam', N'Thời trang nam', N'Thời trang nam', N'Thời trang nam', NULL, 39, 13, 2, CAST(1232.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-10T22:57:11.607' AS DateTime), 1, CAST(N'2023-04-12T17:04:38.477' AS DateTime), 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (5, N'Thời trang nam3', N'thoi-trang-nam3', N'Thời trang nam3', N'Thời trang nam3', N'Thời trang nam3', N'thoi-trang-nam3.jpg', 39, 15, 1, CAST(1232.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T01:09:49.603' AS DateTime), 1, CAST(N'2023-04-12T16:07:45.773' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (6, N'Thời trang nam', N'thoi-trang-nam', N'Thời trang nam', N'Thời trang nam', N'Thời trang nam', N'thoi-trang-nam.jpg', 39, 6, 2, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T01:33:11.453' AS DateTime), 1, CAST(N'2023-04-12T16:07:51.257' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (7, N'Thời Trang 2', N'thoi-trang-2', N'nu', N'nu', N'nu', NULL, 36, 15, 1, CAST(1232.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T01:36:41.123' AS DateTime), 1, CAST(N'2023-04-12T00:06:40.270' AS DateTime), 0)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (8, N'Thời trang nam113', NULL, N'Thời trang', N'Thời trang', N'Thời trang', N'HVT.jpg', 39, 13, 1, CAST(20000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, NULL, 1, CAST(N'2023-04-12T00:06:53.137' AS DateTime), 0)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (9, N'Thời trang nam tao', NULL, N'nam tao', N'nam tao', N'nam tao', N'System.Web.HttpPostedFileWrapper', 39, 13, 1, CAST(30000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), NULL, NULL, 1, CAST(N'2023-04-12T00:06:55.033' AS DateTime), 0)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (10, N'Thời Trang 2', NULL, N'AS', N'AS', N'AS', N'System.Web.HttpPostedFileWrapper', 36, 21, 1, CAST(-1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), NULL, NULL, 1, CAST(N'2023-04-12T00:07:41.123' AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (11, N'Thời trang nam the tai', N'thoi-trang-nam-the-tai', N' nam NAM', N' nam NAM', N' nam NAM', N'thoi-trang-nam-the-tai.jpg', 36, 15, 4, CAST(1.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T14:42:35.083' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (12, N'Thời trang nu', N'thoi-trang-nu', N' trang nu', N' trang nu', N' trang nu', N'thoi-trang-nu.jpg', 36, 13, 1, CAST(2.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T15:00:09.363' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (13, N'đepai', N'depai', N'ai', N'ai', N'ai', N'depai.jpg', 39, 13, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T15:59:08.247' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (14, N'van tình', N'van-tinh', N'Hồ Văn Tình', N' tình', N' tình', N'van-tinh.jpg', 39, 13, 1, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T16:06:48.927' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (15, N'Thời trang namzz', N'thoi-trang-namzz', N'namzz', N'namzz', N'namzz', N'thoi-trang-namzz.jpg', 36, 10, 3, CAST(3.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T16:09:12.433' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (16, N'sang', N'sang', N'sang', N'ang', N'ang', NULL, 36, 14, 1, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T16:10:15.013' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (17, N'Thời trang nu', N'thoi-trang-nu', N'assssssssss', N'sd', N'sd', NULL, 36, 10, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T16:34:43.667' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (18, N'Tình hồ', N'tinh-ho', N'tinh ho', N'tinh ho', N'tinh ho', N'tinh-ho.jpg', 36, 10, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T17:41:06.207' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (19, N'vay', N'vay', N'vay', N'vay', N'vay', N'vay.jpg', 36, 0, 1, CAST(2.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2023-04-11T19:37:35.960' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Detail], [Metakey], [Metadesc], [Img], [CatId], [SupplierId], [Number], [Price], [Pricesale], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (20, N'ao ao', N'name', N'nan', N'name', N'name', N'anh.jpg', 39, 2, 1, CAST(30.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (10, N'lien quân', N'lien-quan.jpg', N'0364663123', N'ten@gmail.com', N'Bình Định', N'lien-quan', N'nu', N'1', 1, CAST(N'2023-04-10T02:23:21.740' AS DateTime), 1, CAST(N'2023-04-11T19:06:14.977' AS DateTime), 0)
INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (13, N'Hồ Văn Tình', N'ho-van-tinh.jpg', N'0364663613', N'hovantinh36466@gmail.com', N'Bình Định', N'ho-van-tinh', N'Nam', N'1', 1, CAST(N'2023-04-10T13:26:53.897' AS DateTime), 1, CAST(N'2023-04-12T10:51:28.687' AS DateTime), 0)
INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (14, N'Thời Trang 2', N'thoi-trang-2.jpg', N'0364663613', N'hovantinh36466@gmail.com', N'bình định', N'thoi-trang-2', N'AD', N'AS', 1, CAST(N'2023-04-10T13:49:10.177' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (15, N'Thời Trang 2', N'thoi-trang-2.jpg', N'0364663613', N'hovantinh36466@gmail.com', N'bình định', N'thoi-trang-2', N'AD', N'AS', 1, CAST(N'2023-04-10T13:49:44.720' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (16, N'Thời Trang 2', N'thoi-trang-2.jpg', N'0364663613', N'hovantinh36466@gmail.com', N'bình định', N'thoi-trang-2', N'AD', N'AS', 1, CAST(N'2023-04-10T13:50:05.323' AS DateTime), 1, CAST(N'2023-04-11T01:35:39.707' AS DateTime), 0)
INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (21, N'Thời Trang 2', N'thoi-trang-2.jpg', N'0364663613', N'hovantinh36466@gmail.com', N'bình định', N'thoi-trang-2', N'AD', N'AS', 1, CAST(N'2023-04-11T01:35:48.680' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Suppliers] ([Id], [Name], [Img], [Phone], [Email], [Addres], [Slug], [MetaKey], [Metadesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (23, N'Hồ Tình Văn ', N'ho-tinh-van-.jpg', N'0364663613', N'hovantinh36466@gmail.com', N'Bình Định', N'ho-tinh-van-', N'Nam', N'1', 1, CAST(N'2023-04-12T00:33:54.197' AS DateTime), NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [MetaKey], [MetaDesc], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [Status]) VALUES (1, N'tin tức', N'tin-tuc', 0, 1, N'tin tuc', N'tin tuc', 1, CAST(N'2023-04-08T22:27:34.067' AS DateTime), 1, CAST(N'2023-04-11T19:11:52.143' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
