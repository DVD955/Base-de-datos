###  Diccionario de Datos – Empresa Examen 2
---
 Tabla: SUPPLIERS

| Campo       | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción             |
| ----------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ----------------------- |
| SupplierId  | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | ID del proveedor        |
| CompanyName | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre de la empresa    |
| Address     | NVARCHAR     | 40     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Dirección del proveedor |
| Fax         | NVARCHAR     | 30     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Número de fax           |
| HomePage    | NVARCHAR     | 30     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Página web              |
| Region      | NVARCHAR     | 30     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Región                  |
| City        | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Ciudad del proveedor    |

---

Tabla: CONTACTSUPPLIERS

| Campo      | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a          | Descripción                  |
| ---------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | --------------------- | ---------------------------- |
| ContactId  | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -                     | Identificador del contacto   |
| SupplierId | INT          | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | SUPPLIERS(SupplierId) | ID del proveedor asociado    |
| FullName   | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -                     | Nombre completo del contacto |

---

 Tabla: PRODUCTS

| Campo           | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                   |
| --------------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ---------------------- | ----------------------------- |
| ProductId       | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -                      | ID del producto               |
| ProductName     | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -                      | Nombre del producto           |
| QuantityPerUnit | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -                      | Cantidad por unidad           |
| UnitPrice       | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -                      | Precio por unidad             |
| UnitsInStock    | INT          | -      | ❌  | ❌  | ❌    | ❌     | >= 0                  | -                      | Unidades disponibles          |
| SupplierId      | INT          | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | SUPPLIERS(SupplierId)  | ID del proveedor del producto |
| CategoryId      | INT          | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | CATEGORIES(CategoryId) | ID de la categoría            |

---

 Tabla: CATEGORIES

| Campo        | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                 |
| ------------ | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | --------------------------- |
| CategoryId   | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | ID de la categoría          |
| CategoryName | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre de la categoría      |
| Description  | NVARCHAR     | 60     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Descripción de la categoría |

---

  Tabla: EMPLOYEES

| Campo      | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                 |
| ---------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | --------------------------- |
| EmployeeId | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | ID del empleado             |
| Lastname   | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Apellido del empleado       |
| Firstname  | NVARCHAR     | 40     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre del empleado         |
| City       | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Ciudad                      |
| Birthdate  | DATE         | -      | ❌  | ❌  | ❌    | ❌     | -                     | -            | Fecha de nacimiento         |
| Report\_to | FK           | -      | ❌  | ✅  | ✅    | ❌     | -                     | EMPLOYEES    | Referencia a jefe inmediato |

---

  Tabla: CUSTOMERS

| Campo       | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                  |
| ----------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ---------------------------- |
| CustomerId  | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | ID del cliente               |
| CompanyName | NVARCHAR     | 40     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre de la empresa cliente |
| City        | NVARCHAR     | 40     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Ciudad del cliente           |
| Region      | NVARCHAR     | 40     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Región del cliente           |
| Phone       | NVARCHAR     | 20     | ❌  | ❌  | ❌    | ❌     | Formato de teléfono   | -            | Teléfono del cliente         |

---

  Tabla: CONTACTCUSTOMERS

| Campo      | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a          | Descripción                  |
| ---------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | --------------------- | ---------------------------- |
| ContactId  | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -                     | ID del contacto              |
| CustomerId | INT          | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | CUSTOMERS(CustomerId) | ID del cliente asociado      |
| Fullname   | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -                     | Nombre completo del contacto |

---

  Tabla: ORDERS

| Campo        | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
| ------------ | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ------------------------------ |
| OrderId      | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | ID del pedido                  |
| Code         | NVARCHAR     | 40     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Código de orden                |
| ShipRegion   | NVARCHAR     | 40     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Región de envío                |
| Requireddate | DATE         | -      | ❌  | ❌  | ❌    | ❌     | -                     | -            | Fecha requerida                |
| Orderdate    | DATE         | -      | ❌  | ❌  | ❌    | ❌     | -                     | -            | Fecha en que se hizo la orden  |
| CustomerId   | INT          | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | CUSTOMERS    | Cliente que realizó la orden   |
| EmployeeId   | FK           | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | EMPLOYEES    | Empleado encargado de la orden |

---

  Tabla: DETAILS

| Campo     | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción         |
| --------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------------- | ------------------- |
| ProductId | INT          | -      | ✅  | ✅  | ❌    | ❌     | > 0                   | PRODUCTS(ProductId) | ID del producto     |
| OrderId   | INT          | -      | ✅  | ✅  | ❌    | ❌     | > 0                   | ORDERS(OrderId)     | ID de la orden      |
| Quantity  | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | > 0                   | -                   | Cantidad solicitada |
| UnitPrice | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | > 0                   | -                   | Precio unitario     |
| Discount  | NVARCHAR     | 40     | ❌  | ❌  | ✅    | ❌     | >= 0                  | -                   | Descuento aplicado  |

---

  Tabla: SHIPPERS

| Campo       | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción           |
| ----------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | --------------------- |
| ShipperId   | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | ID del transportista  |
| CompanyName | NVARCHAR     | 40     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre de la compañía |

---

 Tabla: CONTACTSHIPPERS

| Campo     | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción          |
| --------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------------- | -------------------- |
| ContactId | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -                   | ID del contacto      |
| ShipperId | INT          | -      | ❌  | ✅  | ❌    | ❌     | > 0                   | SHIPPERS(ShipperId) | ID del transportista |
| FatName   | NVARCHAR     | 30     | ❌  | ❌  | ❌    | ❌     | -                     | -                   | Nombre del contacto  |

---


