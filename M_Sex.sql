CREATE TABLE [dbo].[M_Sex] (
    [SexCd]          CHAR (1)      NOT NULL,
    [Meisho]         NVARCHAR (2)  NOT NULL,
    [DisplayOrder]   INT           NOT NULL,
    [DelFlg]         CHAR (1)      NOT NULL DEFAULT 0,
    [CrtKojinCd]     CHAR (4)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdKojinCd] CHAR (4)      NOT NULL,
    [LastUpdKojinDt] DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_M_Sex] PRIMARY KEY CLUSTERED ([SexCd] ASC)
);
