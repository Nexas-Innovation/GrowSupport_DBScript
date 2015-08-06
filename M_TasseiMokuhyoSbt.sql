CREATE TABLE [dbo].[M_TasseiMokuhyoSbt] (
    [HyokaNendo]         CHAR (4)       NOT NULL,
    [TasseiMokuhyoSbtCd] CHAR (3)       NOT NULL,
    [Meisho]             NVARCHAR (10)  NOT NULL,
    [Naiyo]              NVARCHAR (20)  NOT NULL,
    [TasseiMokuhyoJirei] NVARCHAR (100) NOT NULL,
    [DisplayOrder]       INT            NULL,
    [DelFlg]             CHAR (1)       NOT NULL DEFAULT 0,
    [CrtShainCd]         CHAR (3)       NOT NULL,
    [CrtDt]              DATETIME2 (7)  NOT NULL,
    [CrtPlgId]           VARCHAR (10)   NOT NULL,
    [LastUpdShainCd]     CHAR (3)       NOT NULL,
    [LastUpdDt]          DATETIME2 (7)  NOT NULL,
    [LastUpdPlgId]       VARCHAR (10)   NOT NULL,
    [RowVersion]         ROWVERSION     NOT NULL,
    CONSTRAINT [PK_M_TasseiMokuhyoSbt] PRIMARY KEY CLUSTERED ([HyokaNendo] ASC, [TasseiMokuhyoSbtCd] ASC)
);
