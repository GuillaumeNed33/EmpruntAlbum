USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[getOeuvres_NM_GN]    Script Date: 09/06/2016 16:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getOeuvres_NM_GN]
@codeMusicien int
AS
BEGIN
	Select Oeuvre.Code_Oeuvre, Titre_Oeuvre FROM Musicien
	INNER JOIN Composer on Musicien.Code_Musicien = Composer.Code_Musicien
	INNER JOIN Oeuvre on Composer.Code_Oeuvre = Oeuvre.Code_Oeuvre
	WHERE Musicien.Code_Musicien = @codeMusicien
	ORDER BY Titre_Oeuvre
END