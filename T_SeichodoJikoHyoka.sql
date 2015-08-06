CREATE TABLE [dbo].[T_SeichodoJikoHyoka] (
    [ShainCd]          CHAR (3)       NOT NULL,
    [HyokaNendo]       CHAR (4)       NOT NULL,
    [SeichoHyokaPntCd] CHAR (3)       NOT NULL,
    [SeichoHyokaLevel] INT            NOT NULL,
    [JikoHyokaCmnt]    NVARCHAR (100) NOT NULL,
    [DelFlg]           CHAR (1)       NOT NULL DEFAULT 0,
    [CrtShainCd]       CHAR (3)       NOT NULL,
    [CrtDt]            DATETIME2 (7)  NOT NULL,
    [CrtPlgId]         VARCHAR (10)   NOT NULL,
    [LastUpdShainCd]   CHAR (3)       NOT NULL,
    [LastUpdDt]        DATETIME2 (7)  NOT NULL,
    [LastUpdPlgId]     VARCHAR (10)   NOT NULL,
    [RowVersion]       ROWVERSION     NOT NULL,
    CONSTRAINT [PK_T_SeichodoJikoHyoka] PRIMARY KEY CLUSTERED ([ShainCd] ASC, [HyokaNendo] ASC, [SeichoHyokaPntCd] ASC),
    CONSTRAINT [FK_T_SeichodoJikoHyoka_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd]),
    CONSTRAINT [FK_T_SeichodoJikoHyoka_M_SeichoHyokaLv_2] FOREIGN KEY ([SeichoHyokaPntCd], [HyokaNendo], [SeichoHyokaLevel]) REFERENCES [dbo].[M_SeichoHyokaLv] ([SeichoHyokaPntCd], [HyokaNendo], [SeichoHyokaLevel])
);
