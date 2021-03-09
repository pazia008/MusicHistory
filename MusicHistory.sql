SELECT *
FROM Genre;

SELECT *
FROM Artist
ORDER BY ArtistName;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

SELECT	DISTINCT
	a.ArtistName
FROM	Album
JOIN	Artist a on ArtistId = a.id
JOIN	Genre g on GenreId = g.id
WHERE	g.id = 7;

SELECT DISTINCT
	a.ArtistName
FROM	Album
JOIN	Artist a on ArtistId = a.id
JOIN	Genre g on GenreId = g.id
WHERE	g.id = 2 OR g.id = 4;

SELECT Title
FROM Album
	WHERE AlbumLength IS NULL;



INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Lawrence', 2013);
 
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Living Room', '9/14/2018', 2289, 'R&B/Soul', 28, 6);

--task 9
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Make A Move', 69, '9/06/2018', 7, 28, 23);



