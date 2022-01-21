/*
Here's a table containing a TODO list with the number of minutes it will take to complete each item. 
*/

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);

/* 
Insert another item to your todo list with the estimated minutes it will take.
*/
INSERT INTO todo_list VALUES (4, "Writing", 30);

/*
Select the SUM of minutes it will take to do all of the items on your TODO list.
*/

SELECT SUM(minutes) FROM todo_list;
