/****** Object:  Table [dbo].[User]    Script Date: 08/18/2011 20:17:54 ******/
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
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[ProductBrand]    Script Date: 08/18/2011 20:17:54 ******/
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
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (4, N'HUBLOT')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (5, N'ROLEX')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (6, N'BREITLING')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (7, N'MONT BLANC')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (8, N'PANERAI')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (9, N'CVSTOS')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (10, N'CARTIER')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (11, N'PATEK PHILIPPE')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (12, N'AUDEMARS PIGUET')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (13, N'TUDOR (ROLEX)')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (14, N'BVLGARI')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (15, N'CHANEL')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (16, N'EDOX')
INSERT [dbo].[ProductBrand] ([ProductBrandID], [BrandName]) VALUES (17, N'BELL & ROSS')
SET IDENTITY_INSERT [dbo].[ProductBrand] OFF
/****** Object:  Table [dbo].[ProductCondition]    Script Date: 08/18/2011 20:17:54 ******/
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
SET IDENTITY_INSERT [dbo].[ProductCondition] OFF
/****** Object:  Table [dbo].[ProductCollection]    Script Date: 08/18/2011 20:17:54 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 08/18/2011 20:17:54 ******/
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
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (2, 5, NULL, N'116520 BKSO', N'2011 "V" SERIES', N'Male', N'2011 ROLEX DAYTONA STAINLESS STEEL BLACK 116520 - BNIB!', N'DAYTONA - PERPETUAL COSMOGRAPH', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'40MM ', N'STAINLESS STEEL', N'STAINLESS STEEL - INTEGRATED (ENGRAVED)', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK', N'AUTOMATIC - 44 JEWELS', N'HOURS - MINUTES - SECONDS - CHRONOGRAPH - TACHYMETER', N'ROLEX STAINLESS STEEL OYSTERLOCK BRACELET WITH DEPLOYMENT CLASP', N'100M - 330FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F33013DEA6D AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (3, 12, NULL, N'26176FO.OO.D101CR.02', N'WILL BE DISLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET BUMBLE BEE LIMITED EDITION AP OFFSHORE', N'"BUMBLE BEE" LIMITED EDITION OFFSHORE', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'FORGED CARBON', N'BLACK CERAMIC - FIXED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK - WAFFLED TEXTURE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK ALLIGATOR HORNBACK BONE TEXTURED STRAP (YELLOW CONTRAST STICHING) WITH TITANIUM DEPLOYMENT CLASP', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F33014CF8E3 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (4, 12, NULL, N'26170ST.OO.D101CR.01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET OFFSHORE VOLCANO 26170ST.OO.D101CR.01', N'ROYAL OAK OFFSHORE "VOLCANO"', CAST(21800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'STAINLESS STEEL', N'STAINLESS STEEL - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK - WAFFLED TEXTURE WITH ORANGE HIGHLIGHTS AND FLANGE', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK ALLIGATOR HORNBACK BONE TEXTERED STRAP (ORANGE CONTRAST STICHING) WITH STAINLESS STEEL DEPLOYMENT BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, AND ALL BOOKLETSS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F33014D58BA AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (5, 12, NULL, N'15202OR.OO.0944OR.01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET ROYAL OAK 18K JUMBO JUBILEE ON BRACELET', N'ROYAL OAK', CAST(46600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'39MM ', N'18K YELLOW  GOLD', N'18K YELLOW GOLD - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'ANTHRACITE - HOBNAIL (WAFFLED)', N'AUTOMATIC (ULTRA THIN MOVEMENT)', N'HOURS - MINUTES - DATE', N'18K YELLOW GOLD WITH DEPLOYMENT BUCKLE', N'50M - 165FT', 3, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F33014DDC3B AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (6, 12, NULL, N'26062OR.OO.A002CA.01', N'LIMITED EDITION OF 600 - WILL BE DISCLOSED TO BUYER', N'Male', N'Audemars Piguet Royal Oak 18K Rose Gold Alinghi Limited', N'"TEAM ALINGHI" ROYAL OAK OFFSHORE ', CAST(61100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'18K ROSE GOLD', N'FORGED CARBON - FIXED WITH STAINLESS STEEL SCREWS', N'ANTI-REFLECTIVE SAPPHIRE', N'BLACK ', N'AUTOMATIC - AP CALIBRE 2326/2848', N'HOURS - MINUTES - SECONDS - DATE - FLYBACK CHRONOGRAPH - REGATTA COUNTDOWN ', N'AP BLACK RUBBER STRAP WITH 18K ROSE GOLD TANG BUCKLE', N'100M / 300FT', 2, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F3301532E4C AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (7, 12, NULL, N'26092CK.ZZ.D021CA.01', N'WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET ROYAL OAK 18K WHITE GOLD FULL DIAMONDS', N'ROYAL OAK OFFSHORE', CAST(96000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'37 MM', N'18K WHITE GOLD WITH DIAMONDS - TOTAL OF 323 TOP WESSELTON IF QUALITY DIAMONDS WEIGHING APPROXIMATELY 5.90 CARATS', N'18K WHITE GOLD WITH DIAMONDS - FIXED', N'SAPPHIRE', N'BLUE WAFFLE DESIGN - TEXTURED', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLUE RUBBER STRAP WITH DEPLOYMENT BUCKLE', N'100M / 300FT', 1, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F3301543DB2 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (8, 12, NULL, N'25770ST.OO.D001IN.01', N'PLEASE REFER TO PHOTOS', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE 25770ST.OO.D001IN.01', N'ROYAL OAK OFFSHORE ', CAST(23300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 .5MM', N'STAINLESS STEEL', N'STAINLESS STEEL - FIXED', N'ANTI-REFLECTIVE SAPPHIRE', N'WHITE - WAFFLED TEXTURE WITH SILVER SUBDIALS', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLUE LEATHER TEXTERED STRAP WITH STAINLESS STEEL DEPLOYMENT BUCKLE', N'50M / 165FT', 3, N'INNER BOX, OUTER BOX, AND BOOKLET AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F330155DC73 AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (9, 12, NULL, N'26290IO.OO.A001VE.01', N'LIMITED EDITION OF 1750 - WILL BE DISCLOSED TO BUYER', N'Male', N'AUDEMARS PIGUET ROYAL OAK OFFSHORE GRAND PRIX CARBON', N'"GRAND PRIX" ROYAL OAK OFFSHORE ', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'44 MM', N'FORGED CARBON - BLACK CERAMIC & TITANIUM PUSHPIECES - BLACKENED TITANIUM CROWN - TITANIUM EXHIBITION CASE-BACK', N'BLACK CERAMIC - FIXED', N'SAPPHIRE', N'BLACK - RED', N'AUTOMATIC', N'HOURS - MINUTES - SECONDS - DATE - CHRONOGRAPH', N'AP BLACK LEATHER-SUEDE STRAP WITH TITANIUM TANG BUCKLE', N'100M / 300FT', 3, N'INNER BOX, OUTER BOX, BOOKLETS. 100% COMPLETE AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR.', CAST(0x00009F330156B0DA AS DateTime), 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CollectionID], [ModelNumber], [SerialNumber], [Gender], [ProductName], [ModelName], [RetailPrice], [WholesalePrice], [SalePrice], [CaseSize], [CaseMaterial], [Bezel], [Crystal], [DialColour], [Movement], [Functions], [Strap], [WaterResistant], [Condition], [BoxPapers], [Warranty], [Created], [HotDeal], [NewArrival], [IsActive]) VALUES (10, 17, NULL, N'BR 01-92-SC', N'LIMITED EDITION OF 500 - WILL BE DISCLOSED TO BUYER', N'Male', N'BELL & ROSS COMPASS - LIMITED EDITION - PVD BR01-92-SC', N'COMPASS', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'46 MM', N'PVD-COATED STAINLESS STEEL', N'FIXED', N'SCRATCH RESISTANT SAPPHIRE', N'BLACK - ROTATING HOURS AND MINUTES DISCS', N'AUTOMATIC ', N'HOURS - MINUTES', N'BELL & ROSS BLACK RUBBER STRAP - BALLSITIC (NYLON/VELCRO) STRAP -  B&R PVD COATED STAINLESS STEEL TANG BUCKLE', N'YES', 1, N'INNER BOX, OUTER BOX, AND ALL PAPERS AS IF PURCHASED FROM AUTHORIZED DEALER.', N'1 YEAR SERVICE WARRANTY COVERING ANY MECHANICAL DEFECTS ARISING AS A RESULT OF NORMAL WEAR AND TEAR', CAST(0x00009F33015854CE AS DateTime), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[ProductImage]    Script Date: 08/18/2011 20:17:54 ******/
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
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (10, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (11, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (12, 2, N'~/Uploads/Products/2/RolexDaytona116520BKSO-4.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (13, 3, N'~/Uploads/Products/3/APBUM-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (14, 3, N'~/Uploads/Products/3/APBUM-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (15, 3, N'~/Uploads/Products/3/APBUM-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (16, 3, N'~/Uploads/Products/3/APBUM-12.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (17, 4, N'~/Uploads/Products/4/APVOL-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (18, 4, N'~/Uploads/Products/4/APVOL-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (19, 4, N'~/Uploads/Products/4/APVOL-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (20, 4, N'~/Uploads/Products/4/APVOL-17.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (21, 5, N'~/Uploads/Products/5/APJUMBO-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (22, 5, N'~/Uploads/Products/5/APJUMBO-5.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (23, 5, N'~/Uploads/Products/5/APJUMBO-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (24, 5, N'~/Uploads/Products/5/APJUMBO-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (25, 6, N'~/Uploads/Products/6/APALINGHIRG-1.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (26, 6, N'~/Uploads/Products/6/APALINGHIRG-7.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (27, 6, N'~/Uploads/Products/6/APALINGHIRG-13.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (28, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-2.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (29, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (30, 7, N'~/Uploads/Products/7/AP-OFFSHORE-DIAMONDS-BLUE-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (31, 8, N'~/Uploads/Products/8/APWHITEBLUE-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (32, 8, N'~/Uploads/Products/8/APWHITEBLUE-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (33, 8, N'~/Uploads/Products/8/APWHITEBLUE-19.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (34, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (35, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-9.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (36, 9, N'~/Uploads/Products/9/AP-GRANDPRIX-18.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (37, 10, N'~/Uploads/Products/10/BRCOMPASS-3.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (38, 10, N'~/Uploads/Products/10/BRCOMPASS-10.jpg')
INSERT [dbo].[ProductImage] ([ProductImageID], [ProductID], [Path]) VALUES (39, 10, N'~/Uploads/Products/10/BRCOMPASS-16.jpg')
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
/****** Object:  Default [DF_Product_Gender]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Gender]  DEFAULT (N'm') FOR [Gender]
GO
/****** Object:  Default [DF_Product_Created]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Created]  DEFAULT (getdate()) FOR [Created]
GO
/****** Object:  Default [DF_Product_HotDeal]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_HotDeal]  DEFAULT ((0)) FOR [HotDeal]
GO
/****** Object:  Default [DF_Product_NewArrival]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_NewArrival]  DEFAULT ((0)) FOR [NewArrival]
GO
/****** Object:  Default [DF_Product_IsActive]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF_User_CreationDate]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
/****** Object:  ForeignKey [FK_Product_Product]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([CollectionID])
REFERENCES [dbo].[ProductCollection] ([ProductCollectionID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
/****** Object:  ForeignKey [FK_Product_ProductBrand]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductBrand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[ProductBrand] ([ProductBrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductBrand]
GO
/****** Object:  ForeignKey [FK_Product_ProductCondition]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCondition] FOREIGN KEY([Condition])
REFERENCES [dbo].[ProductCondition] ([ProductConditionID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCondition]
GO
/****** Object:  ForeignKey [FK_ProductBrand_ProductBrand]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[ProductBrand]  WITH CHECK ADD  CONSTRAINT [FK_ProductBrand_ProductBrand] FOREIGN KEY([ProductBrandID])
REFERENCES [dbo].[ProductBrand] ([ProductBrandID])
GO
ALTER TABLE [dbo].[ProductBrand] CHECK CONSTRAINT [FK_ProductBrand_ProductBrand]
GO
/****** Object:  ForeignKey [FK_ProductCollection_ProductBrand]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[ProductCollection]  WITH CHECK ADD  CONSTRAINT [FK_ProductCollection_ProductBrand] FOREIGN KEY([ProductBrandID])
REFERENCES [dbo].[ProductBrand] ([ProductBrandID])
GO
ALTER TABLE [dbo].[ProductCollection] CHECK CONSTRAINT [FK_ProductCollection_ProductBrand]
GO
/****** Object:  ForeignKey [FK_ProductImage_Product]    Script Date: 08/18/2011 20:17:54 ******/
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
