# Diagrama de Caso de Uso - Sistema de Gestão Universitária

## Ator
- **Administrador** - Responsável por realizar todos os cadastros no sistema

## Casos de Uso

### 1. Cadastrar Pessoa Física
**Descrição:** O administrador cadastra os dados de uma pessoa física no sistema.

**Fluxo Principal:**
1. Administrador acessa o formulário de cadastro de pessoa física
2. Preenche CPF, nome, data de nascimento, email, telefone e endereço
3. Sistema valida os dados
4. Sistema salva o cadastro
5. Sistema exibe mensagem de sucesso

---

### 2. Cadastrar Pessoa Jurídica
**Descrição:** O administrador cadastra os dados de uma pessoa jurídica no sistema.

**Fluxo Principal:**
1. Administrador acessa o formulário de cadastro de pessoa jurídica
2. Preenche CNPJ, razão social, nome fantasia, email, telefone e endereço
3. Sistema valida os dados
4. Sistema salva o cadastro
5. Sistema exibe mensagem de sucesso

---

### 3. Cadastrar Professor
**Descrição:** O administrador cadastra um professor no sistema.

**Fluxo Principal:**
1. Administrador acessa o formulário de cadastro de professor
2. Preenche dados pessoais (CPF, nome) e profissionais (matrícula, departamento, titulação)
3. Sistema valida os dados
4. Sistema salva o cadastro
5. Sistema exibe mensagem de sucesso

---

### 4. Cadastrar Aluno
**Descrição:** O administrador cadastra um aluno no sistema.

**Fluxo Principal:**
1. Administrador acessa o formulário de cadastro de aluno
2. Preenche dados pessoais (CPF, nome) e acadêmicos (matrícula, curso, turno, período)
3. Sistema valida os dados
4. Sistema salva o cadastro
5. Sistema exibe mensagem de sucesso

---

### 5. Cadastrar Fornecedor
**Descrição:** O administrador cadastra um fornecedor no sistema.

**Fluxo Principal:**
1. Administrador acessa o formulário de cadastro de fornecedor
2. Preenche dados da empresa (CNPJ, razão social) e informações comerciais (setor, produtos/serviços)
3. Sistema valida os dados
4. Sistema salva o cadastro
5. Sistema exibe mensagem de sucesso

---

## Representação Visual

```
┌─────────────────────────────────────────────────┐
│         Sistema de Gestão Universitária         │
│                                                  │
│   ┌──────────────┐                              │
│   │              │                              │
│   │Administrador │─────► Cadastrar Pessoa Física│
│   │              │                              │
│   │              │─────► Cadastrar Pessoa Jurídica
│   │              │                              │
│   │              │─────► Cadastrar Professor    │
│   │              │                              │
│   │              │─────► Cadastrar Aluno        │
│   │              │                              │
│   │              │─────► Cadastrar Fornecedor   │
│   └──────────────┘                              │
│                                                  │
└─────────────────────────────────────────────────┘
```
