CREATE TABLE [dbo].[M_HyokaGroup] (
    [HyokaNendo]     CHAR (4)      NOT NULL,
    [HyokaGroupCd]   CHAR (3)      NOT NULL,
    [HyokaGroupName] NVARCHAR (15) NOT NULL,
    [DisplayOrder]   INT           NOT NULL,
    [DelFlg]         CHAR (1)      NOT NULL DEFAULT 0,
    [CrtShainCd]     CHAR (3)      NOT NULL,
    [CrtDt]          DATETIME2 (7) NOT NULL,
    [CrtPlgId]       VARCHAR (10)  NOT NULL,
    [LastUpdShainCd] CHAR (3)      NOT NULL,
    [LastUpdDt]      DATETIME2 (7) NOT NULL,
    [LastUpdPlgId]   VARCHAR (10)  NOT NULL,
    [RowVersion]     ROWVERSION    NOT NULL,
    CONSTRAINT [PK_M_HyokaGroup] PRIMARY KEY CLUSTERED ([HyokaNendo] ASC, [HyokaGroupCd] ASC)
);
