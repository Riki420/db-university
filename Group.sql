/*--------------------------------------------------------------------------------------*/
/*                                        GROUP                                         */
/*--------------------------------------------------------------------------------------*/



/*Contare quanti iscritti ci sono stati ogni anno*/
SELECT COUNT(*) AS `n_for_year`, YEAR(`enrolment_date`) AS `year` FROM `students` GROUP BY `year`;

/*Contare gli insegnanti che hanno l'ufficio nello stesso edificio*/
SELECT COUNT(*) AS `n_teachers`, `office_address` FROM `teachers` GROUP BY `office_address`;

/*Calcolare la media dei voti di ogni appello d'esame*/
SELECT ROUND(AVG(`vote`)) AS `avg_vote`, `exam_id` FROM `exam_student` GROUP BY `exam_id`;

/*Contare quanti corsi di laurea ci sono per ogni dipartimento*/
SELECT COUNT(*) AS `n_degrees`, `department_id` FROM `degrees` GROUP BY `department_id`;