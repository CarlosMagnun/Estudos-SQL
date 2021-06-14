
CREATE DATABASE LIVRARIA;

USE LIVRARIA

CREATE TABLE LIVROS(
    LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO_AUTOR CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(15),
    VALOR FLOAT(10,2),
    UF CHAR(2),
    PUBLICACAO INT(4)
);


INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Cavaleiro Real','Ana cludia','F',465,'Atlas',49.90,'RJ',2009);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('SQL para leigos','João Nunes','M',450,'Addison',98.00,'SP',2018);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Receitas Caseiras','Celia Tavares','F',210,Atlas,45.00,'RJ',2008);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Habitos Sudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60.00,'MG',2016);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100.00,'ES',2015);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Pra sempre Amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('Copas Inesqueciveis','Marco Alcantra','M',200,'Larson',130.98,'RS',2018);

INSERT INTO LIVROS(LIVRO,AUTOR,SEXO_AUTOR,PAGINAS,EDITORA,VALOR,UF,PUBLICACAO) VALUES('O Poder da Mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);


/* Trazer todos os dados */

SELECT * FROM LIVROS;

/* Trazer o LIVRO do livro e o nome da editora */

SELECT LIVRO, EDITORA FROM LIVROS;

/* Trazer o nome do livro e a UF dos livros publicados por autores masculinos */

SELECT LIVRO, UF FROM LIVROS
WHERE SEXO_AUTOR = 'M';

/* Trazer o LIVRO do livro e o numero de paginas dos livros publicados por autores do sexo feminino */

SELECT LIVRO, PAGINAS FROM LIVROS
WHERE SEXO_AUTOR = 'F';

/* Trazer os valores dos livros das editoras de são paulo */

SELECT VALOR FROM LIVROS
WHERE UF = 'SP';

/* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio) */

SELECT AUTOR, SEXO_AUTOR, UF FROM LIVROS
WHERE SEXO_AUTOR = 'M' AND (UF = 'SP' OR UF = 'RJ');