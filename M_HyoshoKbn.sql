CREATE TABLE [dbo].[M_HyoshoKbn] (
    [HyoshoKbnCd]    CHAR (2)      NOT NULL,
    [Meisho]         NVARCHAR (20) NOT NULL,
    [SosetsuNendo]   CHAR (4)      NOT NULL,
    [HaishiNendo]    CHAR (4)      NULL,
    [DisplayOrder]   INT           NULL,
    [DelFlg]         CHAR (1)      DEFAULT ((0)) NOT NULL,
    [CrtShainCd]     CHAR (3)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdShainCd] CHAR (3)      NOT NULL,
    [LastUpdDt]      DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_M_HyoshoKbn] PRIMARY KEY CLUSTERED ([HyoshoKbnCd] ASC)
);
