USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[usuarioperfil]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarioperfil](
	[usuarioperfilid] [int] IDENTITY(3,1) NOT NULL,
	[usuarioid] [int] NOT NULL,
	[perfilid] [int] NOT NULL,
 CONSTRAINT [PK_usuarioperfil_usuarioperfilid] PRIMARY KEY CLUSTERED 
(
	[usuarioperfilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuarioperfil] ON 

INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (3, 2, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (4, 3, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (5, 4, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (6, 5, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (7, 6, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (8, 7, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (9, 8, 3)
INSERT [dbo].[usuarioperfil] ([usuarioperfilid], [usuarioid], [perfilid]) VALUES (10, 9, 3)
SET IDENTITY_INSERT [dbo].[usuarioperfil] OFF
GO
ALTER TABLE [dbo].[usuarioperfil]  WITH NOCHECK ADD  CONSTRAINT [usuarioperfil$fk_usuarioperfil_perfil] FOREIGN KEY([perfilid])
REFERENCES [dbo].[perfil] ([perfilid])
GO
ALTER TABLE [dbo].[usuarioperfil] CHECK CONSTRAINT [usuarioperfil$fk_usuarioperfil_perfil]
GO
ALTER TABLE [dbo].[usuarioperfil]  WITH NOCHECK ADD  CONSTRAINT [usuarioperfil$fk_usuarioperfil_usuario] FOREIGN KEY([usuarioid])
REFERENCES [dbo].[usuario] ([usuarioid])
GO
ALTER TABLE [dbo].[usuarioperfil] CHECK CONSTRAINT [usuarioperfil$fk_usuarioperfil_usuario]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.usuarioperfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usuarioperfil'
GO
