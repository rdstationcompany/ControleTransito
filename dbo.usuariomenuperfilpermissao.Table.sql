USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[usuariomenuperfilpermissao]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuariomenuperfilpermissao](
	[usuariomenuperfilpermissaoid] [int] IDENTITY(15,1) NOT NULL,
	[usuariomenuid] [int] NOT NULL,
	[perfilid] [int] NOT NULL,
 CONSTRAINT [PK_usuariomenuperfilpermissao_usuariomenuperfilpermissaoid] PRIMARY KEY CLUSTERED 
(
	[usuariomenuperfilpermissaoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuariomenuperfilpermissao] ON 

INSERT [dbo].[usuariomenuperfilpermissao] ([usuariomenuperfilpermissaoid], [usuariomenuid], [perfilid]) VALUES (19, 15, 3)
INSERT [dbo].[usuariomenuperfilpermissao] ([usuariomenuperfilpermissaoid], [usuariomenuid], [perfilid]) VALUES (20, 31, 3)
INSERT [dbo].[usuariomenuperfilpermissao] ([usuariomenuperfilpermissaoid], [usuariomenuid], [perfilid]) VALUES (24, 35, 3)
INSERT [dbo].[usuariomenuperfilpermissao] ([usuariomenuperfilpermissaoid], [usuariomenuid], [perfilid]) VALUES (25, 36, 3)
SET IDENTITY_INSERT [dbo].[usuariomenuperfilpermissao] OFF
GO
ALTER TABLE [dbo].[usuariomenuperfilpermissao]  WITH NOCHECK ADD  CONSTRAINT [usuariomenuperfilpermissao$FK_usuariomenuperfilpermissao_perfil] FOREIGN KEY([perfilid])
REFERENCES [dbo].[perfil] ([perfilid])
GO
ALTER TABLE [dbo].[usuariomenuperfilpermissao] CHECK CONSTRAINT [usuariomenuperfilpermissao$FK_usuariomenuperfilpermissao_perfil]
GO
ALTER TABLE [dbo].[usuariomenuperfilpermissao]  WITH NOCHECK ADD  CONSTRAINT [usuariomenuperfilpermissao$FK_usuariomenuperfilpermissao_usuariomenu] FOREIGN KEY([usuariomenuid])
REFERENCES [dbo].[usuariomenu] ([usuariomenuid])
GO
ALTER TABLE [dbo].[usuariomenuperfilpermissao] CHECK CONSTRAINT [usuariomenuperfilpermissao$FK_usuariomenuperfilpermissao_usuariomenu]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.usuariomenuperfilpermissao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuariomenuperfilpermissao'
GO
