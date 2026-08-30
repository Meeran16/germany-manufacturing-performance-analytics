-- Question:
-- How large was the manufacturing workforce in each German federal state in 2025,
-- and how much turnover was reported per employee?

SELECT
    federal_state,

    employees,

    ROUND(
        total_turnover_thousand_eur / 1000000.0,
        1
    ) AS total_turnover_billion_eur,

    ROUND(
        1.0 * total_turnover_thousand_eur / employees,
        1
    ) AS turnover_thousand_eur_per_employee,

    ROUND(
        1.0 * gross_wages_salaries_thousand_eur / employees,
        1
    ) AS gross_wages_salaries_thousand_eur_per_employee

FROM manufacturing_by_state

WHERE year = 2025

ORDER BY employees DESC;