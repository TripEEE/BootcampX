-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

--use started_at - created_at  for total duration per assistance request
--sum total duration
--group by cohort name

SELECT cohorts.name AS cohorts, SUM(assistance_requests.started_at - assistance_requests.completed_at) AS total_duration
FROM assistance_requests JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration DESC;