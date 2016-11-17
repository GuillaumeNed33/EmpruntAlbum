USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[getEmprunt_NM_GN]    Script Date: 09/06/2016 16:30:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getEmprunt_NM_GN]
@CodeAlbum int
AS
BEGIN
	Select Date_Emprunt, Date_Retour
	from Emprunter
	Inner join Album on Emprunter.Code_Album = Album.Code_Album
	where Album.Code_Album =  @CodeAlbum
END