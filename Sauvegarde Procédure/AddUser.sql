USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[AddUser_NM_GN]    Script Date: 06/06/2016 18:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddUser_NM_GN]
@Name nvarchar(50),
@Prénom nvarchar(20),
@Log nvarchar(10),
@Pass nvarchar(10)
AS
BEGIN
Insert into Abonné (Nom_Abonné, Prénom_Abonné, Abonné.Login, Abonné.Password)
VALUES ( @Name, @Prénom, @Log, @Pass )
END
