CREATE DATABASE MODELAGEM_TP3;

USE MODELAGEM_TP3;

CREATE TABLE LIVROS (
	livro_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    planeta_origem VARCHAR(50) NOT NULL,
    data_aquisicao DATE NOT NULL DEFAULT (CURRENT_DATE())
);

SELECT * FROM LIVROS;

/*TAREFAS 2*/
/*Adicione uma nova coluna genero (VARCHAR(50)) à tabela Livros.*/
ALTER TABLE LIVROS
ADD genero VARCHAR(50) NOT NULL;

SELECT * FROM LIVROS;

/*Modifique a coluna planeta_origem para permitir valores nulos.*/
ALTER TABLE LIVROS
MODIFY planeta_origem VARCHAR(50);

SELECT * FROM LIVROS;

/*Insira cinco registros na tabela Livros.*/
INSERT INTO LIVROS (titulo, autor, ano_publicacao, planeta_origem, data_aquisicao, genero) VALUES
('As Crônicas de Andrómeda', 'Zarael Torkan', 2110, 'Andrómeda', '2023-06-04', 'Ficção Científica'),
('O Enigma de Orion', 'Lyra Xenthor', 2050, 'Orion', '2022-12-15', 'Mistério'),
('Viagem a Alfa Centauri', 'Joren Aldar', 2098, 'Alfa Centauri', '2024-01-21', 'Aventura'),
('Histórias de Vega', 'Neriel Vedra', 2100, 'Vega', '2021-07-30', 'Fantasia'),
('Memórias de Sirius', 'Kara Zentar', 2081, 'Sirius', '2020-11-11', 'Drama'),
('O Universo de Libra', 'Rigel Korthan', 2075, NULL, '2023-02-28', 'Ficção Científica'),
('Os Segredos de Pégaso', 'Thalia Zephyr', 2045, 'Pégaso', '2024-05-15', 'Mistério'),
('A Jornada a Canopus', 'Lyrion Altair', 2090, NULL, '2021-09-21', 'Aventura'),
('Contos de Antares', 'Draco Velasquez', 2060, 'Antares', '2022-04-30', 'Fantasia'),
('A Órbita de Procyon', 'Soren Nova', 2088, NULL, '2020-10-11', 'Ficção Científica'),
('A Profecia de Ursa Major', 'Lyra Xenthor', 2072, 'Ursa Major', '2023-08-17', 'Mistério'),
('A Busca por Aldebaran', 'Kael Arcturus', 2065, NULL, '2022-11-05', 'Aventura'),
('Crônicas de Andromeda', 'Neriel Vedra', 2105, NULL, '2024-01-01', 'Fantasia'),
('Memórias de Vênus', 'Zarael Torkan', 2092, 'Vênus', '2021-12-20', 'Drama'),
('A Saga de Capricornus', 'Rigel Korthan', 2083, NULL, '2020-07-08', 'Ficção Científica'),
('O Enigma de Sagittarius', 'Lyra Xenthor', 2048, 'Sagittarius', '2023-03-03', 'Mistério'),
('O Império de Leo', 'Thalia Zephyr', 2099, NULL, '2024-04-12', 'Aventura'),
('A Lenda de Scorpius', 'Draco Velasquez', 2057, 'Scorpius', '2022-09-28', 'Fantasia'),
('Os Segredos de Aquarius', 'Soren Nova', 2085, NULL, '2021-10-15', 'Ficção Científica'),
('A Profecia de Gemini', 'Kael Arcturus', 2077, 'Gemini', '2020-12-01', 'Mistério'),
('A Busca por Virgo', 'Neriel Vedra', 2063, NULL, '2023-07-19', 'Aventura'),
('Crônicas de Taurus', 'Zarael Torkan', 2103, 'Taurus', '2024-02-10', 'Fantasia'),
('Memórias de Marte', 'Rigel Korthan', 2090, NULL, '2021-01-25', 'Drama'),
('A Saga de Cancer', 'Lyra Xenthor', 2081, 'Cancer', '2020-05-07', 'Ficção Científica'),
('O Enigma de Aquila', 'Thalia Zephyr', 2053, NULL, '2022-03-11', 'Mistério'),
('O Império de Pegasus', 'Draco Velasquez', 2102, 'Pegasus', '2023-09-02', 'Aventura'),
('A Lenda de Leo Minor', 'Soren Nova', 2075, NULL, '2021-11-30', 'Fantasia'),
('Os Segredos de Hydra', 'Kael Arcturus', 2068, 'Hydra', '2020-08-16', 'Drama'),
('A Profecia de Libra', 'Neriel Vedra', 2077, NULL, '2023-03-06', 'Ficção Científica'),
('A Busca por Centaurus', 'Zarael Torkan', 2059, 'Centaurus', '2022-05-22', 'Mistério'),
('Crônicas de Orion', 'Rigel Korthan', 2110, NULL, '2024-01-18', 'Aventura'),
('Memórias de Vesta', 'Lyra Xenthor', 2092, 'Vesta', '2021-04-07', 'Fantasia'),
('A Saga de Corona Borealis', 'Thalia Zephyr', 2083, NULL, '2020-09-03', 'Drama'),
('O Enigma de Lyra', 'Draco Velasquez', 2060, 'Lyra', '2022-07-14', 'Ficção Científica'),
('O Império de Ophiuchus', 'Soren Nova', 2085, NULL, '2021-08-09', 'Mistério'),
('A Lenda de Cetus', 'Kael Arcturus', 2077, 'Cetus', '2020-02-25', 'Aventura'),
('Os Segredos de Perseus', 'Neriel Vedra', 2063, NULL, '2023-05-19', 'Fantasia'),
('A Profecia de Draco', 'Zarael Torkan', 2103, 'Draco', '2024-03-27', 'Drama'),
('A Busca por Sagitta', 'Rigel Korthan', 2090, NULL, '2021-02-12', 'Ficção Científica'),
('Crônicas de Scorpius', 'Lyra Xenthor', 2081, 'Scorpius', '2020-12-01', 'Mistério');


SELECT * FROM LIVROS;

/*Criar um índice para a coluna autor.*/
CREATE INDEX idx_autor ON LIVROS(autor);

SELECT * FROM LIVROS;

/*TAREFA 3*/
/*Remova todos os registros onde o campo planeta_origem é nulo;*/
DELETE FROM LIVROS 
WHERE planeta_origem IS NULL;

SELECT * FROM LIVROS;

/*Atualize o campo gênero para 'Clássico' para todos os registros onde o ano_publicacao é anterior ao ano 3000;*/
UPDATE LIVROS
SET genero = 'Clássico'
WHERE ano_publicacao < 3000;

SELECT * FROM LIVROS;

/*Crie uma tabela de backup para a tabela Livros chamada Livros_Backup e transfira os dados de uma para outra;*/
CREATE TABLE LIVROS_BACKUP LIKE LIVROS;
INSERT INTO LIVROS_BACKUP SELECT * FROM LIVROS;

SELECT * FROM LIVROS;

/*Delete todos os dados da tabela original e restaure ela conforme o backup.*/
TRUNCATE TABLE LIVROS;
INSERT INTO LIVROS SELECT * FROM LIVROS_BACKUP;

SELECT * FROM LIVROS;

/*TAREFA 4*/
CREATE TABLE AUTOR(
	autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    idade INT
);

SELECT * FROM LIVROS;
SELECT * FROM AUTOR;

/*Criar o campo autor_id na tabela livros;*/
ALTER TABLE LIVROS
ADD COLUMN autor_id INT;

SELECT * FROM LIVROS;
SELECT * FROM AUTOR;

/*Popular a tebela conforme o campo autor da tabela livros;*/
INSERT INTO AUTOR (nome)
SELECT DISTINCT autor
FROM LIVROS;

SELECT * FROM LIVROS;
SELECT * FROM AUTOR;

/*Criar um campo e uma foreign key chamada autor_id na tabela livros;*/
ALTER TABLE LIVROS
ADD CONSTRAINT autor_id
FOREIGN KEY (autor_id) REFERENCES AUTOR(autor_id);

SELECT * FROM LIVROS;
SELECT * FROM AUTOR;

/*Relacionar o campo autor_id da tabela livros de acordo com o id corrependente na tabela autor (usando o autor para fazer essa relação)*/
UPDATE LIVROS l
INNER JOIN Autor a ON l.autor = a.nome
SET l.autor_id = a.autor_id;

SELECT * FROM LIVROS;
SELECT * FROM AUTOR;

/*Excluir o campo autor da tabela livros.*/
ALTER TABLE LIVROS
DROP COLUMN autor;

SELECT * FROM LIVROS;
SELECT * FROM AUTOR;

DROP TABLE LIVROS;
DROP TABLE LIVROS_BACKUP;
DROP TABLE AUTOR;