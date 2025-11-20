📘 README — Base de Datos “Maribel Revistería”
📌 Descripción General

La base de datos Maribel Revistería fue diseñada para gestionar las operaciones de una revistería que vende productos al por mayor y menor, con sucursales, control de stock, precios, historial de cambios, ventas, compras y seguimiento de actividad del personal.

El sistema administra:

Publicaciones (revistas, libros, diarios, etc.)

Stock por sucursal

Precios para distintos tipos de clientes

Historial de precios

Movimientos (ventas, compras, devoluciones, ajustes)

Detalle de cada movimiento

Empleados y sus usuarios del sistema

Actividades realizadas por los empleados

Proveedores

Clientes mayoristas y minoristas

🏛️ Estructura General

La base contiene 21 tablas, clasificadas en:

🟦 1. Tablas Maestras (Padres)

Estas definen información fija o estructural:

Tabla	Función
sucursal	Sucursales de la empresa
rol	Roles de usuario en el sistema
tipo_cliente	Define Mayorista / Minorista
tipomovimiento	Tipos de movimientos (venta, compra, etc.)
tipopublicacion	Categoría base de la publicación
categoria_publicacion	Categorías detalladas
editorial	Editoriales de publicaciones
edicion	Ediciones concretas
codigo_postal	Localidades y CP

🟩 2. Tablas Operativas (Hijas principales)
Tabla	Depende de	Función
proveedor	codigo_postal	Lista de proveedores
cliente	tipo_cliente + codigo_postal	Clientes mayoristas/minoristas
empleado	sucursal + rol	Personal de cada sucursal
usuario	empleado	Acceso al sistema

🟧 3. Gestión de Publicaciones y Precios
Tabla	Función
publicacion	Información de revistas/libros
precio_publicacion	Precios por tipo de cliente
precio_historial	Cambios de precio hechos por empleados
ubicacion	Ubicaciones físicas
stock	Stock por sucursal y ubicación

🟥 4. Actividad y Movimientos
Tabla	Función
movimiento	Registro general de ventas, compras, ajustes
detallemovimiento	Detalle de cada movimiento
actividad_empleado	Registro de actividades internas (cambios de precio, ajustes, etc.)

🔥 Triggers Importantes
Trigger: trg_precio_cambiado

Cada vez que se cambia un precio:

Registra un historial

Inserta una actividad en actividad_empleado

Identifica automáticamente la sucursal del empleado

🧾 Objetivo del Proyecto

Esta base de datos busca cubrir de manera completa la administración de una revistería real:

Control de stock por sucursal

Gestión de precios, historial y cambios

Compras y ventas detalladas

Manejo de proveedores y clientes

Actividad de empleados

Ubicación física de productos

Está diseñada para integrarse con un sistema web (PHP, Laravel, JS, etc.).

📘 Importar la Base de Datos
1️ Descargar el archivo

Descargá el archivo:

maribel_revisteria.sql

Y guardalo en tu computadora (por ejemplo, en el Escritorio).

2 Crear la base de datos

En phpMyAdmin, entrá a "Bases de datos"

Escribí el nombre:

maribel_revisteria


Clic en Crear

3 Importar el archivo

Entrá a la base maribel_revisteria

Abrí la pestaña Importar

Tocá Seleccionar archivo

Elegí maribel_revisteria.sql

Clic en Continuar

4 Listo

Si no aparece ningún error, la base ya está cargada y lista para usar.
