-- movies.csv: movieId,title,genres
\copy movies (id, title, genres) FROM 'ml-latest/movies.csv' WITH (DELIMITER ',', FORMAT CSV, HEADER true, ESCAPE '"', ENCODING 'UTF-8');

-- ratings.csv: userId,movieId,rating,timestamp
\copy ratings (user_id, movie_id, rating, created) FROM 'ml-latest/ratings.csv' WITH (DELIMITER ',', FORMAT CSV, HEADER true, ESCAPE '"', ENCODING 'UTF-8');
