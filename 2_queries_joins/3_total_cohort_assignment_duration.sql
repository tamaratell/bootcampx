-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.
-- You can write as many JOIN statements as you need in a single query.

SELECT sum(duration) as total_duration
FROM cohorts JOIN students ON cohorts.id = cohort_id JOIN assignment_submissions ON students.id = student_id
WHERE cohorts.name = 'FEB12';