/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Top 5 Shortest Movies                                           ║
║ Source   : SQLPad                                                         ║
║ Difficulty: Easy                                                          ║
║ Category : SELECT / ORDER BY / LIMIT                                      ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Write a query to return the titles of the 5 shortest movies by duration.

The order of the results does not matter.


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

film

┌───────────────────────┬───────────┐
│ Column                │ Type      │
├───────────────────────┼───────────┤
│ film_id               │ integer   │
│ title                 │ text      │
│ description           │ text      │
│ release_year          │ integer   │
│ language_id           │ smallint  │
│ original_language_id  │ smallint  │
│ rental_duration       │ smallint  │
│ rental_rate           │ numeric   │
│ length                │ smallint  │
│ replacement_cost      │ numeric   │
│ rating                │ text      │
└───────────────────────┴───────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Return the movie title.
2. Use the length column to determine movie duration.
3. Sort movies from shortest to longest.
4. Return only the first 5 movies.
5. The order of the final result does not matter.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Select the required column:
   - title

2. Sort the movies by length in ascending order so that the shortest
   movies appear first.

3. Limit the result to the first 5 rows.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    SELECT + ORDER BY ASC + LIMIT


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    title
FROM film
ORDER BY length ASC
LIMIT 5;
