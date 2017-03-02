DROP TABLE if exists users;

CREATE TABLE `test`.users (
  `id`         INT(8)       NOT NULL AUTO_INCREMENT,
  `name`       VARCHAR(25)  NOT NULL,
  `age`        INT          NULL,
  `isAdmin`    BIT          NOT NULL,
  `createDate` TIMESTAMP    NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;


INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Kostia', '22', b'01');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Egor', '34', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Igor', '12', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Yarik', '76', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Katia', '43', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Kira', '26', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Marina', '23', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Armen', '34', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Maria', '56', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Sveta', '21', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Dima', '56', b'01');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Kolia', '87', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Mikle', '56', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Misha', '17', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Natasha', '72', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Ania', '15', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Viktor', '26', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Lida', '83', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Lena', '23', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Tania', '43', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Artem', '23', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Denis', '76', b'01');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Fedia', '13', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Dania', '34', b'00');
INSERT INTO `test`.users (`name`, `age`, `isAdmin`) VALUES ('Roma', '67', b'00');