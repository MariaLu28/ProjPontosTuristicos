CREATE DATABASE MeuBancoPT;
GO

USE MeuBancoPT;
GO

CREATE TABLE CadastroPT (
    Cad_Id INT PRIMARY KEY, 
    Cad_Nome NVARCHAR(100), 
    Cad_Descricao NVARCHAR(100),
    Cad_Localizacao NVARCHAR(100), 
    Cad_Uf NVARCHAR(2),
    Cad_Cidade NVARCHAR(50) 
);

select * from CadastroPTs
