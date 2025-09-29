CREATE TABLE `dbfirst`.`bordspellen` (
  `idbordspellen` INT NOT NULL,
  `naam` VARCHAR(250) NOT NULL,
  `aantal spelers` INT NOT NULL,
  `beschrijving` VARCHAR(500) NOT NULL,
  `coop` INT NOT NULL,
  PRIMARY KEY (`idbordspellen`));
