CREATE TABLE [dbo].[T_ShoshinKokakuRireki] (
    [ShainCd]            CHAR (4)      NOT NULL,
    [Nendo]              CHAR (4)      NOT NULL,
    [ShoshinKokakuKbnCd] CHAR (1)      NOT NULL,
    [NinmeiYakushokuCd]  CHAR (3)      NOT NULL,
    [ShoshinKokakuJiyu]  NVARCHAR (50) NULL,
    [CrtKojinCd]         CHAR (4)      NOT NULL,
    [CrtDt]              DATETIME2 (7) NOT NULL,
    [CrtPlgId]           VARCHAR (10)  NOT NULL,
    [LastUpdKojinCd]     CHAR (4)      NOT NULL,
    [LastUpdKojinDt]     DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]       VARCHAR (10)  NOT NULL,
    [RowVersion]         ROWVERSION    NOT NULL,
    CONSTRAINT [PK_T_ShoshinKokakuRireki] PRIMARY KEY CLUSTERED ([ShainCd] ASC, [Nendo] ASC),
    CONSTRAINT [FK_T_ShoshinKoukakuRireki_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd]),
    CONSTRAINT [FK_T_ShoshinKokakuRireki_M_ShoshinKokaku_2] FOREIGN KEY ([ShoshinKokakuKbnCd]) REFERENCES [dbo].[M_ShoshinKokaku] ([ShoshinKokakuKbnCd]),
    CONSTRAINT [FK_T_ShoshinKoukakuRireki_M_Yakushoku_3] FOREIGN KEY ([NinmeiYakushokuCd]) REFERENCES [dbo].[M_Yakushoku] ([YakushokuCd])
);
