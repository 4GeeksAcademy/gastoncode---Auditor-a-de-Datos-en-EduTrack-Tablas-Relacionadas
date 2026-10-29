Consultar la tabla de todas las inscripciones con nombre completo, título del curso y porcentaje de completado

SELECT
  s.name AS nombre_completo,
  c.title AS titulo_curso,
  e.completion_percentage AS porcentaje_completado
FROM enrollments AS e
JOIN students AS s ON s.id = e.student_id
JOIN courses AS c ON c.id = e.course_id;

Mostrar el nombre y email de los estudiantes que han aprobado al menos un curso junto a los títulos de los cursos que aprobaron

SELECT DISTINCT
  s.name AS nombre,
  s.email,
  c.title AS curso_aprobado
FROM enrollments AS e
JOIN students AS s ON s.id = e.student_id
JOIN courses AS c ON c.id = e.course_id
WHERE e.passed = TRUE;

Calcular el porcentaje de completado medio por instructor, ordenado de mayor a menor

SELECT
  c.instructor_name AS instructor,
  ROUND(AVG(e.completion_percentage), 2) AS porcentaje_completado_medio
FROM enrollments AS e
JOIN courses AS c ON c.id = e.course_id
WHERE c.instructor_name IS NOT NULL AND c.instructor_name != 'Pending assignment'
GROUP BY c.instructor_name
ORDER BY porcentaje_completado_medio DESC;

Encontrar todos los estudiantes que no tienen ninguna inscripción

SELECT s.*
FROM public.students AS s
LEFT JOIN public.enrollments AS e
  ON e.student_id = s.id
WHERE e.student_id IS NULL;

Encontrar todos los cursos que no tienen ninguna inscripción

SELECT c.*
FROM public.courses AS c
LEFT JOIN public.enrollments AS e
  ON e.course_id = c.id
WHERE e.course_id IS NULL;

Contar cuántos cursos tiene inscriptos cada estudiante, mostra solo los estudiantes inscriptos a más de un curso

SELECT
  s.id,
  s.name,
  s.email,
  COUNT(DISTINCT e.course_id) AS cursos_inscriptos
FROM public.students AS s
JOIN public.enrollments AS e
  ON e.student_id = s.id
GROUP BY s.id, s.name, s.email
HAVING COUNT(DISTINCT e.course_id) > 1;

Calcular los ingresos totales por categoría usando el precio del curso de la tabla courses (monthly_fee), no el pago histórico de enrollments

SELECT
  c.category,
  SUM(c.monthly_fee) AS ingresos_mensuales_totales
FROM public.enrollments AS e
JOIN public.courses AS c
  ON c.id = e.course_id
GROUP BY c.category
ORDER BY c.category;

Mostrar cada instructor junto al número de estudiantes inscriptos en sus cursos

SELECT
  c.instructor_name,
  COUNT(DISTINCT e.student_id) AS estudiantes_inscritos
FROM public.courses AS c
LEFT JOIN public.enrollments AS e
  ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY c.instructor_name;

Comprobar si hay inscripciones cuyo students_id no corresponde a ningún estudiante existente

SELECT e.id AS enrollment_id, e.student_id
FROM public.enrollments AS e
LEFT JOIN public.students AS s
  ON s.id = e.student_id
WHERE s.id IS NULL;

Comprobar si hay inscripciones cuyo students_id no corresponde a ningún curso existente

SELECT e.id AS enrollment_id, e.course_id
FROM public.enrollments AS e
LEFT JOIN public.courses AS c
  ON c.id = e.course_id
WHERE c.id IS NULL;