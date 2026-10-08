<div align="center">

# ⚡ Data Engineering SQL Patterns

### *Practical SQL Practice for Data Engineering*

**SQLPad Problems • PostgreSQL • Data Engineering Patterns**

<p align="center">
  <a href="#-about">About</a> •
  <a href="#-progress">Progress</a> •
  <a href="#-problems">Problems</a> •
  <a href="#-sql-patterns">SQL Patterns</a> •
  <a href="#-repository-structure">Structure</a>
</p>

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Practice](https://img.shields.io/badge/Practice-Active-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Data%20Engineering-orange)

</div>

---

## 📌 About

**Data Engineering SQL Patterns** is a practical SQL repository focused on solving SQLPad problems and building reusable SQL patterns for **Data Engineering, Analytics, ETL, and Data Warehousing**.

The goal is not just to solve problems, but to improve the ability to translate:

```text
Business Requirement
        ↓
SQL Logic
        ↓
SQL Pattern
        ↓
Query
        ↓
Validation
```

Each problem is stored as an independent `.sql` file with its:

* Problem statement
* Requirements
* Approach
* SQL pattern
* Verified solution

---

## 📊 Progress

### Overall Progress

**5 / 230 Problems Solved**

**Progress: 2.17%**

| Metric          |  Progress |
| --------------- | --------: |
| Problems Solved |     **5** |
| Easy            |     **5** |
| Medium          |     **0** |
| Hard            |     **0** |
| Status          | 🟢 Active |

---

## 🧩 Problems

|   # | Problem                         | Difficulty | Main Pattern                   |
| --: | ------------------------------- | :--------: | ------------------------------ |
| 001 | Top Store for Movie Sales       |   🟢 Easy  | `MAX()` + Scalar Subquery      |
| 002 | Top 3 Movie Categories by Sales |   🟢 Easy  | `TOP` + `ORDER BY`             |
| 003 | Top 5 Shortest Movies           |   🟢 Easy  | `ORDER BY` + `LIMIT`           |
| 005 | Monthly Revenue                 |   🟢 Easy  | `SUM()` + `GROUP BY`           |
| 007 | Unique Customers Count by Month |   🟢 Easy  | `COUNT(DISTINCT)` + `GROUP BY` |

> Problems are numbered according to their original **SQLPad question number**.

---

## 🧠 SQL Patterns

### Core SQL

* `SELECT`
* `WHERE`
* `ORDER BY`
* `DISTINCT`
* `LIMIT`
* `CASE WHEN`
* Aggregate Functions

### Aggregation

* `GROUP BY`
* `HAVING`
* `COUNT()`
* `COUNT(DISTINCT)`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

### JOINs

* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* `FULL OUTER JOIN`
* Self JOIN
* Multi-table JOINs
* Anti-JOINs

### Subqueries & CTEs

* Scalar Subqueries
* Correlated Subqueries
* `EXISTS`
* `NOT EXISTS`
* CTEs
* Nested Queries

### Window Functions

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `LAG()`
* `LEAD()`
* Running Totals
* Rolling Aggregations
* Ranking Within Groups

### Analytical SQL

* Top-N
* Top-N per Group
* Duplicate Detection
* Deduplication
* Customer Analysis
* Revenue Analysis
* Percentage Calculations
* Growth Analysis
* Time-based Analysis

### Date & Time

* Date Extraction
* Daily Aggregation
* Monthly Aggregation
* Day-over-Day Analysis
* Month-over-Month Analysis
* First / Last Events
* Time Differences
* Consecutive Events

---

## 📂 Repository Structure

```text
Data-Engineering-SQL-Patterns/
│
├── README.md
│
├── 001-top-store-for-movie-sales.sql
├── 002-top-3-movie-categories-by-sales.sql
├── 003-top-5-shortest-movies.sql
├── 005-monthly-revenue.sql
├── 007-unique-customers-count-by-month.sql
│
└── ...
```

### Naming Convention

```text
XXX-problem-name.sql
```

Example:

```text
001-top-store-for-movie-sales.sql
002-top-3-movie-categories-by-sales.sql
003-top-5-shortest-movies.sql
```

---

## 📝 SQL File Format

Every problem follows the same structure:

```sql
/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                    DATA ENGINEERING SQL PATTERNS                           ║
╠══════════════════════════════════════════════════════════════════════════════╣
║ Problem   : Problem Name                                                   ║
║ Source    : SQLPad                                                         ║
║ Difficulty: Easy                                                           ║
║ Category  : Aggregation                                                    ║
╚══════════════════════════════════════════════════════════════════════════════╝


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📌 PROBLEM
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Problem statement...


🎯 REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. ...
2. ...
3. ...


🧠 APPROACH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. ...
2. ...
3. ...


🔑 SQL PATTERN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GROUP BY + COUNT(DISTINCT)


💻 VERIFIED SOLUTION
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*/

SELECT ...
```

---

## 🔍 Problem-Solving Approach

For each problem, I focus on:

1. Understanding the business requirement.
2. Identifying what one output row represents.
3. Identifying the required tables and relationships.
4. Choosing the appropriate SQL pattern.
5. Considering `NULL` values and duplicates.
6. Checking possible edge cases.
7. Validating the final query.

The main goal is:

> **Requirement → Logic → Pattern → SQL**

---

## 🏗️ Data Engineering Relevance

These SQL patterns are directly related to common Data Engineering tasks:

| SQL Pattern             | Data Engineering Use  |
| ----------------------- | --------------------- |
| `JOIN`                  | Data Integration      |
| `GROUP BY`              | Aggregation Pipelines |
| `COUNT(DISTINCT)`       | Unique Entity Metrics |
| `EXISTS` / `NOT EXISTS` | Data Validation       |
| `ROW_NUMBER()`          | Deduplication         |
| `LAG()` / `LEAD()`      | Change Detection      |
| CTEs                    | Transformation Logic  |
| Date Analysis           | Time-based ETL        |
| Aggregations            | ETL Metrics           |
| Conditional Logic       | Data Quality          |

---

## 📚 Related Practice

### LeetCode SQL 50

Focus:

* SQL Fundamentals
* JOINs
* Aggregations
* Subqueries
* CTEs
* Window Functions
* Date & Time Analysis

### Data Engineering SQL Patterns

Focus:

* Practical SQL
* Analytical SQL
* Advanced SQL Patterns
* Real-world Data Problems
* Data Engineering Applications

### Next Step

* Large Datasets
* Data Cleaning
* Data Validation
* Deduplication
* ETL Pipelines
* Incremental Loads
* Data Warehousing
* SQL + Python Integration

---

## 🛠️ Tech Stack

* **PostgreSQL**
* **SQLPad**
* **SQL**
* **Microsoft SQL Server / T-SQL**
* **SSMS**
* **Git & GitHub**

---

## 👨‍💻 Author

**Ahmed Ibrahim**

CS Student & Aspiring Data Engineer

`SQL` • `Python` • `ETL` • `Data Engineering` • `Data Warehousing`

---

<div align="center">

### 🚀 Building SQL skills through practical Data Engineering problems.

**5 Problems Solved • 2.17% Complete**

</div>
