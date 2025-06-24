use DATABASE consulta_medica
INSERT INTO medico
(cod_medico, nom_medico)
VALUES
(1, 'Arthur Meireles');

INSERT INTO especialidade
(cod_especialidade, nom_especialidade)
VALUES
(1, 'Clínico Geral');

INSERT INTO paciente
(cod_paciente, nom_paciente)
VALUES
(1, 'Nicollas Correia');

INSERT INTO medico_especialidade
(cod_medico_especialidade, cod_medico, cod_especialidade)
VALUES
(1, 1, 1);

INSERT INTO consulta
(cod_consulta, dta_consulta, val_consulta, cod_medico, cod_paciente)
VALUES
(1, '07:11:2022 12:00:00', '299.99', 1, 1);