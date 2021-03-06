USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[usuariomenuacao]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuariomenuacao](
	[usuariomenuacaoid] [int] IDENTITY(1,1) NOT NULL,
	[usuariomenuid] [int] NOT NULL,
	[menuacaoid] [int] NOT NULL,
	[situacao] [char](1) NULL,
	[usuarioidinclusao] [int] NULL,
	[usuarioidalteracao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[datahoraalteracao] [datetime2](0) NULL,
 CONSTRAINT [PK_usuariomenuacao_usuariomenuacaoid] PRIMARY KEY CLUSTERED 
(
	[usuariomenuacaoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuariomenuacao] ADD  DEFAULT (NULL) FOR [situacao]
GO
ALTER TABLE [dbo].[usuariomenuacao] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[usuariomenuacao] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[usuariomenuacao] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[usuariomenuacao] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[usuariomenuacao]  WITH NOCHECK ADD  CONSTRAINT [usuariomenuacao$fk_usuariomenuacao_menuacao] FOREIGN KEY([menuacaoid])
REFERENCES [dbo].[menuacao] ([menuacaoid])
GO
ALTER TABLE [dbo].[usuariomenuacao] CHECK CONSTRAINT [usuariomenuacao$fk_usuariomenuacao_menuacao]
GO
ALTER TABLE [dbo].[usuariomenuacao]  WITH NOCHECK ADD  CONSTRAINT [usuariomenuacao$fk_usuariomenuacao_usuariomenu] FOREIGN KEY([usuariomenuid])
REFERENCES [dbo].[usuariomenu] ([usuariomenuid])
GO
ALTER TABLE [dbo].[usuariomenuacao] CHECK CONSTRAINT [usuariomenuacao$fk_usuariomenuacao_usuariomenu]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.usuariomenuacao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuariomenuacao'
GO
