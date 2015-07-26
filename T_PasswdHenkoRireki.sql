CREATE TABLE [dbo].[T_PasswdHenkoRireki] (
    [SeqNo]           BIGINT        NOT NULL,
    [ShainCd]         CHAR (4)      NOT NULL,
    [Password]        CHAR (64)     NULL,
    [PasswordHenkoDt] DATETIME2 (7) NULL,
    [CrtPlgId]        VARCHAR (10)  NOT NULL,
    CONSTRAINT [PK_T_PasswdHenkoRireki] PRIMARY KEY CLUSTERED ([SeqNo] ASC),
    CONSTRAINT [FK_T_PasswdHenkoRireki_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd])
);
