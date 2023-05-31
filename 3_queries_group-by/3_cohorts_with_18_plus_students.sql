-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name, count(students) as total_students
FROM students JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students) >= 18
ORDER BY count(students) ASC;