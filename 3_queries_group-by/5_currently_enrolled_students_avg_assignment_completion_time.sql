-- Get currently enrolled students' average assignment completion time.

-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

SELECT students.name as student_name, avg(assignment_submissions.duration) as avg_completion_time
FROM students JOIN assignment_submissions ON students.id = student_id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL
ORDER BY avg(assignment_submissions.duration) DESC;