--need sum of assignment_submissions duration
--student.id = assignment_submissions.id
--have to connect name of student to student id

SELECT SUM(assignment_submissions.duration) AS total_duration FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
