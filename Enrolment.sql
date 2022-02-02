USE [school]
GO


CREATE TABLE [dbo].[Enrolments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Teacherid] [int] NULL,
	[Studentid] [int] NULL,
	[Courseid] [int] NULL,
 CONSTRAINT [PK_Enrolments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


