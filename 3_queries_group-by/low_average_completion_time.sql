SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration, avg(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;


-- Can only assign one table at a time
-- Creates a chain:
  -- STUDENTS ~ students.id ~ ASSIGNMENT_SUBMISSIONS ~ assignment_id ~ ASSIGNMENTS

-- WHERE, HAVING cannot use aliases 
-- GROUP BY, ORDER BY can use them