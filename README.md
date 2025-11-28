# Projeto de Banco de Dados - ONG Mãos Solidárias

## Descrição do Projeto
Este repositório contém os scripts SQL desenvolvidos para a disciplina de Modelagem de Banco de Dados. O projeto simula o sistema de gestão de uma ONG ("Mãos Solidárias"), gerenciando voluntários, doadores, eventos e doações financeiras.

## Estrutura do Banco de Dados
O modelo lógico foi implementado relacionalmente com as seguintes tabelas:
- **VOLUNTARIO:** Dados cadastrais das pessoas dispostas a ajudar.
- **DOADOR:** Pessoas ou empresas que contribuem financeiramente.
- **EVENTO:** Ações sociais organizadas pela ONG.
- **DOACAO:** Registro financeiro das contribuições.
- **HABILIDADE:** Lista de competências (ex: Cozinha, Primeiros Socorros).
- **INSCRICAO:** Tabela associativa entre Voluntários e Eventos.

## Como Executar
Os scripts estão numerados para execução sequencial no MySQL Workbench ou ferramenta compatível:

1. **1_schema_ddl.sql:** Criação das tabelas e relacionamentos.
2. **2_inserts_dml.sql:** Popula o banco com dados fictícios para teste.
3. **3_selects_consultas.sql:** Exemplos de relatórios e extração de dados.
4. **4_update_delete.sql:** Exemplos de manutenção e atualização de registros.

## Autor
Tiago Armond Magnani
Estudante de Análise e Desenvolvimento de Sistemas