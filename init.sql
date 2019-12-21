DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
  id serial primary key,
  title text not null,
  genres varchar(1024)
);

DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
  id serial primary key,
  user_id int not null,
  movie_id int not null,
  rating float not null,
  created bigint not null
);

vacuum full;