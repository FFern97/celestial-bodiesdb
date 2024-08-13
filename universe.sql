psql --username=freecodecamp --dbname=postgres 

CREATE DATABASE universe;

\c universe; 


CREATE TABLE galaxy (galaxy_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, description VARCHAR (255), has_life BOOLEAN, age_in_million_years INT);


CREATE TABLE star (star_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, age_in_million_years NUMERIC, size_in_km INT NOT NULL, mass INT, galaxy_id INT, 
CONSTRAINT fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id));

CREATE TABLE planet (planet_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, has_life BOOLEAN, 
size_in_km INT NOT NULL, been_explored BOOLEAN, star_id INT, CONSTRAINT fk_star FOREIGN KEY(star_id) REFERENCES star(star_id)); 

CREATE TABLE moon (moon_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, distance_from_planet NUMERIC, size_in_km INT,
planet_id INT, CONSTRAINT fk_planet FOREIGN KEY(planet_id) REFERENCES planet(planet_id)); 

CREATE TABLE black_hole(black_hole_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, age_in_million_years NUMERIC, distance_from_earth NUMERIC,
galaxy_id INT, CONSTRAINT fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id)); 

INSERT INTO galaxy(name, description, has_life, age_in_million_years) 
 
  VALUES 
    ('GALAXY1', 'Biggest known to mankind', FALSE, 1256214),
    ('GALAXY2', 'Three different species inhabit this galaxy', TRUE, 1256214),
    ('GALAXY3', '', FALSE, 1256214),
    ('GALAXY4', 'Smallest known to mankind', FALSE, 1256214),
    ('GALAXY5', 'Earth belongs to this galaxy', TRUE, 1256214),
    ('GALAXY6', '', FALSE, 1256214);

INSERT INTO star (name, age_in_million_years, size_in_km, mass) 
  
  VALUES
    ('STAR1', 16564, 19222, 4),
    ('STAR1', 9568, 12145, 3),
    ('STAR1', 11364, 1456, 3),
    ('STAR1', 6564, 89985, 1),
    ('STAR1', 14520, 13658, 5),
    ('STAR1', 18315, 22356, 7);

INSERT INTO planet (name, has_life, size_in_km, been_explored, star_id)

  VALUES

     ('PLANET1', FALSE, 1564, FALSE, 4),
     ('PLANET2', FALSE, 4566, FALSE, 6),
     ('PLANET3', FALSE, 6578, FALSE, 1),
     ('PLANET4', FALSE, 1564, FALSE, 1),
     ('PLANET5', FALSE, 2641, FALSE, 5),
     ('PLANET6', FALSE, 9796, FALSE, 2),
     ('PLANET7', FALSE, 15654, FALSE, 3),
     ('PLANET8', FALSE, 1533, FALSE, 5),
     ('PLANET9', FALSE, 3564, FALSE, 2),
     ('PLANET10', FALSE, 1129, FALSE, 1),
     ('PLANET11', FALSE, 7823, FALSE, 3),
     ('PLANET12', FALSE, 4512, FALSE, 4);

