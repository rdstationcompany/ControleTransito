USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[auditlogexcecao]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auditlogexcecao](
	[AuditLogExcecaoId] [int] IDENTITY(5,1) NOT NULL,
	[EntityTypeName] [varchar](max) NULL,
 CONSTRAINT [PK_auditlogexcecao_AuditLogExcecaoId] PRIMARY KEY CLUSTERED 
(
	[AuditLogExcecaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.auditlogexcecao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'auditlogexcecao'
GO
