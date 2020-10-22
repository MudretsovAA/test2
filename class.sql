/****** Object:  Table [dbo].[CMS_Class]    Script Date: 22.10.2020 09:53:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CMS_Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassDisplayName] [nvarchar](100) NOT NULL,
	[ClassName] [nvarchar](100) NOT NULL,
	[ClassUsesVersioning] [bit] NOT NULL,
	[ClassIsDocumentType] [bit] NOT NULL,
	[ClassIsCoupledClass] [bit] NOT NULL,
	[ClassXmlSchema] [nvarchar](max) NOT NULL,
	[ClassFormDefinition] [nvarchar](max) NOT NULL,
	[ClassEditingPageUrl] [nvarchar](450) NULL,
	[ClassListPageUrl] [nvarchar](450) NULL,
	[ClassNodeNameSource] [nvarchar](100) NOT NULL,
	[ClassTableName] [nvarchar](100) NULL,
	[ClassViewPageUrl] [nvarchar](450) NULL,
	[ClassPreviewPageUrl] [nvarchar](450) NULL,
	[ClassFormLayout] [nvarchar](max) NULL,
	[ClassNewPageUrl] [nvarchar](450) NULL,
	[ClassShowAsSystemTable] [bit] NULL,
	[ClassUsePublishFromTo] [bit] NULL,
	[ClassShowTemplateSelection] [bit] NULL,
	[ClassSKUMappings] [nvarchar](max) NULL,
	[ClassIsMenuItemType] [bit] NULL,
	[ClassNodeAliasSource] [nvarchar](100) NULL,
	[ClassDefaultPageTemplateID] [int] NULL,
	[ClassLastModified] [datetime2](7) NOT NULL,
	[ClassGUID] [uniqueidentifier] NOT NULL,
	[ClassCreateSKU] [bit] NULL,
	[ClassIsProduct] [bit] NULL,
	[ClassIsCustomTable] [bit] NOT NULL,
	[ClassShowColumns] [nvarchar](1000) NULL,
	[ClassSearchTitleColumn] [nvarchar](200) NULL,
	[ClassSearchContentColumn] [nvarchar](200) NULL,
	[ClassSearchImageColumn] [nvarchar](200) NULL,
	[ClassSearchCreationDateColumn] [nvarchar](200) NULL,
	[ClassSearchSettings] [nvarchar](max) NULL,
	[ClassInheritsFromClassID] [int] NULL,
	[ClassSearchEnabled] [bit] NULL,
	[ClassSKUDefaultDepartmentName] [nvarchar](200) NULL,
	[ClassSKUDefaultDepartmentID] [int] NULL,
	[ClassContactMapping] [nvarchar](max) NULL,
	[ClassContactOverwriteEnabled] [bit] NULL,
	[ClassSKUDefaultProductType] [nvarchar](50) NULL,
	[ClassConnectionString] [nvarchar](100) NULL,
	[ClassIsProductSection] [bit] NULL,
	[ClassPageTemplateCategoryID] [int] NULL,
	[ClassFormLayoutType] [nvarchar](50) NULL,
	[ClassVersionGUID] [nvarchar](50) NULL,
	[ClassDefaultObjectType] [nvarchar](100) NULL,
	[ClassIsForm] [bit] NULL,
	[ClassResourceID] [int] NULL,
	[ClassCustomizedColumns] [nvarchar](400) NULL,
	[ClassCodeGenerationSettings] [nvarchar](max) NULL,
	[ClassIconClass] [nvarchar](200) NULL,
	[ClassIsContentOnly] [bit] NULL,
	[ClassURLPattern] [nvarchar](200) NULL,
 CONSTRAINT [PK_CMS_Class] PRIMARY KEY NONCLUSTERED 
(
	[ClassID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CMS_Class] ADD  CONSTRAINT [DEFAULT_CMS_Class_ClassUsesVersioning]  DEFAULT ((0)) FOR [ClassUsesVersioning]
GO

ALTER TABLE [dbo].[CMS_Class] ADD  CONSTRAINT [DEFAULT_CMS_Class_ClassIsDocumentType]  DEFAULT ((0)) FOR [ClassIsDocumentType]
GO

ALTER TABLE [dbo].[CMS_Class] ADD  CONSTRAINT [DEFAULT_CMS_Class_ClassIsCoupledClass]  DEFAULT ((0)) FOR [ClassIsCoupledClass]
GO

ALTER TABLE [dbo].[CMS_Class] ADD  CONSTRAINT [DEFAULT_CMS_Class_ClassIsCustomTable]  DEFAULT ((0)) FOR [ClassIsCustomTable]
GO

ALTER TABLE [dbo].[CMS_Class] ADD  CONSTRAINT [DEFAULT_CMS_Class_ClassIsContentOnly]  DEFAULT ((0)) FOR [ClassIsContentOnly]
GO

ALTER TABLE [dbo].[CMS_Class]  WITH CHECK ADD  CONSTRAINT [FK_CMS_Class_ClassDefaultPageTemplateID_CMS_PageTemplate] FOREIGN KEY([ClassDefaultPageTemplateID])
REFERENCES [dbo].[CMS_PageTemplate] ([PageTemplateID])
GO

ALTER TABLE [dbo].[CMS_Class] CHECK CONSTRAINT [FK_CMS_Class_ClassDefaultPageTemplateID_CMS_PageTemplate]
GO

ALTER TABLE [dbo].[CMS_Class]  WITH CHECK ADD  CONSTRAINT [FK_CMS_Class_ClassPageTemplateCategoryID_CMS_PageTemplateCategory] FOREIGN KEY([ClassPageTemplateCategoryID])
REFERENCES [dbo].[CMS_PageTemplateCategory] ([CategoryID])
GO

ALTER TABLE [dbo].[CMS_Class] CHECK CONSTRAINT [FK_CMS_Class_ClassPageTemplateCategoryID_CMS_PageTemplateCategory]
GO

ALTER TABLE [dbo].[CMS_Class]  WITH CHECK ADD  CONSTRAINT [FK_CMS_Class_ClassResourceID_CMS_Resource] FOREIGN KEY([ClassResourceID])
REFERENCES [dbo].[CMS_Resource] ([ResourceID])
GO

ALTER TABLE [dbo].[CMS_Class] CHECK CONSTRAINT [FK_CMS_Class_ClassResourceID_CMS_Resource]
GO

ALTER TABLE [dbo].[CMS_Class]  WITH CHECK ADD  CONSTRAINT [FK_CMS_Class_CMS_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[CMS_Class] ([ClassID])
GO

ALTER TABLE [dbo].[CMS_Class] CHECK CONSTRAINT [FK_CMS_Class_CMS_Class]
GO


