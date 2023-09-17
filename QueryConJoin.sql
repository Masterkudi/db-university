/* 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */

SELECT `students`.`name`, `students`.`surname`, `students`.`degree_id`, `degrees`.`name` 
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `students`.`degree_id` = 53;

/* 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
Neuroscienze */

SELECT `departments`.`name`, `departments`.`id`, `degrees`.`name`, `degrees`.`id`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`id` = 7
AND `degrees`.`id` = 44;


/* 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */

SELECT `teachers`.`name`, `teachers`.`surname`, `teachers`.`id`, `degrees`.`name`, `degrees`.`id`
FROM `teachers`
INNER JOIN `degrees`
WHERE `teachers`.`id` = 44;

/* 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
nome */

SELECT `students`.`surname`, `students`.`name`, `degree_id`, `degrees`.`name`, `department_id`, `departments`.`name`
FROM `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name`;

/* 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */

SELECT `degrees`.`id` AS `degree_id`, `degrees`.`name` AS `degree_name`, `courses`.`id` AS `course_id`, `courses`.`name` AS `course_name`, `teachers`.`id` AS `teacher_id`, `teachers`.`name` AS `teacher_name`, `teachers`.`surname` AS `teacher_surname`
FROM `degrees`
INNER JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers` 
ON `course_teacher`.`teacher_id` = `teachers`.`id`;

/* 6. Selezionare tutti i docenti che insegnano nel Dipartimento di
Matematica (54) */

SELECT `teachers`.`name`, `teachers`.`surname`, `teachers`.`id`, `departments`.`name`, `departments`.`id`
FROM `teachers`
INNER JOIN `departments`
WHERE `departments`.`id` = 5;

/* 7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti
per ogni esame, stampando anche il voto massimo. Successivamente,
filtrare i tentativi con voto minimo 18. */