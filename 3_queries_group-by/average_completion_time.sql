-- SELECT id, duration
-- FROM assignment_submissions;

SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;


-- when you want to aggregate (avg, sum, etc), you need to group by that constant
-- SELECT = output, how do I get that?
-- One step at a time, test, and narrow down results

-- SELECT / what! (if there's an aggregation (avg, sum, count etc) -> need GROUP BY that one constant, the thing you're not aggregating by) 
-- FROM / where from?
-- WHERE / condition!















-- SELECT name AS student, avg(assignment_submissions.duration) as average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;