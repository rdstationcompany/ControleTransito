USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[cadeiaprodutiva]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cadeiaprodutiva](
	[cadeiaprodutivaid] [int] IDENTITY(4,1) NOT NULL,
	[descricao] [varchar](255) NULL,
	[situacao] [char](1) NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime2](0) NULL,
	[cadeiaprodutivaidsistemaantigo] [int] NULL,
 CONSTRAINT [PK_cadeiaprodutiva_cadeiaprodutivaid] PRIMARY KEY CLUSTERED 
(
	[cadeiaprodutivaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [descricao]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [situacao]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[cadeiaprodutiva] ADD  DEFAULT (NULL) FOR [cadeiaprodutivaidsistemaantigo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.cadeiaprodutiva' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cadeiaprodutiva'
GO
