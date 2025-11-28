/*
 Navicat SQL Server Dump SQL

 Source Server         : local
 Source Server Type    : SQL Server
 Source Server Version : 15004382 (15.00.4382)
 Source Host           : (localdb)\MSSQLLocalDB:1433
 Source Catalog        : info
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15004382 (15.00.4382)
 File Encoding         : 65001

 Date: 28/11/2025 12:59:49
*/


-- ----------------------------
-- Table structure for GroupItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupItem]') AND type IN ('U'))
	DROP TABLE [dbo].[GroupItem]
GO

CREATE TABLE [dbo].[GroupItem] (
  [GroupID] int  NOT NULL,
  [GroupName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bobot_D] int  NULL,
  [InfoID] int  NULL
)
GO

ALTER TABLE [dbo].[GroupItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GroupItem
-- ----------------------------
INSERT INTO [dbo].[GroupItem] ([GroupID], [GroupName], [Bobot_D], [InfoID]) VALUES (N'1', N'Umur Pemohon', N'30', N'1')
GO

INSERT INTO [dbo].[GroupItem] ([GroupID], [GroupName], [Bobot_D], [InfoID]) VALUES (N'2', N'Umur Pemohon + Tenor', N'10', N'1')
GO

INSERT INTO [dbo].[GroupItem] ([GroupID], [GroupName], [Bobot_D], [InfoID]) VALUES (N'3', N'Status Perkawinan', N'40', N'1')
GO

INSERT INTO [dbo].[GroupItem] ([GroupID], [GroupName], [Bobot_D], [InfoID]) VALUES (N'4', N'Pendidikan', N'20', N'1')
GO


-- ----------------------------
-- Table structure for Info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Info]') AND type IN ('U'))
	DROP TABLE [dbo].[Info]
GO

CREATE TABLE [dbo].[Info] (
  [InfoID] int  NOT NULL,
  [InfoName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bobot_B] int  NULL
)
GO

ALTER TABLE [dbo].[Info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Info
-- ----------------------------
INSERT INTO [dbo].[Info] ([InfoID], [InfoName], [Bobot_B]) VALUES (N'1', N'info 1', N'5')
GO

INSERT INTO [dbo].[Info] ([InfoID], [InfoName], [Bobot_B]) VALUES (N'2', N'info 2', N'5')
GO

INSERT INTO [dbo].[Info] ([InfoID], [InfoName], [Bobot_B]) VALUES (N'3', N'info 3', N'20')
GO

INSERT INTO [dbo].[Info] ([InfoID], [InfoName], [Bobot_B]) VALUES (N'4', N'info 4', N'15')
GO

INSERT INTO [dbo].[Info] ([InfoID], [InfoName], [Bobot_B]) VALUES (N'5', N'info 5', N'30')
GO

INSERT INTO [dbo].[Info] ([InfoID], [InfoName], [Bobot_B]) VALUES (N'6', N'info 6', N'25')
GO


-- ----------------------------
-- Table structure for Item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Item]') AND type IN ('U'))
	DROP TABLE [dbo].[Item]
GO

CREATE TABLE [dbo].[Item] (
  [ItemID] int  NOT NULL,
  [ItemName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Bobot_F] int  NULL,
  [GroupID] int  NULL
)
GO

ALTER TABLE [dbo].[Item] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Item
-- ----------------------------
INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'1', N'56 - 65 Tahun', N'25', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'2', N'21 - 30 Tahun', N'50', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'3', N'31 - 45 Tahun', N'100', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'4', N'46 - 55 Tahun', N'75', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'5', N' Diatas Ketentuan', N'25', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'6', N'Dibawah Ketentuan', N'100', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'7', N'Belum Kawin dengan > 2 tanggungan', N'25', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'8', N'Belum Kawin dengan <= 2 tanggungan', N'25', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'9', N'Belum Kawin dengan 0 tanggungan', N'65', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'10', N'Kawin dengan > 2 tanggungan', N'85', N'1')
GO

INSERT INTO [dbo].[Item] ([ItemID], [ItemName], [Bobot_F], [GroupID]) VALUES (N'11', N'Kawin dengan <= 2 tanggungan', N'100', N'1')
GO


-- ----------------------------
-- Table structure for qty_bobot
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qty_bobot]') AND type IN ('U'))
	DROP TABLE [dbo].[qty_bobot]
GO

CREATE TABLE [dbo].[qty_bobot] (
  [QtyID] int  NOT NULL,
  [Total_bobot] int  NULL,
  [Total_bobot2] int  NULL,
  [status] int  NULL,
  [qty] int  NULL
)
GO

ALTER TABLE [dbo].[qty_bobot] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qty_bobot
-- ----------------------------

-- ----------------------------
-- Table structure for Registrasi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Registrasi]') AND type IN ('U'))
	DROP TABLE [dbo].[Registrasi]
GO

CREATE TABLE [dbo].[Registrasi] (
  [RegID] int  NOT NULL,
  [NoAplikasi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Nama] int  NULL,
  [TempatLahir] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TglLahir] date  NULL,
  [Jenkel] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [KodePos] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Almt] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Registrasi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Registrasi
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table GroupItem
-- ----------------------------
ALTER TABLE [dbo].[GroupItem] ADD CONSTRAINT [PK__GroupIte__149AF30A0511128C] PRIMARY KEY CLUSTERED ([GroupID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Info
-- ----------------------------
ALTER TABLE [dbo].[Info] ADD CONSTRAINT [PK__Info__4DEC9D9A9E6B1701] PRIMARY KEY CLUSTERED ([InfoID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Item
-- ----------------------------
ALTER TABLE [dbo].[Item] ADD CONSTRAINT [PK__Item__727E83EB5BC77E2E] PRIMARY KEY CLUSTERED ([ItemID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qty_bobot
-- ----------------------------
ALTER TABLE [dbo].[qty_bobot] ADD CONSTRAINT [PK__Item_cop__727E83EB3FD8A8E6] PRIMARY KEY CLUSTERED ([QtyID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Registrasi
-- ----------------------------
ALTER TABLE [dbo].[Registrasi] ADD CONSTRAINT [PK__Info_cop__4DEC9D9A1F178B8F] PRIMARY KEY CLUSTERED ([RegID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table GroupItem
-- ----------------------------
ALTER TABLE [dbo].[GroupItem] ADD CONSTRAINT [FK__GroupItem__InfoI__71D1E811] FOREIGN KEY ([InfoID]) REFERENCES [dbo].[Info] ([InfoID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Item
-- ----------------------------
ALTER TABLE [dbo].[Item] ADD CONSTRAINT [FK__Item__GroupID__74AE54BC] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[GroupItem] ([GroupID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

