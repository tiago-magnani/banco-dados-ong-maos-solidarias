-- 1. Listar todos os voluntários ordenados pelo nome
SELECT * FROM VOLUNTARIO 
ORDER BY nome_completo ASC;

-- 2. Listar nome do voluntário e o nome do evento em que ele está inscrito (USO DE JOIN)
SELECT V.nome_completo, E.nome_evento, E.data_evento
FROM INSCRICAO I
JOIN VOLUNTARIO V ON I.id_voluntario = V.id_voluntario
JOIN EVENTO E ON I.id_evento = E.id_evento;

-- 3. Calcular o total arrecadado em doações (FUNÇÃO DE AGREGAÇÃO)
SELECT SUM(valor) as Total_Arrecadado FROM DOACAO;

-- 4. Listar apenas doações acima de R$ 100,00 (USO DE WHERE)
SELECT * FROM DOACAO 
WHERE valor > 100.00;

-- 5. Mostrar quais habilidades a voluntária 'Maria Oliveira' possui (JOIN TRIPLO)
SELECT V.nome_completo, H.nome_habilidade
FROM VOLUNTARIO V
JOIN VOLUNTARIO_HABILIDADE VH ON V.id_voluntario = VH.id_voluntario
JOIN HABILIDADE H ON VH.id_habilidade = H.id_habilidade
WHERE V.nome_completo LIKE 'Maria%';