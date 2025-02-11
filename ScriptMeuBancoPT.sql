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

(1, 'Cristo Redentor', 'Cristo Redentor � uma est�tua que retrata Jesus Cristo', 'Morro do Corcovado', 'RJ', 'Rio de Janeiro'),
(3, 'Museu India Vanuire', 'Museu de tupa', 'Tupa', 'SP', 'Tupa'),
(5, 'Boque Municipal Marilia', 'Lugar fresco e limpo pra um passeio em fam�lia!', 'Av. Brigadeiro Eduardo Gomes', 'SP', 'Marilia'),
(7, 'Museu Hist�rico de Londrina', 'Possui um rico acervo com grande variedade de pe�as, fotos e documentos.', 'Antiga esta��o ferrovi�ria', 'PR', 'Londrina'),
(8, 'Iguazu Falls', 'Cataratas gigantes na fronteira com a Argentina.', 'Parque Nacional do Igua�u', 'PR', 'Foz do Igua�u'),
(9, 'Pelourinho', 'Centro cultural com arquitetura colonial.', 'Centro Hist�rico de Salvador', 'BA', 'Salvador'),
(10, 'P�o de A��car', 'Montanha famosa com vista panor�mica.', 'Avenida Pasteur', 'RJ', 'Rio de Janeiro'),
(11, 'Len��is Maranhenses', 'Dunas com lagoas cristalinas.', 'Parque Nacional dos Len��is Maranhenses', 'MA', 'Barreirinhas'),
(12, 'Praia de Copacabana', 'Famosa praia com grande movimento.', 'Avenida Atl�ntica', 'RJ', 'Rio de Janeiro'),
(13, 'Pra�a da Bandeira', 'Pra�a central com monumentos hist�ricos.', 'Pra�a da Bandeira', 'SP', 'Tup�');



