-- Exo 4
-- Requêtes avec jointure « many to one » et « one to many »

-- Exo 4.1
-- Listez tous les students avec leurs projects
-- Note : les students sans projets doivent aussi apparaître dans les résultats
    SELECT student.*, project.name FROM student LEFT OUTER JOIN project ON project.id = student.project_id
-- Exo 4.2
-- Listez le student dont l'id est `2` avec son project
    SELECT student.*, project.name FROM student INNER JOIN project ON  WHERE student.id = 2

-- Exo 4.3
-- Listez tous les projects avec leurs students
-- Note : les projets sans students ne doivent pas apparaître dans les résultats
   SELECT project.*, student.firstname, student.lastname from project INNER JOIN student ON student.project_id = project.id

-- Exo 4.4
-- Listez le project dont l'id est `3` avec ses students
   SELECT project.*, student.firstname, student.lastname from project INNER JOIN student ON student.project_id = project.id WHERE project.id = 3 
