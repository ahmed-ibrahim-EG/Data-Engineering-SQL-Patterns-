/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem   : Unique Customers Count by Month                               ║
║ Source    : SQLPad                                                         ║
║ Difficulty: Easy                                                           ║
║ Category  : Aggregation / GROUP BY / COUNT(DISTINCT)                       ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Return the total number of unique customers for each month.

Use EXTRACT(YEAR FROM ts_field) and EXTRACT(MONTH FROM ts_field)
to extract the year and month from the rental timestamp.

The result order does not matter.


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

rental

┌─────────────┬──────────────────────────┐
│ Column      │ Type                     │
├─────────────┼──────────────────────────┤
│ rental_id   │ integer                  │
│ rental_ts   │ timestamp with time zone │
│ inventory_id│ integer                  │
│ customer_id │ smallint                 │
│ return_ts   │ timestamp with time zone │
│ staff_id    │ smallint                 │
└─────────────┴──────────────────────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Extract the year from rental_ts.
2. Extract the month from rental_ts.
3. Group the data by year and month.
4. Count the unique customer_id values for each month.
5. Return:
   - year
   - mon
   - uu_cnt
6. Result order does not matter.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Extract year and month from rental_ts.
2. Group records by year and month.
3. Use COUNT(DISTINCT customer_id) to count unique customers.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    EXTRACT() + COUNT(DISTINCT) + GROUP BY


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    EXTRACT(YEAR FROM rental_ts) AS year,
    EXTRACT(MONTH FROM rental_ts) AS mon,
    COUNT(DISTINCT customer_id) AS uu_cnt
FROM rental
GROUP BY
    EXTRACT(YEAR FROM rental_ts),
    EXTRACT(MONTH FROM rental_ts);
