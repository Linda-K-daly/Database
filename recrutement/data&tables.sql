-- création de la database

CREATE DATABASE recrutement 



-- création table candidates
CREATE TABLE `recrutement`.`candidates` (
         `id` INT NOT NULL , 
         `first_name` VARCHAR(30) NOT NULL , 
         `surname` VARCHAR(30) NOT NULL , 
         `date_of_birth` DATE NOT NULL , 
         `salary` INT NOT NULL , 
         `portfolio` VARCHAR(50) NOT NULL , 
         `github` VARCHAR(30) NOT NULL , 
         PRIMARY KEY (`id`)
)

INSERT INTO `candidates` (  `id`, 
                            `first_name`, 
                            `surname`, 
                            `date_of_birth`, 
                            `salary`, 
                            `portfolio`, 
                            `github`) 

VALUES ('1', 
        'Linda', 
        'KEITA', 
        '1982-04-14', 
        '60000', 
        'lindak', 
        'lindakdaly'), 
        ('2', 
        'Lilia', 
        'Taghnit', 
        '1984-11-09', 
        '60000', 
        'liliat', 
        'lilioutaghnit'), 
        ('3', 
        'Raky', 
        'SY', 
        '1987-02-20', 
        '60000', 
        'rakyyyyy', 
        'rakysy')


-- création table languages
CREATE TABLE `recrutement`.`languages` ( 
        `Id` INT NOT NULL , 
        `Name` VARCHAR(30) NOT NULL , 
        `Candidate_id` INT NOT NULL , 
        PRIMARY KEY (`Id`)
            )

INSERT INTO `languages` 
    (`Id`, `Name`, `Candidate_id`) 
        VALUES ('1', 'english', '3'), 
                ('2', 'swahili', '2'), 
                ('3', 'Hindi', '1')



--création table programming
CREATE TABLE `recrutement`.`programming` ( 
        `Id` INT NOT NULL , 
        `Name` VARCHAR(30) NOT NULL , 
        `Candidate_id` INT NOT NULL , 
        PRIMARY KEY (`Id`)
            )


INSERT INTO `programming` 
        (`Id`, `Name`, `Candidate_id`) 
        VALUES   ('1', 'React', '2'), 
                 ('2', 'Express', '1'), 
                 ('3', 'SQL', '3');
         