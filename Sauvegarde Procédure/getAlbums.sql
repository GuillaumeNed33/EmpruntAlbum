USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[getAlbums_NM_GN]    Script Date: 09/06/2016 16:30:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getAlbums_NM_GN]
@CodeOeuvre int,
@CodeMusicien int
AS
BEGIN
Select Distinct Album.Code_Album, Titre_Album From Album
	INNER JOIN Disque on Album.Code_Album = Disque.Code_Album
	INNER JOIN Composition_Disque on Disque.Code_Disque = Composition_Disque.Code_Disque
	INNER JOIN Enregistrement on Composition_Disque.Code_Enregistrement = Enregistrement.Code_Enregistrement
	INNER JOIN Composition on Enregistrement.Code_Composition = Composition.Code_Composition
	INNER JOIN Composition_Oeuvre on Composition.Code_Composition = Composition_Oeuvre.Code_Composition
	INNER JOIN Oeuvre on Composition_Oeuvre.Code_Oeuvre = Oeuvre.Code_Oeuvre
	INNER JOIN Composer on Oeuvre.Code_Oeuvre = Composer.Code_Oeuvre
	INNER JOIN Musicien on Composer.Code_Musicien = Musicien.Code_Musicien
WHERE Oeuvre.Code_Oeuvre = @CodeOeuvre and Musicien.Code_Musicien = @CodeMusicien
END