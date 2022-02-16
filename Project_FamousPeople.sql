/* Fictional Moviestar Table */
CREATE TABLE fictional_moviestars
    (id INTEGER PRIMARY KEY AUTOINCREMENT,   celebrity TEXT,
    movies TEXT,
    release_year INTEGER, 
    awards INTEGER);

INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Veron FancyStar", "Siege of the Aliens", 1965, 2);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Classy Beautrice", "The History of Champagne", 1982, 5);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Harrison Honda", "Not Harrison Ford", 1970, 0);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Luke Skywalker", "The Real Skywalker", 1999, 10);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("AirBud", "The life and times of a famous dog", 2006, 12);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Jack Sparrow", "The New Pirates", 2011, 5);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Cookie Monster", "Sesame Street", 2000, 28);
INSERT INTO fictional_moviestars(celebrity,movies,release_year,awards) VALUES ("Ranger Rick", "Backcountry", 2007, 0);


/* Moviestar Activites Table */
CREATE TABLE celebrity_activities
    (id INTEGER PRIMARY KEY AUTOINCREMENT,   celebrity_id INTEGER,
    activity TEXT,
    country TEXT);

INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (1, "Wrestling","Spain"); 
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (2, "Sailing", "Portugal");
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (3, "Smoke Pipes", "UK");
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (4, "Lightsaber duels", "USA");
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (5, "Swimming", "Backyard");
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (6, "Pirating", "World Oceans");
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (7, "Eating Cookies", "Kitchen");
INSERT INTO celebrity_activities(celebrity_id,activity,country) VALUES (8, "Bear Fighting", "USA");


/*What activity does each celebrity like to do?*/ 

SELECT fictional_moviestars.celebrity, 
celebrity_activities.activity
    FROM fictional_moviestars
    LEFT OUTER JOIN celebrity_activities
    ON fictional_moviestars.id =     celebrity_activities.celebrity_id;

/*
I'd like to consolidate all information from both tables.
*/

SELECT fictional_moviestars.celebrity, 
fictional_moviestars.movies, 
fictional_moviestars.release_year as "year released", 
fictional_moviestars.awards as "number of awards", 
celebrity_activities.activity as "favorite sport", 
celebrity_activities.country
    FROM fictional_moviestars
    LEFT OUTER JOIN celebrity_activities
    ON fictional_moviestars.id =     celebrity_activities.celebrity_id;

