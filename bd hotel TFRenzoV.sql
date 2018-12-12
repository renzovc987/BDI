create database hotel;
use hotel;
create table piso(
Nro int not null primary key
)engine=innodb;

create table habitaciones(
codigo_habitacion int not null,
disponibilidad bool,
Nro_piso int not null,
ServABT_nomb varchar(225)
)engine=innodb;
alter table habitaciones add constraint pk_habitaciones primary key (codigo_habitacion);
alter table habitaciones add constraint NU_piso foreign key pk_piso(Nro_piso) references piso(Nro);

create table ServAdicional(
nombre varchar(225) primary key,
costo int
)engine=innodb;


create table Ofrece(
codigo_habitacion int,
Serv_nombre varchar(225)
)engine=innodb;
alter table Ofrece add constraint pk_Serv_ofr primary key (codigo_habitacion,Serv_nombre);
alter table Ofrece add constraint no_SERV foreign key pk_servADD(Serv_nombre) references ServAdicional(nombre);
alter table Ofrece add constraint no_abitaciones foreign key pk_abitaciones(codigo_habitacion) references habitaciones(codigo_habitacion);


create table secciones(
codigo int not null primary key,
nombre varchar(225)
)engine=innodb;


create table AB_SEC(
seccion_codigo int not null,
codigo_habitacion int not null
)engine=innodb;
alter table AB_SEC add constraint pk_AB_SEC primary key (seccion_codigo,codigo_habitacion);
alter table AB_SEC add constraint CO_seccion foreign key pk_secciones(seccion_codigo) references secciones(codigo);
alter table AB_SEC add constraint CO_habitacion foreign key pk_habitacion(codigo_habitacion) references habitaciones(codigo_habitacion);


create table Servicio_Habitacion(
NombrEQP varchar(225) primary key,
disponibilidad int(1)
)engine=innodb;

create table Dedicado(
NombrEQP_SrHABT varchar(225)
)engine=innodb;
alter table Dedicado add constraint pk_Dedicado primary key (NombrEQP_SrHABT);
alter table Dedicado add constraint CO_ServABT foreign key pk_ServABT(NombrEQP_SrHABT) references Servicio_Habitacion(NombrEQP);

create table Comun(
NombrEQP_SrABT varchar(225)
)engine=innodb;
alter table Comun add constraint pk_Comun primary key (NombrEQP_SrABT);
alter table Comun add constraint CO_Servicio_habitacion foreign key pk_Servicio_habitacion(NombrEQP_SrABT) references Servicio_Habitacion(NombrEQP);

create table Normal(
codigo_ab int not null,
categoria varchar(225)
)engine=innodb;
alter table Normal add constraint pk_Normal primary key (codigo_ab);
alter table Normal add constraint CO_abitacion foreign key pk_abitaciones(codigo_ab) references habitaciones(codigo_habitacion);
 
create table Lujo(
codigo_ab int not null,
Serv_ABT_Dedicado varchar(225)
)engine=innodb;

alter table Lujo add constraint pk_Lujo primary key (codigo_ab,Serv_ABT_Dedicado);
alter table Lujo add constraint CO_abitacionl foreign key pk_abitaciones(codigo_ab) references habitaciones(codigo_habitacion);
alter table Lujo add constraint CO_ServABT_L foreign key pk_Dedicado(Serv_ABT_Dedicado) references Dedicado(NombrEQP_SrHABT);


create table atencion(
No_EQP_COMUN varchar(225),
Norm_CODIGO int not null
)engine=innodb;
alter table atencion add constraint pk_atencion primary key (Norm_CODIGO,No_EQP_COMUN);
alter table atencion add constraint NO_Comun foreign key pk_comun(No_EQP_COMUN) references Comun(NombrEQP_SrABT);
alter table atencion add constraint CO_Normal foreign key pk_normal(Norm_CODIGO) references Normal(codigo_ab);



create table Persona(
DNI int not null,
Nombres varchar(225),
Apellidos varchar(225),
Direccion varchar(225)
)engine=innodb;



create table Empleado(
NombrEQP varchar(225) ,
DNI int not null primary key
)engine=innodb;

create table Cliente(
DNI int not null
)engine=innodb;

create table Asociado(
DNI int not null,
Codigo_Asociado int not null
)engine=innodb;


create table Por_Empresa(
Codigo_Asociado int not null,
Nombre_Empresa varchar(225)
)engine=innodb;

create table Accionista(
Codigo_Asociado int not null,
Codigo_Accionista int not null
)engine=innodb;

create table No_Asociado(
DNI int not null
)engine=innodb;

create table Reserva(
Codigo_Reserva int not null,
DNI int not null,
codigo_habitacion int not null,
F_Inicio date,
F_Fin date
)engine=innodb;

create table R_Personal(
Codigo_Reserva int not null
)engine=innodb;

create table Familiar(
codigo_habitacion int not null
)engine=innodb;

create table Compartida(
codigo_habitacion int not null
)engine=innodb;

create table Individual(
codigo_habitacion int not null
)engine=innodb;

create table N_3Estrellas(
codigo_habitacion int not null
)engine=innodb;

create table N_2Estrellas(
codigo_habitacion int not null
)engine=innodb;

create table N_Simple(
codigo_habitacion int not null
)engine=innodb;

create table R_Internet(
Codigo_Reserva int not null,
Servidor varchar(225)
)engine=innodb;

create table Hotel(
Codigo_Hotel int not null,
Nombre varchar(225),
Categoria varchar(225),
Direccion varchar(225)
)engine=innodb;

create table Areas(
Codigo_Area int not null,
Codigo_Hotel int not null,
Aforo int
)engine=innodb;

create table Patio_Comida(
Codigo_Area int not null,
Tipo varchar(225)
)engine=innodb;

create table Entretenimiento(
Codigo_Area int not null
)engine=innodb;

create table Deportivo(
Codigo_Area int not null,
Disciplina varchar(225)
)engine=innodb;

create table Virtualt(
Codigo_Area int not null,
Genero varchar(225)
)engine=innodb;

create table Piscinas(
Codigo_Area int not null,
Profundidad double
)engine=innodb;

create table Contacto_Persona(
DNI int not null,
Teléfono int not null
)engine=innodb;

create table Contacto_Hotel(
Codigo_Hotel int not null,
Teléfono int not null
)engine=innodb;

alter table Persona add constraint Pk_Persona primary key (DNI);
alter table Asociado add constraint Pk_Asociado primary key (Codigo_Asociado);
alter table Hotel add constraint Pk_Hotel primary key (Codigo_Hotel);
alter table Areas add constraint Pk_Area primary key (Codigo_Area);
alter table Reserva add constraint Pk_Reserva primary key (Codigo_Reserva);
alter table Accionista add constraint Pk_Accionista primary key (Codigo_Accionista);
alter table Contacto_Persona add constraint Pk_Contacto_Persona primary key (Teléfono);
alter table Contacto_Hotel add constraint Pk_Contacto_Hotel primary key (Teléfono);

alter table Empleado add constraint CO_Empleado foreign key Fk_Empleado(DNI) references Persona(DNI);
alter table Cliente add constraint CO_Cliente foreign key Fk_Cliente(DNI) references Persona(DNI);
alter table Asociado add constraint CO_Asociado foreign key Fk_Asociado(DNI) references Persona(DNI);
alter table Contacto_Persona add constraint CO_Contacto_Persona foreign key Fk_Contacto_Persona(DNI) references Persona(DNI);
alter table Contacto_Hotel add constraint CO_Contacto_Hotel foreign key Fk_Contacto_Hotel(Codigo_Hotel) references Hotel(Codigo_Hotel);

alter table Por_Empresa add constraint CO_Por_Empresa foreign key Fk_Por_Empresa(Codigo_Asociado) references Asociado(Codigo_Asociado);
alter table Accionista add constraint CO_Accionista foreign key Fk_Accionista(Codigo_Asociado) references Asociado(Codigo_Asociado);
alter table Reserva add constraint CO_Reserva foreign key Fk_Reserva(DNI) references Persona(DNI);
alter table Reserva add constraint CO_Reserva1 foreign key Fk_Reserva1(codigo_habitacion) references habitaciones(codigo_habitacion);
alter table R_Personal add constraint CO_R_Personal foreign key Fk_R_Personal(Codigo_Reserva) references Reserva(Codigo_Reserva);
alter table R_Internet add constraint CO_R_Internet foreign key Fk_R_R_Internet(Codigo_Reserva) references Reserva(Codigo_Reserva);

alter table Familiar add constraint CO_Familiar foreign key Fk_Familiar(codigo_habitacion) references habitaciones(codigo_habitacion);
alter table Compartida add constraint CO_Compartida foreign key Fk_Compartida(codigo_habitacion) references habitaciones(codigo_habitacion);
alter table Individual add constraint CO_Individual foreign key Fk_Individual(codigo_habitacion) references habitaciones(codigo_habitacion);

alter table N_3Estrellas add constraint CO_N_3Estrellas foreign key Fk_N_3Estrellas(codigo_habitacion) references Normal(codigo_ab);
alter table N_2Estrellas add constraint CO_N_2Estrellas foreign key Fk_N_2Estrellas(codigo_habitacion) references Normal(codigo_ab);
alter table N_Simple add constraint CO_N_Simple foreign key Fk_N_Simple(codigo_habitacion) references Normal(codigo_ab);

alter table Areas add constraint CO_Areas foreign key Fk_Areas(Codigo_Hotel) references Hotel(Codigo_Hotel);
alter table Patio_Comida add constraint CO_Patio_Comida foreign key Fk_Patio_Comida(Codigo_Area) references Areas(Codigo_Area);
alter table Entretenimiento add constraint CO_Entretenimiento foreign key Fk_Entretenimiento(Codigo_Area) references Areas(Codigo_Area);
alter table Deportivo add constraint CO_Deportivo foreign key Fk_Deportivo(Codigo_Area) references Areas(Codigo_Area);
alter table Virtualt add constraint CO_Virtualt foreign key Fk_Virtualt(Codigo_Area) references Areas(Codigo_Area);
alter table Piscinas add constraint CO_Piscinas foreign key Fk_Piscinas(Codigo_Area) references Areas(Codigo_Area);