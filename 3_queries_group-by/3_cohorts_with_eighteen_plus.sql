--Get all cohorts with 18 or more students.
--Select the cohort name and the total students.
--Order by total students from smallest to greatest.

--cohorts.name join with students.name
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;
