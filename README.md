# ENTR-451 Homework Assignment #1

In this assignment, you'll be building the domain model, database structure, and data for "KMDB" (the Kellogg Movie Database). The end product will be a report that prints the movies and the top-billed cast for each movie in the database.

### Getting Started

- Use this template to create a new GitHub repository (click *Use this template* at the top of this page); be sure that the new repository in your account is named `hw1`
- Open the new repository (the one in your GitHub account – it should be called `_Your GitHub Username_/hw1`) in Gitpod. 
- Create a new SQLite database by typing `sqlite3 kmdb.sqlite3`
- Complete the assignment per the detailed instructions found in the comments of `kmdb.sql`, executing the script by using the `.read kmdb.sql` command.
- Commit and sync often! When complete, ensure that your most up-to-date, finished work lives in your GitHub repository, then, submit the URL to your GitHub repository page – i.e. `https://github.com/_Your GitHub Username_/hw1`


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