use hotel;




insert into piso values(01);
insert into piso values(02);
insert into piso values(03);
insert into piso values(04);
insert into piso values(05);
insert into piso values(06);


insert into habitaciones values(001,true,01,'eqp1');
insert into habitaciones values(002,true,01,'eqp1');
insert into habitaciones values(003,false,01,'eqp2');
insert into habitaciones values(004,true,01,'eqp1');
insert into habitaciones values(005,true,02,'eqp1');
insert into habitaciones values(006,false,02,'eqp2');
insert into habitaciones values(007,false,02,'eqp2');
insert into habitaciones values(008,false,02,'eqp2');
insert into habitaciones values(009,false,03,'eqp3');
insert into habitaciones values(010,true,03,'eqp3');
insert into habitaciones values(011,true,03,'eqp4');
insert into habitaciones values(012,false,04,'eqp3');
insert into habitaciones values(013,false,04,'eqp4');
insert into habitaciones values(014,true,05,'eqp6');
insert into habitaciones values(015,false,05,'eqp6');
insert into habitaciones values(016,true,05,'eqp10');



insert into ServAdicional values('internet',20);
insert into ServAdicional values('Notaria',50);
insert into ServAdicional values('Psicologo',50);
insert into ServAdicional values('Maid',80);
insert into ServAdicional values('Mozo',80);
insert into ServAdicional values('Bartender',50);
insert into ServAdicional values('jacuzzi',40);
insert into ServAdicional values('Video_Games',20);
insert into ServAdicional values('Casino',40);
insert into ServAdicional values('Tragamonedas',10);



insert into Ofrece values(02,'internet');
insert into Ofrece values(02,'Video_Games');
insert into Ofrece values(03,'internet');
insert into Ofrece values(04,'internet');
insert into Ofrece values(05,'Bartender');
insert into Ofrece values(05,'Tragamonedas');
insert into Ofrece values(06,'Casino');
insert into Ofrece values(11,'Maid');
insert into Ofrece values(13,'Maid');
insert into Ofrece values(13,'Mozo');



insert into secciones values(011,'A0');
insert into secciones values(021,'A1');
insert into secciones values(031,'A2');
insert into secciones values(041,'A3');
insert into secciones values(051,'A4');
insert into secciones values(061,'A5');
insert into secciones values(071,'A6');
insert into secciones values(081,'A7');
insert into secciones values(091,'A8');
insert into secciones values(101,'A9');


insert into AB_SEC values(011,001);
insert into AB_SEC values(011,002);
insert into AB_SEC values(021,003);
insert into AB_SEC values(021,004);
insert into AB_SEC values(031,005);
insert into AB_SEC values(031,006);
insert into AB_SEC values(041,007);
insert into AB_SEC values(051,008);
insert into AB_SEC values(051,009);
insert into AB_SEC values(081,010);



insert into Servicio_Habitacion values('eqp1',false);
insert into Servicio_Habitacion values('eqp2',false);
insert into Servicio_Habitacion values('eqp3',true);
insert into Servicio_Habitacion values('eqp4',true);
insert into Servicio_Habitacion values('eqp5',true);
insert into Servicio_Habitacion values('eqp6',true);
insert into Servicio_Habitacion values('eqp7',true);
insert into Servicio_Habitacion values('eqp10',false);
insert into Servicio_Habitacion values('eqp11',true);
insert into Servicio_Habitacion values('eqp12',true);





insert into Dedicado values('eqp10');
insert into Dedicado values('eqp11');
insert into Dedicado values('eqp12');



insert into Comun values('eqp1');
insert into Comun values('eqp2');
insert into Comun values('eqp3');
insert into Comun values('eqp4');
insert into Comun values('eqp5');
insert into Comun values('eqp6');
insert into Comun values('eqp7');



insert into atencion values('eqp1',001);
insert into atencion values('eqp1',002);
insert into atencion values('eqp1',004);
insert into atencion values('eqp1',005);
insert into atencion values('eqp2',003);
insert into atencion values('eqp2',006);
insert into atencion values('eqp2',007);
insert into atencion values('eqp2',008);
insert into atencion values('eqp3',009);
insert into atencion values('eqp3',010);
insert into atencion values('eqp3',012);
insert into atencion values('eqp4',011);
insert into atencion values('eqp4',013);
insert into atencion values('eqp6',014);
insert into atencion values('eqp6',015);




insert into Normal values(001,'1_estrellas');
insert into Normal values(002,'1_estrellas');
insert into Normal values(003,'2_estrellas');
insert into Normal values(004,'2_estrellas');
insert into Normal values(005,'2_estrellas');
insert into Normal values(006,'1_estrellas');
insert into Normal values(007,'2_estrellas');
insert into Normal values(008,'3_estrellas');
insert into Normal values(009,'3_estrellas');
insert into Normal values(010,'2_estrellas');
insert into Normal values(011,'1_estrellas');
insert into Normal values(012,'1_estrellas');
insert into Normal values(013,'3_estrellas');
insert into Normal values(014,'2_estrellas');
insert into Normal values(015,'3_estrellas');



insert into Lujo values(016,'eqp10');



insert into Persona values(00000000,'michael','jhackson','calle-A');
insert into Persona values(11111111,'miguel','torres','calle-A');
insert into Persona values(22222222,'jorge','soncco','calle-B');
insert into Persona values(33333333,'miguel','loayza','calle-B');
insert into Persona values(44444444,'carlos','villanueva','calle-B');
insert into Persona values(55555555,'maria','montes','calle-c');
insert into Persona values(66666666,'renzo','castro','calle-A');
insert into Persona values(77777777,'ramiro','mamani','calle-A');
insert into Persona values(88888888,'carla','montes','calle-C');
insert into Persona values(99999999,'ana','barredo','calle-D');
insert into Persona values(90000000,'jaime','mamani','calle-F');
insert into Persona values(80000000,'jesus','tacca','calle-F');
insert into Persona values(70000000,'gabriel','ito','calle-F');
insert into Persona values(60000000,'gino','fernandez','calle-D');
insert into Persona values(50000000,'luis','villanueva','calle-F');
insert into Persona values(40000000,'mana','kaedo','calle-D');
insert into Persona values(30000000,'melisa','mamani','calle-D');
insert into Persona values(20000000,'sara','gutierrez','calle-E');
insert into Persona values(10000000,'alana','gutierrez','calle-E');
insert into Persona values(09999999,'richard','corine','calle-D');
insert into Persona values(02345678,'sora','yagami','calle-G');
insert into Persona values(12345678,'samuel','pilco','calle-A');
insert into Persona values(22345678,'felix','alanda','calle-D');
insert into Persona values(32345678,'alexis','roes','calle-G');
insert into Persona values(42345678,'tea','gardner','calle-H');
insert into Persona values(52345678,'shiro','yagami','calle-H');
insert into Persona values(62345678,'elma','apaza','calle-H');
insert into Persona values(72345678,'alicia','mamani','calle-D');
insert into Persona values(82345678,'marta','montes','calle-I');
insert into Persona values(92345678,'moises','moro','calle-D');




insert into Empleado values('eqp1',00000000);
insert into Empleado values('eqp1',11111111);
insert into Empleado values('eqp2',22222222);
insert into Empleado values('eqp2',33333333);
insert into Empleado values('eqp2',44444444);
insert into Empleado values('eqp3',55555555);
insert into Empleado values('eqp4',66666666);
insert into Empleado values('eqp6',77777777);
insert into Empleado values('eqp10',88888888);
insert into Empleado values('eqp10',99999999);


insert into Cliente values(90000000);
insert into Cliente values(80000000);
insert into Cliente values(70000000);
insert into Cliente values(60000000);
insert into Cliente values(50000000);
insert into Cliente values(40000000);
insert into Cliente values(30000000);
insert into Cliente values(20000000);
insert into Cliente values(10000000);
insert into Cliente values(09999999);
insert into Cliente values(02345678);
insert into Cliente values(12345678);
insert into Cliente values(22345678);
insert into Cliente values(32345678);
insert into Cliente values(42345678);
insert into Cliente values(52345678);
insert into Cliente values(62345678);
	
    
    
insert into Asociado values(02345678,01);
insert into Asociado values(12345678,02);
insert into Asociado values(22345678,03);
insert into Asociado values(32345678,04);
insert into Asociado values(42345678,05);
insert into Asociado values(52345678,06);
insert into Asociado values(62345678,07);
insert into Asociado values(72345678,08);
insert into Asociado values(82345678,09);
insert into Asociado values(92345678,10);



insert into Por_Empresa values(01,'ADAMAS');
insert into Por_Empresa values(02,'TFR');
insert into Por_Empresa values(03,'HMFG');
insert into Por_Empresa values(04,'TTGL');
insert into Por_Empresa values(05,'SHKNU');
insert into Por_Empresa values(06,'LTdLC.SA');
insert into Por_Empresa values(07,'MERC');
insert into Por_Empresa values(08,'VAIRS');
insert into Por_Empresa values(09,'MADE');
insert into Por_Empresa values(10,'NEW.SA');



insert into accionista values(1,01);
insert into accionista values(2,03);
insert into accionista values(3,05);
insert into accionista values(4,07);
insert into accionista values(5,09);



insert into No_Asociado values(00000000);
insert into No_Asociado values(11111111);
insert into No_Asociado values(22222222);
insert into No_Asociado values(33333333);
insert into No_Asociado values(44444444);
insert into No_Asociado values(55555555);
insert into No_Asociado values(66666666);
insert into No_Asociado values(77777777);
insert into No_Asociado values(88888888);
insert into No_Asociado values(99999999);
insert into No_Asociado values(90000000);
insert into No_Asociado values(80000000);
insert into No_Asociado values(70000000);
insert into No_Asociado values(60000000);
insert into No_Asociado values(50000000);
insert into No_Asociado values(40000000);
insert into No_Asociado values(30000000);
insert into No_Asociado values(20000000);
insert into No_Asociado values(10000000);
insert into No_Asociado values(09999999);




insert into reserva values(2018011,90000000,001,'2018-02-12','2018-04-12');
insert into reserva values(2018013,80000000,001,'2018-05-25','2018-06-25');
insert into reserva values(2018012,90000000,001,'2018-08-12','2018-12-23');
insert into reserva values(2018010,70000000,014,'2018-05-15','2018-05-22');
insert into reserva values(2018014,60000000,016,'2018-01-01','2018-03-20');
insert into reserva values(2018016,50000000,011,'2018-08-01','2018-08-28');
insert into reserva values(2018001,10000000,010,'2018-08-05','2018-09-25');
insert into reserva values(2018002,20000000,004,'2018-11-10','2018-12-21');
insert into reserva values(2018004,30000000,005,'2017-11-22','2018-01-02');
insert into reserva values(2018005,40000000,016,'2017-12-12','2018-03-11');
insert into reserva values(2018000,60000000,016,'2018-05-01','2018-06-02');
insert into reserva values(2018006,60000000,016,'2018-08-13','2018-11-11');
insert into reserva values(2018003,02345678,013,'2017-01-18','2017-04-10');
insert into reserva values(2018007,12345678,004,'2019-03-11','2019-06-01');
insert into reserva values(2018008,22345678,007,'2018-01-01','2018-02-12');
insert into reserva values(2018009,32345678,008,'2018-01-16','2018-01-27');
insert into reserva values(2018015,42345678,008,'2018-04-20','2018-06-04');
insert into reserva values(2018017,52345678,013,'2017-08-21','2018-01-09');
insert into reserva values(2018018,62345678,013,'2018-02-13','2018-05-25');
insert into reserva values(2018019,12345678,016,'2018-12-01','2019-02-20');


insert into R_Personal values(2018011);
insert into R_Personal values(2018013);
insert into R_Personal values(2018012);
insert into R_Personal values(2018006);
insert into R_Personal values(2018000);
insert into R_Personal values(2018004);
insert into R_Personal values(2018001);
insert into R_Personal values(2018007);
#-------------------------------------------
insert into Familiar values(001);
insert into Familiar values(002);
insert into Familiar values(003);
insert into Familiar values(004);
insert into Familiar values(005);

insert into Compartida values(006);
insert into Compartida values(007);
insert into Compartida values(008);
insert into Compartida values(009);
insert into Compartida values(010);
insert into Compartida values(011);



insert into Individual values(012);
insert into Individual values(013);
insert into Individual values(014);
insert into Individual values(015);
insert into Individual values(016);
#-----------------------------------------------
insert into N_3Estrellas values(008);
insert into N_3Estrellas values(009);
insert into N_3Estrellas values(013);
insert into N_3Estrellas values(015);
insert into N_2Estrellas values(003);
insert into N_2Estrellas values(004);
insert into N_2Estrellas values(005);
insert into N_2Estrellas values(007);
insert into N_2Estrellas values(010);
insert into N_2Estrellas values(014);
insert into N_Simple values(001);
insert into N_Simple values(002);
insert into N_Simple values(006);
insert into N_Simple values(011);
insert into N_Simple values(012);


insert into R_Internet values(2018001,'SERV1');
insert into R_Internet values(2018002,'SERV1');
insert into R_Internet values(2018003,'SERV1');
insert into R_Internet values(2018004,'SERV2');
insert into R_Internet values(2018006,'SERV1');
insert into R_Internet values(2018007,'SERV1');
insert into R_Internet values(2018009,'SERV2');
insert into R_Internet values(2018010,'SERV1');
insert into R_Internet values(2018013,'SERV1');
insert into R_Internet values(2018014,'SERV1');


insert into Hotel values(101001,'CASCADA','3*','CALLE-1');
insert into Hotel values(101002,'NARUMI','2*','CALLE-2');
insert into Hotel values(101003,'JOKE','2*','CALLE-3');
insert into Hotel values(101004,'MONTES','3*','CALLE-4');
insert into Hotel values(101005,'IGLU','3*','CALLE-5');
insert into Hotel values(101006,'HK','1*','CALLE-5');
insert into Hotel values(101007,'PRIMAVERA','1*','CALLE-6');
insert into Hotel values(101008,'MARIANO','3*','CALLE-7');
insert into Hotel values(101009,'GERANIOS','1*','CALLE-7');



insert into Areas values(01,101002,50);
insert into Areas values(02,101002,40);
insert into Areas values(03,101001,50);
insert into Areas values(04,101009,20);
insert into Areas values(05,101005,35);
insert into Areas values(06,101005,45);
insert into Areas values(07,101008,20);
insert into Areas values(08,101003,35);
insert into Areas values(09,101004,50);
insert into Areas values(10,101004,50);
insert into Areas values(11,101007,45);
insert into Areas values(12,101002,10);
insert into Areas values(13,101008,30);
insert into Areas values(14,101003,60);
insert into Areas values(15,101001,50);
insert into Areas values(16,101006,55);
insert into Areas values(17,101003,20);
insert into Areas values(18,101007,25);
insert into Areas values(19,101009,45);
insert into Areas values(20,101002,40);
insert into Areas values(21,101006,60);
insert into Areas values(22,101001,45);
insert into Areas values(23,101007,70);
insert into Areas values(24,101008,30);
insert into Areas values(25,101002,35);
insert into Areas values(26,101004,40);
insert into Areas values(27,101005,45);
insert into Areas values(28,101005,45);
insert into Areas values(29,101004,50);
insert into Areas values(30,101007,55);

insert into Patio_Comida values(01,'pequenho');
insert into Patio_Comida values(02,'pequenho');
insert into Patio_Comida values(03,'grande');
insert into Patio_Comida values(04,'pequenho');
insert into Patio_Comida values(05,'grande');
insert into Patio_Comida values(06,'pequenho');
insert into Patio_Comida values(07,'mediano');




insert into Entretenimiento values(08);
insert into Entretenimiento values(09);
insert into Entretenimiento values(10);
insert into Entretenimiento values(11);
insert into Entretenimiento values(12);
insert into Entretenimiento values(13);
insert into Entretenimiento values(14);
insert into Entretenimiento values(15);




insert into Deportivo values(16,'futbol');
insert into Deportivo values(17,'voley');
insert into Deportivo values(18,'natacion');
insert into Deportivo values(19,'carreras');
insert into Deportivo values(20,'basquet');
insert into Deportivo values(21,'ajedres');


insert into Virtualt values(22,'rogue_like');
insert into Virtualt values(23,'shoter');
insert into Virtualt values(24,'esport');
insert into Virtualt values(25,'aventura');
insert into Virtualt values(26,'coop');



insert into Piscinas values(27,16000);
insert into Piscinas values(28,20000);
insert into Piscinas values(29,50000);
insert into Piscinas values(30,10000);









