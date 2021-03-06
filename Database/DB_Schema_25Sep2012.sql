USE [Webpresence]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'User')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'WebMaster')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (4, N'Agency')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (5, N'AgencyClient')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Package]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SetUpCost] [numeric](18, 2) NOT NULL,
	[MonthlyCost] [numeric](18, 2) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Package] ON
INSERT [dbo].[Package] ([ID], [Name], [SetUpCost], [MonthlyCost], [CreatedDate]) VALUES (1, N'User', CAST(20.00 AS Numeric(18, 2)), CAST(90.00 AS Numeric(18, 2)), CAST(0x0000A0D200000000 AS DateTime))
INSERT [dbo].[Package] ([ID], [Name], [SetUpCost], [MonthlyCost], [CreatedDate]) VALUES (2, N'WebMaster', CAST(20.00 AS Numeric(18, 2)), CAST(140.00 AS Numeric(18, 2)), CAST(0x0000A0D200000000 AS DateTime))
INSERT [dbo].[Package] ([ID], [Name], [SetUpCost], [MonthlyCost], [CreatedDate]) VALUES (3, N'Agency', CAST(20.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), CAST(0x0000A0D200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Package] OFF
/****** Object:  Table [dbo].[Domain]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WebsiteName] [nvarchar](500) NOT NULL,
	[DomainUrl] [nvarchar](500) NOT NULL,
	[KeyWords] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Domain] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Domain] ON
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'MyWebSite', N'www.abc.com', N'abc', N'City', N'State', N'US', 1, 1, CAST(0x0000A0D300000000 AS DateTime), 1, CAST(0x0000A0D300000000 AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'myworkwebsite', N'www.workstation.com', N'xyz', N'chandigarh', N'Punjab', N'inida', 1, 2, CAST(0x0000A0D300F72AD5 AS DateTime), 2, CAST(0x0000A0D300F72AD5 AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'myworkwebsite', N'www.workstation.com', N'xyz', N'chandigarh', N'Punjab', N'inida', 1, 2, CAST(0x0000A0D300F7A8D2 AS DateTime), 2, CAST(0x0000A0D300F7A8D2 AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'myworkwebsite', N'www.workstation.com', N'xyz', N'chandigarh', N'Punjab', N'inida', 1, 2, CAST(0x0000A0D300F8E53E AS DateTime), 2, CAST(0x0000A0D300F8E53E AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'fdkjgfkj', N'kjdhkjfg', N'kjfhjkdjkg', N'kfjdhjk', N'fkdjgj', N'kdjfhjk', 1, 2, CAST(0x0000A0D4001A921D AS DateTime), 2, CAST(0x0000A0D4001A937E AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'fdkjgfkj', N'kjdhkjfg', N'kjfhjkdjkg', N'kfjdhjk', N'fkdjgj', N'kdjfhjk', 1, 2, CAST(0x0000A0D4001B1F53 AS DateTime), 2, CAST(0x0000A0D4001B221B AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'fdkjgfkj', N'kjdhkjfg', N'kjfhjkdjkg', N'kfjdhjk', N'fkdjgj', N'kdjfhjk', 1, 2, CAST(0x0000A0D4001C0525 AS DateTime), 2, CAST(0x0000A0D4001C05EF AS DateTime))
INSERT [dbo].[Domain] ([ID], [WebsiteName], [DomainUrl], [KeyWords], [City], [State], [Country], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'fdkjgfkj', N'kjdhkjfg', N'kjfhjkdjkg', N'kfjdhjk', N'fkdjgj', N'kdjfhjk', 1, 2, CAST(0x0000A0D4001D453A AS DateTime), 2, CAST(0x0000A0D4001D45E2 AS DateTime))
SET IDENTITY_INSERT [dbo].[Domain] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[City] [nvarchar](200) NOT NULL,
	[State] [nvarchar](2) NOT NULL,
	[Country] [nvarchar](10) NOT NULL,
	[ContactNo] [nvarchar](200) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[PackageFk] [int] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
	[DateCancelled] [datetime] NOT NULL,
	[NextPaymentDate] [datetime] NOT NULL,
	[IsFreeTrial] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (4, N'Naveen', N'Panwar', N'Smartdata', N'Mohali', N'Pn', N'In', N'9876543210', N'162585', 1, 0, CAST(0x0000A0D300000000 AS DateTime), CAST(0x0000A0D300000000 AS DateTime), 0, 1, CAST(0x0000A0D300000000 AS DateTime), CAST(0x0000A0D300000000 AS DateTime), 0, 1, CAST(0x0000A0D300000000 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (7, N'Nitin', N'Rawat', N'Phase-4', N'Mohali', N'Pn', N'AK', N'9876543210', N'654321', 1, 0, CAST(0x0000A0D3006B8142 AS DateTime), CAST(0x0000A0DA006B828C AS DateTime), 1, 1, CAST(0x0000A0D3006B84D8 AS DateTime), CAST(0x0000A0D3006B8531 AS DateTime), 0, 1, CAST(0x0000A0D3006B8484 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (8, N'Nitin', N'Rawat', N'Phase-4', N'Mohali', N'Pn', N'AK', N'9876543210', N'654321', 1, 0, CAST(0x0000A0D3006C3B41 AS DateTime), CAST(0x0000A0DA006C40FD AS DateTime), 1, 1, CAST(0x0000A0D3006C45CF AS DateTime), CAST(0x0000A0D3006C4662 AS DateTime), 0, 1, CAST(0x0000A0D3006C454C AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (9, N'Nitin', N'Rawat', N'Phase-4', N'Mohali', N'Pn', N'AK', N'9876543210', N'654321', 1, 0, CAST(0x0000A0D3006CBAC8 AS DateTime), CAST(0x0000A0DA006CBD11 AS DateTime), 1, 1, CAST(0x0000A0D3006CC0E2 AS DateTime), CAST(0x0000A0D3006CC15B AS DateTime), 0, 1, CAST(0x0000A0D3006CC028 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (10, N'Nitin', N'Rawat', N'Phase-4', N'Mohali', N'Pn', N'AK', N'9876543210', N'654321', 1, 0, CAST(0x0000A0D3006D6F22 AS DateTime), CAST(0x0000A0E1006D703F AS DateTime), 1, 1, CAST(0x0000A0D3006D7348 AS DateTime), CAST(0x0000A0D3006D739B AS DateTime), 0, 1, CAST(0x0000A0D3006D72F1 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (11, N'Nitin', N'Rawat', N'Phase-4', N'Mohali', N'Pn', N'AK', N'9876543210', N'654321', 1, 0, CAST(0x0000A0D300786337 AS DateTime), CAST(0x0000A0E100786337 AS DateTime), 1, 1, CAST(0x0000A0D300786337 AS DateTime), CAST(0x0000A0D300786337 AS DateTime), 0, 1, CAST(0x0000A0D300786337 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (12, N'Mohit', N'Sahu', N'jsdbfh', N'dvbfhsh', N'sd', N'CA', N'98876543210', N'987897', 1, 0, CAST(0x0000A0D30176F463 AS DateTime), CAST(0x0000A0E10176F463 AS DateTime), 1, 1, CAST(0x0000A0D30176F463 AS DateTime), CAST(0x0000A0D30176F463 AS DateTime), 0, 1, CAST(0x0000A0D30176F463 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (13, N'Mohit', N'Sahu', N'jsdbfh', N'dvbfhsh', N'sd', N'IA', N'98876543210', N'987897', 1, 0, CAST(0x0000A0D30177F0C5 AS DateTime), CAST(0x0000A0E10177F0C5 AS DateTime), 1, 1, CAST(0x0000A0D30177F0C5 AS DateTime), CAST(0x0000A0D30177F0C5 AS DateTime), 0, 1, CAST(0x0000A0D30177F0C5 AS DateTime))
INSERT [dbo].[Customer] ([ID], [FirstName], [LastName], [Address], [City], [State], [Country], [ContactNo], [PostalCode], [PackageFk], [IsCancelled], [DateCancelled], [NextPaymentDate], [IsFreeTrial], [IsActive], [DateCreated], [DateUpdated], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (14, N'Mohit', N'Sahu', N'jsdbfh', N'dvbfhsh', N'sd', N'AR', N'98876543210', N'987897', 1, 0, CAST(0x0000A0D301835E4B AS DateTime), CAST(0x0000A0E101835E4B AS DateTime), 1, 1, CAST(0x0000A0D301835E4B AS DateTime), CAST(0x0000A0D301835E4B AS DateTime), 0, 1, CAST(0x0000A0D301835E4B AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[DomainConfigure]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomainConfigure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DomainId] [int] NOT NULL,
	[Advertising] [bit] NOT NULL,
	[AdvertisingToken] [nvarchar](500) NOT NULL,
	[Facebook] [bit] NOT NULL,
	[FacebookToken] [nvarchar](500) NOT NULL,
	[Twitter] [bit] NOT NULL,
	[TwitterToken] [nvarchar](500) NOT NULL,
	[YouTube] [bit] NOT NULL,
	[YoutubeToken] [nvarchar](500) NOT NULL,
	[Traffic] [bit] NOT NULL,
	[TrafficToken] [nvarchar](500) NOT NULL,
	[Conversions] [bit] NOT NULL,
	[ConversionsToken] [nvarchar](500) NOT NULL,
	[CallTracking] [bit] NOT NULL,
	[CallTrackingToken] [nvarchar](500) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DomainConfigure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DomainConfigure] ON
INSERT [dbo].[DomainConfigure] ([Id], [DomainId], [Advertising], [AdvertisingToken], [Facebook], [FacebookToken], [Twitter], [TwitterToken], [YouTube], [YoutubeToken], [Traffic], [TrafficToken], [Conversions], [ConversionsToken], [CallTracking], [CallTrackingToken], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate]) VALUES (2, 2, 1, N'ndfjkdffdffhdh', 0, N'jkgfdsgfjgfgd', 1, N',dfnmsdfs', 1, N'dfksjfdsjfdjsfjsk', 0, N'kdjfhsifjdkgdfgh', 0, N'dnjskdfsfd', 1, N'kfndkjfgfdgfdkjgjk', 0, CAST(0x0000A0D300000000 AS DateTime), 1, CAST(0x0000A0D300000000 AS DateTime))
INSERT [dbo].[DomainConfigure] ([Id], [DomainId], [Advertising], [AdvertisingToken], [Facebook], [FacebookToken], [Twitter], [TwitterToken], [YouTube], [YoutubeToken], [Traffic], [TrafficToken], [Conversions], [ConversionsToken], [CallTracking], [CallTrackingToken], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedDate]) VALUES (9, 19, 0, N'', 0, N'', 0, N'', 0, N'', 0, N'', 0, N'', 0, N'', 0, CAST(0x0000A0D4001D4A27 AS DateTime), 2, CAST(0x0000A0D4001D4AF3 AS DateTime))
SET IDENTITY_INSERT [dbo].[DomainConfigure] OFF
/****** Object:  Table [dbo].[UserLogin]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmailId] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[IsClient] [bit] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[EmailVerificationCode] [nvarchar](500) NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[PassWordResetCode] [nvarchar](50) NOT NULL,
	[IsLoginAllowed] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON
INSERT [dbo].[UserLogin] ([Id], [RoleId], [CustomerId], [EmailId], [Password], [IsClient], [LastLoginDate], [EmailVerificationCode], [IsEmailVerified], [PassWordResetCode], [IsLoginAllowed], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (1, 2, 4, N'naveenp.sdei@smartdatainc.net', N'123456789', 0, CAST(0x0000A0D300000000 AS DateTime), N'123456789', 0, N'123456789', 0, 0, 1, CAST(0x0000A0D300000000 AS DateTime))
INSERT [dbo].[UserLogin] ([Id], [RoleId], [CustomerId], [EmailId], [Password], [IsClient], [LastLoginDate], [EmailVerificationCode], [IsEmailVerified], [PassWordResetCode], [IsLoginAllowed], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (2, 1, 10, N'nitinraw@smartdatainc.net', N'xy4kMpiSKbzfp6Emz7AQ6A==', 0, CAST(0x0000A0D3006D7E85 AS DateTime), N'55a802d6', 0, N'55a802d6', 0, 0, 1, CAST(0x0000A0D3006D821A AS DateTime))
INSERT [dbo].[UserLogin] ([Id], [RoleId], [CustomerId], [EmailId], [Password], [IsClient], [LastLoginDate], [EmailVerificationCode], [IsEmailVerified], [PassWordResetCode], [IsLoginAllowed], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (3, 1, 11, N'nitinraw@smartdatainc.net', N'xy4kMpiSKbzfp6Emz7AQ6A==', 0, CAST(0x0000A0D300786381 AS DateTime), N'66ffc1d4', 0, N'66ffc1d4', 0, 0, 1, CAST(0x0000A0D300786381 AS DateTime))
INSERT [dbo].[UserLogin] ([Id], [RoleId], [CustomerId], [EmailId], [Password], [IsClient], [LastLoginDate], [EmailVerificationCode], [IsEmailVerified], [PassWordResetCode], [IsLoginAllowed], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (5, 1, 13, N'mohitr@smartdatainc.net', N'xy4kMpiSKbzfp6Emz7AQ6A==', 0, CAST(0x0000A0D30177F10C AS DateTime), N'9cada5e7', 1, N'9cada5e7', 1, 0, 1, CAST(0x0000A0D30177F10D AS DateTime))
INSERT [dbo].[UserLogin] ([Id], [RoleId], [CustomerId], [EmailId], [Password], [IsClient], [LastLoginDate], [EmailVerificationCode], [IsEmailVerified], [PassWordResetCode], [IsLoginAllowed], [IsDeleted], [CreatedBy], [CreatedDate]) VALUES (6, 1, 14, N'naveenp@smartdatainc.net', N'xy4kMpiSKbzfp6Emz7AQ6A==', 0, CAST(0x0000A0D301835E60 AS DateTime), N'9761dc36', 1, N'9761dc36', 1, 0, 1, CAST(0x0000A0D301835E60 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
/****** Object:  Table [dbo].[DomainMapping]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomainMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DomainId] [int] NULL,
	[UserId] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_DomainMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgencyClient]    Script Date: 09/22/2012 02:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgencyClient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[AgencyId] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AgencyClient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Domain_IsActive]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[Domain] ADD  CONSTRAINT [DF_Domain_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Customer_IsActive]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  ForeignKey [FK_Customer_Package]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Package] FOREIGN KEY([PackageFk])
REFERENCES [dbo].[Package] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Package]
GO
/****** Object:  ForeignKey [FK_DomainConfigure_Domain]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[DomainConfigure]  WITH CHECK ADD  CONSTRAINT [FK_DomainConfigure_Domain] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Domain] ([ID])
GO
ALTER TABLE [dbo].[DomainConfigure] CHECK CONSTRAINT [FK_DomainConfigure_Domain]
GO
/****** Object:  ForeignKey [FK_UserLogin_Customer]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_UserLogin_Customer]
GO
/****** Object:  ForeignKey [FK_UserLogin_Role]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_UserLogin_Role]
GO
/****** Object:  ForeignKey [FK_DomainMapping_Domain]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[DomainMapping]  WITH CHECK ADD  CONSTRAINT [FK_DomainMapping_Domain] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Domain] ([ID])
GO
ALTER TABLE [dbo].[DomainMapping] CHECK CONSTRAINT [FK_DomainMapping_Domain]
GO
/****** Object:  ForeignKey [FK_DomainMapping_UserLogin]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[DomainMapping]  WITH CHECK ADD  CONSTRAINT [FK_DomainMapping_UserLogin] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserLogin] ([Id])
GO
ALTER TABLE [dbo].[DomainMapping] CHECK CONSTRAINT [FK_DomainMapping_UserLogin]
GO
/****** Object:  ForeignKey [FK_AgencyClient_UserLogin]    Script Date: 09/22/2012 02:05:24 ******/
ALTER TABLE [dbo].[AgencyClient]  WITH CHECK ADD  CONSTRAINT [FK_AgencyClient_UserLogin] FOREIGN KEY([AgencyId])
REFERENCES [dbo].[UserLogin] ([Id])
GO
ALTER TABLE [dbo].[AgencyClient] CHECK CONSTRAINT [FK_AgencyClient_UserLogin]
GO
