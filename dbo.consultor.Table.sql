USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[consultor]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultor](
	[consultorid] [int] IDENTITY(1,1) NOT NULL,
	[consultoria] [varchar](255) NULL,
	[proprietario] [varchar](255) NULL,
	[telefone] [varchar](20) NULL,
	[celular] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[consultoriaadequado] [varchar](255) NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime2](0) NULL,
	[consultoridsistemaantigo] [int] NULL,
 CONSTRAINT [PK_consultor_consultorid] PRIMARY KEY CLUSTERED 
(
	[consultorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [consultoria]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [proprietario]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [telefone]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [celular]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [consultoriaadequado]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[consultor] ADD  DEFAULT (NULL) FOR [consultoridsistemaantigo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.consultor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'consultor'
GO
