USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[VerifAbonne_NM_GN]    Script Date: 06/06/2016 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[VerifAbonne_NM_GN]
AS
BEGIN
SELECT Nom_Abonné, Prénom_Abonné, Login FROM Abonné
END
