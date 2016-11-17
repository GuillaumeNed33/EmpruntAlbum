USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[GetAbonne_NM_GN]    Script Date: 06/06/2016 18:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[GetAbonne_NM_GN]
AS
BEGIN
Select DISTINCT Code_Abonné, Nom_Abonné, Prénom_Abonné FROM Abonné
ORDER BY Nom_Abonné 
END
