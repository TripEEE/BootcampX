-- Calculate the average total duration of assistance requests for each cohort.
-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT avg(total_duration) AS average_total_duration
FROM(
SELECT cohorts.name AS cohorts, SUM(assistance_requests.started_at - assistance_requests.completed_at) AS total_duration -- line 5 averages this
FROM assistance_requests JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name)
AS total_durations;
