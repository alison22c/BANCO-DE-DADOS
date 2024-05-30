create database avaliacao_22C;
use avaliacao_22C;

SELECT * FROM livros;


insert into livros
values (null,'As Crônicas de Nárnia','C.S. Lewis','1950',true,'Fantasia','978-0064471190','HarperCollins','768','inglês');

insert into livros
values (null,'Cem Anos de Solidão',' Gabriel Garcia Marquez',' 1967',true, 'Ficção', '978-0241968581', 'Penguin Books', '422', 'Espanhol');


insert into livros
values (null,'Harry Potter e a Pedra Filosofal', 'J.K. Rowling',' 1997', true, 'Fantasia', '978-0439708180', 'Bloomsbury', '309', 'Inglês');


insert into livros
values (null,'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien',' 1954', true, 'Fantasia', '978-0618640157', 'HarperCollins', '423', 'Inglês');

insert into livros
values (null,'Categorias', 'Aristóteles','1971', true, 'História', '978-0742076489',   'Aristóteles',  122  , 'grega');       

update livros
set disponivel=false
where ano_publicacao <= 2000;    

update livros
set editora=false
where ano_publicacao <= 2000;   

UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';
 
 DELETE FROM livros
WHERE categoria = 'Terror';

DELETE FROM livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

DELETE FROM livros
WHERE titulo = 'As Crônicas de Nárnia';

DELETE FROM livros
WHERE editora = 'Penguin Books';

SELECT *
FROM livros
WHERE quantidade_paginas > 500;

SELECT categoria, COUNT(*) AS quantidade
FROM livros
GROUP BY categoria;

SELECT COUNT(*) AS total_livros, AVG(quantidade_paginas) AS media_paginas
FROM livros
WHERE categoria = 'Drama';

SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros;

SELECT *
FROM livros
WHERE ano_publicacao = (SELECT MAX(ano_publicacao) FROM livros)
OR ano_publicacao = (SELECT MIN(ano_publicacao) FROM livros);

SELECT *
FROM livros
ORDER BY ano_publicacao DESC;

SELECT titulo
FROM livros
WHERE idioma = 'Inglês'
UNION
SELECT titulo
FROM livros
WHERE idioma = 'Português';

SELECT *
FROM livros
WHERE autor = 'George Orwell';
