```sql
/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Actors' Last Name                                                ║
║ Source   : SQLPad                                                          ║
║ Difficulty: Easy                                                           ║
║ Category : IN / COUNT / GROUP BY                                           ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Find the number of actors whose last name is one of the following:

'DAVIS', 'BRODY', 'ALLEN', 'BERRY'


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

actor

┌───────────────────────┬──────────────────────────┐
│ Column                │ Type                     │
├───────────────────────┼──────────────────────────┤
│ actor_id              │ integer                  │
│ first_name            │ text                     │
│ last_name             │ text                     │
└───────────────────────┴──────────────────────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Filter actors whose last name matches one of the four specified names.
2. Use IN to match the required last names.
3. Count the actors using COUNT(*).
4. Group the results by last_name.
5. Return each matching last name with its actor count.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Select last_name to identify each group.
2. Use COUNT(*) to count the actors in each group.
3. Filter the rows using WHERE last_name IN (...).
4. Group by last_name so each family name has its own count.
5. No ORDER BY is required because the problem does not specify an output order.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    WHERE IN + COUNT(*) + GROUP BY


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    last_name,
    COUNT(*) AS count
FROM actor
WHERE last_name IN ('DAVIS', 'BRODY', 'ALLEN', 'BERRY')
GROUP BY last_name;
```
