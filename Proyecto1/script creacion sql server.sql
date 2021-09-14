-- Volcando estructura para tabla database-1.temporal
CREATE TABLE  "temporal" (
  "Fecha" varchar(10) DEFAULT NULL,
  "CodCliente" nvarchar(5) DEFAULT NULL,
  "NombreCliente" nvarchar(100) DEFAULT NULL,
  "TipoCliente" nvarchar(15) DEFAULT NULL,
  "DireccionCliente" nvarchar(200) DEFAULT NULL,
  "NumeroCliente" nvarchar(8) DEFAULT NULL,
  "CodVendedor" nvarchar(5) DEFAULT NULL,
  "NombreVendedor" nvarchar(100) DEFAULT NULL,
  "Vacacionista" tinyint DEFAULT NULL,
  "CodProducto" nvarchar(50) DEFAULT NULL,
  "NombreProducto" nvarchar(200) DEFAULT NULL,
  "MarcaProducto" nvarchar(50) DEFAULT NULL,
  "Categoria" nvarchar(50) DEFAULT NULL,
  "SodSuSursal" nvarchar(5) DEFAULT NULL,
  "NombreSucursal" nvarchar(50) DEFAULT NULL,
  "DireccionSucursal" nvarchar(200) DEFAULT NULL,
  "Region" nvarchar(50) DEFAULT NULL,
  "Departamento" nvarchar(50) DEFAULT NULL,
  "Unidades" int DEFAULT NULL,
  "PrecioUnitario" decimal(15,2) DEFAULT NULL
)


select * from temporal;


CREATE TABLE "temporal2" (
  "Fecha" varchar(10) DEFAULT NULL,
  "CodProveedor" nvarchar(5)  DEFAULT NULL,
  "NombreProveedor" nvarchar(100)  DEFAULT NULL,
  "DireccionProveedor" nvarchar(200)  DEFAULT NULL,
  "NumeroProveedor" nvarchar(8)  DEFAULT NULL,
  "WebProveedor" tinyint DEFAULT NULL,
  "CodProducto" nvarchar(50)  DEFAULT NULL,
  "CodVendedor" nvarchar(5)  DEFAULT NULL,
  "NombreProducto" nvarchar(200)  DEFAULT NULL,
  "MarcaProducto" nvarchar(50)  DEFAULT NULL,
  "Categoria" nvarchar(50)  DEFAULT NULL,
  "SodSuSursal" nvarchar(5)  DEFAULT NULL,
  "NombreSucursal" nvarchar(50)  DEFAULT NULL,
  "DireccionSucursal" nvarchar(200)  DEFAULT NULL,
  "Region" nvarchar(50)  DEFAULT NULL,
  "Departamento" nvarchar(50)  DEFAULT NULL,
  "Unidades" int DEFAULT NULL,
  "CostoUnitario" decimal(15,2) DEFAULT NULL
);

select * from temporal2;


CREATE TABLE  "Cliente" (
  "CodCliente" nvarchar(5) PRIMARY KEY ,
  "NombreCliente" nvarchar(100) DEFAULT NULL,
  "TipoCliente" nvarchar(15) DEFAULT NULL,
  "DireccionCliente" nvarchar(200) DEFAULT NULL,
  "NumeroCliente" nvarchar(8) DEFAULT NULL,
);

CREATE TABLE  "Vendedor" (
  "CodVendedor" nvarchar(5) PRIMARY KEY,
  "NombreVendedor" nvarchar(100) DEFAULT NULL,
  "Vacacionista" tinyint DEFAULT NULL,
);

CREATE TABLE  "Producto" (
  "CodProducto" nvarchar(50) PRIMARY KEY,
  "NombreProducto" nvarchar(200) DEFAULT NULL,
  "MarcaProducto" nvarchar(50) DEFAULT NULL,
  "Categoria" nvarchar(50) DEFAULT NULL,
);

CREATE TABLE  "Region" (
  "CodRegion" INT IDENTITY(1,1) PRIMARY KEY,
  "Region" nvarchar(50) DEFAULT NULL,
  "Departamento" nvarchar(50) DEFAULT NULL,
);

CREATE TABLE  "Sucursal" (
  "SodSuSursal" nvarchar(5) PRIMARY KEY,
  "NombreSucursal" nvarchar(50) DEFAULT NULL,
  "DireccionSucursal" nvarchar(200) DEFAULT NULL,
);

CREATE TABLE "Proveedor" (
  "CodProveedor" nvarchar(5)  PRIMARY KEY,
  "NombreProveedor" nvarchar(100)  DEFAULT NULL,
  "DireccionProveedor" nvarchar(200)  DEFAULT NULL,
  "NumeroProveedor" nvarchar(8)  DEFAULT NULL,
  "WebProveedor" tinyint DEFAULT NULL
);

CREATE TABLE "Fecha"(
  "CodFecha" INT IDENTITY(1,1) PRIMARY KEY,
  "FechaText" varchar(8),
  "FechaDate" DATE
);



use seminariodos201807120;
truncate table cliente;
truncate table fecha;
truncate table producto;
truncate table proveedor;
truncate table region;
truncate table sucursal;
truncate table vendedor;

use [database-1];
truncate table temporal;
truncate table temporal2;