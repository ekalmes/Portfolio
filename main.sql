/* Database for a boardgame tournament
Andrew Shallue, Fall 2020, CS 314

Zeke Kalmes
*/

.header on
.mode column
PRAGMA foreign_keys = ON;

.read schema.sql
.read data.sql

Select *
From Games;

-- #15 
SELECT DISTINCT p.name --selects distinct player name
FROM Games g -- from games table
JOIN Players p -- joined with the players table
    ON p.playerid = g.winner -- join on the fk winner which references playerid 
WHERE g.venue LIKE "airporthotel"; -- find where the venue is the airporthotel

-- #16 
SELECT g.gameid --selects gameid 
FROM Games g --from games table
JOIN Players p --join games table on players table
    ON p.playerid  = g.winner--join on the fk winner which references playerid 
WHERE (p.name LIKE "Adams" 
    OR p.name LIKE "Lopez") -- select where the names of the winners are adams or lopez
    AND g.gamelength = 30; -- and the gamelength is 30 min

-- #17 
SELECT v.name, capacity, COUNT(c.playerid) -- selecting venue name, capacity, and the count of player id's 
FROM Games g -- from the games table
JOIN CompeteIn c -- which is joined on CompeteIn table
    ON g.gameid = c.gameid-- via the gameid foreign keys
JOIN Venues v --which is also joined on the venues table
    ON v.name = g.venue --joined on the venue name in venues table and venue attribute from games table. 
GROUP BY v.name; -- these results are grouped by the venue name. 

-- #18
SELECT p.name, COUNT(g.winner) -- selecting player name and the count of the number of times the names appear in winner 
FROM Players p -- selcting from the players table 
LEFT JOIN Games g -- left outer join on games table in order to get null values as requested in the problem
    ON p.playerid = g.winner --joining on playerid and winner foreign keys in players and games table
GROUP BY p.name; -- grouping the counts of wins by the names of players
