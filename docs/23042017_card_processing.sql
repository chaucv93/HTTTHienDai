create database card_processing
GO
use card_processing
GO
CREATE TABLE [dbo].[device_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime],
	[status] [int],
	[merchant_id] [int],
	[device_id] [int] ,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[devices]    Script Date: 2017-04-18 4:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[devices](
	[device_type] [int] NOT NULL,
	[device_name] [nvarchar](50),
	[device_no] [char](10),
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__devices__3214EC0744A365E0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[masters]    Script Date: 2017-04-18 4:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[master_name] [nvarchar](max),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[merchants]    Script Date: 2017-04-18 4:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchants](
	[merchant_name] [int],
	[merchant_phone_call] [int],
	[tax_code] [int],
	[agent_id] [int],
	[sub_agent_id] [int],
	[address_1] [nvarchar](100),
	[address_2] [nvarchar](100),
	[address_3] [nvarchar](100),
	[city] [int],
	[province] [int],
	[zip_code] [int],
	[country] [int],
	[first_active_date] [datetime],
	[last_active_date] [datetime],
	[id] [int] IDENTITY(1,1) NOT NULL,
	[master_id] [int],
 CONSTRAINT [PK__merchant__3213E83F5916E226] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[parameters]    Script Date: 2017-04-18 4:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parameters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[param_name] [varchar](50),
	[param_value] [text],
	[param_type] [varchar](255),
	[param_status] [int],
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 2017-04-18 4:44:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_date] [datetime],
	[file_info] [varchar](255),
	[card_type] [int],
	[amount] [decimal](18, 0),
	[card_number] [varchar](16),
	[expiration_month] [varbinary](2),
	[expiration_year] [varbinary](5),
	[csv] [varchar](5),
	[status] [int],
	[merchant_id] [int],
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'devices', @level2type=N'COLUMN',@level2name=N'device_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'devices', @level2type=N'COLUMN',@level2name=N'device_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'devices', @level2type=N'COLUMN',@level2name=N'device_no'
GO
USE [master]
GO
ALTER DATABASE [card_processing] SET  READ_WRITE 
GO
