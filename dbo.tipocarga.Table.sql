USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[tipocarga]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipocarga](
	[tipocargaid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](200) NULL,
	[status] [varchar](1) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime] NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime] NOT NULL,
 CONSTRAINT [PK_tipocarga] PRIMARY KEY CLUSTERED 
(
	[tipocargaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tipocarga] ON 

INSERT [dbo].[tipocarga] ([tipocargaid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (1, N'Carga Viva', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tipocarga] ([tipocargaid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (2, N'Graneleiro', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tipocarga] ([tipocargaid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (3, N'Produtos e Subprodutos', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tipocarga] ([tipocargaid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (4, N'Importados', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tipocarga] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave Primária do Tipo de Carga' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipocarga', @level2type=N'COLUMN',@level2name=N'tipocargaid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status do Tipo de Carga - Se o campo está Ativo ou Inativo no sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipocarga', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi alterado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipocarga', @level2type=N'COLUMN',@level2name=N'usuarioidalteracao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi alterado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipocarga', @level2type=N'COLUMN',@level2name=N'datahoraalteracao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi realizado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipocarga', @level2type=N'COLUMN',@level2name=N'datahorainclusao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabela de Cadastro dos Tipos de Cargas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipocarga'
GO
