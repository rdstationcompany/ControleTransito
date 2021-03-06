USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[situacaocadastro]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[situacaocadastro](
	[situacaocadastroid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NULL,
	[status] [varchar](1) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime] NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime] NOT NULL,
 CONSTRAINT [PK_situacaocadastro] PRIMARY KEY CLUSTERED 
(
	[situacaocadastroid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[situacaocadastro] ON 

INSERT [dbo].[situacaocadastro] ([situacaocadastroid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (1, N'Em Análise', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[situacaocadastro] ([situacaocadastroid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (2, N'Ativo', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[situacaocadastro] ([situacaocadastroid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (3, N'Cancelado', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[situacaocadastro] ([situacaocadastroid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (4, N'Suspenso', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[situacaocadastro] ([situacaocadastroid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (5, N'Inativo', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[situacaocadastro] ([situacaocadastroid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (6, N'Reprovado', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[situacaocadastro] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave Primária da Situação do Cadastro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'situacaocadastro', @level2type=N'COLUMN',@level2name=N'situacaocadastroid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição da Situação do Cadastro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'situacaocadastro', @level2type=N'COLUMN',@level2name=N'descricao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status da Situação do Cadastro - Se o campo está Ativo ou Inativo no sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'situacaocadastro', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi alterado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'situacaocadastro', @level2type=N'COLUMN',@level2name=N'datahoraalteracao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi realizado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'situacaocadastro', @level2type=N'COLUMN',@level2name=N'datahorainclusao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabela de Cadastro das Situações. - Em Análise / Ativo / Cancelado / Suspenso / Inativo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'situacaocadastro'
GO
