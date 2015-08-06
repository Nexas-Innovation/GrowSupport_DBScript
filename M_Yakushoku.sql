CREATE TABLE [dbo].[M_Yakushoku] (
    [YakushokuCd]    CHAR (3)            NOT NULL,
    [Meisho]         NVARCHAR (20)       NOT NULL,
    [Ryakusho]       NVARCHAR (10)       NOT NULL,
    [HierarchyID]    [sys].[hierarchyid] NOT NULL,
    [HierarchyLevel] AS                  ([HierarchyID].[GetLevel]()),
    [DisplayOrder]   INT                 NULL,
    [DelFlg]         CHAR (1)            DEFAULT ((0)) NOT NULL,
    [CrtShainCd]     CHAR (3)            NOT NULL,
    [CrtDt]          DATETIME2 (7)       NOT NULL,
    [CrtPlgId]       VARCHAR (10)        NOT NULL,
    [LastUpdShainCd] CHAR (3)            NOT NULL,
    [LastUpdDt]      DATETIME2 (7)       NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)        NOT NULL,
    [RowVersion]     ROWVERSION          NOT NULL,
    CONSTRAINT [PK_M_Yakushoku] PRIMARY KEY CLUSTERED ([YakushokuCd] ASC),
    CONSTRAINT [UQ_HierarchyID] UNIQUE NONCLUSTERED ([HierarchyID] ASC)
);
