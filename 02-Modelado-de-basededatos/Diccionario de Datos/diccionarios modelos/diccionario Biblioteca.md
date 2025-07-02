## 📘 Diccionario de Datos – Biblioteca

 Tabla: Lectores

| Campo              | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                           | Referencia a                    | Descripción                          |
|--------------------|--------------|--------|-----|-----|------|--------|-------------------------------------------------|---------------------------------|--------------------------------------|
| Num_Lector         | INT          | -      | ✅   | ❌   | ❌   | ✅     | > 0                                             | -                               | Identificador del lector             |
| Nombre             | NVARCHAR      | 100    | ❌   | ❌   | ❌   | ❌     | Solo letras A-Z, longitud >= 3                  | -                               | Nombre del lector                    |
| ApellidoPaterno    | NVARCHAR      | 50     | ❌   | ❌   | ❌   | ❌     | Solo letras A-Z, longitud >= 3                  | -                               | Apellido paterno del lector          |
| ApellidoMaterno    | NVARCHAR      | 50     | ❌   | ❌   | ✅   | ❌     | Solo letras A-Z, longitud >= 3                  | -                               | Apellido materno del lector (opcional)|
| Edad               | INT          | -      | ❌   | ❌   | ❌   | ❌     | CHECK (Edad >= 18 AND Edad <= 120)              | -                               | Edad del lector                      |
| Correo             | NVARCHAR      | 150    | ❌   | ❌   | ❌   | ✅     | Formato de correo válido (ej. ejemplo@dominio.com) | -                           | Correo electrónico del lector        |
| Num_Membresia      | INT          | -      | ❌   | ✅   | ❌   | ❌     | > 0                                             | Membresias(Num_Membresia)       | Número de membresía del lector       |


Tabla  Libros

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                          | Referencia a        | Descripción                          |
|----------------|--------------|--------|-----|-----|------|--------|-----------------------------------------------|---------------------|--------------------------------------|
| Num_Libro      | INT          | -      | ✅   | ❌   | ❌   | ✅     | > 0                                           | -                   | Identificador del libro              |
| NumISBN        | NVARCHAR     | 100    | ❌   | ❌   | ❌   | ✅     | Solo letras, números y guiones, longitud >= 3 | -                   | Código ISBN del libro                |
| Titulo         | NVARCHAR      | 150    | ❌   | ❌   | ❌   | ✅     | Longitud >= 3                                 | -                   | Título del libro                     |
| Autor          | NVARCHAR      | 100    | ❌   | ❌   | ❌   | ❌     | Solo letras A-Z                               | -                   | Nombre del autor del libro           |
| Cantidad       | INT          | -      | ❌   | ❌   | ❌   | ❌     | >= 0                                          | -                   | Existencia disponible de ese libro   |



 Tabla Presta

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                | Referencia a          | Descripción                          |
|------------------|--------------|--------|-----|-----|------|--------|--------------------------------------|-----------------------|--------------------------------------|
| Num_Lector       | INT          | -      | ✅   | ✅   | ❌   | ❌     | > 0                                  | Lectores(Num_Lector)  | Identificador del lector             |
| Num_Libro        | INT          | -      | ✅   | ✅   | ❌   | ❌     | > 0                                  | Libros(Num_Libro)     | Identificador del libro              |
| Fecha_Prestamo   | DATE         | -      | ❌   | ❌   | ❌   | ❌     | >= GETDATE() (si aplica restricción) | -                     | Fecha en que se presta el libro      |
| Fecha_Devolucion | DATE         | -      | ❌   | ❌   | ✅   | ❌     | >= Fecha_Prestamo                    | -                     | Fecha en que se devuelve el libro    |

