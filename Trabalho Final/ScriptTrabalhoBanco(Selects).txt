use db_palestra;
select nom_palestrante, nom_empresa, cod_palestra, nom_titulo from palestrante
inner join palestra  on palestrante.cod_palestrante=palestra.cod_palestrante;

use db_palestra;
select cod_palestra, nom_titulo, dta_inicio, dta_termino from palestra
inner join duracao on palestra.cod_duracao = duracao.cod_duracao;

use db_palestra;
select P.nom_titulo as Palestra, D.dta_inicio as Inicio, D.dta_termino as Fim, Palest.nom_palestrante as Palestrante, T.num_telefone as Telefone
from palestra as P inner join duracao as D on P.cod_duracao = D.cod_duracao
inner join palestrante as Palest on P.cod_palestrante = Palest.cod_palestrante
inner join telefone as T on Palest.cod_telefone = T.cod_telefone;

use db_palestra;
select P.nom_palestrante as Palestrante, E.nom_cidade as Cidade, E.nom_rua as Rua, E.nom_bairro as Bairro,
E.num_casa as `Nº Casa` from palestrante as P inner join endereco as E
on P.cod_endereco = E.cod_endereco;

use db_palestra;
select * from palestrante;

use db_palestra;
select * from palestra;