USE [master]
GO
/****** Object:  Database [VehicleManagementSystem]    Script Date: 10/09/2018 21:00:11 ******/
CREATE DATABASE [VehicleManagementSystem] ON  PRIMARY 
( NAME = N'VehicleManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\VehicleManagementSystem_data.mdf' , SIZE = 10240KB , MAXSIZE = 51200KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'VehicleManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\VehicleManagementSystem_log.ldf' , SIZE = 10240KB , MAXSIZE = 51200KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [VehicleManagementSystem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VehicleManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VehicleManagementSystem] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET ANSI_NULLS OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET ANSI_PADDING OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET ARITHABORT OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [VehicleManagementSystem] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [VehicleManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [VehicleManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET  ENABLE_BROKER
GO
ALTER DATABASE [VehicleManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [VehicleManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [VehicleManagementSystem] SET  READ_WRITE
GO
ALTER DATABASE [VehicleManagementSystem] SET RECOVERY FULL
GO
ALTER DATABASE [VehicleManagementSystem] SET  MULTI_USER
GO
ALTER DATABASE [VehicleManagementSystem] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [VehicleManagementSystem] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'VehicleManagementSystem', N'ON'
GO
USE [VehicleManagementSystem]
GO
/****** Object:  Table [dbo].[t_temp_driver_license]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_temp_driver_license](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[sex] [char](1) NOT NULL,
	[birthday] [datetime] NULL,
	[folk] [varchar](50) NOT NULL,
	[now_addr] [varchar](200) NULL,
	[old_addr] [varchar](200) NULL,
	[region_no] [varchar](4) NOT NULL,
	[permitted_card_type_no] [varchar](4) NOT NULL,
	[check_man] [varchar](20) NULL,
	[check_date] [datetime] NULL,
	[nation_no] [varchar](10) NOT NULL,
	[status] [char](1) NULL,
	[oper_date] [datetime] NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_oper_id] [varchar](10) NULL,
	[time_stamp] [timestamp] NOT NULL,
	[img_url] [varchar](200) NULL,
	[img0_url] [varchar](200) NULL,
	[img1_url] [varchar](200) NULL,
	[img2_url] [varchar](200) NULL,
	[img3_url] [varchar](200) NULL,
	[img4_url] [varchar](200) NULL,
	[img5_url] [varchar](200) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[id_no] [varchar](50) NULL,
	[ck_ret] [varchar](50) NULL,
	[user_photo_path] [varchar](200) NULL,
 CONSTRAINT [PK__t_temp_d__3213E83F0AD2A005] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_temp_car_license]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_temp_car_license](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[sex] [char](1) NOT NULL,
	[birthday] [datetime] NULL,
	[folk] [varchar](50) NULL,
	[now_addr] [varchar](200) NULL,
	[old_addr] [varchar](200) NULL,
	[region_no] [varchar](4) NOT NULL,
	[permitted_car_type_no] [varchar](4) NOT NULL,
	[check_man] [varchar](20) NULL,
	[check_date] [datetime] NULL,
	[nation_no] [varchar](4) NULL,
	[status] [char](1) NOT NULL,
	[oper_date] [datetime] NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_oper_id] [varchar](10) NULL,
	[time_stamp] [timestamp] NOT NULL,
	[user_photo_path] [varchar](200) NULL,
	[car_1_img_path] [varchar](200) NULL,
	[car_2_img_path] [varchar](200) NULL,
	[engine_no_img_path] [varchar](200) NULL,
	[vin_no_img_path] [varchar](200) NULL,
	[img4_url] [varchar](200) NULL,
	[img5_url] [varchar](200) NULL,
	[car_type] [varchar](200) NULL,
	[temp_number] [varchar](200) NULL,
	[engine_no] [varchar](200) NULL,
	[vin] [varchar](200) NULL,
	[passenger] [varchar](200) NULL,
	[cargo] [varchar](200) NULL,
	[label_type] [varchar](200) NULL,
	[id_no] [varchar](200) NULL,
	[id_card] [varchar](200) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[addr] [varchar](200) NULL,
 CONSTRAINT [PK__t_temp_c__3213E83F1367E606] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_user_group]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_user_group](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](10) NULL,
	[group_id] [decimal](16, 0) NULL,
	[create_id] [varchar](10) NOT NULL,
	[create_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_user]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_user](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[user_pwd] [varchar](100) NOT NULL,
	[user_name] [varchar](100) NOT NULL,
	[sex] [char](1) NOT NULL,
	[age] [int] NOT NULL,
	[tel] [varchar](20) NOT NULL,
	[email] [varchar](50) NULL,
	[status] [char](1) NOT NULL,
	[last_login_time] [datetime] NULL,
	[create_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_role_right]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_role_right](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[role_id] [decimal](16, 0) NOT NULL,
	[res_id] [varchar](4) NOT NULL,
	[grant_id] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_role]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_role](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](100) NOT NULL,
	[create_id] [varchar](10) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[status] [char](1) NOT NULL,
	[memo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_resource_type]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_resource_type](
	[id] [varchar](4) NOT NULL,
	[type_name] [varchar](20) NOT NULL,
	[type_desc] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_resource]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_resource](
	[id] [varchar](4) NOT NULL,
	[pid] [varchar](4) NULL,
	[level] [varchar](10) NOT NULL,
	[res_uri] [varchar](200) NULL,
	[res_img] [varchar](100) NULL,
	[res_desc] [varchar](100) NULL,
	[res_type_id] [varchar](50) NOT NULL,
	[res_type_oper_id] [varchar](50) NOT NULL,
	[create_id] [varchar](10) NULL,
	[create_date] [datetime] NOT NULL,
	[sort_code] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_res_type_operation]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_res_type_operation](
	[id] [varchar](4) NOT NULL,
	[type_id] [varchar](4) NOT NULL,
	[oper_code] [varchar](50) NOT NULL,
	[oper_desc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_print_log]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_print_log](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[ip] [varchar](100) NOT NULL,
	[print_type] [varchar](100) NOT NULL,
	[printer_id] [varchar](10) NOT NULL,
	[print_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_operate_log]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_operate_log](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[region_no] [varchar](4) NULL,
	[oper_desc] [varchar](100) NULL,
	[memo] [varchar](500) NULL,
	[oper_id] [varchar](10) NOT NULL,
	[oper_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_oper_role]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_oper_role](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[role_id] [varchar](100) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_login_log]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_login_log](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[region_no] [varchar](4) NULL,
	[ip] [varchar](100) NOT NULL,
	[login_id] [varchar](10) NOT NULL,
	[login_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_group_role]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_group_role](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[role_id] [decimal](16, 0) NULL,
	[group_id] [decimal](16, 0) NULL,
	[create_id] [varchar](10) NOT NULL,
	[create_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sys_group]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sys_group](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[group_name] [varchar](50) NOT NULL,
	[create_id] [varchar](10) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[status] [char](1) NOT NULL,
	[memo] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_normal_driver_license]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_normal_driver_license](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[id_no] [varchar](50) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[sex] [char](1) NOT NULL,
	[birthday] [datetime] NULL,
	[addr] [varchar](200) NOT NULL,
	[region_no] [varchar](4) NOT NULL,
	[permitted_card_type_no] [varchar](4) NOT NULL,
	[work_unit] [varchar](100) NULL,
	[first_get_license_date] [datetime] NOT NULL,
	[valid_date_start] [datetime] NOT NULL,
	[valid_date_end] [datetime] NOT NULL,
	[status] [char](1) NOT NULL,
	[oper_date] [datetime] NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[modify_date] [datetime] NULL,
	[modiry_oper_id] [varchar](10) NULL,
	[time_stamp] [timestamp] NOT NULL,
	[img_url] [varchar](200) NULL,
	[img0_url] [varchar](200) NULL,
	[img1_url] [varchar](200) NULL,
	[img2_url] [varchar](200) NULL,
	[img3_url] [varchar](200) NULL,
	[img4_url] [varchar](200) NULL,
	[img5_url] [varchar](200) NULL,
	[user_photo_path] [varchar](200) NULL,
	[id_card] [varchar](200) NULL,
	[create_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_normal_car_license]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_normal_car_license](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[id_no] [varchar](50) NOT NULL,
	[car_owner] [varchar](20) NULL,
	[duty] [varchar](50) NULL,
	[work_unit] [varchar](100) NULL,
	[region_no] [varchar](4) NOT NULL,
	[addr] [varchar](200) NULL,
	[plate_no] [varchar](50) NULL,
	[car_type] [varchar](100) NOT NULL,
	[brand_no] [varchar](50) NULL,
	[motor_no] [varchar](100) NOT NULL,
	[carframe_no] [varchar](100) NOT NULL,
	[car_color] [varchar](50) NOT NULL,
	[product_date] [datetime] NOT NULL,
	[issue_license_date] [datetime] NOT NULL,
	[status] [char](1) NOT NULL,
	[oper_date] [datetime] NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_oper_id] [varchar](10) NULL,
	[time_stamp] [timestamp] NOT NULL,
	[user_photo_path] [varchar](200) NULL,
	[car_1_img_path] [varchar](200) NULL,
	[car_2_img_path] [varchar](200) NULL,
	[engine_no_img_path] [varchar](200) NULL,
	[vin_no_img_path] [varchar](200) NULL,
	[img4_url] [varchar](200) NULL,
	[img5_url] [varchar](200) NULL,
	[start_date] [datetime] NULL,
	[sex] [varchar](50) NULL,
	[car_number] [varchar](200) NULL,
	[end_date] [datetime] NULL,
	[name] [nchar](10) NULL,
	[nation] [varchar](50) NULL,
	[passenger] [varchar](200) NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [PK__t_normal__3213E83F0519C6AF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_fire_equipment_register]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_fire_equipment_register](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[eq_name] [varchar](100) NOT NULL,
	[eq_type] [varchar](100) NOT NULL,
	[eq_qty] [int] NOT NULL,
	[install_addr] [varchar](200) NOT NULL,
	[usage_desc] [varchar](200) NOT NULL,
	[install_date] [datetime] NOT NULL,
	[person_liable] [varchar](50) NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[oper_date] [datetime] NOT NULL,
	[modify_oper_id] [varchar](10) NULL,
	[modify_date] [datetime] NULL,
	[time_stamp] [timestamp] NOT NULL,
	[img_url] [varchar](200) NULL,
	[img0_url] [varchar](200) NULL,
	[img1_url] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_fire_accident_records]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_fire_accident_records](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[happen_date] [datetime] NOT NULL,
	[happen_addr] [varchar](200) NULL,
	[accident_desc] [varchar](500) NOT NULL,
	[out_police_cars] [varchar](200) NOT NULL,
	[out_police_mans] [varchar](200) NOT NULL,
	[process_results] [varchar](200) NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[oper_date] [datetime] NOT NULL,
	[modify_oper_id] [varchar](10) NULL,
	[modify_date] [datetime] NULL,
	[time_stamp] [timestamp] NOT NULL,
	[img_url] [varchar](200) NULL,
	[img0_url] [varchar](200) NULL,
	[img1_url] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_bd_region]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_bd_region](
	[region_no] [varchar](4) NOT NULL,
	[region_name] [varchar](50) NOT NULL,
	[memo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[region_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_bd_permitted_car_type]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_bd_permitted_car_type](
	[type_no] [varchar](4) NOT NULL,
	[type_name] [varchar](50) NOT NULL,
	[memo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[type_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_accident_records]    Script Date: 10/09/2018 21:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_accident_records](
	[id] [decimal](16, 0) IDENTITY(1,1) NOT NULL,
	[happen_date] [datetime] NOT NULL,
	[happen_addr] [varchar](200) NULL,
	[first_party_man] [varchar](50) NOT NULL,
	[first_party_addr] [varchar](200) NOT NULL,
	[second_party_man] [varchar](50) NOT NULL,
	[second_party_addr] [varchar](200) NOT NULL,
	[accident_desc] [varchar](500) NOT NULL,
	[mediation_unit] [varchar](200) NOT NULL,
	[mediation_date] [datetime] NOT NULL,
	[draw_recorder] [varchar](50) NOT NULL,
	[accident_mediator] [varchar](50) NOT NULL,
	[oper_id] [varchar](10) NOT NULL,
	[oper_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_oper_id] [varchar](10) NULL,
	[time_stamp] [timestamp] NOT NULL,
	[img_url] [varchar](200) NULL,
	[img0_url] [varchar](200) NULL,
	[img1_url] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__t_temp_dr__statu__0CBAE877]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_temp_driver_license] ADD  CONSTRAINT [DF__t_temp_dr__statu__0CBAE877]  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_temp_ca__statu__15502E78]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_temp_car_license] ADD  CONSTRAINT [DF__t_temp_ca__statu__15502E78]  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_sys_use__creat__4222D4EF]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_user_group] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_sys_use__statu__36B12243]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_user] ADD  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_sys_use__creat__37A5467C]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_user] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_sys_rol__creat__4BAC3F29]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_role] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_sys_rol__statu__4CA06362]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_role] ADD  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_sys_res__creat__5535A963]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_resource] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_sys_ope__oper___2A4B4B5E]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_operate_log] ADD  DEFAULT (getdate()) FOR [oper_date]
GO
/****** Object:  Default [DF__t_sys_gro__creat__46E78A0C]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_group_role] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_sys_gro__creat__3C69FB99]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_group] ADD  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_sys_gro__statu__3D5E1FD2]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_sys_group] ADD  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_normal___statu__014935CB]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_normal_driver_license] ADD  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_normal___oper___023D5A04]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_normal_driver_license] ADD  DEFAULT (getdate()) FOR [oper_date]
GO
/****** Object:  Default [DF_t_normal_driver_license_create_date]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_normal_driver_license] ADD  CONSTRAINT [DF_t_normal_driver_license_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_normal___statu__07020F21]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_normal_car_license] ADD  CONSTRAINT [DF__t_normal___statu__07020F21]  DEFAULT ('0') FOR [status]
GO
/****** Object:  Default [DF__t_normal___oper___07F6335A]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_normal_car_license] ADD  CONSTRAINT [DF__t_normal___oper___07F6335A]  DEFAULT (getdate()) FOR [oper_date]
GO
/****** Object:  Default [DF_t_normal_car_license_create_date]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_normal_car_license] ADD  CONSTRAINT [DF_t_normal_car_license_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
/****** Object:  Default [DF__t_acciden__oper___1DE57479]    Script Date: 10/09/2018 21:00:12 ******/
ALTER TABLE [dbo].[t_accident_records] ADD  DEFAULT (getdate()) FOR [oper_date]
GO
