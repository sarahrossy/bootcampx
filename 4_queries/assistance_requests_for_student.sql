SELECT COUNT(assistance_requests.id) AS total_assistances, name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name;