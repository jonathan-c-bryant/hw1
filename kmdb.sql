
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission

-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS roles;


-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE people (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    release_date TEXT,
    rating TEXT,
    director_id INTEGER,
);

CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_name TEXT,
    person_id INTEGER,
    movie_id INTEGER,
);


-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO people (
    person_name,
VALUES (
    "Christian Bale",
    "Michael Caine",
    "Liam Neeson",
    "Katie Holmes",
    "Gary Oldman", 
    "Christian Bale",
    "Heath Ledger",
    "Aaron Eckhart",
    "Michael Caine",
    "Maggie Gyllenhaal",
    "Christian Bale",
    "Gary Oldman",
    "Tom Hardy",
    "Joseph Gordon-Levitt",
    "Anne Hathaway",
);

INSERT INTO movies (
    title,
VALUES (
    "Batman Begins",
    "The Dark Knight",
    "The Dark Knight Rises",
);


INSERT INTO movies (
    release_date,
VALUES (
    "2005",
    "2008",
    "2012",
);

INSERT INTO movies (
    rating,
VALUES (
    "PG-13",
    "PG-13",
    "PG-13",
);

INSERT INTO movies (
    director_id,
VALUES (
    "1",
    "1",
    "1",
);

INSERT INTO roles (
    role_name,
VALUES (
    "Bruce Wayne",
    "Alfred",
    "Ra's Al Ghul",
    "Rachel Dawes",
    "Commissioner Gordon",
    "Bruce Wayne",
    "Joker",
    "Harvey Dent",
    "Alfred",
    "Rachel Dawes",
    "Bruce Wayne",
    "Commissioner Gordon",
    "Bane",
    "John Blake",
    "Selina Kyle",
);

INSERT INTO roles (
    person_id,
VALUES (
    "1"
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
);

INSERT INTO roles (
    movie_id,
VALUES (
    "1",
    "1",
    "1",
    "1",
    "1",
    "2",
    "2",
    "2",
    "2",
    "2",
    "3",
    "3",
    "3",
    "3",
    "3",
);


-- Prints a header for the movies output
.print "Movies"
.print ""
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!