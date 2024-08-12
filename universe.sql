psql --username=freecodecamp --dbname=postgres 

CREATE DATABASE universe;

\c universe; 


postgres=> CREATE TABLE galaxy (galaxy_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, description VARCHAR (255), has_life BOOLEAN, age_in_million_years INT)


postgres=> CREATE TABLE star (star_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, age_in_million_years NUMERIC, size INT NOT NULL, mass INT, galaxy_id INT, 
CONSTRAINT fk_galaxy FOREING KEY(galaxy_id) REFERENCES galaxy(galaxy_id));

postgres=> CREATE TABLE planet (planet_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, has_life BOOLEAN, 
size INT NOT NULL, been_explored BOOLEAN, star_id INT, CONSTRAINT fk_star FOREING KEY(star_id) REFERENCES star(star_id)); 

postgres=> CREATE TABLE moon (moon_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, distance_from_planet NUMERIC, size INT,
planet_id INT, CONSTRAINT fk_planet FOREING KEY(planet_id) REFERENCES planet(planet_id)); 

postgres=> CREATE TABLE black_hole(black_hole_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, age_in million_years NUMERIC, distance_from_earth NUMERIC,
galaxy_id INT); 

universe=> INSERT INTO galaxy() VALUES(''); 
 
