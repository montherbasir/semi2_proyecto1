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



use seminariodos201807120;
CREATE TABLE  "Cliente" (
"Id" INT IDENTITY(1,1) PRIMARY KEY,
  "CodCliente" nvarchar(5),
  "NombreCliente" nvarchar(100) DEFAULT NULL,
  "TipoCliente" nvarchar(15) DEFAULT NULL,
  "DireccionCliente" nvarchar(200) DEFAULT NULL,
  "NumeroCliente" nvarchar(8) DEFAULT NULL,
);

CREATE TABLE  "Vendedor" (
"Id" INT IDENTITY(1,1) PRIMARY KEY,
  "CodVendedor" nvarchar(5) ,
  "NombreVendedor" nvarchar(100) DEFAULT NULL,
  "Vacacionista" tinyint DEFAULT NULL,
);

CREATE TABLE  "Producto" (
"Id" INT IDENTITY(1,1) PRIMARY KEY,
  "CodProducto" nvarchar(50),
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
"Id" INT IDENTITY(1,1) PRIMARY KEY,
  "SodSuSursal" nvarchar(5),
  "NombreSucursal" nvarchar(50) DEFAULT NULL,
  "DireccionSucursal" nvarchar(200) DEFAULT NULL,
);

CREATE TABLE "Proveedor" (
"Id" INT IDENTITY(1,1) PRIMARY KEY,
  "CodProveedor" nvarchar(5),
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
