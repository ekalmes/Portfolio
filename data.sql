INSERT into Drinks VALUES
  ('Cafe Classic', 'Starbucks'),
  ('Forto Latte', 'Prinicity'),
  ('Mocha Frappiccino', 'Starbucks'),
  ('Super Coffee', 'Kito'),
  ('Cold Brew', 'Starbucks');

INSERT into Cafe VALUES
  ('Starbucks Bloomington', '100 Veterans Pkwy', 100123),
  ('Starbucks Normal', '101 Main st', 212971),
  ('Caribou Blaine', '202 Hwy 65', 91221),
  ('Caribou Minneapolis', '100 1st Ave', 21021),
  ('Cafe Paris', '35 Green St', 220101);

INSERT into Customers VALUES
  (1, 'Adams', '11 1st Ave', 3092041235), 
  (2, 'Baker', '22 2nd Ave', 3092349210),
  (3, 'Clark', '33 3rd Ave', 3092349191), 
  (4, 'Davis', '44 4th Ave', NULL),
  (5, 'Evans', '11 1st Ave', 3092041235), 
  (6, 'Frank', '11 1st Ave', NULL),
  (7, 'Ghosh', NULL, NULL),
  (8, 'Hills', '55 5th Ave', 3091110293),
  (9, 'Irwin', '66 6th Ave', 3091110293),
  (10,'Jones', '77 7th Ave', 3097061111),
  (11,'Klein', '88 8th Ave', NULL), 
  (12, 'Lopez', NULL, 3091129391);

INSERT into Likes VALUES
  (1, 'Cafe Classic'),
  (1, 'Cold Brew'),
  (2, 'Mocha Frappiccino'),
  (8, 'Mocha Frappiccino'),
  (12, 'Mocha Frappiccino'),
  (3, 'Super Coffee'),
  (3, 'Cafe Classic'),
  (4, 'Super Coffee'),
  (5, NULL),
  (6, NULL),
  (7, NULL),
  (9, NULL);

INSERT into Sells VALUES
  ('Starbucks Bloomington', 'Cafe Classic', 2),
  ('Starbucks Bloomington', 'Forto Latte', 3),
  ('Starbucks Bloomington', 'Mocha Frappiccino', 5),
  ('Starbucks Bloomington', 'Cold Brew', 4),
  ('Starbucks Normal', 'Cafe Classic', 3),
  ('Starbucks Normal', 'Forto Latte', 2),
  ('Starbucks Normal', 'Mocha Frappiccino', 6),
  ('Caribou Blaine', 'Super Coffee', 2),
  ('Caribou Blaine', 'Forto Latte', 3),
  ('Caribou Minneapolis', 'Cafe Classic', 7),
  ('Caribou Minneapolis', 'Forto Latte', NULL),
  ('Cafe Paris', 'Cafe Classic', 2),
  ('Cafe Paris', 'Forto Latte', 4);

INSERT into Frequents VALUES
  (1, 'Starbucks Bloomington'),
  (1, 'Starbucks Normal'),
  (2, 'Starbucks Bloomington'),
  (2, 'Caribou Blaine'),
  (3, 'Cafe Paris'),
  (4, 'Cafe Paris'),
  (5, 'Cafe Paris'),
  (6, 'Cafe Paris'),
  (6, 'Starbucks Bloomington'),
  (7, 'Caribou Minneapolis'),
  (8, 'Caribou Minneapolis'),
  (9, 'Caribou Blaine'),
  (9, 'Caribou Minneapolis'),
  (10, 'Starbucks Normal'),
  (10, 'Caribou Blaine'),
  (11, 'Cafe Paris'),
  (1, 'Cafe Paris'),
  (3, 'Caribou Blaine');

