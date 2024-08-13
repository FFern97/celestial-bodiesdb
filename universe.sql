psql --username=freecodecamp --dbname=postgres 

CREATE DATABASE universe;

\c universe; 


CREATE TABLE galaxy (galaxy_id SERIAL PRIMARY KEY NOT NULL, name TEXT NOT NULL UNIQUE, description VARCHAR (255), has_life BOOLEAN, age_in_million_years INT);


CREATE TABLE star (star_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL UNIQUE, age_in_million_years NUMERIC, size_in_km INT NOT NULL, mass INT, galaxy_id INT, 
CONSTRAINT fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id));

CREATE TABLE planet (planet_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL UNIQUE, has_life BOOLEAN, 
size_in_km INT NOT NULL, been_explored BOOLEAN, star_id INT, CONSTRAINT fk_star FOREIGN KEY(star_id) REFERENCES star(star_id)); 

CREATE TABLE moon (moon_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL UNIQUE, distance_from_planet NUMERIC, size_in_km INT,
planet_id INT, CONSTRAINT fk_planet FOREIGN KEY(planet_id) REFERENCES planet(planet_id)); 

CREATE TABLE black_hole(black_hole_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL UNIQUE, age_in_million_years NUMERIC, distance_from_earth NUMERIC,
galaxy_id INT, CONSTRAINT fk_galaxy FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id)); 

INSERT INTO galaxy(name, description, has_life, age_in_million_years) 
 
  VALUES 
    ('GALAXY1', 'Biggest known to mankind', FALSE, 1256214),
    ('GALAXY2', 'Three different species inhabit this galaxy', TRUE, 1256214),
    ('GALAXY3', '', FALSE, 1256214),
    ('GALAXY4', 'Smallest known to mankind', FALSE, 1256214),
    ('GALAXY5', 'Earth belongs to this galaxy', TRUE, 1256214),
    ('GALAXY6', '', FALSE, 1256214);

INSERT INTO star (name, age_in_million_years, size_in_km, mass, galaxy_id) 
  
  VALUES
    ('STAR1', 16564, 19222, 4, 'GALAXY4'),
    ('STAR2', 9568, 12145, 3, 'GALAXY6'),
    ('STAR3', 11364, 1456, 3, 'GALAXY1'),
    ('STAR4', 6564, 89985, 1, 'GALAXY3'),
    ('STAR5', 14520, 13658, 5, 'GALAXY2'),
    ('STAR6', 18315, 22356, 7, 'GALAXY5');

INSERT INTO planet (name, has_life, size_in_km, been_explored, star_id)

  VALUES

     ('PLANET1', FALSE, 1564, FALSE, 'STAR4'),
     ('PLANET2', FALSE, 4566, FALSE, 'STAR6'),
     ('PLANET3', FALSE, 6578, FALSE, 'STAR1'),
     ('PLANET4', FALSE, 1564, FALSE, 'STAR1'),
     ('PLANET5', FALSE, 2641, FALSE, 'STAR5'),
     ('PLANET6', FALSE, 9796, FALSE, 'STAR2'),
     ('PLANET7', FALSE, 15654, FALSE, 'STAR3'),
     ('PLANET8', FALSE, 1533, FALSE, 'STAR5'),
     ('PLANET9', FALSE, 3564, FALSE, 'STAR2'),
     ('PLANET10', FALSE, 1129, FALSE, 'STAR1'),
     ('PLANET11', FALSE, 7823, FALSE, 'STAR3'),
     ('PLANET12', FALSE, 4512, FALSE, 'STAR4');

INSERT INTO moon (name, distance_from_planet, size_in_km, planet_id)


  VALUES 

     ('MOON1', 1235645, 6845, 'PLANET12'),
     ('MOON2', 145987, 596, 'PLANET6'),
     ('MOON3', 256987, 485, 'PLANET4'),
     ('MOON4', 78956, 1000, 'PLANET8'),
     ('MOON5', 56951, 123, 'PLANET3'),
     ('MOON6', 84756, 1140, 'PLANET7'),
     ('MOON7', 22365, 845, 'PLANET9'),
     ('MOON8', 147852, 784, 'PLANET2'),
     ('MOON9', 32014, 322, 'PLANET5'),
     ('MOON10', 99852, 754, 'PLANET1'),
     ('MOON11', 111236, 777, 'PLANET1'),
     ('MOON12', 108562, 569, 'PLANET8'),
     ('MOON13', 78451, 944, 'PLANET11'),
     ('MOON14', 65321, 1111, 'PLANET12'),
     ('MOON15', 102458, 221, 'PLANET10'),
     ('MOON16', 45621, 593, 'PLANET7'),
     ('MOON17', 135740, 2021, 'PLANET7'),
     ('MOON18', 66891, 1589, 'PLANET3'),
     ('MOON19', 23235, 2301, 'PLANET1'),
     ('MOON20', 144512, 678, 'PLANET2');
     
INSERT INTO black_hole (name, age_in_million_years, distance_from_earth, galaxy_id)

   VALUES 

     ('BLACKHOLE1', 4526, 178986, 'GALAXY5'),
     ('BLACKHOLE2', 12356, 156231, 'GALAXY4'),
     ('BLACKHOLE3', 2356, 132547, 'GALAXY3'),
     ('BLACKHOLE4', 9756, 182463, 'GALAXY1'),
     ('BLACKHOLE5', 7784, 145672, 'GALAXY2'),
     ('BLACKHOLE6', 6921, 135789, 'GALAXY6'); 
