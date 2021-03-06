USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[analise]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analise](
	[analiseid] [int] IDENTITY(1,1) NOT NULL,
	[motoristaid] [int] NULL,
	[veiculoid] [int] NULL,
	[carroceriaid] [int] NULL,
	[usuarioid] [int] NULL,
	[datahoraanalise] [datetime] NOT NULL,
	[situacaocadastroid] [int] NULL,
	[observacao] [varchar](max) NULL,
 CONSTRAINT [PK_analise] PRIMARY KEY CLUSTERED 
(
	[analiseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[analise] ON 

INSERT [dbo].[analise] ([analiseid], [motoristaid], [veiculoid], [carroceriaid], [usuarioid], [datahoraanalise], [situacaocadastroid], [observacao]) VALUES (56, NULL, 56, NULL, 4, CAST(N'2021-01-07T09:41:19.337' AS DateTime), 2, N'VALIDADO')
INSERT [dbo].[analise] ([analiseid], [motoristaid], [veiculoid], [carroceriaid], [usuarioid], [datahoraanalise], [situacaocadastroid], [observacao]) VALUES (57, NULL, 72, NULL, 4, CAST(N'2021-01-07T09:42:07.980' AS DateTime), 2, N'VALIDADO')
INSERT [dbo].[analise] ([analiseid], [motoristaid], [veiculoid], [carroceriaid], [usuarioid], [datahoraanalise], [situacaocadastroid], [observacao]) VALUES (58, NULL, 81, NULL, 4, CAST(N'2021-01-07T09:43:52.357' AS DateTime), 2, N'VALIDADO')
SET IDENTITY_INSERT [dbo].[analise] OFF
GO
ALTER TABLE [dbo].[analise]  WITH CHECK ADD  CONSTRAINT [FK_analise_situacaocadastro] FOREIGN KEY([situacaocadastroid])
REFERENCES [dbo].[situacaocadastro] ([situacaocadastroid])
GO
ALTER TABLE [dbo].[analise] CHECK CONSTRAINT [FK_analise_situacaocadastro]
GO
