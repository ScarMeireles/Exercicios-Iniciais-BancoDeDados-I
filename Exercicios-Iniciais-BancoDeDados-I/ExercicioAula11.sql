
• Recupere o nome e data de nascimento dos funcionários 
com salario entre 2000 e 3000 mil reais. Ordene os dados 
pela idade dos funcionários em ordem decrescente.

use bd_rh;
select nom_func, dta_nascimento, val_salario
from funcionario
where val_salario BETWEEN 2000 and 3000
order by dta_nascimento desc;




--------

• Recupere o nome, data de nascimento dos dependentes do 
sexo feminimo nascidos após o dia 01/01/2000

use bd_rh;
select nom_dependente, dta_nascimento, des_sexo
from dependente
where dta_nascimento > '2000-01-01' and des_sexo = 'F'




---------

• Recupere os pedidos realizados neste ano ou cujo valor 
total seja inferior a 2000 mil reais ordenados pelo código 
do pedido.

use bd_rh;
select cod_pedido, val_total_pedido
from pedido
where val_total_pedido < '2000.00'
order by cod_pedido



---------

• Recupere o nome e data de Admissão dos funcionários 
admitidos entre os anos 2000 e 2020 que não tenham 
supervisores. Ordene os dados para mostrar primeiro os 
funcionários com mais tempo de casa.

use bd_rh;
select nom_func, dta_admissao, dta_inicio_cargo, cod_func_supervisor
from funcionario
where dta_admissao between 2000 and 2020 and cod_func_supervisor is null;




---------

• Mostre os projetos não encerrados que tenham 
coordenadores.

use bd_rh;
SELECT *
FROM projeto
where cod_func_coordenador is not null and dta_fim is null;



----------

• Mostre os dependentes que nasceram após o ano de 2000 
que tenham silva no nome. Mostre os dependentes com 
maior idade primeiro. 

use bd_rh;
SELECT *
from dependente
where dta_nascimento >= '2000-01-01' and nom_dependente like '%Silva%'





----------

• Recupere os pedidos feitos há menos de cinco anos.


use bd_rh;
SELECT *
from pedido
where dta_pedido > 2017-11-18




---------

• Recupere os funcionários admitidos há mais de cinco anos 
que não tenha supervisor e cujo salário esteja entre 2000 e 
5000 mil reais. Ordene os dados mostrando primeiro os 
funcionários com menor idade.



use bd_rh;
select *
from funcionario 
where dta_inicio_cargo > 2017-18-11 and cod_func_supervisor is null and val_salario between '2000' and '5000'
order by dta_nascimento desc;




---------

• Recupere os dependentes que terão 18 anos ou mais após 
o ano que vem.



use bd_rh;
select *
from dependente 
where dta_nascimento > 2006





----------
• Mostre o nome dos funcionários no cargo 1 que teria 
salário acima de 2000 reais caso seu salário atual fosse 
reajustado em 10 %. Exiba também qual seria o salário 
destes funcionários caso o salario fosse reajustado em 10%

DUVIDA

use bd_rh;
select nom_func, cod_cargo, val_salario
from funcionario
where cod_cargo = 1 and val_salario > 2000


