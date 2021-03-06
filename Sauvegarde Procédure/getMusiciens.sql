USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[getMusiciens_NM_GN]    Script Date: 09/06/2016 16:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[getMusiciens_NM_GN]
AS
BEGIN
	Select Distinct Musicien.Code_Musicien, Nom_Musicien, Prénom_Musicien FROM Musicien
	INNER JOIN Composer ON Composer.Code_Musicien = Musicien.Code_Musicien
	ORDER BY Nom_Musicien
END