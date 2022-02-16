/* What does the app's SQL look like? 
CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.
*/

CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);


INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("running", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("strength training", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("running", 15, 200, 120);

SELECT * FROM exercise_logs;

/* Let's update this to edit my third running activity to 30 minutes long. Le'ts also re-check that it did in fact update. */

UPDATE exercise_logs SET minutes = 30 WHERE id = 3;
SELECT * FROM exercise_logs;

/*
Let's now say that the strength training was an activity I started but was interrupted, and I'd like to delete this log 
*/

DELETE FROM exercise_logs WHERE calories = 30;
SELECT * FROM exercise_logs;

/* Done! */ 
