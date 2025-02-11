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

SELECT * FROM CadastroPTs

INSERT INTO CadastroPT (Cad_Id, Cad_Nome, Cad_Descricao, Cad_Localizacao, Cad_Uf, Cad_Cidade)
VALUES

(1, 'Cristo Redentor', 'Cristo Redentor é uma estátua que retrata Jesus Cristo', 'Morro do Corcovado', 'RJ', 'Rio de Janeiro'),
(3, 'Museu India Vanuire', 'Museu de tupa', 'Tupa', 'SP', 'Tupa'),
(5, 'Boque Municipal Marilia', 'Lugar fresco e limpo pra um passeio em família!', 'Av. Brigadeiro Eduardo Gomes', 'SP', 'Marilia'),
(7, 'Museu Histórico de Londrina', 'Possui um rico acervo com grande variedade de peças, fotos e documentos.', 'Antiga estação ferroviária', 'PR', 'Londrina'),
(8, 'Iguazu Falls', 'Cataratas gigantes na fronteira com a Argentina.', 'Parque Nacional do Iguaçu', 'PR', 'Foz do Iguaçu'),
(9, 'Pelourinho', 'Centro cultural com arquitetura colonial.', 'Centro Histórico de Salvador', 'BA', 'Salvador'),
(10, 'Pão de Açúcar', 'Montanha famosa com vista panorâmica.', 'Avenida Pasteur', 'RJ', 'Rio de Janeiro'),
(11, 'Lençóis Maranhenses', 'Dunas com lagoas cristalinas.', 'Parque Nacional dos Lençóis Maranhenses', 'MA', 'Barreirinhas'),
(12, 'Praia de Copacabana', 'Famosa praia com grande movimento.', 'Avenida Atlântica', 'RJ', 'Rio de Janeiro'),
(13, 'Praça da Bandeira', 'Praça central com monumentos históricos.', 'Praça da Bandeira', 'SP', 'Tupã');



