SELECT teachers.name AS teacher, students.name AS student,  
assignments.name as assignment,  (completed_at - started_at) AS  duration
FROM TEACHERS 
JOIN assistance_requests ON teachers.id = teacher_id 
JOIN assignments ON assignments.id = assignment_id
JOIN students ON students.id = student_id 
ORDER BY duration;