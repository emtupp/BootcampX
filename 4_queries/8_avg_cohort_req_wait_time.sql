SELECT cohorts.name, sum(assistance_requests.started_at - assistance_requests.created_at) as total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;