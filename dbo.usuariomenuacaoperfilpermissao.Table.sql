USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[usuariomenuacaoperfilpermissao]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuariomenuacaoperfilpermissao](
	[usuariomenuacaoperfilpermissaoid] [int] IDENTITY(1,1) NOT NULL,
	[usuariomenuacaoid] [int] NOT NULL,
	[perfilid] [int] NOT NULL,
 CONSTRAINT [PK_usuariomenuacaoperfilpermissao_usuariomenuacaoperfilpermissaoid] PRIMARY KEY CLUSTERED 
(
	[usuariomenuacaoperfilpermissaoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usuariomenuacaoperfilpermissao]  WITH NOCHECK ADD  CONSTRAINT [usuariomenuacaoperfilpermissao$fk_usuariomenuacaoperfilpermissao_perfil] FOREIGN KEY([perfilid])
REFERENCES [dbo].[perfil] ([perfilid])
GO
ALTER TABLE [dbo].[usuariomenuacaoperfilpermissao] CHECK CONSTRAINT [usuariomenuacaoperfilpermissao$fk_usuariomenuacaoperfilpermissao_perfil]
GO
ALTER TABLE [dbo].[usuariomenuacaoperfilpermissao]  WITH NOCHECK ADD  CONSTRAINT [usuariomenuacaoperfilpermissao$fk_usuariomenuacaoperfilpermissao_usuariomenuacao] FOREIGN KEY([usuariomenuacaoid])
REFERENCES [dbo].[usuariomenuacao] ([usuariomenuacaoid])
GO
ALTER TABLE [dbo].[usuariomenuacaoperfilpermissao] CHECK CONSTRAINT [usuariomenuacaoperfilpermissao$fk_usuariomenuacaoperfilpermissao_usuariomenuacao]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.usuariomenuacaoperfilpermissao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuariomenuacaoperfilpermissao'
GO
