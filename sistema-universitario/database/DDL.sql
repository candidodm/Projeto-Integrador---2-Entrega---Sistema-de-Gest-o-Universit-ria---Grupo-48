-- ============================================================================
-- SCRIPT DDL - SISTEMA DE GESTÃO UNIVERSITÁRIA
-- Projeto Integrador - Grupo 48 - Senac 2025
-- ============================================================================

-- Criação do Banco de Dados
DROP DATABASE IF EXISTS sistema_universitario;
CREATE DATABASE sistema_universitario;
USE sistema_universitario;

-- ============================================================================
-- TABELA: pessoa (Base para herança)
-- ============================================================================
CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(200),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    cep VARCHAR(10)
);

-- ============================================================================
-- TABELA: pessoa_fisica
-- ============================================================================
CREATE TABLE pessoa_fisica (
    id_pessoa_fisica INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

-- ============================================================================
-- TABELA: pessoa_juridica
-- ============================================================================
CREATE TABLE pessoa_juridica (
    id_pessoa_juridica INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    razao_social VARCHAR(200) NOT NULL,
    nome_fantasia VARCHAR(200),
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

-- ============================================================================
-- TABELA: professor
-- ============================================================================
CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa_fisica INT NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    departamento VARCHAR(100) NOT NULL,
    titulacao VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_pessoa_fisica) REFERENCES pessoa_fisica(id_pessoa_fisica)
);

-- ============================================================================
-- TABELA: aluno
-- ============================================================================
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa_fisica INT NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    curso VARCHAR(100) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    periodo INT NOT NULL,
    FOREIGN KEY (id_pessoa_fisica) REFERENCES pessoa_fisica(id_pessoa_fisica)
);

-- ============================================================================
-- TABELA: fornecedor
-- ============================================================================
CREATE TABLE fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa_juridica INT NOT NULL,
    setor_atuacao VARCHAR(100) NOT NULL,
    produtos_servicos TEXT NOT NULL,
    FOREIGN KEY (id_pessoa_juridica) REFERENCES pessoa_juridica(id_pessoa_juridica)
);
