DROP INDEX IF EXISTS idx_ratings_movie_id;
DROP INDEX IF EXISTS idx_ratings_rating;
DROP INDEX IF EXISTS idx_movies_title;
DROP INDEX IF EXISTS idx_movies_genres;

DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id serial primary key,
  title text not null,
  genres varchar(1024)
);


CREATE TABLE ratings (
  id serial primary key,
  user_id int not null,
  movie_id int not null REFERENCES movies(id),
  rating float not null,
  created bigint not null
);

vacuum full;