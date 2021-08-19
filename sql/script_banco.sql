CREATE TABLE departamentos(
  id_departamento SERIAL CONSTRAINT pk_id_departamento PRIMARY KEY,
  nm_departamento varchar(100),
  local varchar(100)
);

insert into departamentos(nm_departamento, local)
values('Departamento 1', 'Floripa');

insert into departamentos(nm_departamento, local)
values('Departamento 2', 'Campo Grande');

insert into departamentos(nm_departamento, local)
values('Departamento 3', 'Recife');

insert into departamentos(nm_departamento, local)
values('Departamento 4', 'Rio de Janeiro');

insert into departamentos(nm_departamento, local)
values('Departamento 5', 'Belo Horizonte');

insert into departamentos(nm_departamento, local)
values('Departamento 6', 'Porto Alegre');


CREATE TABLE empregados(
  id_empregado SERIAL CONSTRAINT pk_id_empregado PRIMARY KEY,
  cod_departamento int NOT NULL,
  cod_emp_funcao int,
  nm_empregado varchar(100),
  nm_funcao varchar(100),
  data_admissao Date,
  salario numeric(92,5),
  comissao numeric(92,5),
  FOREIGN KEY (cod_departamento) REFERENCES departamentos (id_departamento),
  FOREIGN KEY (cod_emp_funcao) REFERENCES empregados (id_empregado)
);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(1, null, 'Luana Souza', 'chefe', '2015-09-01', 7000, 1000);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(2, 1, 'Mario', 'gerente', '2017-02-03', 4000, 100);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(2, 2, 'Bernardo', 'rh', '2019-04-02', 2500.50, 150);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(3, 1, 'Maria', 'gerente', '2017-07-01', 4000, 100);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(3, 4, 'Marcelo', 'analista', '2018-10-06', 3500, 0);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(4, 4, 'Monique', 'estagiário', '2020-08-12', 1500, 50);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(5, 2, 'João', 'desenvolvedor', '2019-06-01', 4000, 100.48);

insert into empregados(cod_departamento, cod_emp_funcao, nm_empregado, nm_funcao, 
					   data_admissao, salario, comissao)
values(6, 1, 'Mateus', 'coordenador de sistemas', '2018-02-01', 6000, 250.36);
