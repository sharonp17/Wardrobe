USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 5/1/2017 4:03:04 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 5/1/2017 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](50) NOT NULL,
	[AccessoryType] [nvarchar](50) NOT NULL,
	[AccessoryColor] [nvarchar](50) NOT NULL,
	[AccessorySeason] [nvarchar](50) NOT NULL,
	[AccessoryOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/1/2017 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](50) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NOT NULL,
	[BottomOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 5/1/2017 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/1/2017 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](50) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](50) NOT NULL,
	[ShoeOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/1/2017 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](50) NOT NULL,
	[TopType] [nvarchar](50) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](50) NOT NULL,
	[TopOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'Wood', N'\Content\Photos\Necklace.jpg', N'Necklace', N'Wood', N'Any', N'Casual')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (4, N'Warby Parker', N'\Content\Photos\glasses.jpg', N'Sun glasses', N'Spotted Mahogany ', N'Summer', N'Beach')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (5, N'Timbuk2', N'\Content\Photos\Timbuk2.jpg', N'Bag', N'Blue/ Multi', N'Any', N'Any')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (6, N'Wooden', N'\Content\Photos\bracelets.jpg', N'Bracelets', N'Teal', N'Any', N'Dress/ Casual')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (7, N'GoodWood', N'\Content\Photos\Watch.png', N'Watch', N'Wood', N'Any', N'Any')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Poop', N'/Content/Photos/Pants.jpg', N'Super Pants', N'White', N'Summer', N'Casual ')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (3, N'Everlane', N'\Content\Photos\dresspants.jpg', N'Slacks', N'Black', N'Fall', N'Work')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (4, N'Liful', N'\Content\Photos\casualpants.jpg', N'Trousers', N'Dark Navy', N'Winter', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (5, N'Visivim', N'\Content\Photos\cargo.jpg', N'Cargo', N'Olive Green', N'Spring', N'Partay')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (6, N'G-Star Raw', N'\Content\Photos\overall.jpg', N'Overall', N'Denim', N'Spring/Summer', N'Casual')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Everlane', N'\Content\Photos\tanboot.jpg', N'Ankle boot', N'Tobacco', N'Fall/Winter', N'Casual')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Everlane', N'\Content\Photos\brown shoes.jpg', N'Dress', N'Chocolate', N'Fall', N'Dress')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Clarks', N'\Content\Photos\blueshoes.jpg', N'Street', N'Powder Blue', N'Fall', N'Anytime')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (4, N'Teva', N'\Content\Photos\teva sandals.jpg', N'Sandals', N'Transparant', N'Summer', N'Fun')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (5, N'Clarks', N'\Content\Photos\Wallbee clarks.jpg', N'Wallabe', N'Tobacco/Blue', N'Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (2, N'Liful', N'\Content\Photos\shirt.jpg', N'Button Down', N'Blue/mixed', N'Fall', N'Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (3, N'Jungmaven', N'\Content\Photos\tank top.jpg', N'Tank', N'Huckberry', N'Summer', N'Fun')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (4, N'Liful ', N'\Content\Photos\sweater.jpg', N'Sweater', N'Black/white', N'Winter', N'Party')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (5, N'Jungmaven', N'\Content\Photos\shirtorange.jpg', N'T-Shirt', N'Orange', N'Spring', N'Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (6, N'Everlance', N'\Content\Photos\Blouses.jpg', N'Blouse', N'Variety', N'Spring/Summer', N'Work')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessory] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessory]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
