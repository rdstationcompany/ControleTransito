USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[perfil]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil](
	[perfilid] [int] IDENTITY(3,1) NOT NULL,
	[descricao] [varchar](150) NULL,
	[situacao] [char](1) NULL,
	[usuarioidinclusao] [int] NULL,
	[usuarioidalteracao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[datahoraalteracao] [datetime2](0) NULL,
 CONSTRAINT [PK_perfil_perfilid] PRIMARY KEY CLUSTERED 
(
	[perfilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[perfil] ON 

INSERT [dbo].[perfil] ([perfilid], [descricao], [situacao], [usuarioidinclusao], [usuarioidalteracao], [datahorainclusao], [datahoraalteracao]) VALUES (3, N'ADMINISTRADOR', N'A', 1, NULL, CAST(N'2020-06-17T10:50:40.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[perfil] OFF
GO
ALTER TABLE [dbo].[perfil] ADD  DEFAULT (NULL) FOR [descricao]
GO
ALTER TABLE [dbo].[perfil] ADD  DEFAULT (NULL) FOR [situacao]
GO
ALTER TABLE [dbo].[perfil] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[perfil] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[perfil] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[perfil] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.perfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'perfil'
GO
