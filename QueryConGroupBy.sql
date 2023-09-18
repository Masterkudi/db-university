/* 1. Contare quanti iscritti ci sono stati ogni anno */

SELECT 
    YEAR(`enrolment_date`) AS `enrolment_year`,
    COUNT(*) AS `num_students`
FROM 
    `students`
GROUP BY 
    `enrolment_year`
ORDER BY 
    `enrolment_year`;

/* 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio */

SELECT 
	`office_address`,
    COUNT(*) AS `num_teachers`
FROM 
    `teachers`
GROUP BY 
    `office_address`  
ORDER BY `teachers`.`office_address`;

/* 3. Calcolare la media dei voti di ogni appello d'esame */



/* 4. Contare quanti corsi di laurea ci sono per ogni dipartimento */

SELECT 
    `d`.`department_id`,
    `dep`.`name`,
    COUNT(*) AS `num_degrees`
FROM 
    `degrees` AS `d`
INNER JOIN
    `departments` AS `dep` ON `d`.`department_id` = `dep`.`id`
GROUP BY 
    `d`.`department_id`, `dep`.`name`
ORDER BY 
    `d`.`department_id`;