Consultar la tabla de todas las inscripciones con nombre completo, título del curso y porcentaje de completado


| nombre_completo | titulo_curso           | porcentaje_completado |
| --------------- | ---------------------- | --------------------- |
| Emily Watson    | Intro to Python        | 85                    |
| Emily Watson    | Web Design Basics      | 60                    |
| Klaus Weber     | Intro to Python        | 92                    |
| Klaus Weber     | Data Analysis with SQL | 78                    |
| Lucia Fernandes | Web Design Basics      | 5                     |
| Lucia Fernandes | Digital Marketing 101  | 3                     |
| Marco Rossi     | Advanced Python        | 95                    |
| Marco Rossi     | Intro to Python        | 88                    |
| Yuki Nakamura   | Data Analysis with SQL | 45                    |
| Yuki Nakamura   | UI/UX Fundamentals     | 0                     |
| Pierre Dubois   | UI/UX Fundamentals     | 0                     |
| Priya Sharma    | Digital Marketing 101  | 70                    |
| Priya Sharma    | Intro to Python        | 55                    |
| Pierre Dubois   | Data Analysis with SQL | 20                    |
| Emily Watson    | Advanced Python        | 40                    |
| Lucia Fernandes | Advanced Python        | 0                     |


Mostrar el nombre y email de los estudiantes que han aprobado al menos un curso junto a los títulos de los cursos que aprobaron


| nombre       | email                             | curso_aprobado         |
| ------------ | --------------------------------- | ---------------------- |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Advanced Python        |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Intro to Python        |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Intro to Python        |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101  |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Data Analysis with SQL |


Calcular el porcentaje de completado medio por instructor, ordenado de mayor a menor


| instructor   | porcentaje_completado_medio |
| ------------ | --------------------------- |
| Marta López  | 66.14                       |
| Carlos Vega  | 40.00                       |
| Lucia Prades | 36.50                       |


Encontrar todos los estudiantes que no tienen ninguna inscripción


| id | name          | email                              | signup_date |
| -- | ------------- | ---------------------------------- | ----------- |
| 8  | Giulia Romano | giulia.romano@student.edutrack.com | 2024-05-07  |


Encontrar todos los cursos que no tienen ninguna inscripción


| id | title           | category  | instructor_name | monthly_fee |
| -- | --------------- | --------- | --------------- | ----------- |
| 7  | Email Campaigns | Marketing | Lucia Prades    | 19.99       |


Contar cuántos cursos tiene inscriptos cada estudiante, mostra solo los estudiantes inscriptos a más de un curso


| id | name            | email                                | cursos_inscriptos |
| -- | --------------- | ------------------------------------ | ----------------- |
| 1  | Emily Watson    | emily.watson@student.edutrack.com    | 3                 |
| 2  | Klaus Weber     | klaus.weber@student.edutrack.com     | 2                 |
| 3  | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 3                 |
| 4  | Marco Rossi     | marco.rossi@student.edutrack.com     | 2                 |
| 5  | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 2                 |
| 6  | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 2                 |
| 7  | Priya Sharma    | priya.sharma@student.edutrack.com    | 2                 |


Calcular los ingresos totales por categoría usando el precio del curso de la tabla courses (monthly_fee), no el pago histórico de enrollments


| category    | ingresos_mensuales_totales |
| ----------- | -------------------------- |
| Data        | 179.97                     |
| Design      | 169.96                     |
| Marketing   | 59.98                      |
| Programming | 409.93                     |


Mostrar cada instructor junto al número de estudiantes inscriptos en sus cursos


| instructor_name    | estudiantes_inscritos |
| ------------------ | --------------------- |
| Carlos Vega        | 3                     |
| Lucia Prades       | 2                     |
| Marta López        | 6                     |
| Pending assignment | 2                     |


Comprobar si hay inscripciones cuyo students_id no corresponde a ningún estudiante existente


Success. No rows returned


Comprobar si hay inscripciones cuyo students_id no corresponde a ningún curso existente


Success. No rows returned
