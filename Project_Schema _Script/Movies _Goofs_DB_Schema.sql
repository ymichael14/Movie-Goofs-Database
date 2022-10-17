Create TABLE "movies" (
"adult" BOOLEAN,
"original_title" Varchar, 
"release_date" varchar,
"imdb_id" varchar, 
"popularity" varchar
);

Select * From movies;

CREATE TABLE "goofs" (
"title" varchar,
"category" varchar,
"imdb_id" varchar,
"goof" text
);

Select * From "goofs"

/* Query to view goof counts by imdb_id*/

SELECT imdb_id, COUNT(*) 
FROM goofs 
GROUP BY imdb_id;


/* once viewing goof count anyone can use the imdb_id to view what movie has those goofs */

SELECT imdb_id, original_title,popularity
FROM movies
WHERE imdb_id = 'tt0119664';













					   