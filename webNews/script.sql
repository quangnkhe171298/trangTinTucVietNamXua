
USE [News]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Image] [text] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[comment] [nchar](500) NULL,
	[time] [date] NULL,
	[new_id] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NOT NULL,
	[description] [text] NOT NULL,
	[image] [text] NOT NULL,
	[author] [int] NOT NULL,
	[timePost] [date] NOT NULL,
	[shortDes] [text] NOT NULL,
	[categoryId] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleId] [int] NULL,
	[fullname] [varchar](150) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name],[Image]) VALUES (1, N'Ancient Vietnamese People', N'https://nhacxua.vn/wp-content/uploads/2020/09/nam-phuong-20.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Image]) VALUES (2, N'Old Hanoi', N'https://chuyenxua.net/wp-content/uploads/2023/06/khong-anh-ha-noi-48.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Image]) VALUES (3, N'Old Saigon', N'https://nhacxua.vn/wp-content/uploads/2020/12/leloinguyenhue-24.jpg')
INSERT [dbo].[Category] ([Id], [Name], [Image]) VALUES (4, N'Ancient Arts', N'https://nhacxua.vn/wp-content/uploads/2020/08/ban-tl.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([id], [user_id], [comment], [time], [new_id]) VALUES (1, 2, N'The photos are precious', CAST(N'2023-03-20' AS Date), 4)
INSERT [dbo].[Comment] ([id], [user_id], [comment], [time], [new_id]) VALUES (2, 5, N'So beautiful!!!', CAST(N'2023-03-20' AS Date), 4)
INSERT [dbo].[Comment] ([id], [user_id], [comment], [time], [new_id]) VALUES (3, 5, N'Very useful information.', CAST(N'2023-03-20' AS Date), 7)
INSERT [dbo].[Comment] ([id], [user_id], [comment], [time], [new_id]) VALUES (6, 3, N'Thank you', CAST(N'2023-03-20' AS Date), 6)
INSERT [dbo].[Comment] ([id], [user_id], [comment], [time], [new_id]) VALUES (7, 3, N'LOL', CAST(N'2023-03-20' AS Date), 6)
INSERT [dbo].[Comment] ([id], [user_id], [comment], [time], [new_id]) VALUES (8, 3, N'Useful', CAST(N'2023-03-20' AS Date), 6)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [title], [description], [image], [author], [timePost], [shortDes], [categoryId]) VALUES (1, N'THE LIFE OF KING BAO DAI THROUGH PHOTOS – PART 1: THE LAST Emperor', N'Bao Dai was the 13th and last emperor of the Nguyen Dynasty, also the last emperor of the monarchy in Vietnamese history. His life went through many ups and downs in the midst of many ups and downs, was born and became a king in the midst of the colonial rule of the country, and then died in exile. This series of photos will vividly recount the life of the last emperor, with part 1 depicting the princes childhood, up to the time he became king, and then abdicated in 1945.', N'https://chuyenxua.net/wp-content/uploads/2022/06/bao-dai21.jpg', 2, CAST(N'2023-03-18' AS Date), N'Emperor Bao Dai, whose real name is Nguyen Phuc Vinh Thuy, was born on October 22, 1913 in the imperial city of Hue, the only son of King Khai Dinh, whose mother is Hoang Thi Cuc.', 1)
INSERT [dbo].[News] ([ID], [title], [description], [image], [author], [timePost], [shortDes], [categoryId]) VALUES (2, N'MEMORY OF LIFE IN HANOI IN THE HIGH TIME', N'Those were the years when we lived in the dormitory of middle and high-ranking officials of the Central Office, but even so, daily life cannot avoid the common difficulties of the country. We lived a carefree life like many young people and witnessed the ups and downs of a post-war Hanoi.', N'https://chuyenxua.net/wp-content/uploads/2023/06/hn.jpg', 2, CAST(N'2023-03-18' AS Date), N'Every day we have to cook for our family in the communal kitchen, cook with firewood, sawdust, even with dried mother-of-pearl leaves, but in the afternoon after studying, we go to sweep together from Nguyen street Canh Chan and then round to Hoang Van Thu Street are streets with many mother of pearl trees and empty of people.', 2)

SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'user')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'author')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [username], [password], [roleId], [fullname]) VALUES (1, N'admin', N'admin', 1, N'Admin')
INSERT [dbo].[Users] ([id], [username], [password], [roleId], [fullname]) VALUES (2, N'user', N'123', 2, N'User')
INSERT [dbo].[Users] ([id], [username], [password], [roleId], [fullname]) VALUES (3, N'abc', N'abc', 2, N'User')
INSERT [dbo].[Users] ([id], [username], [password], [roleId], [fullname]) VALUES (4, N'author', N'123', 3, N'Author')
INSERT [dbo].[Users] ([id], [username], [password], [roleId], [fullname]) VALUES (5, N'kiemnguyen', N'123', 3, N'Author')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [TinTuc] SET  READ_WRITE 
GO
