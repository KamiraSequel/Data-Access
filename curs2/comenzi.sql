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
