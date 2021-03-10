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

	--task 10
SELECT *
FROM Song s
	left JOIN Album al on s.AlbumId = al.id
	left JOIN Artist ar on s.ArtistId = ar.id
	WHERE s.Title = 'TV Party'
	or s.Title = 'Thug'
	or ar.ArtistName = 'Beatles'

	--task 11
	SELECT count(s.Id), al.Title
		FROM Song s
			left JOIN Album al on s.AlbumId = al.Id
			group by al.Title

	--task 12
	SELECT count(s.Id), ar.ArtistName
		FROM Song s
			left JOIN Artist ar on s.ArtistId = ar.Id
			group by ar.ArtistName

	--task 13
	SELECT count(s.Id), g.Id
		FROM Song s
			left JOIN Genre g on s.GenreId = g.Id
			group by g.Id


	--task 14
	SELECT count(distinct al.label), ar.ArtistName
	FROM Artist ar JOIN Album al on ar.id = al.ArtistId
	group by ar.ArtistName
	having count(distinct al.Label) > 1

	--task 15
	SELECT a.Title, a.AlbumLength
	FROM Album a
	WHERE a.AlbumLength = (SELECT max (a.AlbumLength)
	FROM Album a);


	--task 16 & 17
	SELECT s.Title, s.SongLength, al.Title
	FROM Song s
	left JOIN Album al on s.AlbumId = al.Id
	WHERE s.SongLength = (SELECT max (s.SongLength)
	FROM Song s)
	
