USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[retourAlbum_NM_GN]    Script Date: 09/06/2016 16:30:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[retourAlbum_NM_GN]
@CodeAlbum int,
@CodeAbonne int
AS
BEGIN
	Update Emprunter
    Set Date_Emprunt = null, Date_Retour = GETDATE()
    From Emprunter
    inner join Abonné on Emprunter.Code_Abonné = Abonné.Code_Abonné
    inner join Album on Emprunter.Code_Album = Album.Code_Album
    where Abonné.Code_Abonné = @CodeAbonne and Album.Code_Album = @CodeAlbum 
END