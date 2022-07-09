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

SELECT owners.full_name, animals.name FROM animals INNER JOIN owners ON owners.full_name = animals.owner_id WHERE owners.full_name='Melody Pond';

SELECT species.name, animals.name FROM animals INNER JOIN species ON species.name = animals.species_id WHERE species.name='Pokemon';

SELECT owners.full_name, animals.name FROM animals INNER JOIN owners ON owners.full_name = animals.owner_id WHERE owners.full_name='Jennifer Orwell';

SELECT COUNT(*) FROM animals WHERE species_id = 'Pokemon';

SELECT owners.full_name, animals.name, animals.species_id FROM animals INNER JOIN owners ON owners.full_name = animals.owner_id WHERE owner_id = 'Jennifer Orwell' AND species_id = 'Digimon';

SELECT owners.full_name, animals.name, animals.species_id, animals.escape_attempts FROM animals INNER JOIN owners ON owners.full_name = animals.owner_id WHERE owner_id = 'Dean Winchester' AND escape_attempts = 0;

SELECT animals.owner_id FROM animals INNER JOIN owners ON animals.owner_id = owners.full_name GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1;


SELECT animals.name, visits.vet, visits.visit_date FROM animals INNER JOIN visits ON visits.animal = animals.name WHERE visits.vet = 'William Tatcher' ORDER BY visits.visit_date DESC LIMIT 1;

SELECT COUNT(*) FROM visits WHERE vet = 'Stephanie Mendez'; 

SELECT specializations.vet_name, specializations.species FROM visits INNER JOIN specializations ON specializations.vet_name = visits.vet WHERE vet = 'William Tatcher';

SELECT specializations.vet_name, specializations.species FROM visits INNER JOIN specializations ON specializations.vet_name = visits.vet WHERE vet = 'Jack Harkness';

SELECT specializations.vet_name, specializations.species FROM visits INNER JOIN specializations ON specializations.vet_name = visits.vet WHERE vet = 'Stephanie Mendez';

SELECT animals.name, visits.vet, visits.visit_date FROM animals INNER JOIN visits ON visits.animal = animals.name WHERE visits.vet = 'Stephanie Mendez' AND visits.visit_date BETWEEN '2020-4-1' AND '2020-8-30';

SELECT animal FROM visits GROUP BY animal ORDER BY COUNT(*) DESC LIMIT 1;

SELECT animals.name, visits.vet, visits.visit_date FROM animals INNER JOIN visits ON visits.animal = animals.name ORDER BY visits.visit_date LIMIT 1;

SELECT COUNT(*) FROM visits INNER JOIN specializations ON specializations.vet_name = visits.vet WHERE species = 'Pokemon' AND animal NOT LIKE '%mon';

SELECT * FROM visits GROUP BY animal ORDER BY COUNT(*) DESC LIMIT 1;



