CREATE DATABASE cadastroclientes

USE cadastroclientes
GO
CREATE TABLE cidade (
    cid_id INT IDENTITY PRIMARY KEY, 
    cid_nome NVARCHAR(100),
    cid_uf NVARCHAR(2)
);

CREATE TABLE cadclientes (
 cli_id INT PRIMARY KEY, 
 cli_nome NVARCHAR(100),
 cli_uf NVARCHAR(2),
 cli_cidade INT,
 CONSTRAINT fk_cidade FOREIGN KEY (cli_cidade) REFERENCES cidade(cid_id)
)