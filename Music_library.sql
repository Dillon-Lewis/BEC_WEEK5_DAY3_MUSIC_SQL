-- Task 1 creating a database and adding to it

CREATE DATABASE Music_Lib;

SELECT * FROM albums;
SELECT * FROM genres;
SELECT * FROM artists;

CREATE TABLE albums(
id INT AUTO_INCREMENT PRIMARY KEY,
album_title VARCHAR(75) NOT NULL,
date_published DATE NOT NULL,
total_tracks CHAR(3)
);

CREATE TABLE artists(
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(50) NOT NULL,
band_name VARCHAR(75) NOT NULL,
still_together BOOL NULL,
best_songs VARCHAR(100) NULL,
albums_produced INT NULL
);

CREATE TABLE genres(
id INT AUTO_INCREMENT PRIMARY KEY,
genre_type VARCHAR(75) NOT NULL,
similar_genres VARCHAR(100)
);

-- Task 2: Altering and adding a column

ALTER TABLE albums ADD total_duration VARCHAR(20);  


-- Task 3 -- Adding Forgien keys to establish relationships

ALTER TABLE albums ADD genre_id INT;
ALTER TABLE albums ADD FOREIGN KEY (genre_id) REFERENCES genres(id);

ALTER TABLE albums ADD artist_id INT;
ALTER TABLE albums ADD FOREIGN KEY (artist_id) REFERENCES artists(id);
