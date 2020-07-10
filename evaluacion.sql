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
select idveichulo from pestacion_servivico where ;


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
create tabla pelicula(
  id_pelicula int,
  Titulo varchar(25),
  Genero varchar(20),
  subtitulo integer, -- id_iidioma
  pais_origen varchar(25),
  anio_producc date,
  url varchar(50),
  duracion integer,
  calificacion integer --- id_califi
  fecha estreno date,
  resumen varchar(100),
  lista_directo varchar(50),
  reparto varchar(150),
  actor varchar (50),
  personaje varchar (25)
  primary key (id_pelicula)
)

create table director(
  nombre varchar(50),
  nacionalidad varchar(25),
  cantidad_peli varchar(25),
  actuacion varchar(25),
  primary key (nombre)
)
create table cine(
  fk_id_sala integer,
  cartelera varchar(25),
  detalle_peli varchar(25),
)

create table sala(
  id_sala integer,
  butaca integer,
)

create table idioma(
  id_idioma integer,
  tipo varchar(20)
)

create table  calificacion(
  id_califi integer,
  tipo varchar(20)
)
