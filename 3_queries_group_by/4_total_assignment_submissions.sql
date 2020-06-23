-- Get the total number of assignment submissions for each cohort
SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assignment_submissions on students.id = student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;