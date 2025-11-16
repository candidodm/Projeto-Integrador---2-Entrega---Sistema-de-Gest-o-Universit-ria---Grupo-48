# Diagrama de Classes - Sistema de Gestão Universitária

## Hierarquia de Classes

```
                  ┌──────────┐
                  │  Pessoa  │
                  ├──────────┤
                  │ email    │
                  │ telefone │
                  │ endereco │
                  │ cidade   │
                  │ estado   │
                  │ cep      │
                  └─────┬────┘
                        │
            ┌───────────┴───────────┐
            │                       │
      ┌─────▼─────┐          ┌──────▼──────┐
      │PessoaFisica│          │PessoaJuridica│
      ├───────────┤          ├─────────────┤
      │ cpf       │          │ cnpj        │
      │ nome      │          │ razaoSocial │
      │ dataNasc  │          │ nomeFantasia│
      └─────┬─────┘          └──────┬──────┘
            │                       │
      ┌─────┴─────┐                 │
      │           │                 │
┌─────▼────┐ ┌───▼────┐      ┌─────▼──────┐
│Professor │ │ Aluno  │      │ Fornecedor │
├──────────┤ ├────────┤      ├────────────┤
│matricula │ │matricula│      │setorAtuacao│
│depto     │ │curso   │      │produtos    │
│titulacao │ │turno   │      └────────────┘
└──────────┘ │periodo │
             └────────┘
```

## Descrição das Classes

### Pessoa (Classe Base)
**Atributos:**
- email: String
- telefone: String
- endereco: String
- cidade: String
- estado: String
- cep: String

### PessoaFisica (Herda de Pessoa)
**Atributos:**
- cpf: String
- nome: String
- dataNascimento: Date

### PessoaJuridica (Herda de Pessoa)
**Atributos:**
- cnpj: String
- razaoSocial: String
- nomeFantasia: String

### Professor (Herda de PessoaFisica)
**Atributos:**
- matricula: String
- departamento: String
- titulacao: String

### Aluno (Herda de PessoaFisica)
**Atributos:**
- matricula: String
- curso: String
- turno: String
- periodo: Integer

### Fornecedor (Herda de PessoaJuridica)
**Atributos:**
- setorAtuacao: String
- produtosServicos: String

## Relacionamentos

- **Pessoa** é a classe base abstrata
- **PessoaFisica** e **PessoaJuridica** herdam de **Pessoa**
- **Professor** e **Aluno** herdam de **PessoaFisica**
- **Fornecedor** herda de **PessoaJuridica**
