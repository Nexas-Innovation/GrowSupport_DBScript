CREATE TABLE [dbo].[M_MokuhyoSbt] (
    [MokuhyoSbtCd]   CHAR (3)       NOT NULL,
    [Meisho]         NVARCHAR (10)  NOT NULL,
    [Naiyo]          NVARCHAR (20)  NOT NULL,
    [MokuhyoJirei]   NVARCHAR (100) NOT NULL,
    [DisplayOrder]   INT            NOT NULL,
    [DelFlg]         CHAR (1)       NOT NULL DEFAULT 0,
    [CrtShainCd]     CHAR (3)       NOT NULL,
    [CrtDt]          DATETIME2 (7)  NOT NULL,
    [CrtPlgId]       VARCHAR (10)   NOT NULL,
    [LastUpdShainCd] CHAR (3)       NOT NULL,
    [LastUpdDt]      DATETIME2 (7)  NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)   NOT NULL,
    [RowVersion]     ROWVERSION     NOT NULL,
    CONSTRAINT [PK_M_MokuhyoSbt] PRIMARY KEY CLUSTERED ([MokuhyoSbtCd] ASC)
);
