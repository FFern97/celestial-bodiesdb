logear cuenta freecodecamp en postgres

crear DB universe

Conectarla


Crear tabla galaxy 


DESPUES SIGUE ESTA TABLA STAR. 



postgres=> CREATE TABLE star (star_id SERIAL PRIMARY KEY NOT NULL, name VARCHAR(50) NOT NULL, age_in_million_years NUMERIC, size INT NOT NULL, mass I
NT, galaxy_id INT, CONSTRAINT fk_galaxy FOREING KEY(galaxy_id) REFERENCES galaxy(galaxy_id));NSTRAINT fk_galaxy FOREING KEY(galaxy_id) REFERENCES galaxy(galaxy_id));
