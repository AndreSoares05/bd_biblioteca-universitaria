-- 📁 /dml/consultas.sql
-- Exemplos de 19consultas

-- 1. Alunos do curso de Engenharia
SELECT nome FROM Aluno WHERE id_curso = 1;

-- 2. Livros com "Tecnologia" na categoria
SELECT titulo FROM Livro
JOIN CategoriaLivro ON Livro.id_categoria = CategoriaLivro.id_categoria
WHERE CategoriaLivro.nome LIKE '%Tecnologia%';

-- 3. Quantidade de empréstimos por aluno
SELECT id_aluno, COUNT(*) AS qtd FROM Emprestimo GROUP BY id_aluno;

-- 4. Alunos com multas pendentes
SELECT Aluno.nome FROM Aluno
JOIN Emprestimo ON Aluno.id_aluno = Emprestimo.id_aluno
JOIN Multa ON Emprestimo.id_emprestimo = Multa.id_emprestimo
WHERE Multa.paga = FALSE;

-- 5. Livros emprestados mais de uma vez
SELECT id_livro, COUNT(*) FROM Emprestimo
GROUP BY id_livro HAVING COUNT(*) > 1;

-- 6. Livros ordenados por título
SELECT * FROM Livro ORDER BY titulo;

-- 7. Emprestimos feitos em uma data específica
SELECT * FROM Emprestimo WHERE data_emprestimo = '2024-10-01';

-- 8. Alunos sem devolução ainda registrada
SELECT DISTINCT Aluno.nome FROM Aluno
JOIN Emprestimo ON Aluno.id_aluno = Emprestimo.id_aluno
LEFT JOIN Devolucao ON Emprestimo.id_emprestimo = Devolucao.id_emprestimo
WHERE Devolucao.id_devolucao IS NULL;

-- 9. Soma das multas
SELECT SUM(valor) AS total_multas FROM Multa;

-- 10. Média de livros por categoria
SELECT CategoriaLivro.nome, AVG(Livro.quantidade)
FROM Livro
JOIN CategoriaLivro ON Livro.id_categoria = CategoriaLivro.id_categoria
GROUP BY CategoriaLivro.nome;

-- 11. Listar todos os alunos e seus cursos
SELECT Aluno.nome, Curso.nome AS curso FROM Aluno
JOIN Curso ON Aluno.id_curso = Curso.id_curso;

-- 12. Mostrar livros emprestados e seus respectivos autores
SELECT Livro.titulo, Livro.autor FROM Livro
JOIN Emprestimo ON Livro.id_livro = Emprestimo.id_livro;

-- 13. Verificar alunos que pegaram livros da categoria 'Psicologia'
SELECT DISTINCT Aluno.nome FROM Aluno
JOIN Emprestimo ON Aluno.id_aluno = Emprestimo.id_aluno
JOIN Livro ON Emprestimo.id_livro = Livro.id_livro
JOIN CategoriaLivro ON Livro.id_categoria = CategoriaLivro.id_categoria
WHERE CategoriaLivro.nome = 'Psicologia';

-- 14. Listar livros com mais de 2 unidades disponíveis
SELECT titulo, quantidade FROM Livro WHERE quantidade > 2;

-- 15. Ver a maior multa aplicada até agora
SELECT MAX(valor) AS maior_multa FROM Multa;

-- 16. Agrupar quantidade de livros por categoria
SELECT CategoriaLivro.nome, COUNT(*) AS total_livros
FROM Livro
JOIN CategoriaLivro ON Livro.id_categoria = CategoriaLivro.id_categoria
GROUP BY CategoriaLivro.nome;

-- 17. Mostrar alunos com mais de um empréstimo
SELECT id_aluno, COUNT() AS total_emprestimos
FROM Emprestimo
GROUP BY id_aluno
HAVING COUNT() > 1;

-- 18. Listar empréstimos com devolução e data
SELECT Emprestimo.id_emprestimo, Aluno.nome, data_devolucao
FROM Emprestimo
JOIN Aluno ON Emprestimo.id_aluno = Aluno.id_aluno
JOIN Devolucao ON Emprestimo.id_emprestimo = Devolucao.id_emprestimo;

-- 19. Contar quantas multas ainda estão pendentes
SELECT COUNT(*) AS multas_pendentes FROM Multa WHERE paga = FALSE;
