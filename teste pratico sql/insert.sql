USE cadastroclientes
GO

--Insert tabela cidade

INSERT INTO cidade (cid_nome, cid_uf) 
VALUES 
('S�o Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Belo Horizonte', 'MG'),
('Salvador', 'BA'),
('Porto Alegre', 'RS'),
('Curitiba', 'PR'),
('Fortaleza', 'CE'),
('Recife', 'PE'),
('Goi�nia', 'GO'),
('Bras�lia', 'DF'),
('Maring�', 'PR'),
('Sorocaba', 'SP'),
('Montes Claros', 'MG'),
('Astorga', 'PR'),
('Ponta Grossa', 'PR'),
('Tupa', 'SP'),
('Campos dos Goytacazes', 'RJ'),
('Ilh�us', 'BA'),
('Gravata�', 'RS'),
('Campinas', 'SP'),
('Maracana�', 'CE'),
('Guarulhos', 'SP'),
('S�o Bernardo do Campo', 'SP'),
('Osasco', 'SP'),
('Santos', 'SP'),
('Uberl�ndia', 'MG'),
('Piracicaba', 'SP'),
('Niter�i', 'RJ');


--Insert tabela cadclientes

INSERT INTO cadclientes (cli_id, cli_nome, cli_uf, cli_cidade) 
VALUES 
(1, 'Ana Silva', 'SP', 16),  -- Tupa
(2, 'Jo�o Souza', 'RJ', 2),   -- Rio de Janeiro
(3, 'Maria Oliveira', 'MG', 3),   -- Belo Horizonte
(4, 'Carlos Santos', 'BA', 4),   -- Salvador
(5, 'Fernanda Costa', 'RS', 5),   -- Porto Alegre
(6, 'Roberto Almeida', 'PR', 6),   -- Curitiba
(7, 'Paula Martins', 'CE', 7),   -- Fortaleza
(8, 'Rafael Pereira', 'PE', 8),   -- Recife
(9, 'Luciana Rocha', 'GO', 9),   -- Goi�nia
(10, 'Eduardo Lima', 'DF', 10),   -- Bras�lia
(12, 'Fernanda Castro', 'SP', 16),   -- Tupa
(54, 'L�cia Santos', 'SP', 12),   -- Sorocaba
(78, 'Vanessa Oliveira', 'MG', 13),   -- Montes Claros
(84, 'Rosemeire Freitas', 'PR', 14),   -- Astorga
(99, 'Marcos Almeida', 'PR', 15),   -- Ponta Grossa
(101, 'Aline Santos', 'SP', 16),   -- Tupa
(102, 'Bruno Costa', 'SP', 16),   -- Tupa
(103, 'Carla Almeida', 'SP', 16),   -- Tupa
(104, 'Danilo Pereira', 'SP', 16),   -- Tupa
(105, 'Elo�sa Rocha', 'SP', 16),   -- Tupa
(120, 'Miguel Costa', 'RJ', 17),   -- Campos dos Goytacazes
(133, 'Gabriela Souza', 'BA', 18),   -- Ilh�us
(145, 'Felipe Pereira', 'RS', 19),   -- Gravata�
(150, 'Luciano Silva', 'SP', 20),   -- Campinas
(167, 'Bruna Lima', 'CE', 21),   -- Maracana�
(176, 'Fernanda Almeida', 'SP', 22),   -- Guarulhos
(187, 'Mariana Costa', 'SP', 23),   -- S�o Bernardo do Campo
(198, 'Carlos Pereira', 'SP', 24),   -- Osasco
(213, 'Roberto Oliveira', 'SP', 25),   -- Santos
(250, 'Paulo Henrique', 'MG', 26),   -- Uberl�ndia
(251, 'Karina Dias', 'SP', 27),   -- Piracicaba
(252, 'Jorge Rodrigues', 'RJ', 28);   -- Niter�i