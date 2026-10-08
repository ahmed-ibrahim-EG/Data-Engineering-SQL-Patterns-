/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Monthly Revenue                                                 ║
║ Source   : SQLPad                                                         ║
║ Difficulty: Easy                                                          ║
║ Category : Aggregation / GROUP BY / Date Extraction                       ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Write a query to return the total movie rental revenue for each month.

For PostgreSQL, EXTRACT() can be used to extract the year and month
from the payment timestamp.


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

payment

┌─────────────┬──────────────────────┐
│ Column      │ Type                 │
├─────────────┼──────────────────────┤
│ payment_id  │ integer              │
│ customer_id │ smallint             │
│ staff_id    │ smallint             │
│ rental_id   │ integer              │
│ amount      │ numeric              │
│ payment_ts  │ timestamp with time zone │
└─────────────┴──────────────────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Return the year from payment_ts.
2. Return the month from payment_ts.
3. Group payments by year and month.
4. Calculate the total rental revenue using SUM(amount).
5. Return the results as:
   - year
   - mon
   - rev


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Extract the year from payment_ts.

2. Extract the month from payment_ts.

3. Group the payment records by both year and month.

4. Calculate the total amount for each year-month group using SUM().


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    EXTRACT() + SUM() + GROUP BY


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    EXTRACT(YEAR FROM payment_ts) AS year,
    EXTRACT(MONTH FROM payment_ts) AS mon,
    SUM(amount) AS rev
FROM payment
GROUP BY
    EXTRACT(YEAR FROM payment_ts),
    EXTRACT(MONTH FROM payment_ts);
