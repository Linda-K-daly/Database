--1
SELECT * FROM students 
JOIN favorites 
ON students.ID = favorites.student_ID 
WHERE students.ID=5  

--2
SELECT students.Name, favorites.sport 
FROM students 
JOIN favorites 
ON students.ID = favorites.student_id 
WHERE student_ID=4  

--3
SELECT students.Name, favorites.class 
FROM students 
JOIN favorites 
ON students.ID = favorites.student_id 
WHERE student_ID=1 

--4
SELECT * FROM `students` 
JOIN favorites 
ON students.id = favorites.Student_id 
WHERE class = 'music'; 

--5
SELECT Name FROM `students` 
JOIN favorites 
ON students.id = favorites.student_id 
WHERE sport = 'tennis' 

--6
SELECT Name FROM `students` 
JOIN favorites 
ON students.id = favorites.student_id 
WHERE class = 'arts' 

--7
SELECT COUNT(`Ville`) as total FROM students WHERE `Ville`= 'Paris' 
