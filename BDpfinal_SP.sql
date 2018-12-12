drop procedure if exists mostar_servicios;
delimiter //
create procedure mostar_servicios ()
begin
	SELECT * FROM `servadicional`;
end//
delimiter ;




drop procedure if exists habi_dispo;
delimiter //
create procedure habi_dispo ()
begin
	select h.codigo_habitacion , h.Nro_piso ,h.ServABT_nomb from habitaciones h where disponibilidad = 1;
end//
delimiter ;


drop procedure if exists listar_user;
delimiter //
create procedure listar_user ()
begin
	select u.dni, u.nombre, p.Apellidos ,u.correo , p.Direccion from usuarios u
    inner join persona p on u.dni = p.DNI;

end//
delimiter ;

drop procedure if exists habi_dispo_indi;
delimiter //
create procedure habi_dispo_indi ()
begin
	select i.codigo_habitacion , h.Nro_piso ,h.ServABT_nomb from individual i
    inner join habitaciones h on i.codigo_habitacion = h.codigo_habitacion
    where h.disponibilidad =1;
end//
delimiter ;

call listar_user();


drop procedure if exists habi_dispo_compar;
delimiter //
create procedure habi_dispo_compar ()
begin
	select i.codigo_habitacion , h.Nro_piso ,h.ServABT_nomb from compartida i
    inner join habitaciones h on i.codigo_habitacion = h.codigo_habitacion
    where h.disponibilidad =1;
end//
delimiter ;


drop procedure if exists habi_dispo_lujo;
delimiter //
create procedure habi_dispo_lujo ()
begin
	select i.codigo_ab , h.Nro_piso ,h.ServABT_nomb  from lujo i
    inner join habitaciones h on i.codigo_ab = h.codigo_habitacion
    where h.disponibilidad =1;
end//
delimiter ;




drop procedure if exists habi_dispo_nor;
delimiter //
create procedure habi_dispo_nor ()
begin
	select i.codigo_ab , h.Nro_piso ,h.ServABT_nomb ,i.categoria  from normal i
    inner join habitaciones h on i.codigo_ab = h.codigo_habitacion
    where h.disponibilidad =1;
end//
delimiter ;

call habi_dispo_fam();

drop procedure if exists habi_dispo_fam;
delimiter //
create procedure habi_dispo_fam ()
begin
	select i.codigo_habitacion , h.Nro_piso ,h.ServABT_nomb from familiar i
    inner join habitaciones h on i.codigo_habitacion = h.codigo_habitacion
    where h.disponibilidad =1;
end//
delimiter ;



drop procedure if exists habi_dispo_adm;
delimiter //
create procedure habi_dispo_adm ()
begin
	select h.codigo_habitacion , h.Nro_piso ,h.ServABT_nomb , h.disponibilidad from habitaciones h;
end//
delimiter ;




drop procedure if exists n_cliente;
delimiter //
create procedure n_cliente( in dni integer, in nom varchar(200), in ape varchar(200), in dir varchar(200) )
begin
	insert into persona values(dni,nom,ape,dir);
    insert into cliente values(dni);
end //
delimiter ;

# funciona como ingresar cliente

drop procedure if exists n_empleado;
delimiter //
create procedure n_empleado( in dni integer, in nom varchar(200), in ape varchar(200), in dir varchar(200),in grup varchar(200),in contra varchar(100),in correo varchar(100), in nivel int )
begin
	insert into persona values(dni,nom,ape,dir);
    insert into empleado values(grup,dni);
    insert into usuarios values(dni,nom,contra,correo,nivel);
end //
delimiter ;



drop procedure if exists agregar_registro;
delimiter //
create procedure agregar_registro (
in clienteN varchar(225),
in abitacionC integer,
in FI date,
in FC date
)
begin
			declare dato1 integer;
            declare nombre varchar(225);
			declare dato2 integer;
			declare dato3 integer;
            declare fechaC date;
            declare dispo bool;
            #-declaramos los valores
            set dato1 = (select newcodi(max(r.codigo_reserva)) from Reserva r);
			set nombre = (select p.Nombres from Cliente c inner join Persona p where c.DNI=p.DNI and p.Nombres=clienteN);
            set dato2 = (select c.DNI from Cliente c inner join Persona p where c.DNI=p.DNI and Nombres=clienteN );

            #-disponivilidad de la habitacion
            set dispo = (select disponibilidad from habitaciones where codigo_habitacion=abitacionC );
            #-si es k esdisponible o si puede ser despues
            if dispo=true then
				set dato3 = (select h.codigo_habitacion from habitaciones h where abitacionC=h.codigo_habitacion);
				if nombre = clienteN and dato3 = abitacionC then
					call inserta(dato1,dato2,dato3,FI,FC) ;
					update habitaciones set disponibilidad=false where codigo_habitacion=dato3;
				end if;
			else
				set fechaC =(select max(F_fin) from Reserva where abitacionC=codigo_habitacion);
				set dato3 = (select h.codigo_habitacion from habitaciones h where istime(fechaC,FI)=true and abitacionC=h.codigo_habitacion);
				if nombre = clienteN and dato3 = abitacionC  and istime(fechaC,FI)=true then
					call inserta(dato1,dato2,dato3,FI,FC) ;
					update habitaciones set disponibilidad=false where codigo_habitacion=dato3;
				end if;
            end if;
            #-

			select distinct
				r.codigo_reserva,r.DNI,r.codigo_habitacion,h.disponibilidad
			from
			Cliente cl inner join Reserva r inner join  Persona p  inner join habitaciones h
			where
				cl.DNI=p.DNI and p.Nombres=clienteN and abitacionC=h.codigo_habitacion and h.disponibilidad=false group by r.codigo_reserva;
end  //


drop procedure if exists inserta;
delimiter //
create procedure inserta(
in codi integer,
in cdni integer,
in cabi integer,
in fc date,
in ff date)
begin
	insert into Reserva values(codi,cdni,cabi,fc,ff);
end //

drop function if exists newcodi;
DELIMITER //
create function newcodi(x integer) returns integer
reads sql data
deterministic
begin
	set x=x+1;
    return x;
end//
delimiter ;


drop function if exists istime;
delimiter //
create function istime(x1 date, x2 date) returns bool
reads sql data
deterministic
begin
	if x1<=x2 then
		return true;
    else
		return false;
    end if;
end //
delimiter ;
