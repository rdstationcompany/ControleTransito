USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[empresaid] [int] IDENTITY(1,1) NOT NULL,
	[razaosocial] [varchar](255) NULL,
	[cnpj] [varchar](14) NULL,
	[inscricaoestadual] [varchar](14) NULL,
	[dataconstituicao] [date] NULL,
	[cep] [varchar](8) NULL,
	[logradouro] [varchar](255) NULL,
	[numero] [varchar](10) NULL,
	[bairro] [varchar](255) NULL,
	[complemento] [varchar](255) NULL,
	[uf] [char](2) NULL,
	[municipioid] [int] NULL,
	[telefone] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[objetivosocial] [varchar](max) NULL,
	[ramoatividade] [varchar](max) NULL,
	[principaisprodutos] [varchar](max) NULL,
	[contatonome] [varchar](255) NULL,
	[contatocpf] [varchar](11) NULL,
	[contatorg] [varchar](20) NULL,
	[contatocargo] [varchar](150) NULL,
	[contatocep] [varchar](8) NULL,
	[contatologradouro] [varchar](255) NULL,
	[contatonumero] [varchar](10) NULL,
	[contatobairro] [varchar](255) NULL,
	[contatocomplemento] [varchar](255) NULL,
	[contatouf] [char](2) NULL,
	[contatomunicipioid] [int] NULL,
	[contatotelefone] [varchar](20) NULL,
	[contatoemail] [varchar](255) NULL,
	[observacao] [varchar](max) NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime2](0) NULL,
	[empresaidsistemaantigo] [int] NULL,
 CONSTRAINT [PK_empresa_empresaid] PRIMARY KEY CLUSTERED 
(
	[empresaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__razaoso__6D0D32F4]  DEFAULT (NULL) FOR [razaosocial]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__cnpj__6E01572D]  DEFAULT (NULL) FOR [cnpj]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__inscric__6EF57B66]  DEFAULT (NULL) FOR [inscricaoestadual]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__cep__6FE99F9F]  DEFAULT (NULL) FOR [cep]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__logrado__70DDC3D8]  DEFAULT (NULL) FOR [logradouro]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__numero__71D1E811]  DEFAULT (NULL) FOR [numero]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__bairro__72C60C4A]  DEFAULT (NULL) FOR [bairro]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__complem__73BA3083]  DEFAULT (NULL) FOR [complemento]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__uf__75A278F5]  DEFAULT (NULL) FOR [uf]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__municip__74AE54BC]  DEFAULT (NULL) FOR [municipioid]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__telefon__76969D2E]  DEFAULT (NULL) FOR [telefone]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__email__787EE5A0]  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__797309D9]  DEFAULT (NULL) FOR [contatonome]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__7A672E12]  DEFAULT (NULL) FOR [contatocep]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__7B5B524B]  DEFAULT (NULL) FOR [contatologradouro]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__7C4F7684]  DEFAULT (NULL) FOR [contatonumero]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__7D439ABD]  DEFAULT (NULL) FOR [contatobairro]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__7E37BEF6]  DEFAULT (NULL) FOR [contatocomplemento]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__00200768]  DEFAULT (NULL) FOR [contatouf]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__7F2BE32F]  DEFAULT (NULL) FOR [contatomunicipioid]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__01142BA1]  DEFAULT (NULL) FOR [contatotelefone]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__contato__02FC7413]  DEFAULT (NULL) FOR [contatoemail]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__usuario__03F0984C]  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__datahor__04E4BC85]  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__usuario__05D8E0BE]  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__datahor__06CD04F7]  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF__empresa__empresa__07C12930]  DEFAULT (NULL) FOR [empresaidsistemaantigo]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK_empresa_municipio] FOREIGN KEY([municipioid])
REFERENCES [dbo].[municipio] ([municipioid])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK_empresa_municipio]
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK_empresa_municipio1] FOREIGN KEY([contatomunicipioid])
REFERENCES [dbo].[municipio] ([municipioid])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK_empresa_municipio1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empresa'
GO
