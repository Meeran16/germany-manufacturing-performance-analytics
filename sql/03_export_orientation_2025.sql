-- Question:
-- Which German federal states were the most export-oriented in 2025?

SELECT
    federal_state,

    ROUND(
        total_turnover_thousand_eur / 1000000.0,
        1
    ) AS total_turnover_billion_eur,

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
        eurozone_turnover_thousand_eur / 1000000.0,
        1
    ) AS eurozone_turnover_billion_eur,

    ROUND(
        non_eurozone_turnover_thousand_eur / 1000000.0,
        1
    ) AS non_eurozone_turnover_billion_eur

FROM manufacturing_by_state

WHERE year = 2025

ORDER BY foreign_turnover_share_percent DESC;