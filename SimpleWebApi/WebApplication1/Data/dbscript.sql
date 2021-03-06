USE [master]
GO

CREATE DATABASE [Question]
GO

USE [Question]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[QuestionId] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([Id], [Content], [QuestionId], [UpdatedDate], [UserId]) VALUES (1, N'I am good', 1, CAST(0x0000A85C00000000 AS DateTime), 7)
INSERT [dbo].[Answer] ([Id], [Content], [QuestionId], [UpdatedDate], [UserId]) VALUES (2, N'I am fine', 1, CAST(0x0000A85C00000000 AS DateTime), 8)
INSERT [dbo].[Answer] ([Id], [Content], [QuestionId], [UpdatedDate], [UserId]) VALUES (3, N'No, I am not', 2, CAST(0x0000A85C00000000 AS DateTime), 6)
INSERT [dbo].[Answer] ([Id], [Content], [QuestionId], [UpdatedDate], [UserId]) VALUES (4, N'Yes, ha ha', 2, CAST(0x0000A85C00000000 AS DateTime), 9)
INSERT [dbo].[Answer] ([Id], [Content], [QuestionId], [UpdatedDate], [UserId]) VALUES (5, N'Your are so fun', 3, CAST(0x0000A85C00000000 AS DateTime), 55)
INSERT [dbo].[Answer] ([Id], [Content], [QuestionId], [UpdatedDate], [UserId]) VALUES (6, N'Fuck you', 4, CAST(0x0000A85C00000000 AS DateTime), 33)
SET IDENTITY_INSERT [dbo].[Answer] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([Id], [Content], [UserId], [UpdatedDate]) VALUES (1, N'How are you ?', 4, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[Question] ([Id], [Content], [UserId], [UpdatedDate]) VALUES (2, N'Are you crazy ?', 5, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[Question] ([Id], [Content], [UserId], [UpdatedDate]) VALUES (3, N'What do you do ?', 5, CAST(0x0000A85B00000000 AS DateTime))
INSERT [dbo].[Question] ([Id], [Content], [UserId], [UpdatedDate]) VALUES (4, N'Do you have girlfriend ?', 5, CAST(0x0000A85B00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Question] OFF
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
