create database Mercado;
USE Mercado
GO
/** Object:  Table [dbo].[Abonos]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonos](
	[idAbono] [varchar](50) NOT NULL,
	[idCliente] [varchar](13) NOT NULL,
	[idCuenta] [varchar](50) NOT NULL,
	[cantidad] [money] NOT NULL,
	[fechaAbono] [datetime] NOT NULL,
 CONSTRAINT [PK_Abonos] PRIMARY KEY CLUSTERED 
(
	[idAbono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[idCaja] [varchar](50) NOT NULL,
	[cantidadInicial] [money] NOT NULL,
	[inicio] [datetime] NOT NULL,
	[final] [datetime] NULL,
	[cantidadActual] [money] NOT NULL,
	[cantidadCierre] [money] NULL,
 CONSTRAINT [PK_Caja] PRIMARY KEY CLUSTERED 
(
	[idCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Clientes]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [varchar](13) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[cuenta] [money] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Creditos]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Creditos](
	[idCredito] [varchar](50) NOT NULL,
	[idCliente] [varchar](13) NOT NULL,
	[compra] [varchar](max) NOT NULL,
	[total] [money] NOT NULL,
	[fechaPago] [date] NULL,
	[pagado] [bit] NOT NULL,
 CONSTRAINT [PK_Creditos] PRIMARY KEY CLUSTERED 
(
	[idCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/** Object:  Table [dbo].[Gastos]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gastos](
	[idGasto] [varchar](50) NOT NULL,
	[idCaja] [varchar](50) NOT NULL,
	[idPedido] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[tipo] [varchar](50) NOT NULL,
	[cantidad] [money] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Gastos] PRIMARY KEY CLUSTERED 
(
	[idGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Ingresos]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresos](
	[idIngreso] [varchar](50) NOT NULL,
	[idCaja] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[cantidad] [money] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED 
(
	[idIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Pedidos]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[idPedido] [varchar](50) NOT NULL,
	[idVendedor] [varchar](13) NOT NULL,
	[compra] [varchar](max) NOT NULL,
	[montoTotal] [money] NOT NULL,
	[fechaPago] [date] NOT NULL,
	[montoPagado] [bit] NOT NULL,
	[entregado] [bit] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/** Object:  Table [dbo].[Productos]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[codigo] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precioVenta] [money] NOT NULL,
	[disponibles] [int] NOT NULL,
	[ventaTotal] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Proveedores]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idVendedor] [varchar](13) NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[precio] [money] NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC,
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Vendedor]    Script Date: 5/16/2023 7:03:18 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[idVendedor] [varchar](13) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[empresa] [varchar](50) NULL,
	[cuenta] [money] NOT NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Abonos] ([idAbono], [idCliente], [idCuenta], [cantidad], [fechaAbono]) VALUES (N'hgfyhg', N'1806199400345', N'wqjndlka', 1500.0000, CAST(N'2023-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Caja] ([idCaja], [cantidadInicial], [inicio], [final], [cantidadActual], [cantidadCierre]) VALUES (N'1651651', 1500.0000, CAST(N'2023-05-14T11:59:19.000' AS DateTime), CAST(N'2023-05-14T18:59:19.000' AS DateTime), 3600.0000, 3600.0000)
INSERT [dbo].[Caja] ([idCaja], [cantidadInicial], [inicio], [final], [cantidadActual], [cantidadCierre]) VALUES (N'651265156', 3600.0000, CAST(N'2023-05-15T11:59:19.000' AS DateTime), CAST(N'2323-05-15T18:00:00.000' AS DateTime), 1450.0000, 1450.0000)
GO
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido],[telefono], [correo], [cuenta]) VALUES (N'0502200202079', N'Pamela', N'Suazo', N'96423295', N'p.suazo@gmail.com', 0.0000)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido],[telefono], [correo], [cuenta]) VALUES (N'16516565165', N'Nicole', N'Joya', N'96423295', N'n.suazo@gmail.com', 0.0000)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido],[telefono], [correo], [cuenta]) VALUES (N'1806199400345', N'Ernesto', N'Medina',N'96423295', N'ernesto@gmail.com', 2500.0000)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [telefono], [correo],[cuenta]) VALUES (N'184979914848', N'Joshua', N'Perez', N'96423295', N'joshua@gmail.com', 0.0000)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido],[telefono], [correo], [cuenta]) VALUES (N'484654584688', N'Javier', N'Joya', N'96423295', N'javier@gmail.com', 0.0000)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [telefono], [correo],[cuenta]) VALUES (N'5165165165', N'Elmer', N'Martinez', N'96423295', N'elmer@gmail.com', 0.0000)
GO
INSERT [dbo].[Creditos] ([idCredito], [idCliente], [compra], [total], [fechaPago], [pagado]) VALUES (N'asdasdasd', N'1806199400345', N'''0'', ''0502200202079'', ''2023-01-31 09:17:09.373219'', ''[{\"descripcionProducto\":\"queso crema lbs\",\"precioProducto\":42.0,\"cantidad\":2,\"total\":84.0,\"codigoProducto\":\"queso c\"},{\"descripcionProducto\":\"cafe unidad\",\"precioProducto\":3.0,\"cantidad\":1,\"total\":3.0,\"codigoProducto\":\" 7421830700541\"}]'', ''87.00'', ''1''
', 2500.0000, CAST(N'0023-05-15' AS Date), 0)
INSERT [dbo].[Creditos] ([idCredito], [idCliente], [compra], [total], [fechaPago], [pagado]) VALUES (N'wqjndlka', N'0502200202079', N'''0'', ''0502200202079'', ''2023-01-31 09:17:09.373219'', ''[{\"descripcionProducto\":\"queso crema lbs\",\"precioProducto\":42.0,\"cantidad\":2,\"total\":84.0,\"codigoProducto\":\"queso c\"},{\"descripcionProducto\":\"cafe unidad\",\"precioProducto\":3.0,\"cantidad\":1,\"total\":3.0,\"codigoProducto\":\" 7421830700541\"}]'', ''87.00'', ''1''
', 1500.0000, CAST(N'2023-05-16' AS Date), 0)
GO
INSERT [dbo].[Gastos] ([idGasto], [idCaja], [idPedido], [descripcion], [tipo], [cantidad], [fecha]) VALUES (N'1651165', N'1651651', N'65465651', N'Pago de energia', N'servicio', 460.0000, CAST(N'2023-05-16T11:59:19.000' AS DateTime))
GO
INSERT [dbo].[Ingresos] ([idIngreso], [idCaja], [descripcion], [cantidad], [fecha]) VALUES (N'12312344', N'1651651', N'Bono MPymes', 3200.0000, CAST(N'2023-05-12T11:59:19.000' AS DateTime))
GO
INSERT [dbo].[Pedidos] ([idPedido], [idVendedor], [compra], montoTotal, [fechaPago], [montoPagado], [entregado]) VALUES (N'65465651', N'18046456465', N'''1'', ''0502200202079'', ''2023-01-31 09:19:00.396852'', ''[{\"descripcionProducto\":\"harina fardo preparada\",\"precioProducto\":260.0,\"cantidad\":7,\"total\":1820.0,\"codigoProducto\":\"a harina p\"}]'', ''1820.00'', ''1''
', 460.0000, CAST(N'2023-05-16' AS Date), 1, 1)
GO
INSERT [dbo].[Productos] ([codigo], [nombre], [precioVenta], [disponibles], [ventaTotal]) VALUES (N'123456', N'Pasta Dental', 17.0000, 6, 3)
INSERT [dbo].[Productos] ([codigo], [nombre], [precioVenta], [disponibles], [ventaTotal]) VALUES (N'12364', N'Shampoo', 10.0000, 4, 12)
GO
INSERT [dbo].[Proveedores] ([idVendedor], [codigo], [precio]) VALUES (N'18046456465', N'123456', 14.0000)
INSERT [dbo].[Proveedores] ([idVendedor], [codigo], [precio]) VALUES (N'18046456465', N'12364', 8.0000)
GO
INSERT [dbo].[Vendedor] ([idVendedor], [nombre], [apellido], [empresa], [cuenta]) VALUES (N'18046456465', N'Jose', N'Velasquez', N'Individual', 1300.0000)
INSERT [dbo].[Vendedor] ([idVendedor], [nombre], [apellido], [empresa], [cuenta]) VALUES (N'65416565165', N'Julissa', N'Soto', N'DINANT', 0.0000)
GO
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [DF_Clientes_cuenta]  DEFAULT ((0)) FOR [cuenta]
GO
ALTER TABLE [dbo].[Creditos] ADD  CONSTRAINT [DF_Creditos_pagado]  DEFAULT ((0)) FOR [pagado]
GO
ALTER TABLE [dbo].[Gastos] ADD  CONSTRAINT [DF_Gastos_idPedido]  DEFAULT (' ') FOR [idPedido]
GO
ALTER TABLE [dbo].[Vendedor] ADD  CONSTRAINT [DF_Vendedor_cuenta]  DEFAULT ((0)) FOR [cuenta]
GO
ALTER TABLE [dbo].[Abonos]  WITH CHECK ADD  CONSTRAINT [FK_Abonos_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Abonos] CHECK CONSTRAINT [FK_Abonos_Clientes]
GO
ALTER TABLE [dbo].[Abonos]  WITH CHECK ADD  CONSTRAINT [FK_Abonos_Creditos] FOREIGN KEY([idCuenta])
REFERENCES [dbo].[Creditos] ([idCredito])
GO
ALTER TABLE [dbo].[Abonos] CHECK CONSTRAINT [FK_Abonos_Creditos]
GO
ALTER TABLE [dbo].[Creditos]  WITH CHECK ADD  CONSTRAINT [FK_Creditos_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Creditos] CHECK CONSTRAINT [FK_Creditos_Clientes]
GO
ALTER TABLE [dbo].[Gastos]  WITH CHECK ADD  CONSTRAINT [FK_Gastos_Caja] FOREIGN KEY([idCaja])
REFERENCES [dbo].[Caja] ([idCaja])
GO
ALTER TABLE [dbo].[Gastos] CHECK CONSTRAINT [FK_Gastos_Caja]
GO
ALTER TABLE [dbo].[Gastos]  WITH CHECK ADD  CONSTRAINT [FK_Gastos_Pedidos] FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedidos] ([idPedido])
GO
ALTER TABLE [dbo].[Gastos] CHECK CONSTRAINT [FK_Gastos_Pedidos]
GO
ALTER TABLE [dbo].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Caja] FOREIGN KEY([idCaja])
REFERENCES [dbo].[Caja] ([idCaja])
GO
ALTER TABLE [dbo].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Caja]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Vendedor] FOREIGN KEY([idVendedor])
REFERENCES [dbo].[Vendedor] ([idVendedor])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Vendedor]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Productos] FOREIGN KEY([codigo])
REFERENCES [dbo].[Productos] ([codigo])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Productos]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Vendedor] FOREIGN KEY([idVendedor])
REFERENCES [dbo].[Vendedor] ([idVendedor])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Vendedor]
GO