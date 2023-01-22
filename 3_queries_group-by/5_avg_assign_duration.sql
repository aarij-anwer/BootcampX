SELECT name as student, COUNT(*) as num_submissions, SUM(assignment_submissions.duration) as total_minutes, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY students.id
ORDER BY average_assignment_duration DESC;