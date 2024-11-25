INSERT INTO categoria_cliente (COD_categoria_cliente, nom_categoria_cliente)
VALUES (1, 'qualquer');

INSERT INTO tipo_conta (cod_tipo_conta, des_tipo_conta)
VALUES (1, 'teste');

INSERT INTO agencia (num_agencia, nom_agencia)
VALUES (1, 'agencia69');


INSERT INTO tipo_movimentacao (cod_tipo_movimentacao, des_tipo_movimentacao, val_taxa, ind_debito_credito )
VALUES (1, 'naosei', 1000.00, '1')


INSERT INTO Cliente (COD_cliente, nom_cliente, num_cpf_cnpj, num_celular, des_endereco, Cod_categoria_cliente)
VALUES (1,'Arthur', 12345678901, 31912345678, 'Belo Horizonte, Bairro qualquer, rua 4, número 100', 1);


INSERT INTO Conta (num_conta, val_saldo, cod_tipo_conta, cod_cliente, Num_agencia)
VALUES (1, '1000.00',1, 1, 1);


INSERT INTO historico_movimentacao (cod_historico_movimentacao, num_conta, cod_tipo_movimentacao, val_movimentado, dta_movimentacao)
VALUES (1, 1, 1, '1000.00', 01/01/2023);

