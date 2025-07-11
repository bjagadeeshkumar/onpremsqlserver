USE [master]
GO
/****** Object:  Database [JKLG]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE DATABASE [JKLG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'master', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\JKLG.mdf' , SIZE = 5504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'mastlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\JKLG_log.ldf' , SIZE = 1280KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [JKLG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JKLG].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [JKLG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JKLG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JKLG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JKLG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JKLG] SET ARITHABORT OFF 
GO
ALTER DATABASE [JKLG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JKLG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JKLG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JKLG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JKLG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JKLG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JKLG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JKLG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JKLG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JKLG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JKLG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JKLG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JKLG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JKLG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JKLG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JKLG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JKLG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JKLG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JKLG] SET  MULTI_USER 
GO
ALTER DATABASE [JKLG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JKLG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JKLG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JKLG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JKLG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JKLG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JKLG', N'ON'
GO
ALTER DATABASE [JKLG] SET QUERY_STORE = OFF
GO
USE [JKLG]
GO
/****** Object:  User [jklg]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE USER [jklg] FOR LOGIN [jklg] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [JK\JAGADEESH KUMAR B]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE USER [JK\JAGADEESH KUMAR B] FOR LOGIN [JK\JAGADEESH KUMAR B] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
ALTER ROLE [db_owner] ADD MEMBER [JK\JAGADEESH KUMAR B]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [JK\JAGADEESH KUMAR B]
GO
/****** Object:  Schema [production]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE SCHEMA [production]
GO
/****** Object:  Schema [sales]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE SCHEMA [sales]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[City] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[Phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTable]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTable](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Age] [int] NULL,
	[Phone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EMPNO] [varchar](10) NULL,
	[EMP_NAME] [varchar](20) NULL,
	[DEPT] [varchar](20) NULL,
	[SALARY] [varchar](20) NULL,
	[DOJ] [date] NULL,
	[BRANCH] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderNumber] [nvarchar](10) NULL,
	[CustomerId] [int] NOT NULL,
	[TotalAmount] [decimal](12, 2) NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [decimal](12, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ORDERITEM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Package] [nvarchar](30) NULL,
	[IsDiscontinued] [bit] NOT NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTitle] [nvarchar](40) NULL,
	[City] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[Phone] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
 CONSTRAINT [PK_SUPPLIER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[brands]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[brands](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[categories]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[products]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[model_year] [smallint] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[stocks]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[stocks](
	[store_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[customers]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[email] [varchar](255) NOT NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](25) NULL,
	[zip_code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[order_items]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[order_items](
	[order_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
	[discount] [decimal](4, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[orders]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[order_status] [tinyint] NOT NULL,
	[order_date] [date] NOT NULL,
	[required_date] [date] NOT NULL,
	[shipped_date] [date] NULL,
	[store_id] [int] NOT NULL,
	[staff_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[staffs]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[staffs](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[active] [tinyint] NOT NULL,
	[store_id] [int] NOT NULL,
	[manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[stores]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[stores](
	[store_id] [int] IDENTITY(1,1) NOT NULL,
	[store_name] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[email] [varchar](255) NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[state] [varchar](10) NULL,
	[zip_code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndexCustomerName]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexCustomerName] ON [dbo].[Customer]
(
	[LastName] ASC,
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IndexOrderCustomerId]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexOrderCustomerId] ON [dbo].[Order]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IndexOrderOrderDate]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexOrderOrderDate] ON [dbo].[Order]
(
	[OrderDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IndexOrderItemOrderId]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexOrderItemOrderId] ON [dbo].[OrderItem]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IndexOrderItemProductId]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexOrderItemProductId] ON [dbo].[OrderItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndexProductName]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexProductName] ON [dbo].[Product]
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IndexProductSupplierId]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexProductSupplierId] ON [dbo].[Product]
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndexSupplierCountry]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexSupplierCountry] ON [dbo].[Supplier]
(
	[Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndexSupplierName]    Script Date: 7/2/2025 6:54:27 PM ******/
CREATE NONCLUSTERED INDEX [IndexSupplierName] ON [dbo].[Supplier]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [IsDiscontinued]
GO
ALTER TABLE [sales].[order_items] ADD  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_REFERENCE_CUSTOMER] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_ORDER_REFERENCE_CUSTOMER]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_REFERENCE_ORDER] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ORDERITE_REFERENCE_ORDER]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_REFERENCE_PRODUCT] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ORDERITE_REFERENCE_PRODUCT]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_REFERENCE_SUPPLIER] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_PRODUCT_REFERENCE_SUPPLIER]
GO
ALTER TABLE [production].[products]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [production].[brands] ([brand_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [production].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [production].[categories] ([category_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [production].[stocks]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [production].[products] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [production].[stocks]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[order_items]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [sales].[orders] ([order_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[order_items]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [production].[products] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [sales].[customers] ([customer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [sales].[staffs] ([staff_id])
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[staffs]  WITH CHECK ADD FOREIGN KEY([manager_id])
REFERENCES [sales].[staffs] ([staff_id])
GO
ALTER TABLE [sales].[staffs]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerTable]  WITH CHECK ADD CHECK  (([Age]>=(0) AND [Age]<=(99)))
GO
/****** Object:  StoredProcedure [dbo].[Employees]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Employees] as select concat("FIRST_NAME","LAST_NAME") AS EmpName,DEPARTMENT_ID,JOB_ID,SALARY ,
RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC) AS EMP_RANK
from employees
GO
/****** Object:  StoredProcedure [dbo].[sp_get_ip_address]    Script Date: 7/2/2025 6:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_get_ip_address] (@ip varchar(40) out)
as
begin
Declare @ipLine varchar(200)
Declare @pos int
set nocount on
          set @ip = NULL
          Create table #temp (ipLine varchar(200))
          Insert #temp exec master..xp_cmdshell 'ipconfig'
          select @ipLine = ipLine
          from #temp
          where upper (ipLine) like '%IP ADDRESS%'
          if (isnull (@ipLine,'***') != '***')
          begin 
                set @pos = CharIndex (':',@ipLine,1);
                set @ip = rtrim(ltrim(substring (@ipLine , 
               @pos + 1 ,
                len (@ipLine) - @pos)))
           end 
drop table #temp
set nocount off
end 
GO
USE [master]
GO
ALTER DATABASE [JKLG] SET  READ_WRITE 
GO
