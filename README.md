# Swiss-Tournament-Udacity
I have written a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. 
The game tournament will use the Swiss system for pairing up players in each round:
players are not eliminated, and each player should be paired with another player with the same number of wins, 
or as close as possible.  This project has two parts: defining the database schema (SQL table definitions), 
and writing the code that will use it.

## Files:

1. `tournament.py`

    This Python file contains the implementation for the Swiss system tournament

2. `tournament.sql`

   This SQL file contains the SQL queries to create 
       1. one Database(`tournament`),
       2. two Tables(`players`, `Matches`)
       3. one View(`standings`)

3. `tournament_test.py`

   This Pyhton file contains the test cases for `tournament.py`

## How to run:

1. In Vagrant open psql and copy the psql commands from tournament.sql and run 
2. Run tournament_test.py and see if all the test cases work
3. Command to run tournament_test.py in the command promt is `python tournament_test.py`
