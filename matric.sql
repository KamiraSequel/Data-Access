INSERT INTO `jsusers` (`ID`,
 `nume`,
  `prenume`,
   `email`,
    `telefon`,
     `data_nastere`,
      `data_adaugare`) VALUES ('2',
       'Ion',
        'Motohon',
         'ionel@gmail.com',
          '0723463789',
           '2000-04-02',
            current_timestamp());


INSERT INTO `jsusers`(`ID`,
 `nume`,
  `prenume`,
   `email`,
    `telefon`,
     `data_nastere`,
      `data_adaugare`) VALUES ('[value-1]',
      '[value-2]',
      '[value-3]',
      '[value-4]',
      '[value-5]',
      '[value-6]',
      '[value-7]');

UPDATE `jsusers` SET `ID`='[value-1]',
`nume`='[value-2]',
`prenume`='[value-3]',
`email`='[value-4]',
`telefon`='[value-5]',
`data_nastere`='[value-6]',
`data_adaugare`='[value-7]' WHERE 1;

SELECT * FROM `jsusers` WHERE 1;

DELETE FROM `jsusers` WHERE 0;