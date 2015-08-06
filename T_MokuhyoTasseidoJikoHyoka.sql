CREATE TABLE [dbo].[T_MokuhyoTasseidoJikoHyoka] (
    [ShainCd]            CHAR (3)        NOT NULL,
    [HyokaNendo]         CHAR (4)        NOT NULL,
    [FurikaeriKeizoku]   NVARCHAR (400)  NULL,
    [FurikaeriMondaiten] NVARCHAR (400)  NULL,
    [FurikaeriKokoromi]  NVARCHAR (400)  NULL,
    [SoHyo]              NVARCHAR (1000) NULL,
    [DelFlg]             CHAR (1)        NOT NULL DEFAULT 0,
    [CrtShainCd]         CHAR (3)        NOT NULL,
    [CrtDt]              DATETIME2 (7)   NOT NULL,
    [CrtPlgId]           VARCHAR (10)    NOT NULL,
    [LastUpdShainCd]     CHAR (3)        NOT NULL,
    [LastUpdDt]          DATETIME2 (7)   NOT NULL,
    [LastUpdPlgId]       VARCHAR (10)    NOT NULL,
    [RowVersion]         ROWVERSION      NOT NULL,
    CONSTRAINT [PK_T_MokuhyoTasseidoJikoHyoka] PRIMARY KEY CLUSTERED ([ShainCd] ASC, [HyokaNendo] ASC),
    CONSTRAINT [FK_T_MokuhyoTasseidoJikoHyoka_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd])
);
