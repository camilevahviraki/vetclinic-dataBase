/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (id int, name varchar(100), date_of_birth date, escape_attempts int, neutered boolean, weight_kg decimal, PRIMARY KEY (id));

ALTER TABLE animals ADD species varchar(200);
ALTER TABLE animals DROP COLUMN id;
ALTER TABLE animals ADD id SERIAL PRIMARY KEY;
ALTER TABLE animals DROP COLUMN species;

CREATE TABLE owners (id SERIAL PRIMARY KEY, full_name varchar(100), age int);

CREATE TABLE species (id SERIAL PRIMARY KEY, name varchar(100));

ALTER TABLE animals ADD species_id varchar(100);
ALTER TABLE animals ADD owner_id varchar(100);

