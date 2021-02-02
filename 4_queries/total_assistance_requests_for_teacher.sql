SELECT COUNT(assistance_requests.id), name
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;