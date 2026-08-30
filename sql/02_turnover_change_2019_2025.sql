-- Question:
-- How did manufacturing turnover change in each German federal state
-- between 2019 and 2025?

WITH state_turnover AS (
    SELECT
        federal_state,

        MAX(
            CASE
                WHEN year = 2019 THEN total_turnover_thousand_eur
            END
        ) AS turnover_2019,

        MAX(
            CASE
                WHEN year = 2025 THEN total_turnover_thousand_eur
            END
        ) AS turnover_2025

    FROM manufacturing_by_state
    WHERE year IN (2019, 2025)
    GROUP BY federal_state
)

SELECT
    federal_state,

    ROUND(turnover_2019 / 1000000.0, 1)
        AS turnover_2019_billion_eur,

    ROUND(turnover_2025 / 1000000.0, 1)
        AS turnover_2025_billion_eur,

    ROUND(
        (turnover_2025 - turnover_2019) / 1000000.0,
        1
    ) AS change_billion_eur,

    ROUND(
        100.0 * (turnover_2025 - turnover_2019)
        / turnover_2019,
        1
    ) AS change_percent

FROM state_turnover

ORDER BY change_percent DESC;