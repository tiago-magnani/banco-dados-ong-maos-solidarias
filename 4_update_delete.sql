-- === COMANDOS DE UPDATE ===

-- 1. Atualizar o telefone de um voluntário específico
UPDATE VOLUNTARIO 
SET telefone = '11955554444' 
WHERE id_voluntario = 1;

-- 2. Corrigir o valor de uma doação (Ex: digitado errado)
UPDATE DOACAO 
SET valor = 200.00 
WHERE id_doacao = 1;

-- 3. Alterar o local do evento 'Campanha do Agasalho'
UPDATE EVENTO 
SET local = 'Ginásio de Esportes' 
WHERE nome_evento = 'Campanha do Agasalho';


-- === COMANDOS DE DELETE ===

-- 1. Cancelar a inscrição do voluntário Carlos (id 3) no evento
DELETE FROM INSCRICAO 
WHERE id_voluntario = 3 AND id_evento = 1;

-- 2. Remover a habilidade 'Recreação Infantil' da lista de habilidades da Maria
DELETE FROM VOLUNTARIO_HABILIDADE 
WHERE id_voluntario = 2 AND id_habilidade = 4;

-- 3. Excluir uma doação que foi estornada/cancelada
DELETE FROM DOACAO 
WHERE id_doacao = 2;