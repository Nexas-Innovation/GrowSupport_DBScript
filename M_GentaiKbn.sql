CREATE TABLE [dbo].[M_GentaiKbn] (
    [GentaiKbnCd]    CHAR (1)      NOT NULL,
    [Meisho]         NVARCHAR (10) NOT NULL,
    [DisplayOrder]   INT           NULL,
    [DelFlg]         CHAR (1)      DEFAULT ((0)) NOT NULL,
    [CrtShainCd]     CHAR (3)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdShainCd] CHAR (3)      NOT NULL,
    [LastUpdDt]      DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_M_GentaiKbn] PRIMARY KEY CLUSTERED ([GentaiKbnCd] ASC)
);
