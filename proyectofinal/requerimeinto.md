    requerimientos 
    MINI-SUPER PROYECTO
Un minisúper busca implementar un sistema de información que le permita gestionar de forma eficiente todos los procesos relacionados con su operación diaria, como el control de productos, inventario, empleados, turnos, ventas y proveedores. Actualmente, la tienda realiza estos registros de forma manual, lo cual ha ocasionado problemas como errores en el inventario, desorganización en los horarios del personal y dificultades para llevar el control de las ventas.

Cada empleado se registra con ID, nombre, apellido paterno, apellido materno, CURP, teléfono, dirección, puesto y fecha de contratación. Un empleado puede estar asignado a uno o varios turnos laborales, y a su vez, puede realizar múltiples ventas.

Los turnos laborales se identifican con un ID, hora de entrada, hora de salida y los días que se trabajan. Un turno puede ser asignado a varios empleados.

Los productos que se venden en la tienda se registran con un ID único, nombre, precio de compra, precio de venta, número de unidades disponibles, categoría y proveedor. Cada producto pertenece a una única categoría y está asociado a un solo proveedor. Además, cada producto tiene un registro individual en el inventario y puede estar incluido en múltiples ventas.

Las categorías agrupan productos similares y están identificadas por un ID, nombre y una descripción que facilita su clasificación. Una categoría puede contener varios productos.

Los proveedores se registran con un ID, nombre de empresa, nombre del contacto, dirección, teléfono y correo electrónico. Cada proveedor puede suministrar varios productos al minisúper.

Las ventas representan las transacciones realizadas y se registran con un Numero, fecha, hora, total, método de pago y el empleado que la realizó, identificado por su ID. Cada venta está asociada a un único empleado y puede incluir varios productos en la misma transacción.

El inventario permite llevar un control preciso del stock disponible para cada producto, con un identificador propio, la cantidad en existencia, la fecha de la última actualización y el ID del producto correspondiente. Cada producto cuenta con un único registro en el inventario para facilitar el seguimiento y control.

    