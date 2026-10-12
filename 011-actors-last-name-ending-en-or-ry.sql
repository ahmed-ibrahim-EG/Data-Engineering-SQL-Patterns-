```sql
/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Actors' Last Name Ending in 'EN' or 'RY'                         ║
║ Source   : SQLPad                                                          ║
║ Difficulty: Easy                                                           ║
║ Category : LIKE / COUNT / GROUP BY                                         ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Identify all actors whose last name ends in 'EN' or 'RY'.
Group and count them by their last name.


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

1. Filter actors whose last name ends in 'EN' or 'RY'.
2. Use LIKE to match the required endings.
3. Count the actors using COUNT(*).
4. Group the results by last_name.
5. Return each matching last name with its actor count.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Select last_name to identify each group.
2. Use COUNT(*) to count the actors in each group.
3. Filter the rows using WHERE and LIKE.
4. Use OR to match either of the two endings.
5. Group by last_name so each family name has its own count.
6. No ORDER BY is required because the problem does not specify an output order.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    WHERE LIKE + OR + COUNT(*) + GROUP BY


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    last_name,
    COUNT(*) AS count
FROM actor
WHERE last_name LIKE '%EN'
   OR last_name LIKE '%RY'
GROUP BY last_name;
```
