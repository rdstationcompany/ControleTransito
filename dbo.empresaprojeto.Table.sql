USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[empresaprojeto]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresaprojeto](
	[empresaprojetoid] [int] IDENTITY(1,1) NOT NULL,
	[empresaid] [int] NULL,
	[numeroprocesso] [varchar](50) NULL,
	[finalidade] [char](1) NULL,
	[numeroempregoatual] [int] NULL,
	[numeroempregofuturo] [int] NULL,
	[faturamentoanualatual] [decimal](13, 2) NULL,
	[faturamentoanualfuturo] [decimal](13, 2) NULL,
	[horariofuncionamentomatutino] [varchar](50) NULL,
	[horariofuncionamentovespertino] [varchar](50) NULL,
	[horariofuncionamentonoturno] [varchar](50) NULL,
	[localizacaoempreendimento] [varchar](max) NULL,
	[areanecessariaconstruida] [decimal](13, 2) NULL,
	[areanecessariaterreno] [decimal](13, 2) NULL,
	[investimentoconstrucaoinstalacao] [decimal](13, 2) NULL,
	[investimentomaquinaequipamento] [decimal](13, 2) NULL,
	[investimentooutros] [decimal](13, 2) NULL,
	[investimentofixo] [decimal](13, 2) NULL,
	[capitalgiro] [decimal](13, 2) NULL,
	[investimentototal] [decimal](13, 2) NULL,
	[principalmateriaprimaorigemnacional] [varchar](max) NULL,
	[principalmateriaprimaorigemimportada] [varchar](max) NULL,
	[principalprodutoindustrializado] [varchar](max) NULL,
	[capacidadeunidadeindustrial] [varchar](200) NULL,
	[prazoimplantacaoiniciomes] [int] NULL,
	[prazoimplantacaoinicioano] [int] NULL,
	[prazoimplantacaoterminomes] [int] NULL,
	[prazoimplantacaoterminoano] [int] NULL,
	[iniciooperacaomes] [int] NULL,
	[iniciooperacaoano] [int] NULL,
	[arquivo] [varbinary](max) NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime] NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime] NULL,
 CONSTRAINT [PK_empresaprojeto] PRIMARY KEY CLUSTERED 
(
	[empresaprojetoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[empresaprojeto]  WITH CHECK ADD  CONSTRAINT [fk_empresaprojeto_empresa] FOREIGN KEY([empresaid])
REFERENCES [dbo].[empresa] ([empresaid])
GO
ALTER TABLE [dbo].[empresaprojeto] CHECK CONSTRAINT [fk_empresaprojeto_empresa]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I - Implantar; A - Ampliar; R - Reativar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empresaprojeto', @level2type=N'COLUMN',@level2name=N'finalidade'
GO
