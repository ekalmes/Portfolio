/* Database for a boardgame tournament
Andrew Shallue, Fall 2020, CS 314
*/

INSERT into Players VALUES
  (1, 'Adams'), 
  (2, 'Baker'),
  (3, 'Clark'), 
  (4, 'Davis'),
  (5, 'Evans'), 
  (6, 'Frank'),
  (7, 'Ghosh'),
  (8, 'Hills'),
  (9, 'Irwin'),
  (10,'Jones'),
  (11,'Klein'), 
  (12, 'Lopez');

INSERT into Venues VALUES
  ('citycenter', 1000, '1st St'),
  ('hilton', 300, '2nd St'),
  ('airporthotel', 200, 'airport rd');

INSERT into Games VALUES
  (1, 30, 1, 'citycenter'),
  (2, 30, 12, 'citycenter'),
  (3, 60, 1, 'citycenter'), 
  (4, 60, 1, 'citycenter'),
  (5, 30, 9, 'hilton'),
  (6, 120, 3, 'hilton'),
  (7, 120, 5, 'airporthotel'),
  (8, 150, 1, 'airporthotel'),
  (9, 150, 12, 'airporthotel'),
  (10, 150, 3, 'airporthotel');

INSERT into CompeteIn VALUES  
  (1, 1),
  (1, 3),
  (1, 4),
  (1, 8),
  (12, 2),
  (12, 9),
  (9, 5),
  (3, 6),
  (5, 7),
  (3, 10),
  (2, 10),
  (8, 2),
  (9, 3);
