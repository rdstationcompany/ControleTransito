USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[usuarioid] [int] IDENTITY(2,1) NOT NULL,
	[nome] [varchar](200) NULL,
	[login] [varchar](200) NULL,
	[senha] [varchar](100) NULL,
	[email] [varchar](150) NULL,
	[telefone] [varchar](20) NULL,
	[situacao] [char](1) NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime2](0) NULL,
	[usuarioidsistemaantigo] [int] NULL,
 CONSTRAINT [PK_usuario_usuarioid] PRIMARY KEY CLUSTERED 
(
	[usuarioid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (2, N'ADMINISTRADOR', N'ADMIN', N'202CB962AC59075B964B07152D234B70', N'RAFAELHITZ@GMAIL.COM', N'67992823915', N'A', 1, CAST(N'2020-06-17T15:11:47.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (3, N'RODOLFO ALDROVANDI PEDRA', N'rpedra', N'202CB962AC59075B964B07152D234B70', N'rodolfo@aderencia.com.br', NULL, N'A', 1, CAST(N'2020-07-24T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (4, N'Márcia Maria Arakaki Rabelo', N'mrabelo', N'202CB962AC59075B964B07152D234B70', N'mrabelo@iagro.ms.gov.br', NULL, N'A', 1, CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (5, N'Marcelo Sebastião Marcondes de Sousa', N'msousa', N'202CB962AC59075B964B07152D234B70', N'msousa@iagro.ms.gov.br', NULL, N'A', 1, CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (6, N'Letícia Marie Lira Umeda', N'lumeda', N'202CB962AC59075B964B07152D234B70', N'lumeda@iagro.ms.gov.br', NULL, N'A', 1, CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (7, N'Robson Campos dos Anjos', N'ranjos', N'202CB962AC59075B964B07152D234B70', N'ranjos@iagro.ms.gov.br', NULL, N'A', 1, CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (8, N'Marco Aurélio Guimarães', N'mguimaraes', N'202CB962AC59075B964B07152D234B70', N'mguimaraes@iagro.ms.gov.br', NULL, N'A', 1, CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[usuario] ([usuarioid], [nome], [login], [senha], [email], [telefone], [situacao], [usuarioidinclusao], [datahorainclusao], [usuarioidalteracao], [datahoraalteracao], [usuarioidsistemaantigo]) VALUES (9, N'CAROLINE SAKAMOTO CARDOSO', N'csakamoto', N'202CB962AC59075B964B07152D234B70', N'csakamoto@iagro.ms.gov.br', NULL, N'A', 1, CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [nome]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [login]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [senha]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [telefone]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [situacao]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (NULL) FOR [usuarioidsistemaantigo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuario'
GO
