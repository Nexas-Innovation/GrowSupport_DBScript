CREATE TABLE [dbo].[M_Shain] (
    [ShainCd]         CHAR (3)       NOT NULL,
    [Sei]             NVARCHAR (5)   NOT NULL,
    [Mei]             NVARCHAR (5)   NOT NULL,
    [SeiKana]         NVARCHAR (10)  NOT NULL,
    [MeiKana]         NVARCHAR (10)  NOT NULL,
    [SexCd]           CHAR (1)       NOT NULL,
    [SeinenYmd]       CHAR (8)       NULL,
    [MailAdress]      NVARCHAR (255) NULL,
    [TelNo]           VARCHAR (13)   NULL,
    [YubinNo]         CHAR (7)       NULL,
    [Adress]          NVARCHAR (70)  NULL,
    [KaoShashin]      IMAGE          NULL,
    [GentaiKbnCd]     CHAR (1)       NOT NULL DEFAULT 0,
    [NyushaYmd]       CHAR (8)       NULL,
    [TaishokuYmd]     CHAR (8)       NULL,
    [BushoCd]         CHAR (3)       NULL,
    [YakushokuCd]     CHAR (3)       NULL,
    [Password]        CHAR (64)      NOT NULL,
    [LoginFailedCt]   INT            NOT NULL DEFAULT 0,
    [AccountLockDt]   DATETIME2 (7)  NULL,
    [SystemAuthKbnCd] CHAR (1)       NOT NULL DEFAULT 0,
    [Biko]            NVARCHAR (50)  NULL,
    [DelFlg]          CHAR (1)       NOT NULL DEFAULT 0,
    [CrtShainCd]      CHAR (3)       NOT NULL,
    [CrtDt]           DATETIME2 (7)  NOT NULL,
    [CrtPlgId]        VARCHAR (10)   NOT NULL,
    [LastUpdShainCd]  CHAR (3)       NOT NULL,
    [LastUpdDt]       DATETIME2 (7)  NOT NULL,
    [LastUpdPlgId]    VARCHAR (10)   NOT NULL,
    [RowVersion]      ROWVERSION     NOT NULL,
    CONSTRAINT [PK_M_Shain] PRIMARY KEY CLUSTERED ([ShainCd] ASC),
    CONSTRAINT [FK_M_Shain_M_Sex_1] FOREIGN KEY ([SexCd]) REFERENCES [dbo].[M_Sex] ([SexCd]),
    CONSTRAINT [FK_M_Shain_M_GentaiKbn_2] FOREIGN KEY ([GentaiKbnCd]) REFERENCES [dbo].[M_GentaiKbn] ([GentaiKbnCd]),
    CONSTRAINT [FK_M_Shain_M_Busho_3] FOREIGN KEY ([BushoCd]) REFERENCES [dbo].[M_Busho] ([BushoCd]),
    CONSTRAINT [FK_M_Shain_M_Yakushoku_4] FOREIGN KEY ([YakushokuCd]) REFERENCES [dbo].[M_Yakushoku] ([YakushokuCd]),
    CONSTRAINT [FK_M_Shain_M_SystemAuthKbn_5] FOREIGN KEY ([SystemAuthKbnCd]) REFERENCES [dbo].[M_SystemAuthKbn] ([SystemAuthKbnCd])
);
