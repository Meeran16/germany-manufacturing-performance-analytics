-- Question:
-- Which German federal states had the highest manufacturing turnover in 2025,
-- and what share of total German state-level manufacturing turnover did each represent?

SELECT
    federal_state,
    ROUND(total_turnover_thousand_eur / 1000000.0, 1) AS turnover_billion_eur,
    ROUND(
        100.0 * total_turnover_thousand_eur
        / SUM(total_turnover_thousand_eur) OVER (),
        1
    ) AS turnover_share_percent
FROM manufacturing_by_state
WHERE year = 2025
ORDER BY total_turnover_thousand_eur DESC;