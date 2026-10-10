```sql
/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Min and Max Customer Spend                                       ║
║ Source   : SQLPad                                                          ║
║ Difficulty: Easy                                                           ║
║ Category : SUM / MIN / MAX / CTE / GROUP BY                                ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Write a query to return the minimum and maximum customer total spend in
June 2020.

For each customer, first calculate their total spend in June 2020.
Then use MIN and MAX to return the minimum and maximum customer spend.


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

1. Filter payment transactions to June 2020.
2. Calculate the total spend for each customer using SUM(amount).
3. Group the transactions by customer_id.
4. Return the minimum customer total spend using MIN().
5. Return the maximum customer total spend using MAX().
6. Return a single row containing min_spend and max_spend.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Use a CTE named customer_spending to calculate each customer's total spend.
2. Filter payment_ts to include June 2020 only.
3. Use SUM(amount) to calculate each customer's total spend.
4. Group by customer_id so each result represents one customer.
5. Apply MIN(total_spend) and MAX(total_spend) to the CTE results.
6. Do not use GROUP BY in the final query because the required output is
   a single row containing the minimum and maximum customer spend.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    CTE + SUM / GROUP BY + MIN / MAX


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(amount) AS total_spend
    FROM payment
    WHERE payment_ts >= '2020-06-01'
      AND payment_ts < '2020-07-01'
    GROUP BY customer_id
)
SELECT
    MIN(total_spend) AS min_spend,
    MAX(total_spend) AS max_spend
FROM customer_spending;
```
