-- création base de donnnées
CREATE DATABASE school



-- création table students
CREATE TABLE `school`.`students` ( 
    `ID` INT NOT NULL , 
    `Name` VARCHAR(30) NOT NULL , 
    `Ville` VARCHAR(30) NOT NULL , 
    PRIMARY KEY (`ID`)) 
 

INSERT INTO `students` 
(`Id`, `Name`, `Ville`) 
VALUES ('1', 'Véronique', 'Paris'), 
        ('2', 'Steeven', 'Lyon'), 
        ('3', 'Marc', 'Marseille'), 
        ('4', 'Nour', 'Lyon'), 
        ('5', 'Romain', 'Paris'), 
        ('6', 'Sophie', 'Paris');



-- création table languages
CREATE TABLE `school`.`languages` ( 
    `ID` INT NOT NULL , 
    `Name` VARCHAR(30) NULL , 
    PRIMARY KEY (`ID`)) 
 

INSERT INTO `languages` 
(`Id`, `Name`) 
VALUES 
        ('1', 'French'), 
        ('2', 'English'), 
        ('3', 'German'), 
        ('4', 'Spanish'), 
        ('5', 'Mandarin');



-- création table favorites
CREATE TABLE `school`.`favorites` ( 
    `ID` INT NOT NULL , 
    `class` VARCHAR(30) NOT NULL , 
    `sport` VARCHAR(30) NOT NULL , 
    `student_id` INT NOT NULL , 
    PRIMARY KEY (`ID`)) 
    

INSERT INTO `favorites` 
(`Id`, `class`, `sport`, `student_id`) 
VALUES 
        ('1', 'Maths', 'Cricket', '2'),
        ('2', 'Music', 'Hip-hop', '6'), 
        ('3', 'Arts', 'Boxing', '1'), 
        ('4', 'Literature', 'Tennis', '3'), 
        ('5', 'Computer science', 'Tennis', '5'), 
        ('6', 'Arts', 'Baseball', '4')


--  création table students_languages
CREATE TABLE `school`.`students_languages` ( 
    `ID` INT NOT NULL , 
    `student_id` INT NOT NULL , 
    `language_id` INT NOT NULL , 
    PRIMARY KEY (`ID`)) 
 

INSERT INTO `students_languages` 
(`id`, `student_id`, `language_id`) 
VALUES 
        ('1', '1', '1'), 
        ('2', '1', '2'), 
        ('3', '2', '1'), 
        ('4', '2', '3'), 
        ('5', '3', '1'), 
        ('6', '4', '1'), 
        ('7', '4', '2'), 
        ('8', '4', '4'), 
        ('9', '4', '5'), 
        ('10', '5', '1'), 
        ('11', '5', '5'), 
        ('12', '6', '1'), 
        ('13', '6', '2'), 
        ('14', '6', '3');