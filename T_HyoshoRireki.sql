CREATE TABLE [dbo].[T_HyoshoRireki] (
    [ShainCd]        CHAR (4)      NOT NULL,
    [Nendo]          CHAR (4)      NOT NULL,
    [HyoshoKbnCd]    CHAR (2)      NOT NULL,
    [HyoshoJiyu]     NVARCHAR (50) NULL,
    [CrtKojinCd]     CHAR (4)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdKojinCd] CHAR (4)      NOT NULL,
    [LastUpdKojinDt] DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_T_HyoshoRireki] PRIMARY KEY CLUSTERED ([ShainCd] ASC, [Nendo] ASC),
    CONSTRAINT [FK_T_HyoshoRireki_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd]),
    CONSTRAINT [FK_T_HyoshoRireki_M_HyoshoKbn_2] FOREIGN KEY ([HyoshoKbnCd]) REFERENCES [dbo].[M_HyoshoKbn] ([HyoshoKbnCd])
);
