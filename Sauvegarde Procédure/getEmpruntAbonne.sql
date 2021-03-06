USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[getEmpruntAbonne_NM_GN]    Script Date: 09/06/2016 16:29:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[getEmpruntAbonne_NM_GN]
@codeabonné int
as 
begin 
	Select Distinct Album.Code_Album, Titre_Album
    FROM Emprunter
    Inner join Album on Emprunter.Code_Album = Album.Code_Album
    Inner join Abonné on Emprunter.Code_Abonné = Abonné.Code_Abonné
    WHERE Abonné.Code_Abonné = @codeabonné and Emprunter.Date_Emprunt IS NOT NULL and Emprunter.Date_Retour IS NULL	
end