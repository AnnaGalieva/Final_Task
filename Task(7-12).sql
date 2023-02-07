CREATE DATABASE human_friends;
CREATE TABLE human_friends.animal(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
INSERT INTO animal (id, pid, name) VALUES (NULL, 'root', 'Животные');
CREATE TABLE human_friends.pet(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
INSERT INTO pet (id, pid, name) VALUES (NULL, 'animal', 'Домашние животные');
CREATE TABLE human_friends.pack_animal(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
INSERT INTO pack_animal (id, pid, name) VALUES (NULL, 'animal', 'Вьючные животные');
CREATE TABLE human_friends.dog(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
CREATE TABLE human_friends.cat(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
CREATE TABLE human_friends.hamster(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
CREATE TABLE human_friends.horse(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
CREATE TABLE human_friends.camel(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
CREATE TABLE human_friends.donkey(id INT(11) NOT NULL AUTO_INCREMENT , pid VARCHAR(100) NOT NULL , name VARCHAR(100) NOT NULL , birthday DATE NULL , comands JSON NULL , PRIMARY KEY (id)) ENGINE = InnoDB;
INSERT INTO horse (id, pid, name, birthday, comands) VALUES (NULL, 'pack_animal', 'Вихрь', '2020-03-22', '["Есть"]');
INSERT INTO donkey (id, pid, name, birthday, comands) VALUES (NULL, 'pack_animal', 'Пушок', '2019-04-10', '["Есть"]');
INSERT INTO camel (id, pid, name, birthday, comands) VALUES (NULL, 'pack_animal', 'Рыжик', '2015-10-15', '["Есть"]');
INSERT INTO cat (id, pid, name, birthday, comands) VALUES (NULL, 'pet', 'Барсик', '2018-10-25', NULL);
INSERT INTO dog (id, pid, name, birthday, comands) VALUES (NULL, 'pet', 'Рекс', '2015-04-22', NULL);
INSERT INTO hamster (id, pid, name, birthday, comands) VALUES (NULL, 'pet', 'Шарик', '2018-10-05', NULL);
DROP TABLE camel;
INSERT INTO horse (pid, name, birthday, comands) SELECT pid, name, birthday, comands FROM donkey;
CREATE TABLE human_friends.young_animals( id_animal INT(11) NOT NULL , age_month DATE NOT NULL ) ENGINE = InnoDB;
ALTER TABLE cat ADD COLUMN animal_type VARCHAR(50) NOT NULL;
ALTER TABLE dog ADD COLUMN animal_type VARCHAR(50) NOT NULL;
ALTER TABLE hamster ADD COLUMN animal_type VARCHAR(50) NOT NULL;
ALTER TABLE horse ADD COLUMN animal_type VARCHAR(50) NOT NULL;
INSERT INTO all_animals (pid, animal_type, name, birthday, comands) SELECT id, animal_type, name, birthday, comands FROM cat;
INSERT INTO all_animals (pid, animal_type, name, birthday, comands) SELECT id, animal_type, name, birthday, comands FROM dog;
INSERT INTO all_animals (pid, animal_type, name, birthday, comands) SELECT id, animal_type, name, birthday, comands FROM hamster;
INSERT INTO all_animals (pid, animal_type, name, birthday, comands) SELECT id, animal_type, name, birthday, comands FROM horse;



