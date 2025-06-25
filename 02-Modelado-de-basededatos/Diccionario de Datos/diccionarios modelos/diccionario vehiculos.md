# 📘 Diccionario de Datos – vehiculos

**tabla cliente **

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                                        | -                                | cliente              |
| `Nombre`        | VARCHAR      | 100    | ❌  | ❌  | ❌   | ❌     | Solo letras A-Z, longitud >= 3             | -                                | Nombre completo del cliente             |
| `Apellido1`          | NVARCHAR          | 20     | ❌  | ❌  | ❌   | ❌     | CHECK (Edad >= 18 AND Edad <= 120)         | -                                | apellido del  del cliente                        |
| `Apellido2`        | VARCHAR      | 150    | ❌  | ❌  | ❌   | ✅     | Apellido 2 cliente                   | -                                | Correo electrónico                      |
| `edad`      | INT          | -      | ❌  | ✅  | ❌   | ❌     | > 0                                        | Ciudades(IdCiudad)               | Ciudad a la que pertenece el cliente    |
| `Correo`      | NVARCHAR(20)         | -      | ❌  | ✅  | ❌   | ❌     | > 0                                        | Ciudades(IdCiudad)               | Ciudad a la que pertenece el cliente    |

