-- Instruction
-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT cohorts.name, count(assignment_submissions) as total_submissions
FROM cohorts JOIN students ON cohorts.id = cohort_id JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions) DESC;