use repescagem_22c;
 select nome,especialidade 
 from medicos;
 
SELECT nome,especialidade FROM  medicos
WHERE especialidade = 'Cardiologia';



SELECT * FROM  medicos
WHERE data_contratacao BETWEEN '2020-01-01' AND '2024-12-30';

SELECT *
FROM medicos
ORDER BY data_contratacao desc;

SELECT * FROM  medicos
WHERE especializacoes_adicionais LIKE '%Cirurgia%';



SELECT * FROM medicos
WHERE horario_trabalho BETWEEN '11:00' AND '19:00' ;


SELECT AVG(salario) as media_salario
FROM medicos;

SELECT nome,email FROM medicos
WHERE nome BETWEEN 'a' AND 'z'
ORDER BY nome;

SELECT * FROM  medicos
WHERE salario BETWEEN '15000' AND '16000';