USE [ControleTransporte]
GO
/****** Object:  Table [dbo].[processo]    Script Date: 04/02/2021 17:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processo](
	[processoid] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](12) NULL,
	[empresaid] [int] NULL,
	[processotipoid] [int] NULL,
	[tipoincentivoid] [int] NULL,
	[cadeiaprodutivaid] [int] NULL,
	[atividade] [varchar](300) NULL,
	[processosituacaoid] [int] NULL,
	[consideracaoid] [int] NULL,
	[treinamento] [char](1) NULL,
	[data] [date] NULL,
	[consultorid] [int] NULL,
	[empregoinicial] [int] NULL,
	[empregofuturo] [int] NULL,
	[empregototal] [int] NULL,
	[investimentoinicial] [decimal](15, 2) NULL,
	[investimentofuturo] [decimal](15, 2) NULL,
	[investimentototal] [decimal](15, 2) NULL,
	[providencias] [varchar](255) NULL,
	[justificativapendencia] [varchar](max) NULL,
	[certificado] [char](1) NULL,
	[ta] [varchar](50) NULL,
	[tadataassinatura] [date] NULL,
	[tadataentrega] [date] NULL,
	[taprazoentregaprojeto] [int] NULL,
	[tadataentregaprojeto] [date] NULL,
	[ta2] [varchar](50) NULL,
	[ta2dataassinatura] [date] NULL,
	[ta2dataentrega] [date] NULL,
	[ta2prazoentregaprojeto] [int] NULL,
	[ta2dataentregaprojeto] [date] NULL,
	[percentual] [decimal](13, 2) NULL,
	[adicional] [decimal](13, 2) NULL,
	[prazoano1] [int] NULL,
	[prazomes1] [int] NULL,
	[prazodia1] [int] NULL,
	[prazoano2] [int] NULL,
	[prazomes2] [int] NULL,
	[prazodia2] [int] NULL,
	[prazoano3] [int] NULL,
	[prazomes3] [int] NULL,
	[prazodia3] [int] NULL,
	[prazoano4] [int] NULL,
	[prazomes4] [int] NULL,
	[prazodia4] [int] NULL,
	[prazoano5] [int] NULL,
	[prazomes5] [int] NULL,
	[prazodia5] [int] NULL,
	[vigencia1inicio] [date] NULL,
	[vigencia1fim] [date] NULL,
	[vigencia2inicio] [date] NULL,
	[vigencia2fim] [date] NULL,
	[vigencia3inicio] [date] NULL,
	[vigencia3fim] [date] NULL,
	[vigencia4inicio] [date] NULL,
	[vigencia4fim] [date] NULL,
	[vigencia5inicio] [date] NULL,
	[vigencia5fim] [date] NULL,
	[deliberacao1numero] [varchar](20) NULL,
	[deliberacao1data] [date] NULL,
	[deliberacao2numero] [varchar](20) NULL,
	[deliberacao2data] [date] NULL,
	[deliberacao3numero] [varchar](20) NULL,
	[deliberacao3data] [date] NULL,
	[deliberacao4numero] [varchar](20) NULL,
	[deliberacao4data] [date] NULL,
	[deliberacao5numero] [varchar](20) NULL,
	[deliberacao5data] [date] NULL,
	[deliberacao6numero] [varchar](20) NULL,
	[deliberacao6data] [date] NULL,
	[usuarioidinclusao] [int] NULL,
	[datahorainclusao] [datetime2](0) NULL,
	[usuarioidalteracao] [int] NULL,
	[datahoraalteracao] [datetime2](0) NULL,
	[processoidsistemaantigo] [int] NULL,
 CONSTRAINT [PK_processo_processoid] PRIMARY KEY CLUSTERED 
(
	[processoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [empresaid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [processotipoid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [tipoincentivoid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [cadeiaprodutivaid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [atividade]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [processosituacaoid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [consideracaoid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (N'N') FOR [treinamento]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [consultorid]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [empregoinicial]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [empregofuturo]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [empregototal]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [investimentoinicial]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [investimentofuturo]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [investimentototal]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [providencias]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (N'N') FOR [certificado]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [ta]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [tadataassinatura]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [tadataentrega]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [taprazoentregaprojeto]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [tadataentregaprojeto]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [ta2]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [ta2dataassinatura]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [ta2dataentrega]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [ta2prazoentregaprojeto]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [ta2dataentregaprojeto]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [percentual]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [adicional]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazoano1]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazomes1]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazodia1]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazoano2]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazomes2]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazodia2]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazoano3]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazomes3]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazodia3]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazoano4]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazomes4]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazodia4]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazoano5]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazomes5]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [prazodia5]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia1inicio]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia1fim]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia2inicio]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia2fim]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia3inicio]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia3fim]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia4inicio]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia4fim]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia5inicio]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [vigencia5fim]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao1numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao1data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao2numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao2data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao3numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao3data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao4numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao4data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao5numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao5data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao6numero]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [deliberacao6data]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [usuarioidinclusao]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [datahorainclusao]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [usuarioidalteracao]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [datahoraalteracao]
GO
ALTER TABLE [dbo].[processo] ADD  DEFAULT (NULL) FOR [processoidsistemaantigo]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_cadeiaprodutiva] FOREIGN KEY([cadeiaprodutivaid])
REFERENCES [dbo].[cadeiaprodutiva] ([cadeiaprodutivaid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_cadeiaprodutiva]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_consideracao] FOREIGN KEY([consideracaoid])
REFERENCES [dbo].[consideracao] ([consideracaoid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_consideracao]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_consultor] FOREIGN KEY([consultorid])
REFERENCES [dbo].[consultor] ([consultorid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_consultor]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_empresa] FOREIGN KEY([empresaid])
REFERENCES [dbo].[empresa] ([empresaid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_empresa]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_processosituacao] FOREIGN KEY([processosituacaoid])
REFERENCES [dbo].[processosituacao] ([processosituacaoid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_processosituacao]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_processotipo] FOREIGN KEY([processotipoid])
REFERENCES [dbo].[processotipo] ([processotipoid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_processotipo]
GO
ALTER TABLE [dbo].[processo]  WITH NOCHECK ADD  CONSTRAINT [processo$fk_processo_tipoincentivo] FOREIGN KEY([tipoincentivoid])
REFERENCES [dbo].[tipoincentivo] ([tipoincentivoid])
GO
ALTER TABLE [dbo].[processo] CHECK CONSTRAINT [processo$fk_processo_tipoincentivo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'cdi.processo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'processo'
GO
