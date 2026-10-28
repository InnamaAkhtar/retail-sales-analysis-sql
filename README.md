# Retail Sales Analysis using SQL

## Project Overview
The **Retail Sales Analysis** project uses SQL to analyze retail transaction data and extract meaningful business insights. The project focuses on understanding sales performance, customer purchasing behavior, product performance, and regional sales trends.

## Objectives
- Analyze overall retail sales performance.
- Identify top-selling products.
- Understand customer purchasing behavior.
- Compare sales across different categories and regions.
- Analyze monthly sales trends.
- Answer business questions using SQL queries.

## Tools & Technologies
- **Database:** PostgreSQL
- **SQL Tool:** pgAdmin 4
- **Language:** SQL
- **Dataset:** Retail sales transaction data

## Dataset Description
The dataset contains **30 retail transaction records** with the following columns:

| Column | Description |
|---|---|
| TransactionID | Unique transaction identifier |
| SaleDate | Date of the sale |
| CustomerID | Unique customer identifier |
| CustomerName | Customer name |
| Region | Sales region |
| City | City where the sale occurred |
| Category | Product category |
| ProductName | Name of the product |
| Quantity | Number of units sold |
| UnitPrice | Price per unit |
| Discount | Discount amount |

## Business Questions
This project answers the following business questions:

1. How many transactions are in the dataset?
2. How many unique customers are there?
3. How many unique products are sold?
4. What product categories are available?
5. What are the first and last sale dates?
6. What is the total quantity sold?
7. What is the total sales revenue before discounts?
8. What is the total discount amount?
9. Which product category generates the highest sales?
10. What are the top 5 best-selling products by quantity?
11. Which 5 customers have the highest purchase amounts?
12. Which region generates the highest sales?
13. Which city has the highest sales?
14. What is the monthly sales trend?
15. Which category has the highest revenue?

## Key Findings
Based on the current dataset and SQL calculations:

- **Total Sales Revenue:** 54,960
- **Total Discount:** 4,355
- **Net Sales after Discount:** 50,605
- **Total Records:** 30

*Note: Sales revenue is calculated as Quantity × UnitPrice. Net sales are calculated by subtracting the total discount from sales revenue.*

## SQL Concepts Used
- `SELECT` and `DISTINCT`
- Aggregate functions: `SUM()`, `COUNT()`, `MIN()`, `MAX()`
- `GROUP BY` and `ORDER BY`
- `COUNT(DISTINCT ...)`
- `LIMIT`
- Date functions: `DATE_TRUNC()`
- Data analysis using filtering and aggregation

## Project Files
- `retail_sales_analysis.sql` — SQL queries and, if included, table creation and data insertion statements.

## How to Use This Project
1. Download or clone this repository.
2. Open pgAdmin 4 and connect to PostgreSQL.
3. Create a database for the project.
4. Open `retail_sales_analysis.sql` in the Query Tool.
5. Execute the table creation and data insertion statements first, if they are included.
6. Run the analysis queries to explore the dataset and review the results.

## Conclusion
This project demonstrates the use of SQL for basic retail data analysis. It helps identify sales patterns, evaluate product and customer performance, and generate insights that can support business decision-making.

## Author

**Created by:** INNAMA AKHTAR

---
**Project Type:** Beginner SQL Data Analyst Portfolio Project
