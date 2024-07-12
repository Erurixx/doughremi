﻿CREATE TABLE [dbo].[Quizzes_Add] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [title]     NVARCHAR (50)  NULL,
    [difficult] NVARCHAR (50)  NULL,
    [q1]        NVARCHAR (MAX) NULL,
    [choiceAq1] NVARCHAR (50)  NULL,
    [choiceBq1] NVARCHAR (50)  NULL,
    [choiceCq1] NVARCHAR (50)  NULL,
    [choiceDq1] NVARCHAR (50)  NULL,
    [ansQ1]     NVARCHAR (50)  NULL,
    [q2]        NVARCHAR (MAX) NULL,
    [choiceAq2] NVARCHAR (50)  NULL,
    [choiceBq2] NVARCHAR (50)  NULL,
    [choiceCq2] NVARCHAR (50)  NULL,
    [choiceDq2] NVARCHAR (50)  NULL,
    [ansQ2]     NVARCHAR (50)  NULL,
    [q3]        NVARCHAR (MAX) NULL,
    [choiceAq3] NVARCHAR (50)  NULL,
    [choiceBq3] NVARCHAR (50)  NULL,
    [choiceCq3] NVARCHAR (50)  NULL,
    [choiceDq3] NVARCHAR (50)  NULL,
    [ansQ3]     NVARCHAR (50)  NULL,
    [q4]        NVARCHAR (MAX) NULL,
    [choiceAq4] NVARCHAR (50)  NULL,
    [choiceBq4] NVARCHAR (50)  NULL,
    [choiceCq4] NVARCHAR (50)  NULL,
    [choiceDq4] NVARCHAR (50)  NULL,
    [ansQ4]     NVARCHAR (50)  NULL,
    [q5]        NVARCHAR (MAX) NULL,
    [choiceAq5] NVARCHAR (50)  NULL,
    [choiceBq5] NVARCHAR (50)  NULL,
    [choiceCq5] NVARCHAR (50)  NULL,
    [choiceDq5] NVARCHAR (50)  NULL,
    [ansQ5]     NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

