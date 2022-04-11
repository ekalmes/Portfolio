/* Database for a boardgame tournament
Andrew Shallue, Fall 2020, CS 314
*/

CREATE TABLE Players(
  playerid int not NULL primary key,
  name text
);

CREATE TABLE Venues(
  name text not NULL primary key,
  capacity int,
  address text
);

CREATE TABLE Games(
  gameid int not NULL primary key,
  gamelength int,
  winner int, 
  venue text,
  
  -- winner references Players.playerid
  foreign key (winner) references Players(playerid),
  -- venue references Venues.name
  foreign key (venue) references Venues (name)
);

CREATE TABLE CompeteIn(
  playerid int,
  gameid int,

  -- foreign keys referes Players, Games
  foreign key (playerid) references Players(playerid),
  foreign key (gameid) references Games(gameid)
)