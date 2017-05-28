-- Table definitions for the tournament project.

-- Drop tournament database if it already exists
DROP DATABASE IF EXISTS tournament;

-- Create Database
CREATE DATABASE tournament;

-- Connect to the database
\c tournament


-- Creates players table
CREATE TABLE players(
  player_id serial PRIMARY KEY,
  player_name text
);


-- Creates matches table
CREATE TABLE matches (
  match_id serial PRIMARY KEY,
  winner INTEGER,
  loser INTEGER,
  FOREIGN KEY(winner) REFERENCES players(player_id),
  FOREIGN KEY(loser) REFERENCES players(player_id)
);


-- Creates a view of matches played sorted by matches_won count
CREATE VIEW standings AS
SELECT p.player_id as player_id, p.player_name,
(SELECT count(*) FROM matches WHERE matches.winner = p.player_id) as matches_won,
(SELECT count(*) FROM matches WHERE p.player_id in (winner, loser)) as matches_played
FROM players p
GROUP BY p.player_id
ORDER BY matches_won DESC;

