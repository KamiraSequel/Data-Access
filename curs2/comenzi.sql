CREATE TABLE `university2023`.`utiliz` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nume produs` varchar(60) NOT NULL,
  `cantitate` varchar(50) NOT NULL,
  `idfirma` int(10) unsigned NOT NULL,
  `firma` varchar(60) NOT NULL,
  `adresafirma` varchar(50) NOT NULL,
  `modelp` varchar(50) NOT NULL,
  `stocp` varchar(50) NOT NULL,
  `pret` decimal(7,2) NOT NULL,
  `categoriep` varchar(45) NOT NULL,
  `descrierep` tinytext NOT NULL,
  `data_addp` varchar(145) NOT NULL,
  PRIMARY KEY (`id`,`idfirma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `magazin`.`shop` 
CHANGE COLUMN `nume produs` `nume produs` VARCHAR(60) NULL ,
CHANGE COLUMN `cantitate` `cantitate` VARCHAR(50) NULL ,
CHANGE COLUMN `firma` `firma` VARCHAR(60) NULL ,
CHANGE COLUMN `adresafirma` `adresafirma` VARCHAR(50) NULL ,
CHANGE COLUMN `modelp` `modelp` VARCHAR(50) NULL ,
CHANGE COLUMN `stocp` `stocp` VARCHAR(50) NULL ,
CHANGE COLUMN `pret` `pret` DECIMAL(7,2) NULL ,
CHANGE COLUMN `categoriep` `categoriep` VARCHAR(45) NULL ,
CHANGE COLUMN `descrierep` `descrierep` TINYTEXT NULL ,
CHANGE COLUMN `data_addp` `data_addp` VARCHAR(145) NULL ;

INSERT INTO `magazin`.`shop` (
    `id`,
 `nume produs`,
  `cantitate`,
   `idfirma`,
    `firma`,
     `adresafirma`,
      `modelp`,
       `stocp`,
        `pret`,
         `categoriep`,
          `descrierep`)
           VALUES ('1',
            'Creion',
             '100',
              '1',
               'BIC',
                'bicuspocus@gmail.com',
                 'lemnos',
                  '1000',
                   '2',
                    'textil',
                     'un creion de la bic');

CREATE SCHEMA `facultate` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `facultate`.`student` (
  `idstudent` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(55) NOT NULL,
  `prenume` VARCHAR(55) NOT NULL,
  `grupa` SET('1', '2', '3', '4') NULL,
  `email` VARCHAR(145) NULL,
  `data_add` VARCHAR(45) NULL,
  `status` ENUM('admis', 'respins', 'neevaluat') NULL,
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `nume_unic` (`nume` ASC, `prenume` ASC))
DEFAULT CHARACTER SET = utf8;

INSERT INTO `facultate`.`student` (
    `idstudent`,
     `nume`,
      `prenume`,
       `grupa`,
        `email`,
         `data_add`,
          `status`) VALUES (
            '1',
             'Ion',
              'Pol',
               '1,2,3',
                'pol561@gmail.com',
                 '2023-04-01',
                  'admis');


SELECT * FROM `studenti` WHERE year(data_nastere) BETWEEN '1993' AND '1995';
 
SELECT * FROM `profesor` WHERE grad_didactic IN ('I', 'II');

SELECT * FROM cursuri WHERE an = 2 AND semestru = 2;

SELECT * FROM `student` WHERE prenume LIKE 'ion%';

SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere, '%m-%d') = '09-21';

SELECT * FROM `student` WHERE bursa*12>=4000;

SELECT * FROM `student` ORDER BY nume ASC;

SELECT * FROM `student` ORDER BY rand() LIMIT 1;

SELECT * FROM `student` ORDER BY data_nastere LIMIT 10, 5;

SELECT c.id_curs, c.titlu_curs, n.valoare FROM `cursuri` AS c NATURAL JOIN;
note AS n;

SELECT * FROM cursuri AS c INNER JOIN note AS n ON c.id_curs= n.id_curs;

SELECT * FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof WHERE profesor.id = 6;

SELECT profesor.nume, profesor.prenume, cursuri.titlu_curs, note.valoare FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof WHERE profesor.id = 6;

SELECT * FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id GROUP by n.id_student;

SELECT  s.nume, s.prenume, n.valoare, AVG(n.valoare) FROM `student` AS s LEFT JOIN note AS n ON s.id = n.id_student WHERE s.id = 111 GROUP BY s.id;