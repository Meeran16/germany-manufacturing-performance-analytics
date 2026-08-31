<div align="center">

# Germany Manufacturing Performance Analytics

### Business Intelligence analysis using official German manufacturing data

**2019–2025 · 16 Federal States · Destatis GENESIS-Online**

<br>

![Power BI](https://img.shields.io/badge/Power%20BI-374151?style=flat-square&logo=powerbi&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-374151?style=flat-square&logo=sqlite&logoColor=white)
![Power Query](https://img.shields.io/badge/Power%20Query-374151?style=flat-square&logo=microsoftexcel&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-374151?style=flat-square&logo=powerbi&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-374151?style=flat-square&logo=sqlite&logoColor=white)
![Destatis](https://img.shields.io/badge/Official%20Data-Destatis-374151?style=flat-square)

<br>

A business-oriented analysis of German manufacturing performance covering turnover, employment, foreign-turnover orientation, regional concentration, and performance trends across all 16 German federal states.

</div>

---

## Dashboard

![German Manufacturing Performance Dashboard](docs/screenshots/dashboard_overview.png)

The Power BI dashboard provides an interactive overview of German manufacturing performance with a year selector and multiple analytical perspectives:

- headline KPIs for turnover, foreign-turnover share, employment, and establishments;
- manufacturing turnover trend from 2019 to 2025;
- federal-state turnover ranking for the selected year;
- domestic versus foreign turnover over time;
- workforce size versus manufacturing turnover across federal states.

---

## Project Overview

This project uses official manufacturing statistics from the **Statistisches Bundesamt (Destatis) GENESIS-Online** database to examine how manufacturing activity differs across German federal states and how key indicators changed between 2019 and 2025.

The workflow combines **Power Query** for data preparation, **SQLite and SQL** for structured analysis, and **Power BI with DAX** for interactive reporting and KPI development.

| Item | Scope |
| --- | --- |
| Data source | Destatis GENESIS-Online |
| Dataset | Manufacturing establishments, employment and turnover |
| Table | `42111-0010` |
| Primary analysis period | 2019–2025 |
| Geographic coverage | 16 German federal states |
| Processed observations | 112 state-year records |
| Processed fields | 11 analytical columns |
| Main tools | Power BI, SQL, Power Query, DAX, SQLite, Excel |

### Analytical Workflow

```text
Destatis GENESIS-Online
        ↓
Raw CSV
        ↓
Power Query
Cleaning · Transformation · Validation
        ↓
Processed Analytical Dataset
        ↓
SQLite / SQL
Business Analysis · KPI Calculation
        ↓
Power BI / DAX
Interactive Dashboard · Reporting
