USE [master]
GO
/****** Object:  Database [Assignment_Coder]    Script Date: 3/20/2023 2:47:22 AM ******/
CREATE DATABASE [Assignment_Coder]
Go
USE [Assignment_Coder]
GO
/****** Object:  Table [dbo].[Account_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Table](
	[phone] [nvarchar](15) NULL,
	[password] [nvarchar](50) NULL,
	[type] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_Table](
	[phone] [nvarchar](15) NULL,
	[codeBill] [nvarchar](10) NOT NULL,
	[dateBill] [datetime] NULL,
 CONSTRAINT [PK__Bill_Tab__14E24880A172CE3C] PRIMARY KEY CLUSTERED 
(
	[codeBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Table](
	[phone] [nvarchar](15) NULL,
	[id] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](200) NULL,
	[size] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[total] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Table](
	[phone] [nvarchar](15) NOT NULL,
	[name_customer] [nvarchar](50) NULL,
	[address_customer] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailBill_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailBill_Table](
	[codeBill] [nvarchar](10) NULL,
	[nameProduct] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[priceProduct] [float] NULL,
	[total] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Table](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[price] [float] NULL,
	[url] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail_Table]    Script Date: 3/20/2023 2:47:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail_Table](
	[id] [nvarchar](50) NULL,
	[dateadd] [date] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Account_Table] ([phone], [password], [type]) VALUES (N'0944549140', N'123456789', N'admin')
INSERT [dbo].[Account_Table] ([phone], [password], [type]) VALUES (N'0944549250', N'123', N'staff')
GO
INSERT [dbo].[Bill_Table] ([phone], [codeBill], [dateBill]) VALUES (N'0944549140', N'Cp9tPoPPQf', CAST(N'2023-03-18T16:04:54.233' AS DateTime))
INSERT [dbo].[Bill_Table] ([phone], [codeBill], [dateBill]) VALUES (N'0944549140', N'el1pnmjiPA', CAST(N'2023-03-20T00:21:28.993' AS DateTime))
INSERT [dbo].[Bill_Table] ([phone], [codeBill], [dateBill]) VALUES (N'0944549140', N'I14av6qXKx', CAST(N'2023-03-20T02:37:24.293' AS DateTime))
INSERT [dbo].[Bill_Table] ([phone], [codeBill], [dateBill]) VALUES (N'0944549140', N'vL6mUX4FZ6', CAST(N'2023-03-20T00:42:32.097' AS DateTime))
GO
INSERT [dbo].[Cart_Table] ([phone], [id], [name], [url], [size], [quantity], [price], [total]) VALUES (NULL, N'ao10', N'áo Hoodie', N'https://mayhopphat.com/wp-content/uploads/2022/05/Ao-hoodie-la-gi-768x1024.jpg', N'S', 1, 35, 35)
GO
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0123456789', N'checkadmin', N'ádfasdf')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0363933712', N'asfasfasdf', N'asdfasdfasdfas')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0911995176', N'tran thi le giang', N'59 le thien tri')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0934535343', N'bo thui', N'58 le thien tri')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0941907586', N'TOan', N'12346')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0944549140', N'tran viet ngoc tam', N'73 nguyen tao , ngu hanh son , da nang')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0944549232', N'hieu', N'da nang')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0944549250', N'hihihaha', N'73 nguyexn tao')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0986545534', N'quan', N'quang nam')
INSERT [dbo].[Customer_Table] ([phone], [name_customer], [address_customer]) VALUES (N'0987654321', N'hieu', N'da nang')
GO
INSERT [dbo].[DetailBill_Table] ([codeBill], [nameProduct], [quantity], [priceProduct], [total]) VALUES (N'Cp9tPoPPQf', N'Shirt', 2, 20, 40)
INSERT [dbo].[DetailBill_Table] ([codeBill], [nameProduct], [quantity], [priceProduct], [total]) VALUES (N'vL6mUX4FZ6', N'Hoodie', 1, 26, 26)
INSERT [dbo].[DetailBill_Table] ([codeBill], [nameProduct], [quantity], [priceProduct], [total]) VALUES (N'vL6mUX4FZ6', N'T-shirt', 1, 35, 35)
INSERT [dbo].[DetailBill_Table] ([codeBill], [nameProduct], [quantity], [priceProduct], [total]) VALUES (N'el1pnmjiPA', N'Hoodie', 1, 82, 82)
INSERT [dbo].[DetailBill_Table] ([codeBill], [nameProduct], [quantity], [priceProduct], [total]) VALUES (N'I14av6qXKx', N'Hoodie', 1, 26, 26)
GO
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a1', N'T-shirt', N'A', 30, N'./assets/imgs/a1.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a10', N'T-shirt', N'AH', 35, N'./assets/imgs/a10.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a11', N'Hoodie', N'AH', 20, N'./assets/imgs/a11.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a12', N'Hoodie', N'A', 25, N'./assets/imgs/a12.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a13', N'Hoodie', N'AH', 26, N'./assets/imgs/a13.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a14', N'Hoodie', N'AH', 28, N'./assets/imgs/a14.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a15', N'Hoodie', N'AS', 35, N'./assets/imgs/a15.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a16', N'Hoodie', N'AS', 34, N'./assets/imgs/a16.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a17', N'Hoodie', N'AS', 31, N'./assets/imgs/a17.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a18', N'Hoodie', N'AH', 29, N'./assets/imgs/a18.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a19', N'Hoodie', N'A', 27, N'./assets/imgs/a19.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a2', N'T-shirt', N'AH', 25, N'./assets/imgs/a2.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a20', N'Hoodie', N'A', 15, N'./assets/imgs/a20.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a21', N'Sweater', N'A', 19, N'./assets/imgs/a21.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a22', N'Sweater', N'AH', 35, N'./assets/imgs/a22.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a23', N'Sweater', N'AH', 34, N'./assets/imgs/a23.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a24', N'Sweater', N'AS', 28, N'./assets/imgs/a24.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a25', N'Sweater', N'AS', 19, N'./assets/imgs/a25.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a3', N'T-shirt', N'A', 25, N'./assets/imgs/a3.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a4', N'T-shirt', N'A', 35, N'./assets/imgs/a4.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a5', N'T-shirt', N'A', 50, N'./assets/imgs/a5.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a6', N'T-shirt', N'AS', 52, N'./assets/imgs/a6.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a7', N'T-shirt', N'A', 26, N'./assets/imgs/a7.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a8', N'T-shirt', N'AS', 28, N'./assets/imgs/a8.jpg
')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'a9', N'T-shirt', N'AS', 50, N'./assets/imgs/a9.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao25', N'Shirt', N'A25', 20, N'./assets/imgs/ao25.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao26', N'Shirt', N'A26', 35, N'./assets/imgs/ao26.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao27', N'Shirt', N'A27', 30, N'./assets/imgs/ao27.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao28', N'Shirt', N'A28', 28, N'./assets/imgs/ao28.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao29', N'Shirt', N'A29', 27, N'./assets/imgs/ao29.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao30', N'Shirt', N'A30', 29, N'./assets/imgs/ao30.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao31', N'Shirt', N'A31', 18, N'./assets/imgs/ao31.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao32', N'Shirt', N'A32', 32, N'./assets/imgs/ao32.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao33', N'Shirt', N'A33', 20, N'./assets/imgs/ao33.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao34', N'Shirt', N'A34', 30, N'./assets/imgs/ao34.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao35', N'Shirt', N'A35', 25, N'./assets/imgs/ao35.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao36', N'Hoodie', N'A36', 35, N'./assets/imgs/ao36.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao37', N'Hoodie', N'A37', 40, N'./assets/imgs/ao37.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao38', N'Hoodie', N'A38', 50, N'./assets/imgs/ao38.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao39', N'Hoodie', N'A39', 26, N'./assets/imgs/ao39.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao40', N'Hoodie', N'A40', 20, N'./assets/imgs/ao40.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao41', N'Hoodie', N'A41', 69, N'./assets/imgs/ao41.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao42', N'Hoodie', N'A42', 82, N'./assets/imgs/ao42.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao43', N'Hoodie', N'A43', 23, N'./assets/imgs/ao43.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao44', N'Hoodie', N'A44', 32, N'./assets/imgs/ao44.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao45', N'Hoodie', N'A45', 21, N'./assets/imgs/ao45.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao46', N'T-Shirt', N'A46', 25, N'./assets/imgs/ao46.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao47', N'T-Shirt', N'A47', 58, N'./assets/imgs/ao47.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao48', N'T-Shirt', N'A48', 12, N'./assets/imgs/ao48.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao49', N'T-Shirt', N'A49', 23, N'./assets/imgs/ao49.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao50', N'T-Shirt', N'A50', 56, N'./assets/imgs/ao50.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao51', N'T-Shirt', N'A51', 12, N'./assets/imgs/ao51.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao52', N'T-Shirt', N'A52', 20, N'./assets/imgs/ao52.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao53', N'T-Shirt', N'A53', 30, N'./assets/imgs/ao53.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao54', N'T-Shirt', N'A54', 40, N'./assets/imgs/ao54.jpg')
INSERT [dbo].[Product_Table] ([id], [name], [type], [price], [url]) VALUES (N'ao55', N'T-Shirt', N'A55', 44, N'./assets/imgs/ao55.jpg')
GO
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao25', CAST(N'2023-02-15' AS Date), 16)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao26', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao27', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao28', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao29', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao30', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao31', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao32', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao33', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao34', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao35', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao36', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao37', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao38', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao39', CAST(N'2023-02-15' AS Date), 19)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao40', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao41', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao42', CAST(N'2023-02-15' AS Date), 19)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao43', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao45', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao46', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao47', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao48', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao49', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'ao50', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a1', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a2', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a3', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a4', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a5', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a6', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a7', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a8', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a9', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a10', CAST(N'2023-02-15' AS Date), 19)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a11', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a12', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a13', CAST(N'2023-02-15' AS Date), 19)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a14', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a15', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a16', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a17', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a18', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a19', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a20', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a21', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a22', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a23', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a24', CAST(N'2023-02-15' AS Date), 20)
INSERT [dbo].[ProductDetail_Table] ([id], [dateadd], [quantity]) VALUES (N'a25', CAST(N'2023-02-15' AS Date), 20)
GO
ALTER TABLE [dbo].[Account_Table]  WITH CHECK ADD  CONSTRAINT [FK__Account_T__phone__3C69FB99] FOREIGN KEY([phone])
REFERENCES [dbo].[Customer_Table] ([phone])
GO
ALTER TABLE [dbo].[Account_Table] CHECK CONSTRAINT [FK__Account_T__phone__3C69FB99]
GO
ALTER TABLE [dbo].[Bill_Table]  WITH CHECK ADD  CONSTRAINT [FK__Bill_Tabl__phone__3F466844] FOREIGN KEY([phone])
REFERENCES [dbo].[Customer_Table] ([phone])
GO
ALTER TABLE [dbo].[Bill_Table] CHECK CONSTRAINT [FK__Bill_Tabl__phone__3F466844]
GO
ALTER TABLE [dbo].[Cart_Table]  WITH CHECK ADD  CONSTRAINT [FK__Cart_Tabl__phone__5CD6CB2B] FOREIGN KEY([phone])
REFERENCES [dbo].[Customer_Table] ([phone])
GO
ALTER TABLE [dbo].[Cart_Table] CHECK CONSTRAINT [FK__Cart_Tabl__phone__5CD6CB2B]
GO
ALTER TABLE [dbo].[DetailBill_Table]  WITH CHECK ADD  CONSTRAINT [FK__DetailBil__codeB__412EB0B6] FOREIGN KEY([codeBill])
REFERENCES [dbo].[Bill_Table] ([codeBill])
GO
ALTER TABLE [dbo].[DetailBill_Table] CHECK CONSTRAINT [FK__DetailBil__codeB__412EB0B6]
GO
ALTER TABLE [dbo].[ProductDetail_Table]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Product_Table] ([id])
GO
USE [master]
GO
ALTER DATABASE [Assignment_Coder] SET  READ_WRITE 
GO
