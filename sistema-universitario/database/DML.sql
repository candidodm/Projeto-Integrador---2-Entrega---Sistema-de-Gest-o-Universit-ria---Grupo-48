-- ============================================================================
-- SCRIPT DML - SISTEMA DE GESTÃO UNIVERSITÁRIA
-- Projeto Integrador - Grupo 48 - Senac 2025
-- ============================================================================

USE sistema_universitario;

-- ============================================================================
-- INSERT - Inserindo dados de exemplo
-- ============================================================================

-- Inserindo Pessoas (base)
INSERT INTO pessoa (email, telefone, endereco, cidade, estado, cep) VALUES
('maria@email.com', '(81) 98765-4321', 'Rua A, 123', 'Recife', 'PE', '50000-000'),
('joao@email.com', '(81) 99876-5432', 'Rua B, 456', 'Recife', 'PE', '50000-001'),
('ana@email.com', '(81) 98123-4567', 'Rua C, 789', 'Recife', 'PE', '50000-002'),
('empresa1@email.com', '(81) 3333-1111', 'Av. Norte, 100', 'Recife', 'PE', '50000-003'),
('empresa2@email.com', '(81) 3333-2222', 'Av. Sul, 200', 'Recife', 'PE', '50000-004');

-- Inserindo Pessoas Físicas
INSERT INTO pessoa_fisica (id_pessoa, cpf, nome, data_nascimento) VALUES
(1, '123.456.789-01', 'Maria Silva', '1985-05-15'),
(2, '234.567.890-12', 'João Santos', '1990-08-20'),
(3, '345.678.901-23', 'Ana Costa', '1995-03-10');

-- Inserindo Pessoas Jurídicas
INSERT INTO pessoa_juridica (id_pessoa, cnpj, razao_social, nome_fantasia) VALUES
(4, '12.345.678/0001-90', 'Tech Solutions Ltda', 'Tech Solutions'),
(5, '23.456.789/0001-01', 'Papelaria Central Ltda', 'Papelaria Central');

-- Inserindo Professores
INSERT INTO professor (id_pessoa_fisica, matricula, departamento, titulacao) VALUES
(1, 'PROF001', 'Computação', 'Mestrado');

-- Inserindo Alunos
INSERT INTO aluno (id_pessoa_fisica, matricula, curso, turno, periodo) VALUES
(2, 'ALUNO001', 'Sistemas para Internet', 'Noturno', 3),
(3, 'ALUNO002', 'Análise e Desenvolvimento', 'Matutino', 5);

-- Inserindo Fornecedores
INSERT INTO fornecedor (id_pessoa_juridica, setor_atuacao, produtos_servicos) VALUES
(1, 'Tecnologia', 'Software, Hardware, Consultoria'),
(2, 'Material Escritório', 'Papéis, Canetas, Materiais diversos');

-- ============================================================================
-- SELECT - Exemplos de Consultas
-- ============================================================================

-- Listar todos os professores
SELECT 
    p.matricula,
    pf.nome,
    p.departamento,
    p.titulacao,
    pe.email,
    pe.telefone
FROM professor p
JOIN pessoa_fisica pf ON p.id_pessoa_fisica = pf.id_pessoa_fisica
JOIN pessoa pe ON pf.id_pessoa = pe.id_pessoa;

-- Listar todos os alunos
SELECT 
    a.matricula,
    pf.nome,
    a.curso,
    a.turno,
    a.periodo,
    pe.email
FROM aluno a
JOIN pessoa_fisica pf ON a.id_pessoa_fisica = pf.id_pessoa_fisica
JOIN pessoa pe ON pf.id_pessoa = pe.id_pessoa;

-- Listar todos os fornecedores
SELECT 
    pj.razao_social,
    pj.nome_fantasia,
    f.setor_atuacao,
    f.produtos_servicos,
    pe.email,
    pe.telefone
FROM fornecedor f
JOIN pessoa_juridica pj ON f.id_pessoa_juridica = pj.id_pessoa_juridica
JOIN pessoa pe ON pj.id_pessoa = pe.id_pessoa;

-- ============================================================================
-- UPDATE - Exemplos de Atualizações
-- ============================================================================

-- Atualizar email de uma pessoa
UPDATE pessoa SET email = 'maria.novo@email.com' WHERE id_pessoa = 1;

-- Atualizar departamento de um professor
UPDATE professor SET departamento = 'Engenharia de Software' WHERE matricula = 'PROF001';

-- Atualizar período de um aluno
UPDATE aluno SET periodo = 4 WHERE matricula = 'ALUNO001';

-- ============================================================================
-- DELETE - Exemplos de Exclusões
-- ============================================================================

-- Deletar um registro (exemplo - não executar em produção)
-- DELETE FROM aluno WHERE id_aluno = 999;

-- ============================================================================
-- FIM DO SCRIPT DML
-- ============================================================================
