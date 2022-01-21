/*Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want
 store to specialize in. You should have a table for all the items in your store, and at least 5 columns 
 for the kind of data you think you'd need to store. You should sell at least 15 items, and use select 
 statements to order your items by price and show at least one statistic about the items.*/

CREATE TABLE newstore (id INTEGER PRIMARY KEY, groceries TEXT, price_USD INTEGER, weight_lb REAL, aisle INTEGER);

INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Milk", 2, 2.5, 1);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Eggs", 3, 1, 1);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Cheese", 2, 0.5, 1);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Yogurt", 3, 1, 1);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Chocolate", 1, 0.5, 10);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Apples", 0.5, 0.5, 2);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Bananas", 0.5, 0.5, 2);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Kiwis", 0.5, 3, 2);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Frozen Berries", 2, 1, 3);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Zebra Cakes", 0.5, 1, 9);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Lentils", 2, 1, 7);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Rice", 2, 1, 7);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Noodles", 2, 1, 7);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Spices", 5, 0.25, 6);
INSERT INTO newstore (groceries, price_USD, weight_lb, aisle) VALUES ("Pet Food", 4, 2, 4);

SELECT * FROM newstore ORDER BY price_USD;
SELECT AVG(price_USD) FROM newstore;

