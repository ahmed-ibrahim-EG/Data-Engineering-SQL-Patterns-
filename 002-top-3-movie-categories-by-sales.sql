/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem    : Top 3 Movie Categories by Sales                               ║
║ Source     : SQLPad                                                        ║
║ Difficulty : Easy                                                          ║
║ Category   : TOP N / ORDER BY                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Write a query to find the top 3 film categories that generated the most sales.

The order of the results does not matter.


📋 TABLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

sales_by_film_category

┌─────────────┬─────────────┐
│ Column      │ Type        │
├─────────────┼─────────────┤
│ category    │ text        │
│ total_sales │ numeric     │
└─────────────┴─────────────┘


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Return the category name.
2. Identify the categories with the highest total_sales.
3. Return only the top 3 categories.
4. Sort by total_sales in descending order.
5. The final result order does not matter.


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

The table already contains total sales for each category.

Therefore:

1. No additional aggregation is required.
2. Sort categories by total_sales from highest to lowest.
3. Return only the first 3 rows.


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    TOP N + ORDER BY


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT TOP 3
    category
FROM sales_by_film_category
ORDER BY total_sales DESC;
