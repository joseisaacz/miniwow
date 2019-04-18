create table faccion(
id int,
nombre text,
constraint pkfaccion primary key (id)
);

create table raza(
id int,
nombre text,
constraint pkraza primary key (id)
);

create table existen(
faccion int,
raza int, 
constraint pkexisten primary key (faccion, raza),
constraint fk1existen foreign key (faccion) references faccion(id),
constraint fk2existen foreign key (raza) references raza(id)
);

create table clase(
id int,
nombre text,
constraint pkclase primary key (id)
);

create table tienen(
raza int, 
clase int,
constraint pktienen primary key (raza, clase),
constraint fk1tienen foreign key (raza) references raza(id),
constraint fk2tienen foreign key (clase) references clase(id)
);

create table equipamiento(
id int, 
nombre text,
nivel_requerido int,
constraint pkequipamiento primary key (id)
);

create table atributos(
nombre text,
constraint pkatributos primary key (nombre)
);


create table puedeusar(
clase int,
equipamiento int,
constraint pkpuedeusar primary key (clase, equipamiento),
constraint fk1puedeusar foreign key (clase) references clase(id),
constraint fk2puedeusar foreign key (equipamiento) references equipamiento(id)
);

create table puedeusar2(
clase int,
atributo int,
constraint pkpuedeusar2 primary key (clase, atributo),
constraint fk1puedeusar2 foreign key (clase) references clase(id),
constraint fk2puedeusar2 foreign key (atributo) references atributos(nombre)
);

create table continente(
id int,
nombre text,
constraint pkcontinente primary key (id)
);

create table region(
id int,
nombre text,
capital text,
continente int,
constraint pkregion primary key (id),
constraint fk1region foreign key (continente) references continente(id),
unique(capital),
unique(nombre)
);

create table villas(
region int,
villa text,
constraint fk1villas foreign key (region) references region(id)
);

create table aldeas(
region int,
aldeas text,
constraint fk1aldeas foreign key (region) references region(id)
);

create table jugador(
id int,
nombre text,
status boolean,
constraint pkjugador primary key (id)
);

create table personaje(
nombre text,
genero text,
color text,
jugador int,
faccion int,
raza int,
clase int,
region int,
armamento int,
nivel int,
constraint pkpersonaje primary key (nombre),
constraint fk1personaje foreign key (jugador) references jugador(id),
constraint fk2personaje foreign key (faccion) references faccion(id),
constraint fk3personaje foreign key (clase) references clase(id),
constraint fk4personaje foreign key (raza) references raza(id),
constraint fk5personaje foreign key (region) references region(id),
CONSTRAINT dom_whatever CHECK (faccion == 1 AND raza == 5 AND (region >=1  AND region <=3)) ,
CONSTRAINT dom_whatever2 CHECK (faccion == 2 AND raza == 11 AND (region > 3 AND region <=5)) ,
CONSTRAINT dom_whatever3 CHECK (raza == 13 AND (region >=6 AND region <=8)),
CONSTRAINT dom_whatever4 CHECK (faccion == 1 AND raza !=5 AND raza !=13 AND (region > 3 AND region <=5)),
CONSTRAINT dom_whatever5 CHECK (faccion == 2 AND raza !=11 AND raza!=13 AND (region >= 1 AND region <=3))
);

Drop table personaje;

create table usa(
personaje text,
equipamiento int,
constraint pkusa primary key (personaje, equipamiento),
constraint fk1usa foreign key (personaje) references personaje(nombre),
constraint fk2usa foreign key (equipamiento) references equipamiento(id)
);

create table usa2(
personaje text,
atributo text,
nivel int,
constraint pkusa primary key (personaje, atributo),
constraint fk1usa foreign key (personaje) references personaje(nombre),
constraint fk2usa foreign key (atributo) references atributos(nombre)
);


insert into Faccion values (1,'Alianza');
insert into Faccion values (2,'Horda');

insert into raza values (1,'Humanos');
insert into raza values (2,'Enanos');
insert into raza values (3,'Elfos de la noche');
insert into raza values (4,'Nonos');
insert into raza values (5,'Draneis');
insert into raza values (6,'Hombres Lobo');
insert into raza values (7,'Orcos');
insert into raza values (8,'No-Muertos');
insert into raza values (9,'Tauren');
insert into raza values (10,'Troles');
insert into raza values (11,'Elfos de Sangre');
insert into raza values (12,'Goblins');
insert into raza values (13,'Panda');

insert into existen values (1,1);
insert into existen values (1,2);
insert into existen values (1,3);
insert into existen values (1,4);
insert into existen values (1,5);
insert into existen values (1,6);
insert into existen values (2,7);
insert into existen values (2,8);
insert into existen values (2,9);
insert into existen values (2,10);
insert into existen values (2,11);
insert into existen values (2,12);
insert into existen values (1,13);
insert into existen values (2,13);

insert into clase values (1,'Brujo');
insert into clase values (2,'Caballero de la muerte');
insert into clase values (3,'Cazador');
insert into clase values (4,'Cazador de domonios');
insert into clase values (5,'Chamán');
insert into clase values (6,'Druida');
insert into clase values (7,'Guerrero');
insert into clase values (8,'Mago');
insert into clase values (9,'Paladín');
insert into clase values (10,'Picaro');
insert into clase values (11,'Sacerdote');
insert into clase values (12,'Monje');
insert into clase values (13,'Ladron');

insert into tienen values (1,3);
insert into tienen values (1,1);
insert into tienen values (1,2);
insert into tienen values (1,7);
insert into tienen values (1,8);
insert into tienen values (1,9);
insert into tienen values (1,10);
insert into tienen values (1,11);
insert into tienen values (2,1);
insert into tienen values (2,2);
insert into tienen values (2,3);
insert into tienen values (2,5);
insert into tienen values (2,7);
insert into tienen values (2,8);
insert into tienen values (2,9);
insert into tienen values (2,10);
insert into tienen values (2,11);
insert into tienen values (3,2);
insert into tienen values (3,3);
insert into tienen values (3,6);
insert into tienen values (3,7);
insert into tienen values (3,8);
insert into tienen values (3,10);
insert into tienen values (3,11);
insert into tienen values (4,1);
insert into tienen values (4,2);
insert into tienen values (4,7);
insert into tienen values (4,8);
insert into tienen values (4,10);
insert into tienen values (4,11);
insert into tienen values (4,12);
insert into tienen values (5,2);
insert into tienen values (5,3);
insert into tienen values (5,5);
insert into tienen values (5,7);
insert into tienen values (5,8);
insert into tienen values (5,9);
insert into tienen values (5,11);
insert into tienen values (6,1);
insert into tienen values (6,2);
insert into tienen values (6,3);
insert into tienen values (6,6);
insert into tienen values (6,7);
insert into tienen values (6,8);
insert into tienen values (6,10);
insert into tienen values (6,11);
insert into tienen values (7,1);
insert into tienen values (7,2);
insert into tienen values (7,3);
insert into tienen values (7,5);
insert into tienen values (7,7);
insert into tienen values (7,8);
insert into tienen values (7,10);
insert into tienen values (7,12);
insert into tienen values (8,1);
insert into tienen values (8,2);
insert into tienen values (8,3);
insert into tienen values (8,7);
insert into tienen values (8,8);
insert into tienen values (8,9);
insert into tienen values (8,10);
insert into tienen values (8,11);
insert into tienen values (8,12);
insert into tienen values (9,2);
insert into tienen values (9,3);
insert into tienen values (9,5);
insert into tienen values (9,6);
insert into tienen values (9,7);
insert into tienen values (9,9);
insert into tienen values (9,11);
insert into tienen values (9,12);
insert into tienen values (10,1);
insert into tienen values (10,2);
insert into tienen values (10,3);
insert into tienen values (10,5);
insert into tienen values (10,6);
insert into tienen values (10,7);
insert into tienen values (10,8);
insert into tienen values (10,10);
insert into tienen values (10,11);
insert into tienen values (10,12);
insert into tienen values (11,1);
insert into tienen values (11,2);
insert into tienen values (11,3);
insert into tienen values (11,7);
insert into tienen values (11,8);
insert into tienen values (11,9);
insert into tienen values (11,10);
insert into tienen values (11,11);
insert into tienen values (11,12);
insert into tienen values (12,1);
insert into tienen values (12,2);
insert into tienen values (12,3);
insert into tienen values (12,5);
insert into tienen values (12,4);
insert into tienen values (12,7);
insert into tienen values (12,8);
insert into tienen values (12,10);
insert into tienen values (12,11);
insert into tienen values (13,3);
insert into tienen values (13,8);
insert into tienen values (13,12);
insert into tienen values (13,11);
insert into tienen values (13,10);
insert into tienen values (13,5);
insert into tienen values (13,7);

insert into continente values (1,"Kalindor");
insert into continente values (2,"Azerot");
insert into continente values (3,"Pandarian");


insert into equipamiento values (1,'casco',0);
insert into equipamiento values (2,'collar',10);
insert into equipamiento values (3,'Hombreras',11);
insert into equipamiento values (4,'Capa',15);
insert into equipamiento values (5,'Pechera',5);
insert into equipamiento values (6,'Pulsera',10);
insert into equipamiento values (7,'Guantes',20);
insert into equipamiento values (8,'Cinturon',5);
insert into equipamiento values (9,'Pantalones',20);
insert into equipamiento values (10,'Zapatos',20);
insert into equipamiento values (11,'Anillo',10);
insert into equipamiento values (12,'Aretes',10);


insert into region values(1,'Teldrassil','Capital de Tedrassil',1);
insert into region values(2,'Los Baldios del Norte','La capital de los baldios del Norte',1);
insert into region values(3,'Los Baldios del Sur','La capital del los baldios del Sur',1);
insert into region values(4,'Isla Quel’Danas','capital  Isla Quel’Danas ',2);
insert into region values(5,'Reinos del Este','Vertormenta',2);
insert into region values(6,'Dread Wastes','Capital de Dread Wastes',3);
insert into region values(7,'Townlong Steppes','Capital de Townlong Steppes',3);
insert into region values(8,'The Jade Forest','Capital de Jade Forest',3);

insert into aldeas values(4,'Aldea 1 Isla Quel’Danas');
insert into aldeas values(4,'Aldea 2 Isla Quel’Danas');
insert into aldeas values(4,'Aldea 3 Isla Quel’Danas');
insert into aldeas values(5,'Aldea 1 Reinos del Este');
insert into aldeas values(5,'Aldea 2 Reinos del Este');
insert into aldeas values(5,'Aldea 3 Reinos del Este');
insert into aldeas values(1,'Aldea 1 Teldrassil');
insert into aldeas values(1,'Aldea 2 Teldrassil');
insert into aldeas values(1,'Aldea 3 Teldrassil');
insert into aldeas values(2,'Aldea 1 Los Baldios del Norte');
insert into aldeas values(2,'Aldea 2 Los Baldios del Norte');
insert into aldeas values(2,'Aldea 3 Los Baldios del Norte');
insert into aldeas values(3,'Aldea 1 Los Baldios del Sur');
insert into aldeas values(3,'Aldea 2 Los Baldios del Sur');
insert into aldeas values(3,'Aldea 3 Los Baldios del Sur');
insert into aldeas values(6,'Aldea 1 Dread Wastes');
insert into aldeas values(6,'Aldea 2 Dread Wastes');
insert into aldeas values(6,'Aldea 3 Dread Wastes');
insert into aldeas values(7,'Aldea 1 Townlong Steppes');
insert into aldeas values(7,'Aldea 2 Townlong Steppes');
insert into aldeas values(7,'Aldea 3 Townlong Steppes');
insert into aldeas values(8,'Aldea 1 The Jade Forest');
insert into aldeas values(8,'Aldea 2 The Jade Forest');
insert into aldeas values(8,'Aldea 3 The Jade Forest');

insert into villas values(4,'Villa 1 Isla Quel’Danas');
insert into villas values(4,'Villa 2 Isla Quel’Danas');
insert into villas values(4,'Villa 3 Isla Quel’Danas');
insert into villas values(5,'Villa 1 Reinos del Este');
insert into villas values(5,'Villa 2 Reinos del Este');
insert into villas values(5,'Villa 3 Reinos del Este');
insert into villas values(1,'Villa 1 Teldrassil');
insert into villas values(1,'Villa 2 Teldrassil');
insert into villas values(1,'Villa 3 Teldrassil');
insert into villas values(2,'Villa 1 Los Baldios del Norte');
insert into villas values(2,'Villa 2 Los Baldios del Norte');
insert into villas values(2,'Villa 3 Los Baldios del Norte');
insert into villas values(3,'Villa 1 Los Baldios del Sur');
insert into villas values(3,'Villa 2 Los Baldios del Sur');
insert into villas values(3,'Villa 3 Los Baldios del Sur');
insert into villas values(6,'Villa 1 Dread Wastes');
insert into villas values(6,'Villa 2 Dread Wastes');
insert into villas values(6,'Villa 3 Dread Wastes');
insert into villas values(7,'Villa 1 Townlong Steppes');
insert into villas values(7,'Villa 2 Townlong Steppes');
insert into villas values(7,'Villa 3 Townlong Steppes');
insert into villas values(8,'Villa 1 The Jade Forest');
insert into villas values(8,'Villa 2 The Jade Forest');
insert into villas values(8,'Villa 3 The Jade Forest');

insert into jugador values(1,'Estefany Hernandez Arce',false);

insert into atributos values ('Intelecto');
insert into atributos values ('Estamina');
insert into atributos values ('Mana');
insert into atributos values ('Agilidad');

insert into puedeusar2 values(1,'Intelecto');
insert into puedeusar2 values(1,'Estamina');
insert into puedeusar2 values(1,'Mana');
insert into puedeusar2 values(2,'Intelecto');
insert into puedeusar2 values(2,'Estamina');
insert into puedeusar2 values(2,'Mana');
insert into puedeusar2 values(3,'Agilidad');
insert into puedeusar2 values(3,'Estamina');
insert into puedeusar2 values(4,'Intelecto');
insert into puedeusar2 values(4,'Estamina');
insert into puedeusar2 values(4,'Mana');
insert into puedeusar2 values(5,'Intelecto');
insert into puedeusar2 values(5,'Estamina');
insert into puedeusar2 values(5,'Mana');
insert into puedeusar2 values(6,'Intelecto');
insert into puedeusar2 values(6,'Estamina');
insert into puedeusar2 values(6,'Mana');
insert into puedeusar2 values(7,'Estamina');
insert into puedeusar2 values(7,'Agilidad');
insert into puedeusar2 values(8,'Intelecto');
insert into puedeusar2 values(8,'Estamina');
insert into puedeusar2 values(8,'Mana');
insert into puedeusar2 values(9,'Intelecto');
insert into puedeusar2 values(9,'Estamina');
insert into puedeusar2 values(9,'Mana');
insert into puedeusar2 values(10,'Intelecto');
insert into puedeusar2 values(10,'Estamina');
insert into puedeusar2 values(10,'Mana');
insert into puedeusar2 values(11,'Intelecto');
insert into puedeusar2 values(11,'Estamina');
insert into puedeusar2 values(11,'Mana');
insert into puedeusar2 values(12,'Intelecto');
insert into puedeusar2 values(12,'Estamina');
insert into puedeusar2 values(12,'Mana');
insert into puedeusar2 values(13,'Agilidad');
insert into puedeusar2 values(13,'Estamina');

insert into personaje values ('Est123','Femenino','Morena',1,1,6,3,5,0,0);
