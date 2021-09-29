/*--------------------------------------------------------------------------------------*/
/*                                        JOIN                                          */
/*--------------------------------------------------------------------------------------*/


/*Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia*/
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` FROM `students` JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id` WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

/*Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze*/
SELECT `departments`.`name`, `degrees`.`name` FROM `degrees` JOIN `departments` ON `degrees`.`department_id` = `departments`.`id` WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

/*Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)*/
SELECT * FROM `course_teacher` JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id` WHERE `teachers`.`name` = 'Fulvio' AND `teachers`.`surname` = 'Amato';

/*Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome*/
SELECT `students`.`name`,`students`.`surname`, `degrees`.`name`,`departments`.`name` FROM `students` JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id` JOIN `departments` ON `degrees`.`department_id` = `departments`.`id` ORDER BY `students`.`surname` ASC, `students`.`name` ASC;


/*Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti*/
SELECT `courses`.`name`, `degrees`.`name` AS "corso", `teachers`.`name` AS "teacher_name", `teachers`.`surname` AS "teacher_surname" FROM `courses` JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id` JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id` JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`;
