USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[processosituacao]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processosituacao](
	[processosituacaoid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](255) NULL,
	[descricaoadequada] [varchar](255) NULL,
	[situacao] [char](1) NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime2](0) NULL,
	[processosituacaoidsistemaantigo] [int] NULL,
 CONSTRAINT [PK_processosituacao_processosituacaoid] PRIMARY KEY CLUSTERED 
(
	[processosituacaoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [descricao]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [descricaoadequada]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [situacao]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[processosituacao] ADD  DEFAULT (NULL) FOR [processosituacaoidsistemaantigo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.processosituacao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'processosituacao'
GO
