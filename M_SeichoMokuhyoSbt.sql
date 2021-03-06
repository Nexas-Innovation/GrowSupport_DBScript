CREATE TABLE [dbo].[M_SeichoMokuhyoSbt] (
    [HyokaNendo]          CHAR (4)       NOT NULL,
    [SeichoMokuhyoSbtCd1] CHAR (3)       NOT NULL,
    [SeichoMokuhyoSbtCd2] CHAR (3)       NOT NULL,
    [Meisho]              NVARCHAR (20)  NOT NULL,
    [Naiyo]               NVARCHAR (100) NOT NULL,
    [DisplayOrder]        INT            NULL,
    [DelFlg]              CHAR (1)       NOT NULL DEFAULT 0,
    [CrtShainCd]          CHAR (3)       NOT NULL,
    [CrtDt]               DATETIME2 (7)  NOT NULL,
    [CrtPlgId]            VARCHAR (10)   NOT NULL,
    [LastUpdShainCd]      CHAR (3)       NOT NULL,
    [LastUpdDt]           DATETIME2 (7)  NOT NULL,
    [LastUpdPlgId]        VARCHAR (10)   NOT NULL,
    [RowVersion]          ROWVERSION     NOT NULL,
    CONSTRAINT [PK_M_SeichoMokuhyoSbt] PRIMARY KEY CLUSTERED ([HyokaNendo] ASC, [SeichoMokuhyoSbtCd1] ASC, [SeichoMokuhyoSbtCd2] ASC)
);
