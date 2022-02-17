/*  - Create an "animals" table with columns for: 
[species, name, age, was fed (yes/no), their favorite food] */
CREATE TABLE animals (
	id INTEGER PRIMARY KEY,
	species TEXT NOT NULL,
	name TEXT NOT NULL,
	was_fed BOOLEAN NOT NULL CHECK (was_fed IN (0, 1)),
	favorite_food TEXT NOT NULL
);

/*- Populate the table with some animals you like */
INSERT INTO animals (species, name, was_fed, favorite_food) VALUES ("dog", "reksi", 0, "bones");

/*- Update some properties of the animal - anything you like e.g. their age or if they were fed */
ALTER TABLE animals ADD age;
UPDATE animals SET age = 15 WHERE id = 1;
UPDATE animals SET age = 10; this makes all 10 age
UPDATE animals SET was_fed = 1 WHERE id = 1;

/*- Remove one of the animals - they are being transfered to a different zoo
- Remove the column for their favourite_food, you don't need that information anymore (Note: if you run into issues running the command, feel free to skip this step) */
DELETE FROM animals WHERE id = 3;
/* Removing the columns only manually cause sqllite doesnt have it */

/*  - Start tracking where the animals are from. Call it origin and add a city for a couple animals. */
ALTER TABLE animals ADD origin;

UPDATE animals SET origin = "tirana" WHERE id = 1;
UPDATE animals SET origin = "durres" WHERE id = 2;

SELECT * FROM animals;
SELECT species, name from animals;

SELECT name FROM animals WHERE id = 1;
SELECT * FROM animals LIMIT 1;

SELECT * FROM animals WHERE origin = "tirana";
SELECT * FROM animals WHERE was_fed = 1;

/* Challenge
- Can you feed all the animals using just one command? */
UPDATE animals SET was_fed = 1;