use avaliacao_22c;

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

