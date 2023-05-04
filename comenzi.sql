CREATE TABLE `mydb2023`.`produse` (
 `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `Nume_Produs` VARCHAR(100) NOT NULL ,
 `Descriere` TEXT NOT NULL ,
 `Pret` DECIMAL(7,2) NOT NULL ,
 `Stoc` INT NOT NULL DEFAULT '0' ,
 `Producator` VARCHAR(250) NOT NULL , `User_at` INT NOT NULL , `Data_Adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`ID`)) ENGINE = InnoDB;

INSERT INTO `produse` (`ID`,
 `Nume_Produs`,
 `Descriere`,
 `Pret`,
 `Stoc`,
 `Producator`,
 `User_at`,
 `Data_Adaugare`) VALUES (NULL,
 'Pix',
 'Un pix cu mina de carbune si de o grosime de 0.7',
 '22.5',
 '10',
 'Bic',
 '1',
 current_timestamp());

INSERT INTO `produse`(`ID`,
 `Nume_Produs`,
 `Descriere`,
 `Pret`,
 `Stoc`,
 `Producator`,
 `User_at`,
 `Data_Adaugare`) VALUES ('[value-1]',
 '[value-2]',
 '[value-3]',
 '[value-4]',
 '[value-5]',
 '[value-6]',
 '[value-7]',
 '[value-8]');

 REVOKE ALL PRIVILEGES ON *.* FROM 'mydb23'@'%';
 REVOKE GRANT OPTION ON *.* FROM 'mydb23'@'%'; GRANT SELECT,
 INSERT,
 UPDATE,
 DELETE,
 FILE ON *.* TO 'mydb23'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

 UPDATE `produse` SET `ID`='[value-1]',
 `Nume_Produs`='[value-2]',
 `Descriere`='[value-3]',
 `Pret`='[value-4]',`Stoc`='[value-5]',
 `Producator`='[value-6]',
 `User_at`='[value-7]',
 `Data_Adaugare`='[value-8]' WHERE 1;

 SELECT * FROM `produse`;

 DELETE FROM produse WHERE `produse`.`ID` = 1;