--Get the total number of assignments for each day of bootcamp.
SELECT day, COUNT(*) AS total_assignments 
FROM assignments
GROUP BY day 
ORDER BY day;
