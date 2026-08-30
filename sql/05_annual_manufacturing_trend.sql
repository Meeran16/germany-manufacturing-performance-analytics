-- Question:
-- How did manufacturing turnover, employment, and foreign-turnover share
-- change across the 16 German federal states from 2019 to 2025?

WITH annual_summary AS (
    SELECT
        year,

        SUM(establishments) AS establishments,

        SUM(employees) AS employees,

        SUM(total_turnover_thousand_eur)
            AS total_turnover_thousand_eur,

        SUM(domestic_turnover_thousand_eur)
            AS domestic_turnover_thousand_eur,

        SUM(foreign_turnover_thousand_eur)
            AS foreign_turnover_thousand_eur

    FROM manufacturing_by_state

    GROUP BY year
),

annual_with_previous AS (
    SELECT
        *,

        LAG(total_turnover_thousand_eur)
            OVER (ORDER BY year)
            AS previous_year_turnover

    FROM annual_summary
)

SELECT
    year,

    establishments,

    employees,

    ROUND(
        total_turnover_thousand_eur / 1000000.0,
        1
    ) AS total_turnover_billion_eur,

    ROUND(
        domestic_turnover_thousand_eur / 1000000.0,
        1
    ) AS domestic_turnover_billion_eur,

    ROUND(
        foreign_turnover_thousand_eur / 1000000.0,
        1
    ) AS foreign_turnover_billion_eur,

    ROUND(
        100.0 * foreign_turnover_thousand_eur
        / total_turnover_thousand_eur,
        1
    ) AS foreign_turnover_share_percent,

    ROUND(
        100.0
        * (total_turnover_thousand_eur - previous_year_turnover)
        / previous_year_turnover,
        1
    ) AS turnover_yoy_change_percent

FROM annual_with_previous

ORDER BY year;