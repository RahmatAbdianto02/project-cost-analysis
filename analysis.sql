-- =========================================================
-- PROJECT COST ANALYSIS
-- Budget vs Actual Cost
-- =========================================================


-- =========================================================
-- 1. DATA CHECK
-- Melihat struktur dan beberapa data awal
-- =========================================================

SELECT *
FROM project_cost
LIMIT 10;


-- =========================================================
-- 2. OVERALL COST ANALYSIS
-- Membandingkan total budget dengan total actual cost
-- =========================================================

SELECT
    SUM(budget) AS total_budget,
    SUM(actual_cost) AS total_actual_cost,
    SUM(actual_cost) - SUM(budget) AS total_variance
FROM project_cost;


-- =========================================================
-- 3. PROJECT / CATEGORY ANALYSIS
-- Membandingkan budget dan actual cost setiap kategori
-- =========================================================

SELECT
    project_name,
    SUM(budget) AS total_budget,
    SUM(actual_cost) AS total_actual_cost,
    SUM(actual_cost) - SUM(budget) AS selisih
FROM project_cost
GROUP BY project_name
ORDER BY selisih DESC;


-- =========================================================
-- 4. VARIANCE PERCENTAGE
-- Menghitung persentase selisih terhadap budget
-- =========================================================

SELECT
    project_name,
    SUM(budget) AS total_budget,
    SUM(actual_cost) AS total_actual_cost,
    SUM(actual_cost) - SUM(budget) AS selisih,
    ROUND(
        (
            SUM(actual_cost) - SUM(budget)
        ) / NULLIF(SUM(budget), 0) * 100,
        2
    ) AS over_budget_percent
FROM project_cost
GROUP BY project_name
ORDER BY selisih DESC;
