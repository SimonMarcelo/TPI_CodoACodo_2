create database proyecto22026;

create table socios(
id_socio int not null auto_increment,
nombre varchar(30),
apellido varchar(30),
dni int not null unique,
mail varchar(30),
estado bit(1) not null default b'1',
primary key(id_socio)
);

insert into socios values (1,'Juana','Perez',23456789,'mail1@prueba.com',1);
insert into socios values (2,'Martín','Gomez',34548758,'mail2@prueba.com',1);
insert into socios values (3,'Nicolás','Correa',31452352,'mail3@prueba.com',1);
insert into socios values (4,'Natalia','Duarte',21121245,'mail4@prueba.com',1);
insert into socios values (5,'Monica','Gutierrez',32456258,'mail5@prueba.com',1);
