USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[tipoveiculo]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoveiculo](
	[tipoveiculoid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](200) NULL,
	[status] [varchar](1) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime] NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime] NOT NULL,
 CONSTRAINT [PK_tipoveiculo] PRIMARY KEY CLUSTERED 
(
	[tipoveiculoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tipoveiculo] ON 

INSERT [dbo].[tipoveiculo] ([tipoveiculoid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (1, N'Truck', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tipoveiculo] ([tipoveiculoid], [descricao], [status], [usuarioidalteracao], [datahoraalteracao], [usuarioidinclusao], [datahorainclusao]) VALUES (2, N'Cavalo', N'A', NULL, NULL, NULL, CAST(N'2020-06-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tipoveiculo] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chave Primária do Tipo de Veículo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipoveiculo', @level2type=N'COLUMN',@level2name=N'tipoveiculoid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição do Tipo de Veículo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipoveiculo', @level2type=N'COLUMN',@level2name=N'descricao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status do Tipo de Veículo - Se o campo está Ativo ou Inativo no sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipoveiculo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi alterado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipoveiculo', @level2type=N'COLUMN',@level2name=N'datahoraalteracao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra da Data e Hora que foi realizado o cadastro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipoveiculo', @level2type=N'COLUMN',@level2name=N'datahorainclusao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabela de Cadastro dos Tipos de Veículos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipoveiculo'
GO
