
/*Selezionare tutti gli studenti nati nel 1990*/
SELECT * FROM `students` WHERE YEAR(`date_of_birth`) = 1990;

/*Selezionare tutti i corsi che valgono più di 10 crediti*/
SELECT * FROM `courses` WHERE `cfu` > 10;

/*Selezionare tutti gli studenti che hanno più di 30 anni*/
SELECT `name`, `surname`,`date_of_birth` FROM `students` WHERE `date_of_birth` <= '1991-09-28'

/*Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea*/
SELECT * FROM `courses` WHERE `period` = 'I semestre' AND `year` = 1
