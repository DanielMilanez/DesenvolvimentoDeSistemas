-- Entendedo o CRUD
-- CREATE
-- READ
-- UPDATE
-- DELETE

-- SQL (Structured Query Language)
-- DML (Data Manipulation Language)

-- INSERT 
-- SELECT
-- DELETE
-- UPDATE

show tables;
describe tb_genero;

Insert into tb_genero(nome) values("ação");
select * from tb_genero;

delete from tb_genero where id=1;

update  tb_genero set nome = "terror" where id= 3;

-- execute
/* 
	Considerando o script demonstrado pelo professor. Crie a dml da tabela tb_lead
    Insira 21 leads;
    altere 3
    delete 4
    crie um select para pesquisa
*/
select * from tb_lead;
describe tb_lead;

-- Insira 21 leads;

insert into tb_lead(cpf, email, nome, telefone)values('17869242020','lorena@email.com','Lorena','556419191818');
insert into tb_lead(cpf, email, nome, telefone)values('15369487251','matheus@email.com','Matheus','556169851925');
insert into tb_lead(cpf, email, nome, telefone)values('14875923649','ryan@email.com','Ryan','55683456987');
insert into tb_lead(cpf, email, nome, telefone)values('78954312546','juan@email.com','Juan','55614899999');
insert into tb_lead(cpf, email, nome, telefone)values('15487952346','jaoa@email.com','Joao','55894326821');
insert into tb_lead(cpf, email, nome, telefone)values('18421899875','ronaldo@email.com','Ronaldo','556419191818');
insert into tb_lead(cpf, email, nome, telefone)values('55522299887','gean@email.com','Gean','558765957585');
insert into tb_lead(cpf, email, nome, telefone)values('89897845652','guilherme@email.com','Guilherme','559988774411');
insert into tb_lead(cpf, email, nome, telefone)values('69695588420','carlos@email.com','Carlos','559911223366');
insert into tb_lead(cpf, email, nome, telefone)values('01110011000','daniel@email.com','Daniel','556410011101');
insert into tb_lead(cpf, email, nome, telefone)values('25497625863','leandro@email.com','Leandro','55644857895');
insert into tb_lead(cpf, email, nome, telefone)values('55887799334','felipe@email.com','Felipe','556445446455');
insert into tb_lead(cpf, email, nome, telefone)values('44778844774','maria@email.com','Maria','5564454654231');
insert into tb_lead(cpf, email, nome, telefone)values('54521533261','lucy@email.com','Lucy','556436544658');
insert into tb_lead(cpf, email, nome, telefone)values('78799944511','alice@email.com','Alice','556432323535');
insert into tb_lead(cpf, email, nome, telefone)values('45781245787','fernando@email.com','Fernando','556421214545');
insert into tb_lead(cpf, email, nome, telefone)values('66545465456','daniela@email.com','Daniela','556445451212');
insert into tb_lead(cpf, email, nome, telefone)values('34212314554','paulo@email.com','Paulo','556489895656');
insert into tb_lead(cpf, email, nome, telefone)values('78787878784','marcos@email.com','Marcos','556456235632');
insert into tb_lead(cpf, email, nome, telefone)values('55221152145','magali@email.com','Magali','556478457845');
insert into tb_lead(cpf, email, nome, telefone)values('99988877889','yan@email.com','Yan','556469695421');
insert into tb_lead(cpf, email, nome, telefone)values('77788778877','amanda@email.com','Amanda','556454875487');

-- altere 3
update  tb_lead set telefone = "556119191818" where id =7;
update  tb_lead set telefone = "556569851925" where id =8;
update  tb_lead set telefone = "556454875455" where id =9;

-- delete 4

delete from tb_lead where id = 28;
delete from tb_lead where id = 27;
delete from tb_lead where id = 26;
delete from tb_lead where id = 25;

-- crie um select para pesquisa

select * from tb_lead where nome like "M%";