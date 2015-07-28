CREATE TABLE [dbo].[M_HyoshoKbn] (
    [HyoshoKbnCd]    CHAR (2)      NOT NULL,
    [Meisho]         NVARCHAR (20) NOT NULL,
    [SosetsuNendo]   CHAR (4)      NOT NULL,
    [HaishiNendo]    CHAR (4)      NULL,
    [DisplayOrder]   INT           NOT NULL,
    [DelFlg]         CHAR (1)      DEFAULT ((0)) NOT NULL,
    [CrtKojinCd]     CHAR (4)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdKojinCd] CHAR (4)      NOT NULL,
    [LastUpdKojinDt] DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_M_HyoshoKbn] PRIMARY KEY CLUSTERED ([HyoshoKbnCd] ASC)
);
