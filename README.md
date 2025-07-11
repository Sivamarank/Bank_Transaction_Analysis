# 💼 Bank Transaction Analysis Dashboard

A professional Power BI dashboard project that analyzes customer and transaction data for a fictional bank. This project uses data modeled in SQL and visualized in Power BI, with a modern dark theme and interactive slicers.

---
## 📌 Project Info

- **Author**: Maran  
- **Date**: July 05, 2025  
- **Tools Used**:
  - 🐬 MySQL (Workbench)
  - 📊 Power BI (Data modeling, DAX, Dashboarding)
- **Dataset**: Simulated Bank Dataset (500+ transaction records)
  - Tables:
    - `customers`
    - `accounts`
    - `transactions`
- **Goal**:
  - Analyze customer and transaction behavior
  - Track account balances and transaction types
  - Visualize trends by branch, city, and time
  - Identify top customers and high-value activity

---

## 📌 Objectives
- Analyze total customers, transactions, and account balances
- Identify top customers by transaction volume
- Understand deposit vs withdrawal trends
- Explore branch-wise and city-level performance
- Apply filters dynamically with slicers

---

## 📁 Project Files
| File | Description |
|------|-------------|
| `Bank_Transaction_Analysis.sql` | SQL script to create tables and run insights |
| `Bank_Transaction_Dashboard.pbix` | Power BI dashboard with visualizations |
| `screenshots/` | Folder containing dashboard visuals |

---

## 🛠️ Tools Used
- **SQL**: MySQL Workbench (table creation + data queries)
- **Power BI Desktop**: Data import, relationships, visualizations
- **Theme**: Dark Mode with white font and modern layout
- **Slicers**: City, Branch, Transaction Type, Account Type, Date Range

---

## 📊 Dashboard Overview

### 🔹 KPIs
- Total Customers
- Total Account Balance
- Total Transactions

### 🔹 Visuals
- Bar chart: Transaction Amount by Type
- Line chart: Monthly Transaction Trends
- Pie chart: Deposit vs Withdrawal %
- Table: Top 5 Customers by Total Amount
- Slicers: City, Branch Name, Account Type, Transaction Type, Date

---

## 📸 Snap

![image alt](https://github.com/Sivamarank/Bank_Transaction_Analysis/blob/5725c138cf1cb92f1a11e6fc07060adaf5083e12/Screenshot%202025-07-05%20200026.png)

---

## 📈 Sample Query (SQL)
```sql
# Monthly Total Deposits and Withdrawals
SELECT
  DATE_FORMAT(transaction_date, '%Y-%m') AS month,
  transaction_type,
  SUM(amount) AS total_amount
FROM transactions
GROUP BY month, transaction_type
ORDER BY month;
## Top 5 High-Value Customers
SELECT
  c.name,
  c.city,
  SUM(t.amount) AS total_transaction
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
GROUP BY c.name, c.city
ORDER BY total_transaction DESC
LIMIT 5;
## Branch-Wise Transaction Summary
SELECT
  a.branch_name,
  t.transaction_type,
  SUM(t.amount) AS total
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
GROUP BY a.branch_name, t.transaction_type;


