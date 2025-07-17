###  Diccionario de Datos – Airport Examen 3

Tabla: Airport

| Campo        | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
| ------------ | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ------------------------------ |
| Aiport\_Code | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -            | Código único del aeropuerto    |
| Name         | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre del aeropuerto          |
| City         | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Ciudad donde se ubica          |
| State        | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Estado o región del aeropuerto |

---
 Tabla: Flight_Leg

| Campo                      | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                |
| -------------------------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | -------------------------- |
| Leg\_No                    | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -            | Número de tramo del vuelo  |
| Departure\_Airport         | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Aeropuerto de salida       |
| Sheduled\_Dep\_Time        | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Hora programada de salida  |
| Arrival\_Airport           | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Aeropuerto de llegada      |
| Sheduled\_Arrival\_Airport | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Hora programada de llegada |
| Number\_Flight             | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Flight       | Número de vuelo asociado   |

---

 Tabla: Flight

| Campo          | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                               |
| -------------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ----------------------------------------- |
| Number\_Flight | NVARCHAR     | 50     | ✅  | ❌  | ❌    | ✅     | -                     | -            | Número identificador del vuelo            |
| Airline        | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Nombre de la aerolínea                    |
| Weekdays       | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | CHECK (1-3)           | -            | Días de la semana: 1=Prim, 2=Ver, 3=Otoño |

---
Tabla: Fare

| Campo          | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                      |
| -------------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | -------------------------------- |
| Code\_Fare     | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -            | Código de tarifa                 |
| Amount         | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Monto de la tarifa               |
| Restriccions   | NVARCHAR     | 50     | ❌  | ❌  | ✅    | ❌     | -                     | -            | Restricciones de la tarifa       |
| Number\_Flight | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Flight       | Vuelo al que se asocia la tarifa |

---

Tabla: Seat

| Campo              | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                  |
| ------------------ | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ---------------------------- |
| Date               | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -            | Fecha de vuelo               |
| Leg-No             | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Flight\_Leg  | Número de tramo              |
| Departure\_Airport | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Airport      | Aeropuerto de salida         |
| Arrival\_Airport   | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Airport      | Aeropuerto de llegada        |
| Number\_Flight     | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Flight       | Número del vuelo             |
| Airport\_Depart    | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Código aeropuerto de partida |
| Airport\_Drives    | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Código aeropuerto de llegada |
| Airplane\_Id       | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Airplane     | Avión asignado               |
| Seat\_No           | INT          | -      | ✅  | ❌  | ❌    | ❌     | -                     | -            | Número del asiento           |

---

 Tabla:Leg_Instance

| Campo                 | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                           |
| --------------------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ------------------------------------- |
| Date                  | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -            | Fecha del tramo                       |
| Leg\_No               | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Flight\_Leg  | Número de tramo                       |
| Departure\_Airport    | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Aeropuerto de salida                  |
| Arrival\_Airport      | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Aeropuerto de llegada                 |
| Number\_Flight        | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Flight       | Número de vuelo                       |
| Airport\_Departs      | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Código del aeropuerto de salida real  |
| Dep\_Time             | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Hora de salida real                   |
| Airport\_Arrives      | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airport      | Código del aeropuerto de llegada real |
| Arr\_Time             | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Hora de llegada real                  |
| No\_Of\_Avails\_Seats | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Número de asientos disponibles        |
| Airplane\_Id          | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airplane     | Avión usado                           |

---

Tabla: Airplane

| Campo                | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a   | Descripción             |
| -------------------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | -------------- | ----------------------- |
| Airplane\_Id         | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -              | Identificador del avión |
| Total\_no\_of\_Seats | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -              | Total de asientos       |
| Type\_Name           | INT          | -      | ❌  | ✅  | ❌    | ❌     | -                     | Airplane\_Type | Tipo de avión           |

---
Tabla: Airplane_Type

| Campo      | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción              |
| ---------- | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | ------------ | ------------------------ |
| Type\_Name | INT          | -      | ✅  | ❌  | ❌    | ✅     | -                     | -            | Código del tipo de avión |
| Company    | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Compañía fabricante      |
| Max\_Seat  | NVARCHAR     | 50     | ❌  | ❌  | ❌    | ❌     | -                     | -            | Máximo de asientos       |

---

 Tabla: Cand_Land

| Campo        | Tipo de Dato | Tamaño | PK | FK | Nulo | Único | Restricciones / CHECK | Referencia a   | Descripción                      |
| ------------ | ------------ | ------ | -- | -- | ---- | ----- | --------------------- | -------------- | -------------------------------- |
| Type\_name   | INT          | -      | ✅  | ✅  | ❌    | ✅     | -                     | Airplane\_Type | Tipo de avión                    |
| Aiport\_Code | INT          | -      | ✅  | ✅  | ❌    | ❌     | -                     | Airport        | Aeropuerto donde puede aterrizar |

---
