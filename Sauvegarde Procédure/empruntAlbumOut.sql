USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[empruntAlbumOut_NM_GN]    Script Date: 09/06/2016 16:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[empruntAlbumOut_NM_GN]
@CodeAbonne int,
@CodeAlbum int
AS
BEGIN
	Insert Into Emprunter (Code_Abonné,Code_Album,Date_Emprunt, Date_Retour)
	VALUES ((select Distinct Abonné.Code_Abonné
	from Abonné
	where Code_Abonné = @CodeAbonne),
	(select Album.Code_Album
	from Album
	where Code_Album = @CodeAlbum),
	GETDATE(), null)
END