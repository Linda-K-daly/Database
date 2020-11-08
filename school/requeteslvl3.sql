SELECT students.*, languages.name 
FROM students 
JOIN students_languages 
ON students.id = students_languages.student_id 
JOIN languages O
N languages.id = students_languages.language_id 
WHERE students.id=1 

SELECT students.*, languages.name 
FROM students 
JOIN students_languages 
ON students.id = students_languages.student_id 
JOIN languages 
ON languages.id = students_languages.language_id 
WHERE students.id=4

SELECT students.Name, languages.name 
FROM students 
JOIN students_languages 
ON students.id = students_languages.student_id 
JOIN languages 
ON languages.id = students_languages.language_id 
WHERE students.ID=5