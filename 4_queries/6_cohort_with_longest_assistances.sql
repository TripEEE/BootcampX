-- Get the cohort with the longest average duration of assistance requests.

-- -- Select the cohort's name and the longest average assistance request time.
-- -- Order the results from shortest average to longest.

SELECT cohorts.name AS name, 
avg(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM assistance_requests JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time
LIMIT 1;