USE [Musique]
GO
/****** Object:  StoredProcedure [dbo].[verifEmprunt_NM_GN]    Script Date: 10/06/2016 11:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[verifEmprunt_NM_GN]
@CodeAlbum int
AS
BEGIN
	Select Distinct * 
    from Emprunter
    where Code_Album = @CodeAlbum
END