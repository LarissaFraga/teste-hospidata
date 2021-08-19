-- 9. 
select 
	nm_empregado as nome_empregado,
	nm_funcao as funcao_empregado,
	data_admissao
from empregados
order by salario desc;

-- 10.
select 
	e.nm_empregado as nome_empregado,
	e.data_admissao
from empregados e
where e.cod_departamento = (SELECT cod_departamento from empregados where nm_empregado like 'Marcelo')
		and e.nm_empregado not like 'Marcelo';

-- 11.
select 
	e.id_empregado as numero_empregado,
	e.nm_empregado as nome_empregado
from empregados e
where lower(e.nm_empregado) like '%t%';

-- 12.
select 
	e.nm_empregado as nome_empregado,
	d.nm_departamento as nome_departamento,
	d.local as localizacao,
	e.nm_funcao as funcao
from empregados e
join departamentos d on (d.id_departamento = e.cod_departamento)
where extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM e.data_admissao) > 5
	and extract(DAY FROM e.data_admissao) > 0
	and e.salario > (select min(salario) from empregados where lower(nm_funcao) like 'gerente');

-- 13.
select 
	sum(e.salario) as salarios,
	d.nm_departamento as nome_departamento,
	e.nm_funcao as funcao
from empregados e
join departamentos d on (d.id_departamento = e.cod_departamento)
where d.local like 'Porto Alegre'
		and extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM e.data_admissao) > 1
		and extract(DAY FROM e.data_admissao) > 0
group by e.salario,
		d.nm_departamento,
		e.nm_funcao;