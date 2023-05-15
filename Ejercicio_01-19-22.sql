create database DBEjercicio1;

use DBEjercicio1;

#Alan Rene Lopez Lucas 
#=========Clientes==========#
create table Clientes(
	DPI bigint(13) not null,
	nombreCliente varchar(45) not null,
	apellidoCliente  varchar(45) not null,
	telefonoCliente varchar(45) not null,
	primary key PK_DPI (DPI)
);

#=========Proveedores==========#
create table Proveedores(
	idProveedores integer not null,
	nombreProveedores varchar(45),
	direccion varchar(45),
	primary key PK_idProveedores (idProveedores)
    
);

#=========Productos==========#
create table Productos(
	idProductos integer not null,
	nombreProducto varchar(45),
	precio REAL(10,2) not null,
    DPI bigint(13) not null,
    idProveedores integer not null,
	primary key PK_idProductos (idProductos),
    
    constraint FK_Productos_Proveedores foreign key(idProveedores) references Proveedores(idProveedores),
    constraint FK_Productos_Clientes foreign key(DPI) references Clientes(DPI)
);

-- --------------Agregar-------------
insert into Clientes(DPI, nombreCliente, apellidoCliente,telefonoCliente)
	values('1579420230101', 'Juan', 'Cano', '52308599');
insert into Clientes(DPI, nombreCliente, apellidoCliente,telefonoCliente)
	values('1689450220223', 'Daniel', 'Perez', '45358515');
insert into Clientes(DPI, nombreCliente, apellidoCliente,telefonoCliente)
	values('1892123560101', 'Carlos', 'Verede', '35552525');
insert into Clientes(DPI, nombreCliente, apellidoCliente,telefonoCliente)
	values('1226444230101', 'Jarad', 'Higgins', '56220013');
insert into Clientes(DPI, nombreCliente, apellidoCliente,telefonoCliente)
	values('3544420230101', 'Sinatra', 'Cap', '43521545');
    
insert into Proveedores(idProveedores, nombreProveedores, direccion)
	values('1', 'Antonio', '9 Ave. 25-11 zona 24, Guatemala');
insert into Proveedores(idProveedores, nombreProveedores, direccion)
	values('2', 'Samuel', '3 Ave. 11-10 zona 21, Guatemala');
insert into Proveedores(idProveedores, nombreProveedores, direccion)
	values('3', 'Jorge', '11 Ave. 13-15 zona 15, Guatemala');
insert into Proveedores(idProveedores, nombreProveedores, direccion)
	values('4', 'Aaron', '6 Ave. 6-11 zona 14, Guatemala');
insert into Proveedores(idProveedores, nombreProveedores, direccion)
	values('5', 'Elias', '7 Ave. 8-9 zona 13, Guatemala');
    
insert into Productos(idProductos, nombreProducto, precio, DPI, idProveedores)
	values('1', 'Pan', '34.25', '1579420230101','1');
insert into Productos(idProductos, nombreProducto, precio, DPI, idProveedores)
	values('2', 'Arroz', '3.50', '1689450220223','2');
insert into Productos(idProductos, nombreProducto, precio, DPI, idProveedores)
	values('3', 'Dulce de Fresa', '1', '1892123560101','3');
insert into Productos(idProductos, nombreProducto, precio, DPI, idProveedores)
	values('4', 'Chocolate', '5.50', '1226444230101','4');
insert into Productos(idProductos, nombreProducto, precio, DPI, idProveedores)
	values('5', 'Cafe', '2.50', '3544420230101','5');

-- -----------Listar-----------

#Cliente#
select 
		C.DPI,
        C.nombreCliente,
        C.apellidoCliente,
        C.telefonoCliente
        from Clientes C;
#Proveedores#
select 
		P.idProveedores,
        P.nombreProveedores,
        P.direccion
        from Proveedores P;

#Productos#
select 
		Prod.idProductos,
        Prod.nombreProducto,
        Prod.precio,
        Prod.DPI,
        Prod.idProveedores
        from Productos Prod;
        
-- ----------- BUscar ----------------

#Cliente#
select 
		C.DPI,
        C.nombreCliente,
        C.apellidoCliente,
        C.telefonoCliente
        from Clientes C where DPI = '1689450220223';
 
#Proveedores#
select 
		P.idProveedores,
        P.nombreProveedores,
        P.direccion
        from Proveedores P WHERE idProveedores = '3';

#Productos#
select 
	Prod.idProductos,
        Prod.nombreProducto,
        Prod.precio,
        Prod.DPI,
        Prod.idProveedores
        from Productos Prod where idProductos = '2';

-- ----------Editar-----------

alter table Proveedores add telefonoProveedor varchar(8);

update Proveedores
	set telefonoProveedor = '36854466'
      where idProveedores= 1;
update Proveedores
	set telefonoProveedor = '23554788'
      where idProveedores= 2;
update Proveedores
	set telefonoProveedor = '65987412'
      where idProveedores= 3;
update Proveedores
	set telefonoProveedor = '25446618'
      where idProveedores= 4;
update Proveedores
	set telefonoProveedor = '36442135'
      where idProveedores= 5;
      
select * from Proveedores;
      
-- --------------Delete--------------

delete from Clientes where DPI = 1;
delete from Productos where idProductos = 1;
delete from Proveedores where idProveedores = 1;





	


