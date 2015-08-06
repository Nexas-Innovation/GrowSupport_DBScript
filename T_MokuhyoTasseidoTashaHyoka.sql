CREATE TABLE [dbo].[T_MokuhyoTasseidoTashaHyoka] (
    [HiHyokaShainCd] CHAR (3)        NOT NULL,
    [HyokaNendo]     CHAR (4)        NOT NULL,
    [HyokaShainCd]   CHAR (3)        NOT NULL,
    [HyokaShainCmnt] NVARCHAR (1000) NULL,
    [DelFlg]         CHAR (1)        NOT NULL DEFAULT 0,
    [CrtShainCd]     CHAR (3)        NOT NULL,
    [CrtDt]          DATETIME2 (7)   NOT NULL,
    [CrtPlgId]       VARCHAR (10)    NOT NULL,
    [LastUpdShainCd] CHAR (3)        NOT NULL,
    [LastUpdDt]      DATETIME2 (7)   NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)    NOT NULL,
    [RowVersion]     ROWVERSION      NOT NULL,
    CONSTRAINT [PK_T_MokuhyoTasseidoTashaHyoka] PRIMARY KEY CLUSTERED ([HiHyokaShainCd] ASC, [HyokaNendo] ASC, [HyokaShainCd] ASC),
    CONSTRAINT [FK_T_MokuhyoTasseidoTashaHyoka_T_MokuhyoTasseidoJikoHyoka_1] FOREIGN KEY ([HiHyokaShainCd], [HyokaNendo]) REFERENCES [dbo].[T_MokuhyoTasseidoJikoHyoka] ([ShainCd], [HyokaNendo]),
    CONSTRAINT [FK_T_MokuhyoTasseidoTashaHyoka_M_Shain_2] FOREIGN KEY ([HyokaShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd])
);
