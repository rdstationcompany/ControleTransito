USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[usuariomenu]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuariomenu](
	[usuariomenuid] [int] IDENTITY(15,1) NOT NULL,
	[paiusuariomenuid] [int] NULL,
	[texto] [varchar](100) NULL,
	[url] [varchar](200) NULL,
	[abrirnovajanela] [char](1) NULL,
	[ordem] [int] NULL,
	[tipo] [char](1) NULL,
	[classeicone] [varchar](150) NULL,
	[titulopagina] [varchar](255) NULL,
 CONSTRAINT [PK_usuariomenu_usuariomenuid] PRIMARY KEY CLUSTERED 
(
	[usuariomenuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuariomenu] ON 

INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (15, NULL, N'Análises', N'/Analise/', N'N', 1, N'M', N'fa fa-edit', NULL)
INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (31, 15, N'Analisar Motorista', N'/Analise/AnalisarMotorista', N'N', 1, N'M', NULL, NULL)
INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (32, NULL, N'Municípios', N'/Municipio/', N'N', 1, N'M', NULL, NULL)
INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (33, NULL, N'Situações', N'/Situacao/', N'N', 1, N'M', NULL, NULL)
INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (34, NULL, N'Usuários', N'/Usuario/', N'N', 1, N'M', NULL, NULL)
INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (35, 15, N'Analisar Veículo', N'/Analise/AnalisarVeiculo', N'N', 2, N'M', NULL, NULL)
INSERT [dbo].[usuariomenu] ([usuariomenuid], [paiusuariomenuid], [texto], [url], [abrirnovajanela], [ordem], [tipo], [classeicone], [titulopagina]) VALUES (36, 15, N'Analisar Carroceria', N'/Analise/AnalisarCarroceria', N'N', 3, N'M', NULL, NULL)
SET IDENTITY_INSERT [dbo].[usuariomenu] OFF
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [paiusuariomenuid]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [texto]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [url]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [abrirnovajanela]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [ordem]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [tipo]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [classeicone]
GO
ALTER TABLE [dbo].[usuariomenu] ADD  DEFAULT (NULL) FOR [titulopagina]
GO
ALTER TABLE [dbo].[usuariomenu]  WITH NOCHECK ADD  CONSTRAINT [usuariomenu$fk_paiusuariomenu_usuariomenu] FOREIGN KEY([paiusuariomenuid])
REFERENCES [dbo].[usuariomenu] ([usuariomenuid])
GO
ALTER TABLE [dbo].[usuariomenu] CHECK CONSTRAINT [usuariomenu$fk_paiusuariomenu_usuariomenu]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.usuariomenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuariomenu'
GO
