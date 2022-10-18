-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

--join cohorts with students
--count 
SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*)
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohort
ORDER BY COUNT(assignment_submissions.*) DESC;