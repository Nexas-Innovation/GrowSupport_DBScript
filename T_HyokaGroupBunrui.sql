CREATE TABLE [dbo].[T_HyokaGroupBunrui] (
    [ShainCd]        CHAR (3)      NOT NULL,
    [HyokaNendo]     CHAR (4)      NOT NULL,
    [HyokaGroupCd]   CHAR (3)      NOT NULL,
    [DisplayOrder]   INT           NULL,
    [DelFlg]         CHAR (1)      NOT NULL DEFAULT 0,
    [CrtShainCd]     CHAR (3)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdShainCd] CHAR (3)      NOT NULL,
    [LastUpdDt]      DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_T_HyokaGroupBunrui] PRIMARY KEY CLUSTERED ([ShainCd] ASC, [HyokaNendo] ASC),
    CONSTRAINT [FK_T_HyokaGroupBunrui_M_Shain_1] FOREIGN KEY ([ShainCd]) REFERENCES [dbo].[M_Shain] ([ShainCd]),
    CONSTRAINT [FK_T_HyokaGroupBunrui_M_HyokaGroup_2] FOREIGN KEY ([HyokaNendo], [HyokaGroupCd]) REFERENCES [dbo].[M_HyokaGroup] ([HyokaNendo], [HyokaGroupCd])
);
