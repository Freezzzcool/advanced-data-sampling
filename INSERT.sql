INSERT INTO genre (name_genre)
VALUES ('Rock'), ('Hip-Hop'), ('Pop');

INSERT INTO performer (name_performer)
VALUES ('ac/dc'), ('Scooter'), ('Eminem'), ('Metallica'), ('Michael Jackson');

INSERT INTO genre_performer (genre_id, performer_id)
VALUES (1, 2), (2, 2), (2, 3), (1, 4), (3, 5);

INSERT INTO album (releace_year, name_album)
VALUES 
	('1979-07-27', 'Highway to Hell'),
	('2007-11-30', 'Jumping All Over the World'),
	('2005-12-6', 'Curtain Call: The Hits'),
	('1991-08-12', 'Metallica');

INSERT INTO performer_album
VALUES (1, 1), (2, 2), (3, 3), (4, 4);

INSERT INTO track (name_track, duration, album_id)
VALUES 
	('Highway to Hell', 208, 1),
	('Girls Got Rhythm', 203, 1),
	('The Definition', 85, 2),
	('Jumping All Over The World', 228, 2),
	('Mockingbird', 251, 3),
	('Lose Myself', 326, 3),
	('Enter Sandman', 331, 4),
	('The Unforgiven', 387, 4),
	('Wherever I May Roam', 404, 4),
	('Billie Jean', 293, NULL);

INSERT INTO collection (releace_year, name_collection)
VALUES 
	('1999-12-31', 'Popular 20th century'),
	('2009-12-31', 'Popular 00s'),
	('1998-06-01', 'Pop music hits'),
	('2018-03-22', 'American performers');

INSERT INTO track_collection (track_id, collection_id)
VALUES 
	(1, 1), 
	(1, 4),
	(2, 1),
	(2, 4),
	(3, 1),
	(3, 4),
	(4, 2),
	(4, 4),
	(5, 2),
	(5, 4),
	(6, 2),
	(6, 4),
	(7, 1),
	(7, 4),
	(8, 1),
	(8, 4),
	(9, 1),
	(9, 4),
	(10, 3),
	(10, 4);
