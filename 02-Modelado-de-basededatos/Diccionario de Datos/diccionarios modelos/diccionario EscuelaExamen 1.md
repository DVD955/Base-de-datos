
##  Diccionario de Datos – Escuela Examen 1

| Campo | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                  |
| ----- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ---------------------------- |
| SSN   | INT          | -      | ✅  | ❌  | ❌    | ✅     | > 0                   | -            | Identificador del instructor |
| LName | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | Solo letras           | -            | Apellido del instructor      |
| FName | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | Solo letras           | -            | Nombre del instructor        |

---

  Tabla: CLASS

| Campo     | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
| --------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ------------------------------ |
| CourseNum | INT          | -      | ✅  | ❌  | ❌    | ❌     | > 0                   | -            | Número identificador del curso |
| Year      | INT          | -      | ✅  | ❌  | ❌    | ❌     | >= 2000               | -            | Año en que se imparte          |
| Term      | INT          | -      | ✅  | ❌  | ❌    | ❌     | Entre 1 y 3           | -            | Trimestre o semestre del curso |
| Section   | INT          | -      | ✅  | ❌  | ❌    | ❌     | > 0                   | -            | Sección de la clase            |

---

  Tabla: TEACHES

| Campo     | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a     | Descripción                            |
| --------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ---------------- | -------------------------------------- |
| SSN       | INT          | -      | ✅  | ✅  | ❌    | ❌     | > 0                   | INSTRUCTOR(SSN)  | Instructor que imparte la clase        |
| CourseNum | INT          | -      | ✅  | ✅  | ❌    | ❌     | > 0                   | CLASS(CourseNum) | Curso que se imparte                   |
| Year      | INT          | -      | ✅  | ✅  | ❌    | ❌     | >= 2000               | CLASS(Year)      | Año en que se imparte                  |
| Term      | INT          | -      | ✅  | ✅  | ❌    | ❌     | Entre 1 y 3           | CLASS(Term)      | Trimestre o semestre del curso         |
| Section   | INT          | -      | ✅  | ✅  | ❌    | ❌     | > 0                   | CLASS(Section)   | Sección específica del curso impartido |

---
