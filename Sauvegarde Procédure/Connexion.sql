USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[Connexion_NM_GN]    Script Date: 06/06/2016 18:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Connexion_NM_GN]
@CodeAbo int
AS
BEGIN
Select Login, Password 
FROM Abonné
WHERE Abonné.Code_Abonné = @CodeAbo
END
