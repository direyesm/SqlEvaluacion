--1
create table empleado (
idEmpleado int,
nombreEmpleado varchar(20),
fechaingreso date,
primary key (idEmpleado)
);

INSERT INTO empleado VALUES (1, 'Diego', TO_DATE('2010-10-21', 'YYYY-MM-DD'));
INSERT INTO empleado VALUES (2, 'Agustin',TO_DATE('2019-10-10', 'YYYY-MM-DD'));
INSERT INTO empleado VALUES (3, 'Marcelo', TO_DATE('2020-11-17', 'YYYY-MM-DD'));


create table servicio (
idServicio int,
nombreServicio varchar(20),
valorServicio float(5),
primary key (idServicio)
);

INSERT INTO servicio VALUES (1, 'carro', 150.000);
INSERT INTO servicio VALUES (2, 'vidrio', 100.000);
INSERT INTO servicio VALUES (3, 'puerta', 300.000);

create table vehiculo (
idVehiculo int,
marcaVehiculo varchar(25),
modeloVehiculo varchar(25),
primary key (idVehiculo)
);

insert into vehiculo values (1, 'corsa','corsa');
insert into vehiculo values (2, 'mazda','cx-5');
insert into vehiculo values (3, 'kira','morning');


create table prestacion_servicio (
idPrestacionServicio int,
idEmpleado int,
idServicio int,
idVehiculo int,
fecha date,
primary key (idPrestacionServicio)
);

INSERT INTO prestacion_servicio VALUES (1, 1, 1, 1,TO_DATE('2018-10-01', 'YYYY-MM-DD'));
INSERT INTO prestacion_servicio VALUES (2, 2, 2, 2,TO_DATE('2018-11-06', 'YYYY-MM-DD'));
INSERT INTO prestacion_servicio VALUES (3, 3, 3, 3,TO_DATE('2019-11-06', 'YYYY-MM-DD'));


alter table prestacion_servicio add foreign key(idEmpleado) references Empleado (idEmpleado);
alter table prestacion_servicio add foreign key(idServicio) references Servicio (idServicio);
alter table prestacion_servicio add foreign key(idVehiculo) references Vehiculo (idVehiculo);


--a
select count(idservicio) from prestacion_servicio where fecha between '2018-10-01' and '2018-11-06';

--b
select count(idservicio) from prestacion_servicio where idvehiculo is not null;

--c
select idveichulo from pestacion_servivico order by idservicio asc;



--2
create table empleado(
IdEmpleado int,
nombre varchar(25),
apellido varchar(25),
dirección varchar(50),
teléfono int,
idDepartamento int,
primary key (idEmpleado)
);

--3
create table pelicula(
  id_pelicula int,
  titulo varchar(25),
  Genero varchar(20),
  pais_origen varchar(25),
  anio_produc date,
  url varchar(50),
  duracion date,
  fecha_estreno date,
  resumen varchar(100),
  id_reparto integer,
  id_idioma integer,
  id_restric integer,
  primary key (id_pelicula)
);

INSERT INTO pelicula VALUES (1, 'bajo el agua', 'drama', 'Francia','1989', 'www.url.cl',TO_DATE('01:30:00', 'HH:MI:SS'),TO_DATE('2018-11-06', 'YYYY-MM-DD'),'buena', 1,1,1);
INSERT INTO pelicula VALUES (1, 'Todos Muerto', 'terror', 'Chile','2010', 'www.muerto.cl',TO_DATE('02:00:00', 'HH:MI:SS'),TO_DATE('2018-11-06', 'YYYY-MM-DD'),'buena', 2,2,2);
INSERT INTO pelicula VALUES (1, 'YYYY', 'ficcion', 'Holanda','2001', 'www.web.cl',TO_DATE('01:45:00', 'HH:MI:SS'),TO_DATE('2018-11-06', 'YYYY-MM-DD'),'buuu', 3,3,3);

alter table pelicula add foreign key(id_restric) references restriccion_edad (id_restric);
alter table pelicula add foreign key(id_idioma) references idioma (id_idioma);
alter table pelicula add foreign key(id_reparto) references reparto (id_reparto);

create table reparto(
  id_reparto integer,
  tipo integer,
  id_direcactor integer,
  primary key (id_reparto)
);

INSERT INTO reparto VALUES (1, 2, 1);
INSERT INTO reparto VALUES (2, 1, 2);
INSERT INTO reparto VALUES (3, 3, 2);

alter table reparto add foreign key(id_direcactor) references direcactor (id_direcactor);


create table direcactor(
  id_direcactor integer,
  nombre varchar(50),
  tipo integer, --(actor o director)
  nacionalidad varchar(25),
  cantidad_peli varchar(25),
  actuacion varchar(25),
  primary key (id_direcactor)
);

INSERT INTO direcactor VALUES (1, 'Diego', 1, 'Chileno', 1, 2);
INSERT INTO direcactor VALUES (2, 'Agustin', 2, 'Mexicano', 1, 2);
INSERT INTO direcactor VALUES (3, 'Marcelo', 2, 'Italiano', 0, 2);

create table cine(
  id_cine integer,
  cartelera varchar(25),
  id_pelicula integer,
  diayhora date,
  id_sala integer,
  nombre varchar(25),
  direccion varchar(25),
  telefono integer,
  primary key (id_cine)
);

INSERT INTO cine VALUES (1, 'todod', 1, TO_DATE('2018-10-01 02:00:00', 'YYYY-MM-DD HH:MI:SS'), 1, 'Hoyts','zzzzzz', 77777777);
INSERT INTO cine VALUES (2, 'todod', 1, TO_DATE('2018-10-01 02:00:00', 'YYYY-MM-DD HH:MI:SS'), 1, 'mark','sadsad', 9999);
INSERT INTO cine VALUES (3, 'todod', 1, TO_DATE('2018-10-01 02:00:00', 'YYYY-MM-DD HH:MI:SS'), 1, 'polis','asdsdsad', 888888);

alter table cine add foreign key(id_sala) references sala (id_sala);
alter table cine add foreign key(id_pelicula) references pelicula (id_pelicula);



create table sala(
  id_sala integer,
  butaca integer,
  primary key(id_sala)
);

INSERT INTO sala VALUES (1, 50);
INSERT INTO sala VALUES (2, 20);
INSERT INTO sala VALUES (3, 35);


create table promociones(
  id_promo integer,
  descuento float,
  vestimenta varchar(25),
  descripcion varchar(25),
  primary key(id_promo)
);
INSERT INTO promociones VALUES (1, 0, 'Escolar', 'dia lunes');
INSERT INTO promociones VALUES (2, 50, 'calle', 'dia jueves');
INSERT INTO promociones VALUES (3, 50, 'calle', 'dia martes');

create table opiniones(
  id_opiniones integer,
  nombre varchar(25),
  edad integer,
  fecha date,
  id_califi integer,
  primary key(id_opiniones)
);

INSERT INTO opiniones VALUES (1, 'Javier', 18, TO_DATE('2020-05-10', 'YYYY-MM-DD'),1);
INSERT INTO opiniones VALUES (2, 'Moah', 22, TO_DATE('2020-05-10', 'YYYY-MM-DD'),1);
INSERT INTO opiniones VALUES (3, 'Karina', 33, TO_DATE('2020-05-10', 'YYYY-MM-DD'),1);

alter table opiniones add foreign key(id_califi) references calificacion (id_califi);


create table calificacion(
  id_califi integer,
  tipo integer,
  comentario varchar(100),
  id_pelicula integer,
  primary key(id_califi)
);
I
INSERT INTO calificacion VALUES (1, 1, 18, '.......',1);
INSERT INTO calificacion VALUES (2, 2, 22, '.......',2);
INSERT INTO calificacion VALUES (3, 3, 18, '.......',3);


alter table calificacion add foreign key(id_pelicula) references pelicula (id_pelicula);


create table idioma(
  id_idioma integer,
  tipo varchar(20),
  primary key(id_idioma)
);
INSERT INTO idioma VALUES (1, 3);
INSERT INTO idioma VALUES (2, 1);
INSERT INTO idioma VALUES (3, 2);

create table  restriccion_edad(
  id_restric integer,
  tipo varchar(20),
  primary key(id_restric)
);

INSERT INTO restriccion_edad VALUES (1, +9);
INSERT INTO restriccion_edad VALUES (2, +15);
INSERT INTO restriccion_edad VALUES (3, +18);
