CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name_genre VARCHAR(50) NOT NULL);
	
CREATE TABLE IF NOT EXISTS performer (
	performer_id SERIAL PRIMARY KEY,
	name_performer VARCHAR(50) NOT NULL);
	
CREATE TABLE IF NOT EXISTS genre_performer (
	genre_id INTEGER REFERENCES genre(genre_id),
	performer_id INTEGER REFERENCES performer(performer_id),
	CONSTRAINT g_a PRIMARY KEY (genre_id, performer_id));
	
CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	releace_year DATE check (releace_year > '1900-01-01'),
	name_album VARCHAR(50) NOT NULL);
	
CREATE TABLE IF NOT EXISTS performer_album (
	performer_id INTEGER REFERENCES performer(performer_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT p_a PRIMARY KEY (performer_id, album_id));
	
CREATE TABLE IF NOT EXISTS track (
    track_id SERIAL PRIMARY KEY,
    name_track VARCHAR(50) NOT NULL,
    duration INTEGER check (duration < 1000),
    album_id INTEGER REFERENCES album(album_id));
    
CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	releace_year DATE,
	name_collection VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES track(track_id),
	collection_id INTEGER REFERENCES collection(collection_id),
	CONSTRAINT t_c PRIMARY KEY (track_id, collection_id));