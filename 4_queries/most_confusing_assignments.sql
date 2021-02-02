SELECT assignments.id AS id, name, day, chapter, COUNT(assistance_requests.id) AS total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY chapter
ORDER BY total_requests DESC;


