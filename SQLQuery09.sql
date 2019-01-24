--SQL : Synthèse
/*
--Ex01 :

--SELECT *
--FROM [regions];
--ou bien :

USE [france]
GO

SELECT [id], [region], [prefecture], [nom_region]
FROM [dbo].[regions];

*/
/*
--Ex02 :

USE [france]
GO

SELECT [id], [region], [dep], [cheflieu], [nom_dep]
FROM [dbo].[departements]
ORDER BY [nom_dep]
GO
*/
/*
--Ex03 : 

USE [france]
GO

SELECT [ville], [dep], [cp]
FROM [dbo].[villes]
WHERE [dep] LIKE '60'
ORDER BY [cp]
GO
*/
/*
--Ex04 : 

USE [france]
GO
SELECT TOP 3 [ville], [dep], [cp]
FROM [dbo].[villes]
WHERE [cp] LIKE '60400'
ORDER BY [ville]
GO
*/
/*
--Ex05 : 

USE [france]
GO
SELECT [ville], [dep], [cp]
FROM [dbo].[villes]
WHERE [ville] LIKE '%saint%'
GO
*/
/*
--Ex06 :

USE [france]
GO

SELECT [dbo].[departements].[nom_dep], COUNT([dbo].[villes].[ville])
AS nombreDeVilles
FROM [dbo].[villes]
FULL OUTER JOIN [dbo].[departements] ON [dbo].[villes].[dep]=[dbo].[departements].[dep]
GROUP BY [dbo].[departements].[nom_dep]
GO
*/
/*
--Ex07 : 


--Afficher les villes ayant comme region picardie

USE [france]
GO

SELECT [ville]
FROM [dbo].[villes]
INNER JOIN [dbo].[regions] ON [dbo].[villes].[region]=[dbo].[regions].[region]
WHERE [dbo].[regions].[region] = 22
GO
*/
/*
--Ex08 : 

USE [france]
GO

SELECT [dbo].[regions].[nom_region], COUNT([dbo].[villes].[ville])
AS nombreDeVilles
FROM [dbo].[villes]
INNER JOIN [dbo].[regions] ON [dbo].[villes].[region]=[dbo].[regions].[region]
GROUP BY [dbo].[regions].[nom_region]
UNION 
SELECT [dbo].[departements].[nom_dep], COUNT([dbo].[villes].[ville])
AS nombreDeVilles
FROM [dbo].[villes]
INNER JOIN [dbo].[departements] ON [dbo].[villes].[dep]=[dbo].[departements].[dep]
GROUP BY [dbo].[departements].[nom_dep]
GO
*/