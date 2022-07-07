/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';

SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT * FROM animals WHERE neutered = 'true' AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg >= 10.5;

SELECT * FROM animals WHERE neutered = 'true';

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

UPDATE animals SET species = 'unspecified';

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

UPDATE animals SET species = 'pokemon' WHERE species = 'unspecified';

DELETE FROM animals WHERE date_of_birth >= '2022-01-01';

UPDATE animals SET weight_kg = weight_kg * 1;

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT MAX(escape_attempts) as max_escapes FROM animals WHERE neutered = 'true';
SELECT MAX(escape_attempts) as max_escapes FROM animals WHERE neutered = 'false';

SELECT MAX(weight_kg) as max_Weigth FROM animals WHERE species = 'pokemon';
SELECT MIN(weight_kg) as min_Weigth FROM animals WHERE species = 'pokemon';

SELECT MAX(weight_kg) as max_Weigth FROM animals WHERe species = 'digimon';
SELECT MIN(weight_kg) as min_Weigth FROM animals WHERe species = 'digimon';

SELECT AVG(escape_attempts) FROM animals WHERE species = 'pokemon' AND date_of_birth BETWEEN '1990-01-01' AND '2000-01-01';

SELECT * FROM animals WHERE owner_id = 'Melody Pond';

SELECT * FROM animals WHERE species_id = 'Pokemon';

SELECT * FROM animals INNER JOIN owners ON owners.full_name = animals.owner_id;
