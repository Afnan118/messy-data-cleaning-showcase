
-- Day 53: SQL Data Cleaning
-- Dataset: employee_pay_equity_messy
-- Total records: 96,900

-- 1. Check missing employee IDs
SELECT COUNT(*) AS missing_employee_ids
FROM employee_pay_equity_messy
WHERE employee_id IS NULL
   OR TRIM(employee_id) = '';

-- 2. Check duplicate employee IDs
SELECT employee_id, COUNT(*) AS row_count
FROM employee_pay_equity_messy
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- 3. Check missing hire dates
SELECT COUNT(*) AS missing_hire_dates
FROM employee_pay_equity_messy
WHERE hire_date IS NULL
   OR TRIM(hire_date) = '';

-- 4. Check future hire dates
SELECT employee_id, hire_date
FROM employee_pay_equity_messy
WHERE date(hire_date) > date('now', 'localtime');

-- 5. Normalize department categories for validation
SELECT LOWER(TRIM(department)) AS normalized_department,
       COUNT(*) AS row_count
FROM employee_pay_equity_messy
GROUP BY LOWER(TRIM(department))
ORDER BY normalized_department;

-- 6. Inspect unusually high salaries
-- Screening threshold only; not a universal salary limit.
SELECT employee_id, salary_raw, currency
FROM employee_pay_equity_messy
WHERE CAST(REPLACE(REPLACE(REPLACE(salary_raw, ',', ''),
                           '€', ''), '$', '') AS REAL) > 100000000
LIMIT 50;
