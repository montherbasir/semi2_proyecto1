-- Llimpiar SQL Server
use seminariodos201807120;
IF OBJECT_ID(N'dbo.venta', N'U') IS NOT NULL  
   DROP TABLE [dbo].[venta];  
GO
IF OBJECT_ID(N'dbo.compra', N'U') IS NOT NULL  
   DROP TABLE [dbo].[compra];  
GO
truncate table cliente;
truncate table fecha;
truncate table producto;
truncate table proveedor;
truncate table region;
truncate table sucursal;
truncate table vendedor;

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Venta](
	[CodFecha] [int] NOT NULL FOREIGN KEY REFERENCES Fecha(CodFecha) ,
	[CodCliente] [nvarchar](5) NOT NULL FOREIGN KEY REFERENCES Cliente(CodCliente),
	[CodRegion] [int] NOT NULL FOREIGN KEY REFERENCES Region(CodRegion),
	[SodSuSursal] [nvarchar](5) NOT NULL FOREIGN KEY REFERENCES Sucursal(SodSuSursal),
	[CodVendedor] [nvarchar](5) NOT NULL FOREIGN KEY REFERENCES Vendedor(CodVendedor),
	[CodProducto] [nvarchar](50) NOT NULL FOREIGN KEY REFERENCES Producto(Codproducto),
	[Unidades] [int] NULL,
	[PrecioUnitario] [decimal](15, 2) NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[CodFecha] ASC,
	[CodCliente] ASC,
	[CodRegion] ASC,
	[SodSuSursal] ASC,
	[CodVendedor] ASC,
	[CodProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Compra](
	[CodFecha] [int] NOT NULL FOREIGN KEY REFERENCES Fecha(CodFecha) ,
	[CodProveedor] [nvarchar](5) NOT NULL FOREIGN KEY REFERENCES Proveedor(CodProveedor),
	[CodRegion] [int] NOT NULL FOREIGN KEY REFERENCES Region(CodRegion),
	[SodSuSursal] [nvarchar](5) NOT NULL FOREIGN KEY REFERENCES Sucursal(SodSuSursal),
	[CodProducto] [nvarchar](50) NOT NULL FOREIGN KEY REFERENCES Producto(Codproducto),
	[Unidades] [int] NULL,
	[PrecioUnitario] [decimal](15, 2) NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[CodFecha] ASC,
	[CodProveedor] ASC,
	[CodRegion] ASC,
	[SodSuSursal] ASC,
	[CodProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


use [database-1];
truncate table temporal;
truncate table temporal2;