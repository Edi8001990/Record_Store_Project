DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists(
  id SERIAL8 primary key,
  name VARCHAR(255)
);

CREATE TABLE albums(
  id SERIAL8 primary key,
  album_title VARCHAR(255),
  quantity INT4,
  year_of_issue INT4,
  artist_id INT8 REFERENCES artists(id) ON DELETE CASCADE
);
