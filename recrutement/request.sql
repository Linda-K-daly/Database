-- 1
SELECT first_name,surname FROM `candidates`

--2


--3


--4


--5
SELECT first_name, surname, portfolio FROM candidates

--6
SELECT first_name, surname, github FROM candidates

--7
SELECT first_name, surname, github,portfolio FROM candidates

--8
SELECT
    first_name
FROM
    candidates
JOIN languages ON candidates.id = candidate_id
WHERE
    languages.name = 'english'

--9
SELECT
    first_name
FROM
    candidates
JOIN programming ON candidates.id = candidate_id
WHERE
    programming.name = 'react'

--10

