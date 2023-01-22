SELECT cohorts.name as cohort, COUNT(*) as total_submissions
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.id
ORDER BY total_submissions DESC;