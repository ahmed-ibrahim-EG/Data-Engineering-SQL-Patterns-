
/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Average Customer Spend by Month                                 ║
║ Source   : SQLPad                                                          ║
║ Difficulty: Easy                                                           ║
║ Category : EXTRACT / SUM / COUNT DISTINCT / GROUP BY                        ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Write a query to return the average customer spend by month.

Definition: Average customer spend is the total customer spend divided by
the unique number of customers for that month.

Use EXTRACT(YEAR FROM ts_field) and EXTRACT(MONTH FROM ts_field) to get
the year and month from a timestamp column.

The order of the results does not matter.


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

payment

┌───────────────────────┬──────────────────────────┐
│ Column                │ Type                     │
├───────────────────────┼──────────────────────────┤
│ payment_id            │ integer                  │
│ customer_id           │ smallint                 │
│ staff_id              │ smallint                 │
│ rental_id             │ integer                  │
│ amount                │ numeric                  │
│ payment_ts            │ timestamp with time zone │
└───────────────────────┴──────────────────────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Return the year and month.
2. Calculate the total payment amount for each month.
3. Count the unique customers for each month.
4. Divide the total payment amount by the unique customer count.
5. Group the results by both year and month.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Extract the year from payment_ts.
2. Extract the month from payment_ts.
3. Calculate the total payment amount using SUM(amount).
4. Count unique customers using COUNT(DISTINCT customer_id).
5. Divide the total amount by the unique customer count.
6. Group by the extracted year and month so each group represents one
   specific month in one specific year.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    EXTRACT + SUM / COUNT(DISTINCT) + GROUP BY


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    EXTRACT(YEAR FROM payment_ts) AS year,
    EXTRACT(MONTH FROM payment_ts) AS mon,
    SUM(amount) / COUNT(DISTINCT customer_id) AS avg_spend
FROM payment
GROUP BY
    EXTRACT(YEAR FROM payment_ts),
    EXTRACT(MONTH FROM payment_ts);
