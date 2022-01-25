-- Turns column mode on but headers off
.mode column
.headers off

DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS bridge;


CREATE TABLE people (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_name TEXT
);

CREATE TABLE movies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    release_date TEXT,
    rating TEXT,
    director_id INTEGER
);

CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_name TEXT
);

CREATE TABLE bridge (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    role_id INTEGER,
    person_id INTEGER
);

INSERT INTO people (
    person_name
)
VALUES (
    "Christopher Nolan"),(
    "Christian Bale"),(
    "Michael Caine"),(
    "Liam Neeson"),(
    "Katie Holmes"),(
    "Gary Oldman"),(
    "Heath Ledger"),(
    "Aaron Eckhart"),(
    "Maggie Gyllenhaal"),(
    "Tom Hardy"),(
    "Joseph Gordon-Levitt"),(
    "Anne Hathaway"
);

INSERT INTO movies (
    title,
    release_date,
    rating,
    director_id
)
VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    1
);

INSERT INTO movies (
    title,
    release_date,
    rating,
    director_id
)
VALUES (
    "The Dark Knight",
    "2008",
    "PG-13",
    1
);

INSERT INTO movies (
    title,
    release_date,
    rating,
    director_id
)
VALUES (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    1
);


INSERT INTO roles (
    role_name
)
VALUES (
    "Director"),(
    "Bruce Wayne"),(
    "Alfred"),(
    "Ra's Al Ghul"),(
    "Rachel Dawes"),(
    "Commissioner Gordon"),(
    "Joker"),(
    "Harvey Dent"),(
    "Bane"),(
    "John Blake"),(
    "Selina Kyle"
);


INSERT INTO bridge (
    movie_id,
    role_id,
    person_id
)
VALUES (
    1,
    1,
    1
);

INSERT INTO bridge (
    movie_id,
    role_id,
    person_id
)
VALUES (
    1,
    2,
    2
);

INSERT INTO bridge (
    movie_id,
    role_id,
    person_id
)
VALUES (
    1,
    3,
    3
);

INSERT INTO bridge (
    movie_id,
    role_id,
    person_id
)
VALUES (
    1,
    4,
    4
);

INSERT INTO bridge (
    movie_id,
    role_id,
    person_id
)
VALUES (
    1,
    5,
    5
);

-- Prints a header for the movies output
.print "Movies"
.print "========"
.print ""

-- The SQL statement for the movies output
-- TODO!
SELECT movies.title,
    release_date,
    rating, person_name
    FROM movies
    INNER JOIN people ON people.id = movies.director_id
;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!