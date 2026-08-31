<div align="center">

# Germany Manufacturing Performance Analytics

### Business Intelligence Analysis Using Official German Manufacturing Data

**2019–2025 · 16 Federal States · Destatis GENESIS-Online**

**Power BI · SQL · Power Query · DAX · SQLite · Excel**

A business-oriented analysis of German manufacturing performance covering turnover, employment, foreign-turnover orientation, regional concentration, and performance trends across all 16 German federal states.

</div>

---

## Dashboard

![German Manufacturing Performance Dashboard](docs/screenshots/dashboard_overview.png)

The Power BI dashboard provides an interactive overview of German manufacturing performance with a year selector and several analytical perspectives:

- headline KPIs for turnover, foreign-turnover share, employment, and establishments;
- manufacturing turnover trend from 2019 to 2025;
- federal-state turnover ranking for the selected year;
- domestic versus foreign turnover over time;
- workforce size versus manufacturing turnover across federal states.

---

## Project in One Minute

This project analyzes German manufacturing performance across all **16 federal states** using official data from the **Statistisches Bundesamt (Destatis) GENESIS-Online** database.

The original source data was preserved unchanged and prepared in **Power Query**, where metadata rows and repeated status fields were removed, the analysis period was restricted to **2019–2025**, data types were standardized, and the resulting dataset was validated for completeness and uniqueness.

The cleaned dataset contains **112 state-year observations** and was imported into **SQLite** for SQL-based analysis. Five analytical queries were used to examine:

- regional manufacturing turnover;
- turnover change between 2019 and 2025;
- foreign-turnover orientation;
- employment and turnover per employee;
- annual manufacturing trends.

Reusable **DAX measures** were then created in Power BI to support KPI reporting and interactive analysis.

The results show that **Bayern, Baden-Württemberg, and Nordrhein-Westfalen together represented approximately 57.1% of reported manufacturing turnover in 2025**, while the overall foreign-turnover share increased from **50.8% in 2019 to 52.9% in 2025**.

---

## Project Overview

This project uses official manufacturing statistics from the **Statistisches Bundesamt (Destatis) GENESIS-Online** database to examine how manufacturing activity differs across German federal states and how key indicators changed between 2019 and 2025.

The workflow combines:

- **Power Query** for data preparation and validation;
- **SQLite and SQL** for structured analysis;
- **Power BI and DAX** for KPI development, visualization, and reporting.

| Item | Scope |
| --- | --- |
| Data source | Destatis GENESIS-Online |
| Dataset | Manufacturing establishments, employment and turnover |
| Table | `42111-0010` |
| Original source coverage | 2005–2025 |
| Primary analysis period | 2019–2025 |
| Geographic coverage | 16 German federal states |
| Processed observations | 112 state-year records |
| Processed fields | 11 analytical columns |
| Main tools | Power BI, SQL, Power Query, DAX, SQLite, Excel |

---

## Analytical Workflow

```text
Destatis GENESIS-Online
        ↓
Original CSV
        ↓
Power Query
Cleaning · Transformation · Validation
        ↓
Processed Analytical Dataset
112 rows · 11 columns
        ↓
SQLite Database
        ↓
SQL Analysis
Ranking · Growth · Ratios · Trends · Window Functions
        ↓
DAX Measures
        ↓
Power BI Dashboard
KPIs · Regional Comparison · Trend Analysis
