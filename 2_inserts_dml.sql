-- Povoando a tabela de Habilidades
INSERT INTO HABILIDADE (nome_habilidade) VALUES 
('Primeiros Socorros'), 
('Cozinha'), 
('Motorista'), 
('Recreação Infantil'), 
('Enfermagem');

-- Povoando a tabela de Voluntários
INSERT INTO VOLUNTARIO (nome_completo, cpf, data_nascimento, email, telefone) VALUES 
('João da Silva', '12345678901', '1990-05-15', 'joao@email.com', '11999999999'),
('Maria Oliveira', '98765432100', '1985-10-20', 'maria@email.com', '11888888888'),
('Carlos Pereira', '45678912300', '2000-01-10', 'carlos@email.com', '11777777777');

-- Povoando a tabela de Doadores
INSERT INTO DOADOR (nome_razao_social, cpf_cnpj, email, telefone) VALUES 
('Ana Souza', '11122233344', 'ana@email.com', '11666666666'),
('Empresa Tech Solutions', '12345678000199', 'contato@tech.com', '1133334444');

-- Povoando a tabela de Eventos
INSERT INTO EVENTO (nome_evento, data_evento, local, descricao) VALUES 
('Campanha do Agasalho', '2025-06-15 09:00:00', 'Centro Comunitário', 'Coleta e distribuição de roupas de frio.'),
('Jantar Beneficente', '2025-07-20 19:00:00', 'Salão de Festas Central', 'Jantar para arrecadação de fundos.');

-- Povoando a tabela de Doações
INSERT INTO DOACAO (id_doador, valor, metodo_pagamento) VALUES 
(1, 150.00, 'PIX'),
(1, 50.00, 'Dinheiro'),
(2, 5000.00, 'Transferência');

-- Vinculando Voluntários a Habilidades
INSERT INTO VOLUNTARIO_HABILIDADE (id_voluntario, id_habilidade) VALUES 
(1, 3), -- João é Motorista
(2, 2), -- Maria sabe Cozinhar
(2, 4); -- Maria também faz Recreação

-- Inscrevendo Voluntários em Eventos
INSERT INTO INSCRICAO (id_voluntario, id_evento) VALUES 
(1, 1), -- João na Campanha do Agasalho
(2, 2), -- Maria no Jantar
(3, 1); -- Carlos na Campanha do Agasalho