<div align="center">

# ⚡ Data Engineering SQL Patterns

### *Practical SQL Patterns for Data Engineering, Analytics & Data Transformation*

<p align="center">
  <a href="#-overview">Overview</a> •
  <a href="#-objectives">Objectives</a> •
  <a href="#-sql-patterns">SQL Patterns</a> •
  <a href="#-repository-structure">Structure</a> •
  <a href="#-progress">Progress</a> •
  <a href="#-engineering-applications">Engineering Applications</a>
</p>

![SQL](https://img.shields.io/badge/SQL-Data%20Engineering-blue)
![Practice](https://img.shields.io/badge/Practice-Active-brightgreen)
![Focus](https://img.shields.io/badge/Focus-Data%20Engineering-orange)

</div>

---

## 📌 Overview

**Data Engineering SQL Patterns** is a practical repository for solving SQL problems and building a reusable library of SQL patterns relevant to **Data Engineering, Analytics, ETL, and Data Warehousing**.

The problems are sourced primarily from **SQLPad** and are treated as practical exercises rather than isolated coding challenges.

The goal is to develop the ability to move from:

> **Business Requirement → Data Relationships → SQL Pattern → Query → Validation**

Each problem is documented and solved independently, with emphasis on understanding the underlying SQL technique and how it can be applied to real-world data workloads.

---

## 🎯 Objectives

This repository focuses on strengthening the ability to:

* Translate business requirements into SQL logic.
* Identify relationships between datasets.
* Choose the appropriate SQL strategy.
* Write readable and maintainable SQL.
* Handle `NULL` values and edge cases.
* Perform analytical transformations.
* Work with complex joins and subqueries.
* Use window functions effectively.
* Solve ranking and Top-N problems.
* Analyze time-based data.
* Build reusable SQL patterns for ETL and Data Warehouse workloads.

---

## 🧩 SQL Patterns

### Core SQL

* `SELECT`
* `WHERE`
* `ORDER BY`
* `DISTINCT`
* `CASE WHEN`
* Aggregate Functions
* `GROUP BY`
* `HAVING`

### JOIN Patterns

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
* Common Table Expressions
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
* Partition-based Analysis

### Analytical SQL

* Top-N per Group
* First / Last Record
* Duplicate Detection
* Deduplication
* Customer Analysis
* Revenue Analysis
* Percentage Calculations
* Cumulative Metrics
* Growth Analysis
* Time-based Comparisons

### Date & Time Analysis

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
├── 001-problem-name.sql
├── 002-problem-name.sql
├── 003-problem-name.sql
├── ...
│
└── N-problem-name.sql
```

Each problem is stored as an independent `.sql` file.

### Naming Convention

```text
XXX-problem-name.sql
```

Example:

```text
001-top-customers-by-revenue.sql
002-latest-record-per-customer.sql
003-consecutive-events.sql
```

---

## 🧪 SQL File Structure

Each solution follows a consistent format:

```sql
/*
===============================================================================
Problem: Problem Name
Source: SQLPad
Difficulty: Medium
Category: Window Functions

Problem Statement:
  ...

Approach:
  ...

Key SQL Concepts:
  ...
===============================================================================
*/

-- Verified Solution Query

SELECT ...
```

This keeps each problem understandable as a standalone SQL exercise and makes the repository useful as a future SQL pattern reference.

---

## 📊 Progress

| Metric          |  Progress |
| --------------- | --------: |
| Problems Solved |         0 |
| Easy            |         0 |
| Medium          |         0 |
| Hard            |         0 |
| Status          | 🟢 Active |

> Progress will be updated continuously as problems are solved.

---

## 🏗️ Data Engineering Applications

The SQL patterns practiced in this repository are connected to common Data Engineering workloads.

| SQL Pattern             | Data Engineering Application |
| ----------------------- | ---------------------------- |
| `JOIN`                  | Data Integration             |
| `GROUP BY`              | Aggregation Pipelines        |
| `EXISTS` / `NOT EXISTS` | Data Validation              |
| `ROW_NUMBER()`          | Deduplication                |
| `LAG()` / `LEAD()`      | Change Detection             |
| Window Functions        | Analytical Transformations   |
| CTEs                    | Transformation Logic         |
| Date Analysis           | Incremental Processing       |
| Top-N                   | Reporting & Analytics        |
| Aggregations            | ETL Metrics                  |
| Conditional Logic       | Data Quality Rules           |

The objective is to understand not only **how to write the query**, but also **where the pattern can be useful in a real data pipeline or warehouse**.

---

## 🔍 Problem-Solving Workflow

Every problem follows the same general process:

```text
Business Requirement
        ↓
Identify Entities & Relationships
        ↓
Understand Expected Output
        ↓
Identify SQL Pattern
        ↓
Build Query
        ↓
Check Edge Cases
        ↓
Validate Result
        ↓
Document the Pattern
```

Before writing SQL, I try to answer:

1. What exactly is the business requirement?
2. What should one output row represent?
3. Which tables are required?
4. How are the tables related?
5. Do I need aggregation?
6. Do I need a JOIN, Subquery, or CTE?
7. Would a Window Function simplify the solution?
8. What happens with `NULL` values?
9. What happens with duplicates?
10. Are there edge cases that could change the result?

---

## 🧠 Learning Philosophy

The purpose of this repository is **pattern recognition and problem solving**, not query memorization.

For every problem, the goal is to understand:

* Why the solution works.
* Why a specific SQL strategy was chosen.
* What edge cases exist.
* How the pattern could be reused.
* How the same logic could appear in an ETL or Data Warehouse workflow.

> **Don't just solve the SQL problem — understand the Data Engineering pattern behind it.**

---

## 📚 Learning Path

This repository complements my existing SQL practice.

### SQL Foundation

**LeetCode SQL 50**

Focus:

* Core SQL
* JOINs
* Aggregations
* Subqueries
* CTEs
* Window Functions
* Date & Time Analysis

### Advanced Practice

**Data Engineering SQL Patterns**

Focus:

* Complex SQL
* Analytical Patterns
* Advanced Window Functions
* Real-world Data Problems
* Reusable SQL Patterns

### Practical Data Engineering

Next step:

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

* **SQL**
* **Microsoft SQL Server / T-SQL**
* **SSMS**
* **SQLPad**
* **Git & GitHub**

---

## 👨‍💻 Author

**Ahmed Ibrahim**

CS Student & Aspiring Data Engineer

Focused on:

`SQL` • `Python` • `ETL` • `Data Engineering` • `Data Warehousing`

---

<div align="center">

### 🚀 Building reusable SQL patterns for real-world Data Engineering.

**Data Engineering SQL Patterns**

</div>
