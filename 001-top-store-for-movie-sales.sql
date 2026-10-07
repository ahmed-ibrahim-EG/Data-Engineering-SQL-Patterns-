/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem  : Top Store for Movie Sales                                       ║
║ Source   : SQLPad                                                         ║
║ Difficulty: Easy                                                          ║
║ Category : Aggregation / Subquery                                         ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Write a query to return the name of the store and its manager that generated
the most sales.


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

sales_by_store

┌─────────────┬─────────────┐
│ Column      │ Type        │
├─────────────┼─────────────┤
│ store       │ text        │
│ manager     │ text        │
│ total_sales │ numeric     │
└─────────────┴─────────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Return the store name.
2. Return the store manager.
3. Find the store with the highest total_sales.
4. Return the store(s) whose total_sales equals the maximum sales value.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Select the required columns:
   - store
   - manager

2. Find the maximum total_sales using MAX().

3. Use a subquery inside WHERE to compare each store's total_sales
   with the maximum sales value.

4. If multiple stores share the maximum sales, all tied stores are returned.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    MAX() + Scalar Subquery + WHERE


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT
    store,
    manager
FROM sales_by_store
WHERE total_sales = (
    SELECT MAX(total_sales)
    FROM sales_by_store
);
