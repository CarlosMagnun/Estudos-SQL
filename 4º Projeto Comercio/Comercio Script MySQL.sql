ENDERECO - OBRIGATORIO
CADASTRO SOMENTE UM

TELEFONE NÃO OBRIGATORIO
1 PRA N

DROP TABLE CLIENTE;

CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE CLIENTE(
    ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M','F') NOT NULL,
    EMAIL VARCHAR (50) UNIQUE,
    CPF VARCHAR (15) UNIQUE
);

CREATE TABLE ENDERECO(
    ID_ENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR (2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE(ID_CLIENTE)
);

CREATE TABLE TELEFONE(
	ID_TELEFONE INT PRIMARY KEY AUTO_INCREMENT, 
	TIPO ENUM('RES','COM','CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	CODIGO_AREA CHAR(2) NOT NULL,
    ID_CLIENTE INT,
    FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(ID_CLIENTE)
);


INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAOA@IG.COM','76567587887');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOSA@IG.COM','5464553466');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM','456545678');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'5687766856');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM','8756547688');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','JCELIA@IG.COM','5767876889');

INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);

INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743','32',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876','11',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896','31',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899','21',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587','32',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765','32',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676','32',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899','32',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668','32',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909','32',2);


ALTER TABLE `TELEFONE` CHANGE `ID_CLIENTE` `IDCLIENTE` INT;

SELECT NOME, EMAIL, ID_CLIENTE FROM CLIENTE;
FROM CLIENTE;

SELECT ID_CLIENTE, BAIRRO, CIDADE FROM ENDERECO;

/* NOME, SEXO, BAIRRO, CIDADE */

SELECT NOME, SEXO, BAIRRO, CIDADE FROM CLIENTE, ENDERECO
WHERE ID_CLIENTE = ID_CLIENTE;

SELECT  NOME ,SEXO ,BAIRRO ,CIDADE 
FROM CLIENTE
    INNER JOIN ENDERECO
    ON ID_CLIENTE=IDCLIENTE
WHERE SEXO ='F';  


/* NOME, SEXO, EMAIL, TIPO, DDD, NUMERO*/

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO, CODIGO_AREA 
    FROM CLIENTE 
        INNER JOIN TELEFONE
        ON ID_CLIENTE=IDCLIENTE;

/* NOME, SEXO, BAIRRO, CIDADE, TIPO, DDD, NUMERO*/

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.CODIGO_AREA, T.NUMERO
    FROM  CLIENTE C 
        INNER JOIN  ENDERECO E
        ON C.ID_CLIENTE=E.IDCLIENTE
        INNER JOIN TELEFONE T
        ON C.ID_CLIENTE=T.IDCLIENTE;


/* EXERCICIOS DML */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);

/* CADASTRE TELEFONES PARA OS CLIENTES */


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565','32',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675','32',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765','11',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786','11',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654','11',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979','21',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676','21',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809','21',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978','32',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768','32',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665','32',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786','32',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554','61',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785','61',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578','61',20);


/* RELATORIO GERAL DE TODOS OS CLIENTES */

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO, T.CODIGO_AREA
    FROM CLIENTE C 
        INNER JOIN  ENDERECO E
        ON C.ID_CLIENTE=E.IDCLIENTE
        INNER JOIN TELEFONE T
        ON C.ID_CLIENTE=T.IDCLIENTE;

+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
| NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   | CODIGO_AREA |
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 | 32          |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 | 11          |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 | 31          |
| CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 | 21          |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 | 32          |
| ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 | 32          |
| ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 | 32          |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 | 32          |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 | 32          |
| CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 | 32          |
| FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 | 32          |
| FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 | 32          |
| GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 | 11          |
| GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 | 11          |
| GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 | 11          |
| KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 | 21          |
| DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 | 21          |
| EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 | 21          |
| ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 | 32          |
| ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 | 32          |
| ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 | 32          |
| CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 | 32          |
| CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 | 61          |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 | 61          |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 | 61          |
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
/* RELATORIO DE HOMENS */

SELECT C.ID_CLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO, T.CODIGO_AREA
    FROM CLIENTE C 
        INNER JOIN  ENDERECO E
        ON C.ID_CLIENTE=E.IDCLIENTE
        INNER JOIN TELEFONE T
        ON C.ID_CLIENTE=T.IDCLIENTE
    WHERE SEXO = 'M';

+------------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
| ID_CLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   | CODIGO_AREA |
+------------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
|          1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 | 31          |
|          1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 | 32          |
|          1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 | 32          |
|          2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 | 21          |
|          2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 | 32          |
|          5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 | 32          |
|          5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 | 11          |
|          5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 | 32          |
|          9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 | 32          |
|          9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 | 32          |
|         12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 | 21          |
|         13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 | 21          |
|         15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 | 21          |
|         17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 | 32          |
|         18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 | 32          |
|         19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 | 32          |
|         19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 | 61          |
+------------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
/* ARRUMANDO SEXO, IDS (12, 13, 18, 19) */

UPDATE CLIENTE SET SEXO = 'F'
WHERE ID_CLIENTE IN (12,13,18,19);

UPDATE CLIENTE SET SEXO = 'F'
WHERE ID_CLIENTE IN (14);

+------------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
| ID_CLIENTE | NOME    | SEXO | EMAIL           | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   | CODIGO_AREA |
+------------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+
|          1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 | 31          |
|          1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 | 32          |
|          1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 | 32          |
|          2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 | 21          |
|          2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 | 32          |
|          5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 | 32          |
|          5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 | 11          |
|          5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 | 32          |
|          9 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 | 32          |
|          9 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 | 32          |
|         15 | EDUARDO | M    | NULL            | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 | 21          |
|         16 | ANTONIO | M    | ANTONIO@IG.COM  | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 | 32          |
|         17 | ANTONIO | M    | ANTONIO@UOL.COM | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 | 32          |
+------------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+-------------+



/* RELATORIO DE MULHERES */

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO, T.CODIGO_AREA
    FROM CLIENTE C 
        INNER JOIN  ENDERECO E
        ON C.ID_CLIENTE=E.IDCLIENTE
        INNER JOIN TELEFONE T
        ON C.ID_CLIENTE=T.IDCLIENTE
    WHERE SEXO = 'F';
+---------+------+-------------------+-----------+-------------------+---------+----------------+--------+------+----------+-------------+
| NOME    | SEXO | EMAIL             | CPF       | RUA               | BAIRRO  | CIDADE         | ESTADO | TIPO | NUMERO   | CODIGO_AREA |
+---------+------+-------------------+-----------+-------------------+---------+----------------+--------+------+----------+-------------+
| ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS   | JARDINS | SAO PAULO      | SP     | CEL  | 78989765 | 32          |
| ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS   | JARDINS | SAO PAULO      | SP     | CEL  | 99766676 | 32          |
| GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA   | CENTRO  | RIO DE JANEIRO | RJ     | CEL  | 33567765 | 11          |
| GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA   | CENTRO  | RIO DE JANEIRO | RJ     | CEL  | 88668786 | 11          |
| GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA   | CENTRO  | RIO DE JANEIRO | RJ     | COM  | 55689654 | 11          |
| ANTONIO | F    | ANTONIO@IG.COM    | 12436767  | AV CARLOS BARROSO | JARDINS | SAO PAULO      | SP     | COM  | 88679978 | 32          |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE  | CENTRO  | RIO DE JANEIRO | RJ     | RES  | 77755785 | 61          |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE  | CENTRO  | RIO DE JANEIRO | RJ     | COM  | 44522578 | 61          |
+---------+------+-------------------+-----------+-------------------+---------+----------------+--------+------+----------+-------------+

+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+-------------+
| NOME    | SEXO | EMAIL             | CPF       | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   | CODIGO_AREA |
+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+-------------+
| ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 | 32          |
| ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 | 32          |
| GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 | 11          |
| GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 | 11          |
| GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 | 11          |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 | 21          |
| DANIELE | F    | DANIELE@GMAIL.COM | 43536789  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 | 21          |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 | 32          |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 | 32          |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 | 61          |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 | 61          |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 | 61          |
+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+-------------+
/*QUANTIDADE DE HOMENS E MULHERES */

SELECT C.SEXO, COUNT(C.SEXO) AS 'QUANTIDADE'
    FROM CLIENTE C 
GROUP BY C.SEXO;

+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| M    |         14 |
| F    |          6 |
+------+------------+
+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| M    |          8 |
| F    |         12 |
+------+------------+
/* IDS E EMAIL DAS MULHERES QUE MORAM NO CENTRO DO RIO DE JANEIRO E NÃO TEM CELULAR */

SELECT C.ID_CLIENTE, C.SEXO, C.NOME, C.EMAIL, E.BAIRRO, E.CIDADE, T.TIPO
    FROM CLIENTE C 
        INNER JOIN  ENDERECO E
        ON C.ID_CLIENTE=E.IDCLIENTE
        INNER JOIN TELEFONE T
        ON C.ID_CLIENTE=T.IDCLIENTE
    WHERE SEXO = 'F' 
    AND E.BAIRRO = 'CENTRO' AND E.CIDADE = 'RIO DE JANEIRO' 
    AND (T.TIPO = 'COM' OR T.TIPO = 'RES');

+------------+------+-------------------+--------+----------------+
| ID_CLIENTE | SEXO | EMAIL             | BAIRRO | CIDADE         |
+------------+------+-------------------+--------+----------------+
|         11 | F    | NULL              | CENTRO | RIO DE JANEIRO |
|         20 | F    | ADRIANA@GMAIL.COM | CENTRO | RIO DE JANEIRO |
|         21 | F    | JOICE@GMAIL.COM   | CENTRO | RIO DE JANEIRO |
+------------+------+-------------------+--------+----------------+

/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.ID_CLIENTE, C.NOME, C.EMAIL,T.TIPO, T.CODIGO_AREA, T.NUMERO, E.ESTADO
FROM CLIENTE C
INNER JOIN  TELEFONE T
ON C.ID_CLIENTE=T.IDCLIENTE
INNER JOIN ENDERECO E
ON C.ID_CLIENTE=E.IDCLIENTE
WHERE T.TIPO = 'CEL' AND E.ESTADO = 'RJ';

+------------+---------+----------------+------+-------------+----------+--------+
| ID_CLIENTE | NOME    | EMAIL          | TIPO | CODIGO_AREA | NUMERO   | ESTADO |
+------------+---------+----------------+------+-------------+----------+--------+
|          1 | JOAO    | JOAOA@IG.COM   | CEL  | 31          | 87866896 | RJ     |
|          2 | CARLOS  | CARLOSA@IG.COM | CEL  | 32          | 88687909 | RJ     |
|         11 | GIOVANA | NULL           | CEL  | 11          | 33567765 | RJ     |
|         11 | GIOVANA | NULL           | CEL  | 11          | 88668786 | RJ     |
+------------+---------+----------------+------+-------------+----------+--------+

/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.NOME, C.EMAIL, T.CODIGO_AREA AS DDD, T.NUMERO AS CELULAR
FROM CLIENTE C
INNER JOIN  ENDERECO E
ON C.ID_CLIENTE=E.IDCLIENTE
INNER JOIN TELEFONE T
ON C.ID_CLIENTE=T.IDCLIENTE
WHERE TIPO = 'CEL' AND SEXO = 'F' AND ESTADO = 'SP';


SELECT C.NOME, 
       IFNULL(C.EMAIL, 'NÃO TEM EMAIL') AS 'EMAIL' ,
       E.ESTADO, 
       T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.ID_CLIENTE=E.IDCLIENTE
INNER JOIN TELEFONE T
ON C.ID_CLIENTE=T.IDCLIENTE;


SELECT C.NOME,
       C.CPF, 
       C.SEXO, 
       C.EMAIL, 
       E.RUA, 
       E.BAIRRO , 
       E.CIDADE, 
       E.ESTADO, 
       T.TIPO, 
       T.CODIGO_AREA, 
       T.NUMERO
FROM CLIENTE C
    INNER JOIN  ENDERECO E
    ON C.ID_CLIENTE=E.IDCLIENTE
    INNER JOIN TELEFONE T
    ON C.ID_CLIENTE=T.IDCLIENTE;


/* VIEW */

CREATE VIEW V_RELATORIO AS
SELECT C.NOME,
       C.CPF, 
       C.SEXO, 
      IFNULL(C.EMAIL, "CLIENTE SEM EMAIL") AS "EMAIL",
       E.RUA, 
       E.BAIRRO , 
       E.CIDADE, 
       E.ESTADO, 
       T.TIPO, 
       T.CODIGO_AREA, 
       T.NUMERO
FROM CLIENTE C
    INNER JOIN  ENDERECO E
    ON C.ID_CLIENTE=E.IDCLIENTE
    INNER JOIN TELEFONE T
    ON C.ID_CLIENTE=T.IDCLIENTE;

SELECT * FROM RELATORIO;



/*ORDER BY */

CREATE TABLE ALUNOS (
    NUMERO INT,
    NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE'); 

SELECT * FROM ALUNOS
ORDER BY 2

/* ORDENADO POR MAIS DE UMA COLUNA */

SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;


CREATE PROCEDURE NOME()
BEGIN
 
  QUALQUER PROGRAMACAO

END
$


CREATE PROCEDURE NOME_EMPRESA()
BEGIN
    SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA; 
END
$