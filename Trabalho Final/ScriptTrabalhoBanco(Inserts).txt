use db_palestra;
INSERT INTO DURACAO (COD_Duracao, Dta_Inicio, Dta_Termino)
VALUES (1,'2022-11-25 12:00:00','2022-11-25 13:00:00');
INSERT INTO DURACAO (COD_Duracao, Dta_Inicio, Dta_Termino)
VALUES (2,'2022-11-26 12:30:00','2022-11-26 13:30:00');
INSERT INTO DURACAO (COD_Duracao, Dta_Inicio, Dta_Termino)
VALUES (3,'2022-11-27 13:00:00','2022-11-27 14:00:00');
INSERT INTO DURACAO (COD_Duracao, Dta_Inicio, Dta_Termino)
VALUES (4,'2022-11-28 13:30:00','2022-11-28 14:30:00');
INSERT INTO DURACAO (COD_Duracao, Dta_Inicio, Dta_Termino)
VALUES (5,'2022-11-29 14:00:00','2022-11-29 15:00:00');


INSERT INTO email (Cod_Email, Des_email)
VALUES (1, 'carlos@gmail.com');
INSERT INTO email (Cod_Email, Des_email)
VALUES (2, 'nickolas@gmail.com');
INSERT INTO email (Cod_Email, Des_email)
VALUES (3, 'arthur@gmail.com');
INSERT INTO email (Cod_Email, Des_email)
VALUES (4, 'guilherme@gmail.com');
INSERT INTO email (Cod_Email, Des_email)
VALUES (5, 'karollyne@gmail.com');



INSERT INTO endereco (Cod_endereco, Nom_cidade,Nom_Bairro, Nom_rua, Num_casa)
VALUES (1, 'Belo horizonte', 'Mantiqueira', 'Rua Geraldo Ferreira Teles', '454');
INSERT INTO endereco (Cod_endereco, Nom_cidade,Nom_Bairro, Nom_rua, Num_casa)
VALUES (2, 'Contagem', 'cabral', 'Rua Alameda dos flamingos', '570');
INSERT INTO endereco (Cod_endereco, Nom_cidade,Nom_Bairro, Nom_rua, Num_casa)
VALUES (3, 'Betim', 'centro', 'Rua Felipe dos Santos', '678');
INSERT INTO endereco (Cod_endereco, Nom_cidade,Nom_Bairro, Nom_rua, Num_casa)
VALUES (4, 'lagoa santa', 'bela vista', 'Rua Timbiras', '287');
INSERT INTO endereco (Cod_endereco, Nom_cidade,Nom_Bairro, Nom_rua, Num_casa)
VALUES (5, 'Ribeirão das Neves', 'Florença','Rua Dezessete', '174');



INSERT INTO Telefone (cod_telefone, num_telefone)
VALUES (1,'31972232625');
INSERT INTO Telefone (cod_telefone, num_telefone)
VALUES (2,'31934765890'); 
INSERT INTO Telefone(cod_telefone, num_telefone)
VALUES (3,'31976301843');
INSERT INTO Telefone (cod_telefone, num_telefone)
VALUES (4,'31999046375');
INSERT INTO Telefone (cod_telefone, num_telefone)
VALUES (5,'31974856274');


INSERT INTO palestrante
( cod_palestrante, nom_palestrante,nom_empresa,cod_email, cod_telefone,cod_endereco)
VALUES (1,'Carlos José', 'EMPRESA 1',1,1,1);
INSERT INTO palestrante
( cod_palestrante, nom_palestrante,nom_empresa,cod_email, cod_telefone,cod_endereco)
VALUES (2,'Nickolas Santos', 'EMPRESA 2',2,2,2);
INSERT INTO palestrante
( cod_palestrante, nom_palestrante,nom_empresa,cod_email, cod_telefone,cod_endereco)
VALUES (3,'Arthur Meireles', 'EMPRESA 3',3,3,3);
INSERT INTO palestrante
( cod_palestrante, nom_palestrante,nom_empresa,cod_email, cod_telefone,cod_endereco)
VALUES (4,'Guilherme Souza', 'EMPRESA 4',4,4,4);
INSERT INTO palestrante
( cod_palestrante, nom_palestrante,nom_empresa,cod_email, cod_telefone,cod_endereco)
VALUES (5,'Karollyne Lacerda', 'EMPRESA 5',5,5,5);



use db_palestra;
INSERT INTO palestra
( cod_palestra, nom_titulo, cod_palestrante , cod_duracao)
VALUES (1,'Meio ambiente',1,1);
INSERT INTO palestra
( cod_palestra, nom_titulo, cod_palestrante , cod_duracao)
VALUES (2,'Sustentabilidade',2,2);
INSERT INTO palestra
( cod_palestra, nom_titulo, cod_palestrante , cod_duracao)
VALUES (3,'Aprendendo a Aprender',3,3);
INSERT INTO palestra
( cod_palestra, nom_titulo, cod_palestrante , cod_duracao)
VALUES (4,'Economia',4,4);
INSERT INTO palestra
( cod_palestra, nom_titulo, cod_palestrante , cod_duracao)
VALUES (5,'Comunicação',5,5);





