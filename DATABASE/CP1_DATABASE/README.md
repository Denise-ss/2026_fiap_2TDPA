# 🗄️ Database

Repositório destinado aos estudos e exercícios da disciplina de **Mastering Relational and Non-Relational Database - FIAP**.

Aqui estão organizados os principais conceitos de **SQL e PL/SQL** estudados durante as aulas e praticados através de exercícios.

---

## 📚 Conteúdos estudados

### 🔹 PL/SQL

- Estrutura de bloco `DECLARE / BEGIN / END`
- Declaração de variáveis
- Tipos de dados
- Entrada de valores com `&`
- Atribuição de valores com `:=`
- Saída de dados com `DBMS_OUTPUT.PUT_LINE`

### 🔹 Estruturas de decisão

- `IF`
- `ELSIF`
- `ELSE`
- Operadores lógicos
- Validação de dados

### 🔹 Manipulação de dados

- `CREATE TABLE`
- `SELECT`
- `SELECT INTO`
- `INSERT`
- `UPDATE`
- `DELETE`
- `COMMIT`

### 🔹 Estruturas de repetição

- `LOOP`
- `WHILE`
- `FOR`
- `EXIT WHEN`
- Função `MOD`

---

## 💻 Exercícios

| Exercício | Conteúdo |
|---|---|
| `EXERCICIO1_REAJUSTE_SALARIAL.SQL` | Variáveis, cálculos e `DBMS_OUTPUT` |
| `EXERCICIO2_IMC.SQL` | Estrutura de decisão com `IF`, `ELSIF` e `ELSE` |
| `EXERCICIO3_ALUNO.SQL` | `CREATE TABLE`, `INSERT`, `UPDATE`, `SELECT INTO` e `DELETE` |
| `EXERCICIO4_FIBONACCI.SQL` | Estrutura de repetição com `LOOP` ou `WHILE` |
| `EXERCICIO5_PARES_IMPARES.SQL` | Estrutura `FOR`, decisão com `IF` e função `MOD` |

---

## 🧠 Resumo rápido

### Estrutura básica de um bloco PL/SQL

```sql
DECLARE
    -- Declaração das variáveis

BEGIN
    -- Comandos que serão executados

END;
/
```

### Comandos importantes

```text
DECLARE
→ Declara as variáveis

BEGIN
→ Inicia a execução do bloco

:=
→ Atribui um valor a uma variável

&
→ Solicita um valor ao usuário

DBMS_OUTPUT.PUT_LINE
→ Exibe uma mensagem na tela

IF / ELSIF / ELSE
→ Toma decisões

SELECT
→ Consulta dados

SELECT INTO
→ Consulta um dado e armazena em uma variável

INSERT
→ Insere dados em uma tabela

UPDATE
→ Altera dados existentes

DELETE
→ Exclui dados

COMMIT
→ Confirma e salva as alterações

LOOP / WHILE / FOR
→ Repetem comandos

MOD
→ Retorna o resto de uma divisão

END;
/
→ Finaliza e executa o bloco PL/SQL
```

---

## 📂 Estrutura dos arquivos

```text
DATABASE/
│
├── EXERCICIO1_REAJUSTE_SALARIAL.SQL
├── EXERCICIO2_IMC.SQL
├── EXERCICIO3_ALUNO.SQL
├── EXERCICIO4_FIBONACCI.SQL
├── EXERCICIO5_PARES_IMPARES.SQL
│
└── README.md
```

---

## 🛠️ Tecnologias e ferramentas

- Oracle Database
- SQL
- PL/SQL
- SQLcl
- Visual Studio Code

---

## ▶️ Execução

Os exercícios são desenvolvidos em **PL/SQL** e executados em um banco de dados Oracle através do **SQLcl**.

Para visualizar as mensagens geradas por `DBMS_OUTPUT.PUT_LINE`, utilizar:

```sql
SET SERVEROUTPUT ON;
```

Um bloco PL/SQL deve ser finalizado com:

```sql
END;
/
```

O `/` envia o bloco para execução no SQLcl.

---

## 🎯 Objetivo

Praticar os fundamentos de banco de dados e desenvolver o raciocínio necessário para criação, consulta e manipulação de dados utilizando **SQL e PL/SQL**.

Este repositório será atualizado conforme o avanço das aulas e o desenvolvimento de novos exercícios.