CREATE TABLE [dbo].[M_SeichoHyokaLv] (
    [SeichoHyokaPntCd] CHAR (3)       NOT NULL,
    [HyokaNendo]       CHAR (4)       NOT NULL,
    [SeichoLevel]      INT            NOT NULL,
    [Naiyo]            NVARCHAR (100) NOT NULL,
    [DisplayOrder]     INT            NULL,
    [DelFlg]           CHAR (1)       NOT NULL DEFAULT 0,
    [CrtShainCd]       CHAR (3)       NOT NULL,
    [CrtDt]            DATETIME2 (7)  NOT NULL,
    [CrtPlgId]         VARCHAR (10)   NOT NULL,
    [LastUpdShainCd]   CHAR (3)       NOT NULL,
    [LastUpdDt]        DATETIME2 (7)  NOT NULL,
    [LastUpdPlgId]     VARCHAR (10)   NOT NULL,
    [RowVersion]       ROWVERSION     NOT NULL,
    CONSTRAINT [PK_M_SeichoHyokaLv] PRIMARY KEY CLUSTERED ([SeichoHyokaPntCd] ASC, [HyokaNendo] ASC, [SeichoLevel] ASC),
    CONSTRAINT [FK_M_SeichoHyokaLv_M_SeichoHyokaPnt_1] FOREIGN KEY ([SeichoHyokaPntCd], [HyokaNendo]) REFERENCES [dbo].[M_SeichoHyokaPnt] ([SeichoHyokaPntCd], [HyokaNendo])
);
