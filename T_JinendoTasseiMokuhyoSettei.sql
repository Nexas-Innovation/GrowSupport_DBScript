CREATE TABLE [dbo].[T_JinendoTasseiMokuhyoSettei] (
    [ID]                 INT           NOT NULL,
    [ShainCd]            CHAR (3)      NOT NULL,
    [HyokaNendo]         CHAR (4)      NOT NULL,
    [TasseiMokuhyoSbtCd] CHAR (3)      NULL,
    [TasseiMokuhyoNaiyo] NVARCHAR (50) NULL,
    [DelFlg]             CHAR (1)      DEFAULT ((0)) NOT NULL,
    [CrtShainCd]         CHAR (3)      NOT NULL,
    [CrtDt]              DATETIME2 (7) NOT NULL,
    [CrtPlgId]           VARCHAR (10)  NOT NULL,
    [LastUpdShainCd]     CHAR (3)      NOT NULL,
    [LastUpdDt]          DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]       VARCHAR (10)  NOT NULL,
    [RowVersion]         ROWVERSION    NOT NULL,
    CONSTRAINT [PK_T_JinendoTasseiMokuhyoSettei] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_T_JinendoTasseiMokuhyoSettei_T_MokuhyoTasseidoJikoHyoka_1] FOREIGN KEY ([ShainCd], [HyokaNendo]) REFERENCES [dbo].[T_MokuhyoTasseidoJikoHyoka] ([ShainCd], [HyokaNendo]),
    CONSTRAINT [FK_T_JinendoTasseiMokuhyoSettei_M_TasseiMokuhyoSbt_2] FOREIGN KEY ([HyokaNendo], [TasseiMokuhyoSbtCd]) REFERENCES [dbo].[M_TasseiMokuhyoSbt] ([HyokaNendo], [TasseiMokuhyoSbtCd])
);
