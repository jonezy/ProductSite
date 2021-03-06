USE [CapitalTimePieces]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/15/2011 18:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[Username] [nvarchar](500) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserID], [UserRoleID], [Email], [Username], [Password], [CreationDate], [IsActive]) VALUES (1, 1, N'chris@jonezy.org', N'jonezy', N'jonezy', CAST(0x00009F22009F65B8 AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [UserRoleID], [Email], [Username], [Password], [CreationDate], [IsActive]) VALUES (2, 1, N'siracusa@rogers.com', N'john', N'capitaltime', CAST(0x00009FA5012D63C9 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[ProductBrand]    Script Date: 12/15/2011 18:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBrand](
	[ProductBrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_ProductBrand] PRIMARY KEY CLUSTERED 
(
	[ProductBrandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductBrand] ON
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (4, N'hublot')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (5, N'rolex')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (6, N'breitling')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (7, N'mont blanc')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (10, N'cartier')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (11, N'patek philippe')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (12, N'audemars piguet')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (15, N'chanel')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (17, N'bell & ross')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (18, N'breguet')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (19, N'chopard')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (20, N'corum')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (21, N'dewitt')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (22, N'frank muller')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (23, N'graham')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (24, N'harry winston')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (25, N'iwc')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (26, N'jaeger lecoultre')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (28, N'omega')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (29, N'richard mille')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (30, N'roger dubuis')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (31, N'tag heuer')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (32, N'ulysse nardin')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (33, N'vacheron constantin')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (34, N'zenith')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (38, N'panerai')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (39, N'A.Lange & Sohne')
SET IDENTITY_INSERT [dbo].[ProductBrand] OFF
/****** Object:  Table [dbo].[ProductCondition]    Script Date: 12/15/2011 18:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCondition](
	[ProductConditionID] [int] IDENTITY(1,1) NOT NULL,
	[ConditionDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCondition] PRIMARY KEY CLUSTERED 
(
	[ProductConditionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductCondition] ON
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (1, N'BRAND NEW')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (2, N'PRE-OWNED')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (3, N'EXCELLENT PRE-OWNED')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (4, N'EXCELLENT')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (6, N'SEALED - BRAND NEW')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (7, N'PRE-OWNED. WATCH SHOWS SIGNS OF WEAR')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (8, N'PRE-OWNED IN EXCELLENT + CONDITION')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (9, N'NEW')
INSERT [dbo].[ProductCondition] ([ProductConditionID], [ConditionDescription]) VALUES (10, N'As-New Condition')
SET IDENTITY_INSERT [dbo].[ProductCondition] OFF
/****** Object:  Table [dbo].[ProductCollection]    Script Date: 12/15/2011 18:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCollection](
	[ProductCollectionID] [int] IDENTITY(1,1) NOT NULL,
	[ProductBrandID] [int] NOT NULL,
	[CollectionName] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_ProductCollection] PRIMARY KEY CLUSTERED 
(
	[ProductCollectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/15/2011 18:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[BrandID] [int] NOT NULL,
	[CollectionID] [int] NULL,
	[ModelNumber] [nvarchar](50) NULL,
	[SerialNumber] [nvarchar](150) NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[ProductName] [nvarchar](500) NOT NULL,
	[ModelName] [nvarchar](500) NOT NULL,
	[RetailPrice] [decimal](18, 2) NOT NULL,
	[WholesalePrice] [decimal](18, 2) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[CaseSize] [nvarchar](50) NULL,
	[CaseMaterial] [nvarchar](500) NULL,
	[Bezel] [nvarchar](500) NULL,
	[Crystal] [nvarchar](500) NULL,
	[DialColour] [nvarchar](500) NULL,
	[Movement] [nvarchar](500) NOT NULL,
	[Functions] [nvarchar](500) NULL,
	[Strap] [nvarchar](500) NULL,
	[WaterResistant] [nvarchar](50) NULL,
	[Condition] [int] NULL,
	[BoxPapers] [nvarchar](500) NULL,
	[Warranty] [nvarchar](500) NULL,
	[Created] [datetime] NOT NULL,
	[HotDeal] [bit] NULL,
	[NewArrival] [bit] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (1, 6, NULL, N'M4736212-B919-SS', N'WILL BE DISCLOSED TO BUYER', N'Male', N'BREITLING BENTLEY MIDNIGHT CARBON GMT LIMITED EDITION', N'BENTLEY GMT MIDNIGHT CARBON', CAST(11320.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'49 ', N'BLACK CARBON TREATED STAINLESS STEEL', N'BLACK CARBON TREATED STAINLESS STEEL - ROTATING', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK', N'AUTOMATIC - BREITLING CALIBER 47B - COSC - HIGH FREQUENCY (28,800 VIBRATIONS PER HR) - 38 JEWELS', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH - GMT', N'BREITLING RUBBER STRAP AND CARBON DEPLOYMENT BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F33014196E9 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (2, 5, NULL, N'116520 BKSO', N'2011 "V" SERIES', N'Male', N'ROLEX DAYTONA STAINLESS STEEL BLACK 116520 - BNIB!', N'DAYTONA - PERPETUAL COSMOGRAPH', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40MM ', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED (ENGRAVED)', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK', N'AUTOMATIC - 44 JEWELS', N'HOURS - MINUTES - SECONDS - CHRONOGRAPH - TACHYMETER', N'ROLEX STAINLESS STEEL OYSTERLOCK BRACELET WITH DEPLOYMENT CLASP', N'100M - 330FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA700AC19D1 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (3, 12, NULL, N'26176FO.OO.D101CR.02', N'WILL BE DISLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET BUMBLE BEE LIMITED EDITION AP OFFSHORE', N'"BUMBLE BEE" LIMITED EDITION OFFSHORE', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'FORGED CARBON', N'BLACK CERAMIC - FIXED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK - WAFFLED TEXTURE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK ALLIGATOR HORNBACK BONE TEXTURED STRAP (YELLOW CONTRAST STICHING) WITH TITANIUM DEPLOYMENT CLASP', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B0158270F AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (4, 12, NULL, N'26170ST.OO.D101CR.01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET OFFSHORE VOLCANO 26170ST.OO.D101CR.01', N'ROYAL OAK OFFSHORE "VOLCANO"', CAST(21800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK - WAFFLED TEXTURE WITH ORANGE HIGHLIGHTS AND FLANGE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK ALLIGATOR HORNBACK BONE TEXTERED STRAP (ORANGE CONTRAST STICHING) WITH STAINLESS STEEL DEPLOYMENT BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETSS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B0158E784 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (5, 12, NULL, N'15202OR.OO.0944OR.01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET ROYAL OAK 18K JUMBO JUBILEE ON BRACELET', N'ROYAL OAK', CAST(46600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'39MM ', N'18K YELLOW  GOLD', N'18K YELLOW GOLD - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'ANTHRACITE - HOBNAIL (WAFFLED)', N'AUTOMATIC (ULTRA THIN MOVEMENT)', N'HOURS - MINUTES - DATE', N'18K YELLOW GOLD WITH DEPLOYMENT BUCKLE', N'50M - 165FT', 3, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B01588CE8 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (6, 12, NULL, N'26062OR.OO.A002CA.01', N'LIMITED EDITION OF 600 - WILL BE DISCLOSED TO BUYER', N'Male', N'Audemars Piguet Royal Oak 18K Rose Gold Alinghi Limited', N'"TEAM ALINGHI" ROYAL OAK OFFSHORE ', CAST(61100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'18K ROSE GOLD', N'FORGED CARBON - FIXED WITH STAINLESS STEEL SCREWS', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK ', N'AUTOMATIC - AP CALIBRE 2326/2848', N'HOURS - MINUTES - SECONDS - DATE - FLYBACK CHRONOGRAPH - REGATTA COUNTDOWN ', N'AP BLACK RUBBER STRAP WITH 18K ROSE GOLD TANG BUCKLE', N'100M / 300FT', 2, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B01594E71 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (7, 12, NULL, N'26092CK.ZZ.D021CA.01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET ROYAL OAK 18K WHITE GOLD FULL DIAMONDS', N'ROYAL OAK OFFSHORE', CAST(96000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'37 MM', N'18K WHITE GOLD WITH DIAMONDS - TOTAL OF 323 TOP WESSELTON IF QUALITY DIAMONDS WEIGHING APPROXIMATELY 5.90 CARATS', N'18K WHITE GOLD WITH DIAMONDS - FIXED', N'SAPPHIRE', N'BLUE WAFFLE DESIGN - TEXTURED', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLUE RUBBER STRAP WITH DEPLOYMENT BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B01599F66 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (8, 12, NULL, N'25770ST.OO.D001IN.01', N'PLEASE REFER TO PHOTOS', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE 25770ST.OO.D001IN.01', N'ROYAL OAK OFFSHORE ', CAST(23300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 .5MM', N'STAINLESS STEEL', N'STAINLESS STEEL - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'WHITE - WAFFLED TEXTURE WITH SILVER SUBDIALS', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLUE LEATHER TEXTERED STRAP WITH STAINLESS STEEL DEPLOYMENT BUCKLE', N'50M / 165FT', 3, N'INNER BOX, OUTER BOX, AND BOOKLET AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B0159EBBE AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (9, 12, NULL, N'26290IO.OO.A001VE.01', N'LIMITED EDITION OF 1750 - WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE GRAND PRIX CARBON', N'"GRAND PRIX" ROYAL OAK OFFSHORE ', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'FORGED CARBON - BLACK CERAMIC & TITANIUM PUSHPIECES - BLACKENED TITANIUM CROWN - TITANIUM EXHIBITION CASE-BACK', N'BLACK CERAMIC - FIXED', N'SAPPHIRE', N'BLACK - RED', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK LEATHER-SUEDE STRAP WITH TITANIUM TANG BUCKLE', N'100M / 300FT', 3, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B015A3A94 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (10, 17, NULL, N'BR 01-92-SC', N'LIMITED EDITION OF 500 - WILL BE DISCLOSED TO BUYER', N'Male', N'BELL & ROSS COMPASS - LIMITED EDITION - PVD BR01-92-SC', N'COMPASS', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'46 MM', N'PVD-COATED STAINLESS STEEL', N'FIXED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK - ROTATING HOURS AND MINUTES DISCS', N'AUTOMATIC ', N'HOURS - MINUTES', N'BELL & ROSS BLACK RUBBER STRAP - BALLSITIC (NYLON/VELCRO) STRAP -  B&R PVD COATED STAINLESS STEEL TANG BUCKLE', N'YES', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR', CAST(0x00009F7B015A7DB6 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (23, 12, NULL, N'25940OK.OO.D002CA.01.A', N'WILL BE DISCLOSED TO BUYER', N'Male', N'Audemars Piguet Royal Oak Offshore RUBBERCLAD 18K ROSE GOLD - BNIB!!!', N'ROYAL OAK OFFSHORE ', CAST(55500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'18K ROSE GOLD', N'BLACK RUBBER - FIXED WITH STAINLESS STEEL SCREWS', N'ANTI-REFLECTIVE SAPPHIRE', N'DARK GRAY - WAFFLED TEXTURE WITH BLACK HIGHLIGHTS', N'AUTOMATIC - AP CALIBRE 2226', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK RUBBER STRAP WITH 18K ROSE GOLD DEPLOYMENT BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, BOOKLET. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B01650C6A AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (24, 38, NULL, N'PAM 104', N'LATEST SERIES - WILL BE DISCLOSED TO BUYER.', N'Male', N'PANERAI PAM 104 LUMINOR MARINA STAINLESS STEEL AUTOMATIC LATEST N SERIES PAM104', N'LUMINOR MARINA', CAST(7000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'FIXED STAINLESS STEEL', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK', N'AUTOMATIC - CoSC CERTIFIED', N'HOURS - MINUTES - SECONDS - DATE', N'PANERAI BLAK LEATHER STRAP & PANERAI BLACK RUBBER DIVING STRAP WITH DEPLOYMENT BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS, CERTIFICATES. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7B016456B1 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (25, 4, NULL, N'703.ZM.1123.NR.FMO10', N'LIMITED EDITION OF 500 - WILL BE DISCLOSED TO BUYER.', N'Male', N'HUBLOT BIG BANG F1 KING POWER ZIRCONIUM TITANIUM 48MM 703.ZM.1123.NR.FMO10', N'BIG BANG "KING POWER" F1', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'48MM', N'ZIRCONIUM & TITANIUM', N'FIXED - ZIRCONIUM & CERAMIC', N'SAPPHIRE', N'BLACK - RED ACCENTS', N'AUTOMATIC - HUBLOT CALIBRE HUB 4100', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'HUBLOT BLACK RUBBER/NOMEX STRAP WITH DEPLOYMENT BUCKLE', N'100M / 330FT', 3, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE.', N'1 Year Service Warranty covering any mechanical deffects arising as a result of normal wear and tear.', CAST(0x00009F7F012CC166 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (26, 19, NULL, N'168331-3002', N'PLEASE REFER TO PHOTOS', N'Male', N'CHOPARD MILLE MIGLIA CHRONO 40MM - 168331-3002', N'MILLE MIGLIA ', CAST(4310.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER / PEARLISH', N'AUTOMATIC  ', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'CHOPARD BLACK RUBBER STRAP - CHOPARD TANG BUCKLE ', N'50M / 165FT', 3, N'INNER BOX, OUTER BOX, PAPERS', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7F012D9B2D AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (27, 5, NULL, N'116518', N'WILL BE DISCLOSED TO BUYER', N'Male', N'ROLEX DAYTONA 18K YELLOW GOLD BLUE FACE 116518 - LNIB', N'DAYTONA', CAST(23700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40MM ', N'18K YELLOW GOLD', N'18K YELLOW GOLD - INTEGRATED (ENGRAVED)', N'ANTI-REFLECTIVE SAPPHIRE', N'BLUE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - CHRONOGRAPH', N'BLACK LEATHER STRAP WITH 18K YELLOW GOLD DEPLOYMENT BUCKLE', N'100 M - 330FT', 3, N'INNER BOX, OUTER BOX, CARD, AND ALL BOOKLETS.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F7F012F3A80 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (28, 6, NULL, N'LIMITED SERIES OF 2,000 WORLDWIDE', N'WILL BE DISCLOSED TO BUYER.', N'Male', N'BREITLING AVENGER SEAWOLF BLACKSTEEL CHRONO LIMITED EDITION OF 2000 - BNIB!!!', N'AVENGER SEAWOLF', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'45.4MM ', N'BLACK STEEL', N'UNIDIRECTIONAL ROTATING BEZEL', N'ANTI-REFLECTIVE SAPPHIRE', N'VOLCANO BLACK', N'BREITLING CALIBER 73, THERMO COMPENSATED SUPER QUARTZ OFFICIALLY CHRONOMETER CERTIFIED BY THE COSC.', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'BLACK RUBBER', N'1,000M / 3,300FT', 1, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 Year Service Warranty covering any mechanical deffects arising as a result of normal wear and tear.', CAST(0x00009F7F013402DB AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (30, 10, NULL, N'W20073X8', N'WILL BE DISCLOSED TO BUYER', N'Male', N'CARTIER SANTOS 100 XL STAINLESS STEEL - W20073X8 - BNIB', N'SANTOS 100 XL', CAST(6700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'38MM ', N'STAINLESS STEEL', N'STAINLESS STEEL - SCREWED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER OPALINE', N'AUTOMATIC - CALIBRE 049', N'HOURS - MINUTES - SECONDS', N'BLACK LEATHER STRAP WITH DEPLOYMENT BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, AND MANUALS. ', N'1 Year Service Warranty covering any mechanical defects arising as a result of normal wear and tear.', CAST(0x00009F7F01356CA4 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (31, 17, NULL, N'AVIATION BR 03-92', N'WILL BE DISCLOSED TO BUYER.', N'Male', N'BELL & ROSS AVIATION BR 03-92 PHANTOM - BNIB!', N'PHANTOM', CAST(4000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'42MM', N'STEEL - BLACK CARBON COATED', N'FIXED', N'SCRATCH-RESISTANT SAPPHIRE', N'BLACK', N'AUTOMATIC - 21 JEWEL CALIBER ETA2892 MECHANICAL - 42 HR POWER RESERVE', N'HOURS - MINUTES - SECONDS - DATE', N'OEM BLACK VELCRO STRAP - BLACK RUBBER SPORTS STRAP - BLACK CARBON COATED STEEL TANG BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, MANUALS, CERTIFICATES. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F800125F143 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (33, 17, NULL, N'BR01-92-CARBON ', N'WILL BE DISCLOSED TO BUYER', N'Male', N'BELL & ROSS BR 01-92 AVIATION BLACK DIAL AUTOMATIC CARBON BR-01-92', N'AVIATION CARBON', CAST(4000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'46 MM', N'CARBON POWER COATED STAINLESS STEEL', N'CARBON POWER COATED STAINLESS STEEL - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK - RED ACCENTS', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS', N'B&R BLACK RUBBER STRAP - BALLSITIC STRAP -  TANG BUCKLE ', N'100M / 330FT', 2, N'INNER BOX AND OUTER BOX (PICTURED)', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F800126BB8E AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (34, 25, NULL, N'IW 3767-01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'IWC AQUATIMER AUTOMATIC CHRONOGRAPH STAINLESS STEEL BRACELET IW 3767-01 - LNIB!!', N'AQUATIMER', CAST(6600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM ', N'STAINLESS STEEL', N'STAINLESS STEEL - UNI DIRECTIONAL', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK WITH SILVER SUB-DIALS', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'IWC STAINLESS STEEL BRACELET WITH IWC DEPLOYMENT BUCKLE', N'120 M - 360 FT', 4, N'INNER BOX AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F800128BAEE AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (35, 25, NULL, N'IW 3764-04', N'LIMITED EDITION OF 1,000 - WILL BE DISCLOSED TO BUYER', N'Male', N'IWC DA VINCI CHRONO FLYBACK LAUREUS LIMITED EDITION 3764-04 - BNIB!', N'DA VINCI LAUREUS', CAST(14200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'51 MM  X  43 MM ', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'ANTI-REFLECTIVE SAPPHIRE', N'BLUE WITH SILVER SUB-DIALS', N'AUTOMATIC - 68 HRS POWER RESERVE', N'HOURS - MINUTES - SECONDS - DATE - FLYBACK CHRONOGRAPH', N'IWC BLUE ALLIGATOR STRAP WITH IWC STAINLESS STEEL DEPLOYMENT BUCKLE', N'30 M - 100 FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F800129AA74 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (36, 38, NULL, N'PAM 92', N'LIMITED EDITION OF 500 - ''G'' SERIES', N'Male', N'PANERAI LUMINOR PAM 92 "ARKTOS" LIMITED EDITION - PAM92', N'LUMINOR "ARKTOS"', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK  ', N'AUTOMATIC - COSC CERTIFIED', N'HOURS - MINUTES - SECONDS - DATE', N'PANERAI BLACK RUBBER STRAP & PANERAI BLACK VELCRO DIVERS STRAP - DEPLOYMENT BUCKLE', N'300M / 1,000FT', 3, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F80012BE25F AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (37, 5, NULL, N'116618 BKSO', N'WILL BE DISCLOSED TO BUYER', N'Male', N'ROLEX SUBMARINER 18K YELLOW GOLD CERAMIC BEZEL 116618', N'SUBMARINER', CAST(31300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40MM ', N'18K YELLOW GOLD', N'CERAMIC - BLACK - UNIDIRECTIONAL', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK - WAFFLED TEXTURE', N'AUTOMATIC - CHRONOMETER CERTIFIED', N'HOURS - MINUTES - SECONDS - DATE', N'ROLEX POLISHED & BRUSHED 18K YELLOW GOLD OYSTER LOCK BRACELET WITH DEPLOYMENT BUCKLE', N'300 M / 1,000 FT', 1, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F80012CFB99 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (38, 12, NULL, N'26290RO.OO.A001VE.01', N'LIMITED EDITION OF 650 - FACTORY SEAL', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE GRAND PRIX ROSE GOLD LIMITED EDITION SEALED!!', N'"GRAND PRIX" ROYAL OAK OFFSHORE ', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'18K ROSE GOLD - BLACK CERAMIC & ROSE GOLD PUSHPIECES - ROSE GOLD CROWN - ROSE GOLD EXHIBITION CASE-BACK', N'FORGED CARBON & BLACK CERAMIC - FIXED', N'SAPPHIRE', N'BLACK ', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK LEATHER & SUEDE STRAP WITH 18K ROSE GOLD TANG BUCKLE', N'100M / 300FT', 6, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F80013024AD AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (39, 12, NULL, N'n/a', N'PLEASE REFER TO PHOTOS', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE ORANGE - COLLECTIBLE', N'ROYAL OAK OFFSHORE ', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'ORANGE - WAFFLED TEXTURE WITH BLACK HIGHLIGHTS', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP ORANGE LEATHER TEXTERED STRAP WITH TANG BUCKLE', N'100M / 300FT', 3, N'INNER BOX, OUTER BOX, AND BOOKLET AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F800130E26F AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (40, 12, NULL, N'25940SK.OO.D002CA.01', N'UPON REQUEST', N'Male', N'AUDEMARS PIGUET ROYAL OFFSHORE RUBBERCLAD - BNIB!!!', N'ROYAL OFFSHORE RUBBERCLAD', CAST(25000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'RUBBER - SCREWED', N'SAPPHIRE', N'BLACK TEXTURED', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'BLACK RUBBER WITH DEPLOYMENT BUCKLE', N'100M / 330FT', 1, N'100% COMPLETE - INNER BOX, OUTER BOX, MANUALS', N'1 Year Service Warranty covering any mechanical deffects arising as a result of normal wear and tear.', CAST(0x00009F800131B68E AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (42, 10, NULL, N'W69009Z3', N'WILL BE DISCLOSED TO BUYER.', N'Male', N'CARTIER BALLON BLEU LARGE 2 TONE 18K ROSE GOLD W69009Z3', N'BALLON BLEU', CAST(9500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'42MM ', N'STAINLESS STEEL & 18K ROSE GOLD', N'INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE', N'STAINLESS STEEL & 18K YELLOW GOLD WITH DEPLOYMENT BUCKLE', N'30M / 100FT', 1, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 Year Service Warranty covering any mechanical deffects arising as a result of normal wear and tear.', CAST(0x00009F80013606B8 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (43, 10, NULL, N'W62053V3', N'WILL BE DISCLOSED TO BUYER', N'Male', N'CARTIER ROADSTER LADIES BLUE DIAL STAINLESS STEEL - W62053V3 - BRAND NEW IN BOX!', N'ROADSTER', CAST(4825.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'36.5 MM X 30.5 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - FIXED', N'SCRATCH RESISTANT SAPPHIRE', N'BLUE', N'QUARTZ', N'HOURS - MINUTES - DATE', N'STAINLESS STEEL BRACELET WITH DEPLOYMENT CLASP', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F800136B5D0 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (44, 10, NULL, N'W20090X8', N'WILL BE DISCLOSED TO BUYER', N'Male', N'CARTIER SANTOS 100 XL CHRONOGRAPH - W20090X8 CHRONO', N'SANTOS 100 XL CHRONOGRAPH', CAST(8800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'42MM', N'STAINLESS STEEL', N'INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER OPALINE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'BLACK LEATHER STRAP WITH DEPLOYMENT BUCKLE', N'100M / 330FT', 1, N'100% COMPLETE WITH INNER BOX, OUTER BOX, MANUALS (AS IF PURCHASED FROM AUTHORIZED DEALER) ', N'1 Year Service Warranty covering any mechanical defects arising as a result of normal wear and tear.', CAST(0x00009F800137641B AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (45, 4, NULL, N'301.PB.131.RX', N'WILL BE DISCLOSED TO BUYER', N'Male', N'HUBLOT BIG BANG 44M 18K ROSE GOLD CERAMIC 301.PB.131.RX', N'BIG BANG', CAST(26900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'18K ROSE GOLD', N'FIXED - CERAMIC', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK CARBON FIBER WITH GOLD ACCENTS', N'AUTOMATIC - MECHANICAL', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'RUBBER WITH 18K ROSE GOLD DEPLOYMENT BUCKLE', N'100M / 330FT', 8, N'INNER BOX, OUTER BOX, MANUAL (AS PICTURED)', N'1 Year Service Warranty covering any mechanical defects arising as a result of normal wear and tear.', CAST(0x00009F8001384F14 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (46, 38, NULL, N'PAM 320 - LATEST SERIES', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PANERAI LUMINOR 1950 GMT PAM 320 3 DAYS PAM320 44MM LATEST SERIES - NIB!!', N'LUMINOR 1950 GMT - 3 DAYS', CAST(9900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'INTEGRATED', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK SANDWICH DIAL - LUMINOUS DIALS & NUMBERS', N'AUTOMATIC (PANERAI''S NEW IN-HOUSE P.9001 MOVEMENT', N'HOURS - MINUTES - SECONDS - DATE - GMT', N'2 PANERAI STRAPS - 1 BROWN ALLIGATOR & 1 RUBBER', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 Year Service Warranty covering any mechanical defects arising as a result of normal wear and tear.', CAST(0x00009F81006247A5 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (47, 38, NULL, N'PAM 025', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PANERAI PAM 25 LUMINOR SUBMERSIBLE TITANIUM PAM25 LATEST SERIES', N'LUMINOR SUBMERSIBLE', CAST(8000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'TITANIUM', N'PROFESSIONAL UNI-DIRECTIONAL TITANIUM', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK - HOBNAIL/WAFFLE TEXTURED', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE', N'PANERAI BLACK VELCRO STRAP & PANERAI BLACK RUBBER SPORTS STRAP WITH DEPLOYMENT BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS, CERTIFICATES. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F810062E031 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (48, 38, NULL, N'PAM 177', N'LATEST SERIES - WILL BE DISCLOSED TO BUYER.', N'Male', N'PANERAI PAM 177 LUMINOR MARINA TITANIUM SANDWICH DIAL PAM177 - LATEST SERIES!', N'LUMINOR MARINA', CAST(6900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'TITANIUM - EXHIBITION CASE BACK', N'TITANIUM', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK - SANDWICH DIAL', N'MANUAL WIND - CoSC CERTIFIED', N'HOURS - MINUTES - SECONDS - DATE', N'PANERAI BROWN ALLIGATOR STRAP & PANERAI BLACK RUBBER STRAP - ''PRE-VENDOME'' TANG BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS, CERTIFICATES. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F8100639C5F AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (49, 38, NULL, N'PAM 231', N'''K'' SERIES - WILL BE DISCLOSED TO BUYER', N'Male', N'PANERAI PAM 231 RADIOMIR BASE 18K ROSE GOLD 45MM PAM231', N'RADIOMIR BASE', CAST(17100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'45 MM ', N'18K ROSE GOLD', N'18K ROSE GOLD - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK - SANDWICH', N'MECHANICAL', N'HOURS - MINUTES', N'PANERAI BROWN ALLIGATOR STRAP WITH 18K ROSE GOLD BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F81006467F8 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (50, 11, NULL, N'5119 R', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PATEK PHILIPPE 5119 R CALATRAVA 18K ROSE GOLD - 5119R', N'CALATRAVA', CAST(20500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'36 MM', N'18K ROSE GOLD', N'INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'WHITE', N'MANUAL WINDING', N'HOURS - MINUTES - SECONDS', N'PATEK PHILIPPE BLACK LEATHER STRAP WITH 18K ROSE GOLD TANG BUCKLE', N'30M / 100FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F830071A01A AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (51, 11, NULL, N'5127 R', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PATEK PHILIPPE 5127 R CALATRAVA 18K ROSE GOLD - 5127R', N'CALATRAVA', CAST(25600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'37 MM', N'18K ROSE GOLD', N'INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'WHITE', N'AUTOMATIC - CALIBER 324 S C', N'HOURS - MINUTES - SECONDS - DATE', N'PATEK PHILIPPE BLACK ALLIGATOR STRAP WITH 18K ROSE GOLD TANG BUCKLE', N'30M / 100FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F8300726F80 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (52, 11, NULL, N'5167 R', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PATEK PHILIPPE 5167 R AQUANAUT 18K ROSE GOLD - 5167 R', N'AQUANAUT', CAST(32900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40MM ', N'18K ROSE GOLD', N'INTEGRATED - BRUSHED 18K ROSE GOLD', N'SCRATCH RESISTANT SAPPHIRE', N'CHOCOLATE BROWN - EMBOSSED', N'AUTOMATIC - CALIBER 324 S C', N'HOURS - MINUTES - SECONDS - DATE', N'PATEK PHILIPPE BROWN RUBBER STRAP WITH 18K ROSE GOLD DEPLOYMENT BUCKLE', N'120M / 360FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F8300733536 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (53, 11, NULL, N'5296 G', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PATEK PHILIPPE 5296 G CALATRAVA 18K WHITE GOLD - 5296G', N'CALATRAVA', CAST(25600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'38MM ', N'18K WHITE GOLD', N'INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER', N'AUTOMATIC - PATEK PHILIPPE CALIBER 324 S C', N'HOURS - MINUTES - SECONDS - DATE', N'PATEK PHILIPPE BLUE LEATHER STRAP WITH 18K WHITE GOLD TANG BUCKLE', N'30M / 100FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F830073CA55 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (54, 11, NULL, N'5980 R ', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PATEK PHILIPPE NAUTILUS 5980R 18K ROSE GOLD CHRO 5980 R', N'NAUTILUS', CAST(61000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'43 MM', N'18K ROSE GOLD', N'18K ROSE GOLD - BRUSHED', N'SCRATCH RESISTANT SAPPHIRE', N'SHADES OF BROWN ', N'SELF-WINDING - PATEK PHILIPPE CALIBER CH 28-520  C (28,800VPH, 35 JEWELS, GYROMAX BALANCE WHEEL, 327 PARTS)', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'PATEK PHILIPPE BROWN ALLIGATOR STRAP WITH 18K ROSE GOLD DEPLOYMENT BUCKLE', N'120M / 400FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F8300746D67 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (55, 11, NULL, N'5130 G', N'WILL BE DISCLOSED TO BUYER', N'Male', N'PATEK PHILIPPE WORLD TIME 5130 G 18K WHITE GOLD 5130G', N'WORLD TIME', CAST(41800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'39.5 MM', N'18K WHITE GOLD', N'INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER', N'AUTOMATIC - PATEK PHILIPPE CALIBER 240 HU (33 JEWELS, 239 PARTS, 21,600VPH)', N'HOURS - MINUTES - SECONDS - WORLD TIME', N'PATEK PHILIPPE BLUE LEATHER STRAP WITH 18K WHITE GOLD DEPLOYMENT BUCKLE', N'30M / 100FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F8300750953 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (56, 38, NULL, N'PAM 321', N'JUST RELEASED - WILL BE DISCLOSED TO BUYER', N'Male', N'PANERAI PAM 321 LUMINOR MARINA 1950 3 DAYS PAM321 BNIB!', N'LUMINOR MARINA 1950 3 DAYS', CAST(9900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK SANDWICH DIAL ', N'AUTOMATIC - NEW IN HOUSE PAMERAI P.9002 CALIBRE', N'HOURS - MINUTES - SECONDS - DATE - GMT - POWER RESERVE', N'PANERAI BLACK LEATHER STRAP & PANERAI BLACK RUBBER STRAP - TANG BUCKLE', N'300M / 1,000FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F84013F05FE AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (57, 38, NULL, N'PAM 346', N'''N'' SERIES - WILL BE DISCLOSED TO BUYER', N'Male', N'PANERAI PAM 346 RADIOMIR TITANIUM 8 DAYS PAM346 - BNIB', N'RADIOMIR BASE', CAST(14700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'45 MM', N'TITANIUM', N'TITANIUM - INTEGRATED ', N'SCRATCH RESISTANT SAPPHIRE', N'TOBACCO BROWN SANDWICH DIAL', N'MANUAL WINDING MECHANICAL - P.2002/9 IN-HOUSE MOVEMENT, 21 JEWELS, 8-DAYS POWER RESERVE, 3 SPRING BARRELS, 28,800 ALT/HR, GLUCYDUR BALANCE.', N'HOURS - MINUTES - SECONDS - DATE - POWER RESERVE INDICATOR (BACK)', N'PANERAI BROWN ALLIGATOR STRAP - TANG BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F84013FBC03 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (58, 38, NULL, N'PAM 369', N'LATEST ''N'' SERIES - WILL BE DISCLOSED TO BUYER', N'Male', N'PANERAI PAM 369 RADIOMIR AUTOMATIC CHRONO 42MM STAINLESS STEEL PAM369 - BNIB!!!', N'RADIOMIR', CAST(7600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'42MM', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK', N'AUTOMATIC - CoSC CERTIFIED', N'HOURS - MINUTES - SECONDS - CHRONOGRAPH', N'PANERAI BLACK STRAP WITH WHITE STICHING - STAINLESS STEEL TANG BUCKLE', N'100M / 330FT', 1, N'BRAND NEW.

Box/Papers:

INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F84014066FF AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (59, 38, NULL, N'PAM 292 - LATEST ''N'' SERIES', N'WILL BE DISCLOSED TO BUYER.', N'Male', N'PANERAI RADIOMIR PAM 292 BLACK SEAL PAM292 LATEST SERIES BRAND NEW IN BOX!', N'RADIOMIR BLACK SEAL', CAST(9200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'45 MM', N'CERAMIC', N'CERAMIC - INTEGRATED ', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK SANDWICH DIAL - LUMINOUS DIALS & NUMBERS', N'AUTOMATIC ', N'HOURS - MINUTES - SECONDS', N'BLACK LEATHER & BLACK PVD TANG BUCKLE', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F8401412398 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (60, 10, NULL, N'LIMITED EDITION - W301980M', N'WILL BE DISCLOSED TO BUYER.', N'Male', N'CARTIER PASHA SEATIMER 18K ROSE GOLD FACTORY DIAMONDS', N'PASHA SEA TIMER', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'42.5MM ', N'18K ROSE GOLD', N'UNIDIRECTIONAL ROTATING WITH DIAMONDS', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK', N'AUTOMATIC CALIBRE 8630', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'18K ROSE GOLD WITH FULL DIAMONDS AND RUBBER INSERTS. CLASP IS ALSO 18K ROSE GOLD WITH TRIPLE SAFETY DEPLOYMENT', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS, DVD. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 Year Service Warranty covering any mechanical deffects arising as a result of normal wear and tear.', CAST(0x00009F84014452B9 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (61, 5, NULL, N'16622', N'WILL BE DISCLOSED TO BUYER', N'Male', N'ROLEX YACHT MASTER STAINLESS STEEL & PLATINUM - 16622', N'YACHT-MASTER', CAST(11200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40MM', N'STAINLESS STEEL', N'PLATINUM - BI DIRECTIONAL', N'ANTI-REFLECTIVE SAPPHIRE', N'WHITE', N'AUTOMATIC - CHRONOMETER CERTIFIED', N'HOURS - MINUTES - SECONDS - DATE', N'ROLEX STAINLESS STEEL OYSTER BRACELET WITH DEPLOYMENT BUCKLE.', N'100 M / 330 FT', 1, N'INNER BOX, OUTER BOX, MANUALS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA3005C4DFE AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (62, 38, NULL, N'PAM 305', N'WILL BE DISCLOSED TO BUYER.', N'Male', N'PANERAI PAM305 1950 LUMINOR SUBMERSIBLE PAM 305 - BNIB', N'1950 LUMINOR 3 DAYS SUBMERSIBLE', CAST(10300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'47MM', N'TITANIUM', N'FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK WITH STAINLESS STEEL LUMINOUS SKELETON HR/MINS HANDS.', N'PANERAI "IN HOUSE" AUTOMATIC P.9000 MOVEMENT', N'HOURS - MINUTES - SECONDS - DATE', N'PANERAI BLACK RUBBER STRAP (NEW STYLE) & BLACK KEVLAR STRAP WITH TITANIUM PRE-V TANG BUCKLE (NEW QUICK STRAP CHANGING SYSTEM)', N'100M / 330FT', 1, N'INNER BOX, OUTER BOX, MANUALS, CERTIFICATES. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA3005D1CE8 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (63, 25, NULL, N'5004-01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'IWC CLASSIC BIG PILOT 5004 7 DAY POWER RESERVE IW500401', N'BIG PILOT', CAST(14300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'46.2MM', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK', N'AUTOMATIC - CALIBRE 51110 (21,600VPH, 44 JEWELS, PELLATON WINDING SYSTEM)', N'HOURS - MINUTES - SECONDS - DATE - 7 DAY POWER RESERVE', N'BLACK LEATHER WITH DEPLOYMENT BUCKLE', N'60 M - 200FT', 9, N'INNER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA3005EDE2A AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (64, 20, NULL, N'947 931 04 0371 AN12', N'WILL BE DISCLOSED TO BUYER', N'Male', N'CORUM ADMIRAL''S CUP COMPETITION 48MM TITANIUM 947 931 04 0371 AN12 - LNIB!!!', N'ADMIRAL''S CLUB COMPETITION 48', CAST(7700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'48MM', N'TITANIUM', N'INTEGRATED', N'SCRATCH-RESISTANT SAPPHIRE', N'DARK BLUE', N'MANUAL WIND', N'HOURS - MINUTES - SECONDS - DATE', N'CORUM RUBBER STRAP & TITANIUM TANG BUCKLE', N'300M / 1,000FT', 3, N'100% COMPLETE. INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA3005F91BA AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (65, 6, NULL, N'K2536212/g555-755p', N'WILL BE DISCLOSED TO BUYER', N'Male', N'BREITLING FOR BENTLEY MOTORS 18K ROSE GOLD LIMITED EDITION K2536212/G555-755P', N'BENTLEY', CAST(28580.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'47.8MM', N'18K ROSE GOLD', N'18K ROSE GOLD', N'SCRATCH RESISTANT SAPPHIRE', N'WHITE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'BREITLING BROWN LEATHER STRAP AND 18K ROSE GOLD TANG BUCKLE', N'100M / 330FT', 3, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA3006035AF AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (66, 12, NULL, N'26290RO.OO.A001VE.01', N'LIMITED EDITION OF 257', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE BARICHELLO III 18K ROSE GOLD LIMITED EDITION', N'"RUBENS BARICHELLO III" ROYAL OAK OFFSHORE (NEW GRAND PRIX RECORD)', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'18K ROSE GOLD & TITANIUM - TITANIUM CROWN - ROSE GOLD & TITANIUM CASE-BACK', N'FORGED CARBON & BLACK CERAMIC - FIXED', N'SAPPHIRE', N'RED WITH WHITE SUB-DIALS', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH - TACHYMETRE', N'AP BLACK LEATHER STRAP WITH RED STICHING NA D18K ROSE GOLDDEPLOYMENT BUCKLE', N'100M / 300FT', 3, N'BOX ONLY', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA30060F446 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (67, 10, NULL, N'W3109255', N'WILL BE DISCLOSED TO BUYER', N'Male', N'CARTIER PASHA NIGHT & DAY STAINLESS W3109255 NEW MODEL', N'PASHA NIGHT & DAY', CAST(8950.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'42 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED', N'SCRATCH RESISTANT SAPPHIRE', N'SILVER - GUILLOCHE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - NIGHT/DAY INDICATOR', N'CARTIER ALLIGATOR STRAP & HIDDEN DEPLOYMENT CLASP', N'30M / 100FT', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA30061C356 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (68, 38, NULL, N'PAM 371', N'SPECIAL EDITION - LIMITED TO 500 PIECES', N'Male', N'PANERAI PAM 371 GMT REGATTA 47MM SUBMERSIBLE PAM371 - LIMITED EDITION OF 500!', N'LUMINOR 1950 SUBMERSIBLE 3-DAYS GMT', CAST(12900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'47 MM', N'TITANIUM - EXHIBITION CASEBACK', N'TITANIUM - UNI DIRECTIONAL PROFESSIONAL DIVERS BEZEL', N'SCRATCH RESISTANT SAPPHIRE', N'BLUE', N'AUTOMATIC  IN-HOUSE P.9000 CALIBRE MOVEMENT - CHRONOMETER CERTIFIED', N'HOURS - MINUTES - SECONDS - DATE - GMT', N'PANERAI NEW STYLE BLACK RUBBER STRAP - BLACK PANERAI KEVLAR STRAP - PANERAI PRE-VENDOME TANG BUCKLE', N'300M / 1,000FT - 30 BARS', 1, N'SHIPPING BOX, INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA300629608 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (69, 12, NULL, N'25863TI.OO.A001CU.01', N'Will be disclosed to buyer', N'Male', N'Audemars Piguet Royal Oak Offshore T3 Watch #25863TI.OO.A001CU.01', N'Royal Oak Offshore T3 ', CAST(44900.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'57mm', N'Titanium', N'Titanium', N'Sapphire Crystal', N'Black', N'Self winding', N'Time, full function chronograph, date indication', N'Black leather calf skin strap with white stitching with titanium T3 buckle ', N'100m / 300ft', 10, N'Complete with everything including dvd''s.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009FA5012EA8C9 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (70, 17, NULL, N'asdf', N'asdf', N'Male', N'adsf', N'asdf', CAST(1000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'adsf', N'asdf', N'asdf', N'asdf', 3, N'sadfasdf', N'asdfasdf', CAST(0x00009FAA014DCB1E AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (71, 23, NULL, N'asdf', N'asdf', N'Male', N'sdfasdf', N'asdf', CAST(50000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', N'asdf', 1, N'asdf', N'asdf', CAST(0x00009FAA014EF7D1 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[ProductImage]    Script Date: 12/15/2011 18:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Path] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (7, 1, N'~/Uploads/Products/1/BreitlingBentleyMidnightCarbonGMT-M4736212-B919-SS-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (8, 1, N'~/Uploads/Products/1/BreitlingBentleyMidnightCarbonGMT-M4736212-B919-SS-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (9, 1, N'~/Uploads/Products/1/BreitlingBentleyMidnightCarbonGMT-M4736212-B919-SS-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (25, 6, N'~/Uploads/Products/6/APALINGHIRG-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (26, 6, N'~/Uploads/Products/6/APALINGHIRG-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (27, 6, N'~/Uploads/Products/6/APALINGHIRG-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (44, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (45, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (46, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (47, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (48, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (49, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (50, 3, N'~/Uploads/Products/3/APBUM-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (51, 3, N'~/Uploads/Products/3/APBUM-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (52, 3, N'~/Uploads/Products/3/APBUM-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (53, 3, N'~/Uploads/Products/3/APBUM-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (54, 3, N'~/Uploads/Products/3/APBUM-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (55, 3, N'~/Uploads/Products/3/APBUM-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (56, 5, N'~/Uploads/Products/5/APJUMBO-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (57, 5, N'~/Uploads/Products/5/APJUMBO-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (58, 5, N'~/Uploads/Products/5/APJUMBO-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (59, 5, N'~/Uploads/Products/5/APJUMBO-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (60, 5, N'~/Uploads/Products/5/APJUMBO-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (61, 5, N'~/Uploads/Products/5/APJUMBO-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (62, 4, N'~/Uploads/Products/4/APVOL-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (63, 4, N'~/Uploads/Products/4/APVOL-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (64, 4, N'~/Uploads/Products/4/APVOL-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (65, 4, N'~/Uploads/Products/4/APVOL-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (66, 4, N'~/Uploads/Products/4/APVOL-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (67, 4, N'~/Uploads/Products/4/APVOL-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (68, 6, N'~/Uploads/Products/6/APALINGHIRG-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (69, 6, N'~/Uploads/Products/6/APALINGHIRG-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (70, 6, N'~/Uploads/Products/6/APALINGHIRG-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (71, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (72, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (73, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (74, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (75, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (76, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (77, 8, N'~/Uploads/Products/8/APWHITEBLUE-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (78, 8, N'~/Uploads/Products/8/APWHITEBLUE-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (79, 8, N'~/Uploads/Products/8/APWHITEBLUE-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (80, 8, N'~/Uploads/Products/8/APWHITEBLUE-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (81, 8, N'~/Uploads/Products/8/APWHITEBLUE-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (82, 8, N'~/Uploads/Products/8/APWHITEBLUE-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (83, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (84, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (85, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (86, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (87, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (88, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (89, 10, N'~/Uploads/Products/10/BRCOMPASS-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (90, 10, N'~/Uploads/Products/10/BRCOMPASS-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (91, 10, N'~/Uploads/Products/10/BRCOMPASS-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (92, 10, N'~/Uploads/Products/10/BRCOMPASS-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (93, 10, N'~/Uploads/Products/10/BRCOMPASS-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (94, 10, N'~/Uploads/Products/10/BRCOMPASS-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (95, 24, N'~/Uploads/Products/24/PAM104-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (96, 24, N'~/Uploads/Products/24/PAM104-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (97, 24, N'~/Uploads/Products/24/PAM104-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (98, 24, N'~/Uploads/Products/24/PAM104-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (99, 24, N'~/Uploads/Products/24/PAM104-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (100, 24, N'~/Uploads/Products/24/PAM104-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (101, 23, N'~/Uploads/Products/23/APRoseGoldRubberclad25940OKOOD002CA01-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (102, 23, N'~/Uploads/Products/23/APRoseGoldRubberclad25940OKOOD002CA01-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (103, 23, N'~/Uploads/Products/23/APRoseGoldRubberclad25940OKOOD002CA01-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (104, 23, N'~/Uploads/Products/23/APRoseGoldRubberclad25940OKOOD002CA01-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (105, 23, N'~/Uploads/Products/23/APRoseGoldRubberclad25940OKOOD002CA01-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (106, 23, N'~/Uploads/Products/23/APRoseGoldRubberclad25940OKOOD002CA01-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (107, 25, N'~/Uploads/Products/25/HublotF1Tit-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (108, 25, N'~/Uploads/Products/25/HublotF1Tit-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (109, 25, N'~/Uploads/Products/25/HublotF1Tit-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (110, 25, N'~/Uploads/Products/25/HublotF1Tit-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (111, 25, N'~/Uploads/Products/25/HublotF1Tit-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (112, 25, N'~/Uploads/Products/25/HublotF1Tit-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (113, 26, N'~/Uploads/Products/26/ChopardMilleMiglia168331-3002-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (114, 26, N'~/Uploads/Products/26/ChopardMilleMiglia168331-3002-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (115, 26, N'~/Uploads/Products/26/ChopardMilleMiglia168331-3002-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (116, 26, N'~/Uploads/Products/26/ChopardMilleMiglia168331-3002-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (117, 26, N'~/Uploads/Products/26/ChopardMilleMiglia168331-3002-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (118, 26, N'~/Uploads/Products/26/ChopardMilleMiglia168331-3002-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (119, 27, N'~/Uploads/Products/27/RolexDaytona18KYG-Blue116518-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (120, 27, N'~/Uploads/Products/27/RolexDaytona18KYG-Blue116518-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (121, 27, N'~/Uploads/Products/27/RolexDaytona18KYG-Blue116518-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (122, 27, N'~/Uploads/Products/27/RolexDaytona18KYG-Blue116518-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (123, 27, N'~/Uploads/Products/27/RolexDaytona18KYG-Blue116518-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (124, 27, N'~/Uploads/Products/27/RolexDaytona18KYG-Blue116518-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (125, 28, N'~/Uploads/Products/28/BRETSEA-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (126, 28, N'~/Uploads/Products/28/BRETSEA-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (127, 28, N'~/Uploads/Products/28/BRETSEA-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (128, 28, N'~/Uploads/Products/28/BRETSEA-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (129, 28, N'~/Uploads/Products/28/BRETSEA-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (130, 28, N'~/Uploads/Products/28/BRETSEA-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (131, 30, N'~/Uploads/Products/30/CartierSantos100W20073X8-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (132, 30, N'~/Uploads/Products/30/CartierSantos100W20073X8-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (133, 30, N'~/Uploads/Products/30/CartierSantos100W20073X8-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (134, 30, N'~/Uploads/Products/30/CartierSantos100W20073X8-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (135, 30, N'~/Uploads/Products/30/CartierSantos100W20073X8-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (136, 30, N'~/Uploads/Products/30/CartierSantos100W20073X8-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (137, 31, N'~/Uploads/Products/31/BR03-92-1.jpg')
GO
print 'Processed 100 total records'
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (138, 31, N'~/Uploads/Products/31/BR03-92-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (139, 31, N'~/Uploads/Products/31/BR03-92-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (140, 31, N'~/Uploads/Products/31/BR03-92-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (141, 31, N'~/Uploads/Products/31/BR03-92-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (142, 31, N'~/Uploads/Products/31/BR03-92-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (143, 33, N'~/Uploads/Products/33/BellRossBR01-92-S-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (144, 33, N'~/Uploads/Products/33/BellRossBR01-92-S-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (145, 33, N'~/Uploads/Products/33/BellRossBR01-92-S-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (146, 33, N'~/Uploads/Products/33/BellRossBR01-92-S-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (147, 33, N'~/Uploads/Products/33/BellRossBR01-92-S-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (148, 33, N'~/Uploads/Products/33/BellRossBR01-92-S-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (149, 34, N'~/Uploads/Products/34/IWCAquatimerChronoBrac3767-01-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (150, 34, N'~/Uploads/Products/34/IWCAquatimerChronoBrac3767-01-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (151, 34, N'~/Uploads/Products/34/IWCAquatimerChronoBrac3767-01-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (152, 34, N'~/Uploads/Products/34/IWCAquatimerChronoBrac3767-01-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (153, 34, N'~/Uploads/Products/34/IWCAquatimerChronoBrac3767-01-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (154, 34, N'~/Uploads/Products/34/IWCAquatimerChronoBrac3767-01-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (155, 35, N'~/Uploads/Products/35/IWCDaVinciChronographFlybackLaureus376404-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (156, 35, N'~/Uploads/Products/35/IWCDaVinciChronographFlybackLaureus376404-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (157, 35, N'~/Uploads/Products/35/IWCDaVinciChronographFlybackLaureus376404-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (158, 35, N'~/Uploads/Products/35/IWCDaVinciChronographFlybackLaureus376404-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (159, 35, N'~/Uploads/Products/35/IWCDaVinciChronographFlybackLaureus376404-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (160, 35, N'~/Uploads/Products/35/IWCDaVinciChronographFlybackLaureus376404-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (161, 36, N'~/Uploads/Products/36/PAM92ARKTOS-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (162, 36, N'~/Uploads/Products/36/PAM92ARKTOS-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (163, 36, N'~/Uploads/Products/36/PAM92ARKTOS-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (164, 36, N'~/Uploads/Products/36/PAM92ARKTOS-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (165, 36, N'~/Uploads/Products/36/PAM92ARKTOS-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (166, 36, N'~/Uploads/Products/36/PAM92ARKTOS-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (167, 37, N'~/Uploads/Products/37/Rolex-Sub-18K-Blue-116618-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (168, 37, N'~/Uploads/Products/37/Rolex-Sub-18K-Blue-116618-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (169, 37, N'~/Uploads/Products/37/Rolex-Sub-18K-Blue-116618-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (170, 37, N'~/Uploads/Products/37/Rolex-Sub-18K-Blue-116618-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (171, 37, N'~/Uploads/Products/37/Rolex-Sub-18K-Blue-116618-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (172, 37, N'~/Uploads/Products/37/Rolex-Sub-18K-Blue-116618-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (173, 38, N'~/Uploads/Products/38/APGPRGNEW-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (174, 38, N'~/Uploads/Products/38/APGPRGNEW-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (175, 38, N'~/Uploads/Products/38/APGPRGNEW-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (176, 38, N'~/Uploads/Products/38/APGPRGNEW-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (177, 38, N'~/Uploads/Products/38/APGPRGNEW-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (178, 38, N'~/Uploads/Products/38/APGPRGNEW-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (179, 39, N'~/Uploads/Products/39/APOR-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (180, 39, N'~/Uploads/Products/39/APOR-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (181, 39, N'~/Uploads/Products/39/APOR-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (182, 39, N'~/Uploads/Products/39/APOR-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (183, 39, N'~/Uploads/Products/39/APOR-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (184, 39, N'~/Uploads/Products/39/APOR-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (185, 40, N'~/Uploads/Products/40/APB-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (186, 40, N'~/Uploads/Products/40/APB-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (187, 40, N'~/Uploads/Products/40/APB-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (188, 40, N'~/Uploads/Products/40/APB-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (189, 40, N'~/Uploads/Products/40/APBE-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (190, 40, N'~/Uploads/Products/40/APB-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (191, 42, N'~/Uploads/Products/42/BB2T-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (192, 42, N'~/Uploads/Products/42/BB2T-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (193, 42, N'~/Uploads/Products/42/BB2T-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (194, 42, N'~/Uploads/Products/42/BB2T-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (195, 42, N'~/Uploads/Products/42/BB2T-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (196, 42, N'~/Uploads/Products/42/BB2T-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (197, 43, N'~/Uploads/Products/43/CartierRoadsterLdsBlue-W62053V3-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (198, 43, N'~/Uploads/Products/43/CartierRoadsterLdsBlue-W62053V3-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (199, 43, N'~/Uploads/Products/43/CartierRoadsterLdsBlue-W62053V3-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (200, 43, N'~/Uploads/Products/43/CartierRoadsterLdsBlue-W62053V3-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (201, 43, N'~/Uploads/Products/43/CartierRoadsterLdsBlue-W62053V3-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (202, 43, N'~/Uploads/Products/43/CartierRoadsterLdsBlue-W62053V3-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (203, 44, N'~/Uploads/Products/44/SANTCHRONO-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (204, 44, N'~/Uploads/Products/44/SANTCHRONO-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (205, 44, N'~/Uploads/Products/44/SANTCHRONO-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (206, 44, N'~/Uploads/Products/44/SANTCHRONO-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (207, 44, N'~/Uploads/Products/44/SANTCHRONO-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (208, 44, N'~/Uploads/Products/44/SANTCHRONO-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (209, 45, N'~/Uploads/Products/45/HUBRGCER-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (210, 45, N'~/Uploads/Products/45/HUBRGCER-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (211, 45, N'~/Uploads/Products/45/HUBRGCER-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (212, 45, N'~/Uploads/Products/45/HUBRGCER-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (213, 45, N'~/Uploads/Products/45/HUBRGCER-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (214, 45, N'~/Uploads/Products/45/HUBRGCER-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (215, 46, N'~/Uploads/Products/46/PAM320-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (216, 46, N'~/Uploads/Products/46/PAM320-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (217, 46, N'~/Uploads/Products/46/PAM320-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (218, 46, N'~/Uploads/Products/46/PAM320-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (219, 46, N'~/Uploads/Products/46/PAM320-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (220, 46, N'~/Uploads/Products/46/PAM320-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (221, 47, N'~/Uploads/Products/47/PAM25-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (222, 47, N'~/Uploads/Products/47/PAM25-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (223, 47, N'~/Uploads/Products/47/PAM25-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (224, 47, N'~/Uploads/Products/47/PAM25-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (225, 47, N'~/Uploads/Products/47/PAM25-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (226, 47, N'~/Uploads/Products/47/PAM25-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (227, 48, N'~/Uploads/Products/48/PAM177-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (228, 48, N'~/Uploads/Products/48/PAM177-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (229, 48, N'~/Uploads/Products/48/PAM177-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (230, 48, N'~/Uploads/Products/48/PAM177-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (231, 48, N'~/Uploads/Products/48/PAM177-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (232, 48, N'~/Uploads/Products/48/PAM177-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (233, 49, N'~/Uploads/Products/49/PAM231-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (234, 49, N'~/Uploads/Products/49/PAM231-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (235, 49, N'~/Uploads/Products/49/PAM231-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (236, 49, N'~/Uploads/Products/49/PAM231-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (237, 49, N'~/Uploads/Products/49/PAM231-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (238, 49, N'~/Uploads/Products/49/PAM231-20.jpg')
GO
print 'Processed 200 total records'
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (239, 50, N'~/Uploads/Products/50/Patek5119R-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (240, 50, N'~/Uploads/Products/50/Patek5119R-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (241, 50, N'~/Uploads/Products/50/Patek5119R-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (242, 50, N'~/Uploads/Products/50/Patek5119R-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (243, 50, N'~/Uploads/Products/50/Patek5119R-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (244, 50, N'~/Uploads/Products/50/Patek5119R-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (245, 51, N'~/Uploads/Products/51/Patek5127R-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (246, 51, N'~/Uploads/Products/51/Patek5127R-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (247, 51, N'~/Uploads/Products/51/Patek5127R-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (248, 51, N'~/Uploads/Products/51/Patek5127R-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (249, 51, N'~/Uploads/Products/51/Patek5127R-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (250, 51, N'~/Uploads/Products/51/Patek5127R-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (251, 51, N'~/Uploads/Products/51/Patek5127R-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (252, 51, N'~/Uploads/Products/51/Patek5127R-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (253, 51, N'~/Uploads/Products/51/Patek5127R-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (254, 52, N'~/Uploads/Products/52/Patek5167R-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (255, 52, N'~/Uploads/Products/52/Patek5167R-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (256, 52, N'~/Uploads/Products/52/Patek5167R-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (257, 52, N'~/Uploads/Products/52/Patek5167R-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (258, 52, N'~/Uploads/Products/52/Patek5167R-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (259, 52, N'~/Uploads/Products/52/Patek5167R-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (260, 53, N'~/Uploads/Products/53/Patek5296G-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (261, 53, N'~/Uploads/Products/53/Patek5296G-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (262, 53, N'~/Uploads/Products/53/Patek5296G-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (263, 53, N'~/Uploads/Products/53/Patek5296G-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (264, 53, N'~/Uploads/Products/53/Patek5296G-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (265, 54, N'~/Uploads/Products/54/PATEK5980R-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (266, 54, N'~/Uploads/Products/54/PATEK5980R-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (267, 54, N'~/Uploads/Products/54/PATEK5980R-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (268, 54, N'~/Uploads/Products/54/PATEK5980R-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (269, 54, N'~/Uploads/Products/54/PATEK5980R-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (270, 54, N'~/Uploads/Products/54/PATEK5980R-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (271, 55, N'~/Uploads/Products/55/Patek5130G-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (272, 55, N'~/Uploads/Products/55/Patek5130G-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (273, 55, N'~/Uploads/Products/55/Patek5130G-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (274, 55, N'~/Uploads/Products/55/Patek5130G-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (275, 55, N'~/Uploads/Products/55/Patek5130G-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (276, 55, N'~/Uploads/Products/55/Patek5130G-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (277, 56, N'~/Uploads/Products/56/PAM321-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (278, 56, N'~/Uploads/Products/56/PAM321-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (279, 56, N'~/Uploads/Products/56/PAM321-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (280, 56, N'~/Uploads/Products/56/PAM321-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (281, 56, N'~/Uploads/Products/56/PAM321-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (282, 56, N'~/Uploads/Products/56/PAM321-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (283, 57, N'~/Uploads/Products/57/PAM346-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (284, 57, N'~/Uploads/Products/57/PAM346-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (285, 57, N'~/Uploads/Products/57/PAM346-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (286, 57, N'~/Uploads/Products/57/PAM346-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (287, 57, N'~/Uploads/Products/57/PAM346-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (288, 57, N'~/Uploads/Products/57/PAM346-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (289, 58, N'~/Uploads/Products/58/PAM369-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (290, 58, N'~/Uploads/Products/58/PAM369-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (291, 58, N'~/Uploads/Products/58/PAM369-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (292, 58, N'~/Uploads/Products/58/PAM369-8.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (293, 58, N'~/Uploads/Products/58/PAM369-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (294, 58, N'~/Uploads/Products/58/PAM369-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (295, 59, N'~/Uploads/Products/59/PAM292-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (296, 59, N'~/Uploads/Products/59/PAM292-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (297, 59, N'~/Uploads/Products/59/PAM292-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (298, 59, N'~/Uploads/Products/59/PAM292-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (299, 59, N'~/Uploads/Products/59/PAM292-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (300, 59, N'~/Uploads/Products/59/PAM292-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (301, 60, N'~/Uploads/Products/60/CARTIER_1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (302, 60, N'~/Uploads/Products/60/CARTIER_5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (303, 60, N'~/Uploads/Products/60/CARTIER_9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (304, 60, N'~/Uploads/Products/60/CARTIER_8.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (305, 60, N'~/Uploads/Products/60/CARTIER_11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (306, 60, N'~/Uploads/Products/60/CARTIER_12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (307, 61, N'~/Uploads/Products/61/RolexYachtMaster40mmSSPlatinum16622-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (308, 61, N'~/Uploads/Products/61/RolexYachtMaster40mmSSPlatinum16622-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (309, 61, N'~/Uploads/Products/61/RolexYachtMaster40mmSSPlatinum16622-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (310, 61, N'~/Uploads/Products/61/RolexYachtMaster40mmSSPlatinum16622-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (311, 61, N'~/Uploads/Products/61/RolexYachtMaster40mmSSPlatinum16622-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (312, 61, N'~/Uploads/Products/61/RolexYachtMaster40mmSSPlatinum16622-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (313, 62, N'~/Uploads/Products/62/PAM305-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (314, 62, N'~/Uploads/Products/62/PAM305-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (315, 62, N'~/Uploads/Products/62/PAM305-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (316, 62, N'~/Uploads/Products/62/PAM305-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (317, 62, N'~/Uploads/Products/62/PAM305-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (318, 62, N'~/Uploads/Products/62/PAM305-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (319, 63, N'~/Uploads/Products/63/IWCBigPilotIW500401-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (320, 63, N'~/Uploads/Products/63/IWCBigPilotIW500401-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (321, 63, N'~/Uploads/Products/63/IWCBigPilotIW500401-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (322, 63, N'~/Uploads/Products/63/IWCBigPilotIW500401-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (323, 63, N'~/Uploads/Products/63/IWCBigPilotIW500401-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (324, 63, N'~/Uploads/Products/63/IWCBigPilotIW500401-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (325, 64, N'~/Uploads/Products/64/CORUM48-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (326, 64, N'~/Uploads/Products/64/CORUM48-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (327, 64, N'~/Uploads/Products/64/CORUM48-11.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (328, 64, N'~/Uploads/Products/64/CORUM48-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (329, 64, N'~/Uploads/Products/64/CORUM48-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (330, 64, N'~/Uploads/Products/64/CORUM48-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (331, 65, N'~/Uploads/Products/65/BreitlingBentley18K-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (332, 65, N'~/Uploads/Products/65/BreitlingBentley18K-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (333, 65, N'~/Uploads/Products/65/BreitlingBentley18K-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (334, 65, N'~/Uploads/Products/65/BreitlingBentley18K-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (335, 65, N'~/Uploads/Products/65/BreitlingBentley18K-16.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (336, 65, N'~/Uploads/Products/65/BreitlingBentley18K-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (337, 66, N'~/Uploads/Products/66/APBARICHRG-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (338, 66, N'~/Uploads/Products/66/APBARICHRG-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (339, 66, N'~/Uploads/Products/66/APBARICHRG-10.jpg')
GO
print 'Processed 300 total records'
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (340, 66, N'~/Uploads/Products/66/APBARICHRG-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (341, 66, N'~/Uploads/Products/66/APBARICHRG-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (342, 66, N'~/Uploads/Products/66/APBARICHRG-14.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (343, 67, N'~/Uploads/Products/67/CartierPashaLeatherW3109255-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (344, 67, N'~/Uploads/Products/67/CartierPashaLeatherW3109255-6.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (345, 67, N'~/Uploads/Products/67/CartierPashaLeatherW3109255-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (346, 67, N'~/Uploads/Products/67/CartierPashaLeatherW3109255-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (347, 67, N'~/Uploads/Products/67/CartierPashaLeatherW3109255-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (348, 67, N'~/Uploads/Products/67/CartierPashaLeatherW3109255-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (349, 68, N'~/Uploads/Products/68/PAM305-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (350, 68, N'~/Uploads/Products/68/PAM305-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (351, 68, N'~/Uploads/Products/68/PAM305-8.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (352, 68, N'~/Uploads/Products/68/PAM305-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (353, 68, N'~/Uploads/Products/68/PAM305-15.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (354, 68, N'~/Uploads/Products/68/PAM305-20.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (355, 69, N'~/Uploads/Products/69/T3-2cut.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (356, 69, N'~/Uploads/Products/69/T3-1cut.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (357, 69, N'~/Uploads/Products/69/T3-3cut.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (358, 69, N'~/Uploads/Products/69/T3-7cut.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (359, 69, N'~/Uploads/Products/69/T3-14cut.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (360, 69, N'~/Uploads/Products/69/T3-11cut.jpg')
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
/****** Object:  Default [DF_Product_Gender]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Gender]  DEFAULT (N'm') FOR [Gender]
GO
/****** Object:  Default [DF_Product_Created]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Created]  DEFAULT (getdate()) FOR [Created]
GO
/****** Object:  Default [DF_Product_HotDeal]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_HotDeal]  DEFAULT ((0)) FOR [HotDeal]
GO
/****** Object:  Default [DF_Product_NewArrival]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_NewArrival]  DEFAULT ((0)) FOR [NewArrival]
GO
/****** Object:  Default [DF_Product_IsActive]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF_User_CreationDate]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
/****** Object:  ForeignKey [FK_Product_Product]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([CollectionID])
REFERENCES [dbo].[ProductCollection] ([ProductCollectionID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
/****** Object:  ForeignKey [FK_Product_ProductBrand]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductBrand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[ProductBrand] ([ProductBrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductBrand]
GO
/****** Object:  ForeignKey [FK_Product_ProductCondition]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCondition] FOREIGN KEY([Condition])
REFERENCES [dbo].[ProductCondition] ([ProductConditionID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCondition]
GO
/****** Object:  ForeignKey [FK_ProductBrand_ProductBrand]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[ProductBrand]  WITH CHECK ADD  CONSTRAINT [FK_ProductBrand_ProductBrand] FOREIGN KEY([ProductBrandID])
REFERENCES [dbo].[ProductBrand] ([ProductBrandID])
GO
ALTER TABLE [dbo].[ProductBrand] CHECK CONSTRAINT [FK_ProductBrand_ProductBrand]
GO
/****** Object:  ForeignKey [FK_ProductCollection_ProductBrand]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[ProductCollection]  WITH CHECK ADD  CONSTRAINT [FK_ProductCollection_ProductBrand] FOREIGN KEY([ProductBrandID])
REFERENCES [dbo].[ProductBrand] ([ProductBrandID])
GO
ALTER TABLE [dbo].[ProductCollection] CHECK CONSTRAINT [FK_ProductCollection_ProductBrand]
GO
/****** Object:  ForeignKey [FK_ProductImage_Product]    Script Date: 12/15/2011 18:50:04 ******/
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
