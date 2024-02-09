-- students and Examinations

SELECT S.student_id,S.student_name,Su.subject_name, count(E.subject_name) as attended_exams
FROM Students S
JOIN subjects Su
LEFT JOIN Examinations E ON S.student_id=E.student_id and Su.subject_name=E.subject_name
GROUP BY S.student_id,Su.subject_name
ORDER BY student_id,subject_name
