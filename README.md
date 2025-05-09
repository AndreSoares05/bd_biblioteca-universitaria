# 📚 Projeto de Banco de Dados — Biblioteca Universitária

Este repositório apresenta a modelagem e implementação de um banco de dados relacional para uma **biblioteca universitária**, desenvolvido como atividade prática da disciplina de Banco de Dados.

---

## 🎯 Objetivo

Criar um sistema que represente os principais processos de uma biblioteca acadêmica, incluindo o cadastro e gerenciamento de:

- Alunos e cursos
- Livros e categorias
- Empréstimos e devoluções
- Multas por atraso

---

## 🧱 Modelo Relacional

As entidades do banco de dados foram organizadas da seguinte forma:

- **Curso** (`id_curso`, nome)
- **Aluno** (`id_aluno`, nome, email, id_curso)
- **CategoriaLivro** (`id_categoria`, nome)
- **Livro** (`id_livro`, titulo, autor, id_categoria, quantidade)
- **Emprestimo** (`id_emprestimo`, id_aluno, id_livro, data_emprestimo)
- **Devolucao** (`id_devolucao`, id_emprestimo, data_devolucao)
- **Multa** (`id_multa`, id_emprestimo, valor, paga)

---

## 🗂️ Estrutura do Repositório
📁 /ddl/
└── criacao_tabelas.sql # Script de criação das tabelas

📁 /dml/
├── popular_dados.sql # Inserção inicial de dados
├── atualizar_excluir.sql # Exemplo de UPDATE e DELETE
└── consultas.sql # Consultas SQL (19 exemplos)

---

## 📋 Exemplos de Consultas SQL

Algumas das consultas desenvolvidas:

- Alunos do curso de Engenharia
- Livros com a categoria “Tecnologia”
- Alunos com multas pendentes
- Soma total de multas aplicadas
- Livros emprestados mais de uma vez
- Alunos que pegaram livros da categoria “Psicologia”
- Livros com mais de 2 unidades
- Média de livros por categoria

🔍 Todas as consultas estão no arquivo [`/dml/consultas.sql`](./dml/consultas.sql)

---

## 🔗 Links Importantes

- 📁 **Repositório no GitHub:**  
  [https://github.com/AndreSoares05/bd_biblioteca-universitaria](https://github.com/AndreSoares05/bd_biblioteca-universitaria)



- 🎥 **Vídeo explicativo do projeto :**  
  [SEU_LINK_AQUI](https://youtu.be/DZg33F3oNSg?si=a_0H3KJESsCM2bmY)

---

## 👤 Autor

- **Marcos André dos Santos Soares**  
- Curso: Engenharia de Software  
- Professor: Anderson Soares  
- Centro Universitário Santo Agostinho

---

📌 *Este projeto foi desenvolvido com fins didáticos para a disciplina de Banco de Dados.*

