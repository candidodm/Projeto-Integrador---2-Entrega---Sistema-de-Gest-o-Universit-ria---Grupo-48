# Sistema de Gestão Universitária 

**2ª Entrega do Projeto Integrador**  
**Grupo 48 - Senac 2025**

---

## 📋 Sobre o Projeto

Sistema para gerenciar cadastros de:
- Pessoas Físicas
- Pessoas Jurídicas
- Professores
- Alunos
- Fornecedores

---

## 📁 Estrutura do Projeto

```
sistema-universitario/
│
├── prototipos/              # Protótipos das interfaces
│   ├── pessoa-fisica.html
│   ├── pessoa-juridica.html
│   ├── professor.html
│   ├── aluno.html
│   └── fornecedor.html
│
├── database/                # Scripts SQL
│   ├── DDL.sql             # Criação de tabelas
│   └── DML.sql             # Inserção de dados
│
├── diagramas/               # Diagramas da 1a Entrega
│   ├── caso-uso.md
│   └── classes.md
│
└── README.md                # Este arquivo
```

---

## 🗄️ Banco de Dados

### Tabelas Criadas

1. **pessoa** - Dados comuns (email, telefone, endereço)
2. **pessoa_fisica** - CPF, nome, data nascimento
3. **pessoa_juridica** - CNPJ, razão social
4. **professor** - Matrícula, departamento, titulação
5. **aluno** - Matrícula, curso, turno, período
6. **fornecedor** - Setor, produtos/serviços

### Como Executar

```bash
# Criar banco e tabelas
mysql -u root -p < database/DDL.sql

# Inserir dados de exemplo
mysql -u root -p < database/DML.sql
```

---

## 👥 Equipe

- Delfino Maurício Cândido
- José Márcio Canto Oliveira
- Pedro Henrique Beltrão de Souza
- Renan Telo de Morais
- Vinicius Luscri

---

## 📐 Diagramas UML

### Diagrama de Caso de Uso

```
        Administrador
              |
              |---- Cadastrar Pessoa Física
              |---- Cadastrar Pessoa Jurídica
              |---- Cadastrar Professor
              |---- Cadastrar Aluno
              |---- Cadastrar Fornecedor
```

### Diagrama de Classes

```
         Pessoa
         /    \
        /      \
PessoaFisica  PessoaJuridica
    /   \            |
   /     \           |
Professor Aluno  Fornecedor
```

---

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais como parte da Disciplina: Projeto Integrador - Desenvolvimento de Sistemas Orientado a Objetos.

---

## 📞 Contato

Para dúvidas ou sugestões sobre o projeto, entre em contato com a equipe do Grupo 48.

---

**© 2025 Sistema de Gestão Universitária - Grupo 48**
