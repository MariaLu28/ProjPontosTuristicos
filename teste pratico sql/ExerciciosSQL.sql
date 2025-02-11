USE cadastroclientes
GO

-- 1.SELECT que retorne APENAS o nome dos clientes da cidade “TUPA”. Utilizar o EXISTS para realizar a condição. 

SELECT cli_nome
  FROM cadclientes c
 WHERE EXISTS (
    SELECT 1
    FROM cidade ci
    WHERE ci.cid_nome = 'Tupa' 
      AND ci.cid_id = c.cli_cidade
);


--2. SELECT que retorne o nome do cliente e o nome da cidade de todos os registros:

SELECT c.cli_nome, 
       ci.cid_nome
  FROM cadclientes c
 JOIN cidade ci ON c.cli_cidade = ci.cid_id;


-- 3.SELECT que retorne TODOS os nomes e os códigos dos clientes ordenados por nome do cliente:

SELECT
    cli_nome,
	cli_id
  FROM cadclientes
 ORDER BY cli_nome

--4. DELETE que exclua clientes com código do cliente entre a numeração 100 e 200:

DELETE
  FROM  cadclientes
 WHERE cli_id BETWEEN 100 AND 200

--5. UPDATE que altere o estado de todas as cidades para o estado “SP” quando estiverem com estado igual a “PR”:

UPDATE cidade
  SET cid_uf = 'SP'
 WHERE cid_uf = 'PR'


 --6. INSERT na tabela de clientes de um registro qualquer com todos os campos da tabela (valores livres):

 INSERT INTO cadclientes (cli_id, cli_nome,cli_uf, cli_cidade)
      VALUES (24, 'Maria Luiza', 'SP', 16);


--Requisitos extras:

--7. Criar uma view para consultar os registros contidos na tabela CIDADES:

CREATE VIEW cidview AS
SELECT *
  FROM cidade;

	   
--8. Criar um procedimento armazenado (procedure) para realizar as operações de INSERT, UPDATE E DELETE na tabela de CIDADES:

CREATE PROCEDURE crudcidade (
    @operacao NVARCHAR(15),
    @p_id INT = NULL, 
    @p_nome NVARCHAR(100),
    @p_uf NVARCHAR(2)
)
AS
BEGIN
    IF @operacao = 'insert'
    BEGIN
        INSERT INTO cidade (cid_nome, cid_uf)
        VALUES (@p_nome, @p_uf);
    END
    ELSE IF @operacao = 'update'
    BEGIN
        UPDATE cidade
        SET cid_nome = @p_nome,
            cid_uf = @p_uf
        WHERE cid_id = @p_id;
    END
    ELSE IF @operacao = 'delete'
    BEGIN
        DELETE FROM cidade
        WHERE cid_id = @p_id;
    END
END;













 