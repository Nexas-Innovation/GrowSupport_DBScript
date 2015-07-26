CREATE TABLE [dbo].[T_SosaRireki] (
    [SeqNo]     BIGINT        NOT NULL,
    [ShainCd]   CHAR (4)      NOT NULL,
    [LoginDt]   DATETIME2 (7) NOT NULL,
    [LoginIP]   VARCHAR (40)  NOT NULL,
    [SosaKbnCd] CHAR (2)      NOT NULL,
    [CrtPlgId]  VARCHAR (10)  NOT NULL,
    [SosaDt]    DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_T_SosaRireki] PRIMARY KEY CLUSTERED ([SeqNo] ASC),
    CONSTRAINT [FK_T_SosaRireki_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd]),
    CONSTRAINT [FK_T_SosaRireki_M_SosaKbn_2] FOREIGN KEY ([SosaKbnCd]) REFERENCES [dbo].[M_SosaKbn] ([SosaKbnCd])
);
