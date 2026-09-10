# 🎓 FIAP — Análise e Desenvolvimento de Sistemas

Repositório destinado à organização dos **estudos, exercícios e projetos desenvolvidos durante o 2º ano de Análise e Desenvolvimento de Sistemas na FIAP**.

> Os conteúdos detalhados, códigos e anotações estão organizados dentro de cada projeto.

---

## 📚 Índice de Estudos

### 🗄️ Database

Estudos e exercícios utilizando **SQL e PL/SQL**.

**Conteúdos praticados:**

- Criação e manipulação de tabelas
- `SELECT`
- `INSERT`, `UPDATE` e `DELETE`
- `COMMIT`
- Blocos PL/SQL
- Variáveis e tipos de dados
- Entrada de valores com `&`
- `DBMS_OUTPUT.PUT_LINE`
- Estruturas condicionais `IF`, `ELSIF` e `ELSE`
- `SELECT INTO`
- `FOR LOOP`
- `WHILE LOOP`
- `LOOP` e `EXIT WHEN`
- Função `MOD`

📂 Estudos e exercícios:

```text
DATABASE/
│
├── aula07082026/
├── aula21082026/
├── aula28082026/
│
└── CP1_DATABASE/
    ├── EXERCICIO1_REAJUSTE_SALARIAL.SQL
    ├── EXERCICIO2_IMC.SQL
    ├── EXERCICIO3_ALUNO.SQL
    ├── EXERCICIO4_FIBONACCI.SQL
    ├── EXERCICIO5_PARES_IMPARES.SQL
    └── README.md
```

---

### 📱 Mobile Application Development

Desenvolvimento de aplicações utilizando **Dart e Flutter**.

**Dart**

- Variáveis e tipos `int` e `bool`
- Funções
- `void`
- Incremento `++` e decremento `--`
- Operadores de comparação
- Operador ternário `? :`
- Getters

**Flutter**

- `MaterialApp`
- `StatelessWidget`
- `StatefulWidget`
- `State`
- `setState()`
- `Scaffold`
- `AppBar`
- `Container`
- `Column` e `Row`
- `Text` e `TextButton`
- Assets e imagens

**Ferramentas e recursos**

- Google Fonts
- Flutter Launcher Icons
- Hot Reload
- Auto Save
- VS Code

📂 Projeto atual:

```text
mobile/
└── projeto_cont_fiap/
    └── README.md
```

---


### ☕ Java Advanced — Spring Boot

Desenvolvimento de um **backend para um blog utilizando Java, Spring Boot, JPA e Lombok**.

O projeto está sendo construído em camadas, separando a representação dos dados, o acesso ao banco e as operações do sistema.

**Conteúdos praticados:**

**Entities e JPA**

- `@Entity` e `@Table`
- `@Id` e `@GeneratedValue`
- Identificadores com `UUID`
- `@Column`
- Validações com `@NotBlank`, `@NotNull` e `@Size`
- Lombok: `@Getter`, `@Setter`, `@NoArgsConstructor`, `@AllArgsConstructor` e `@Builder`
- Métodos `equals()`, `hashCode()` e `toString()`

**Relacionamentos**

- `@OneToOne` — um para um
- `@OneToMany` — um para muitos
- `@ManyToOne` — muitos para um
- `@ManyToMany` — muitos para muitos
- `@JoinColumn`
- `@JoinTable`
- `mappedBy`
- `CascadeType`
- `FetchType.LAZY` e `FetchType.EAGER`

**Entidades criadas**

- `User`
- `Profile`
- `Post`
- `Tag`
- `Role`
- `Order`
- `OrderItem`
- `OrderKey`
- `OrderItemKey`

**Repositories**

Foram criados os repositórios responsáveis pelo acesso aos dados:

- `UserRepository`
- `ProfileRepository`
- `PostRepository`
- `RoleRepository`
- `TagRepository`
- `OrderRepository`
- `OrderItemRepository`
- `OrderRepositoryCustom`
- `OrderRepositoryCustomImpl`

Os repositórios utilizam principalmente:

```java
JpaRepository<Entidade, TipoDaChave>
```

Exemplo:

```java
public interface UserRepository extends JpaRepository<User, UUID> {
}
```

**Service — conteúdo atual**

A camada de Service começou a ser desenvolvida com:

- `UserService`
- `UserServiceImpl`

Operações presentes no código:

- `findAll()` — buscar todos os usuários
- `findById()` — buscar usuário pelo ID
- `persist()` — salvar um usuário
- `delete()` — excluir um usuário
- `deleteById()` — excluir pelo ID
- `existsById()` — verificar se o usuário existe
- `partialUpdate()` — atualizar parcialmente um usuário
- Paginação com `Page` e `Pageable`

Fluxo principal estudado:

```text
ENTITY
Representa os dados
     ↓
REPOSITORY
Acessa os dados
     ↓
SERVICE
Organiza as operações do sistema
```

📂 Projeto e material de revisão:

```text
Java_Advanced/
└── java_advanced-main/
    ├── blogBackend/
    └── README_JAVA_ADVANCED.md
```

> O `README_JAVA_ADVANCED.md` contém as explicações detalhadas e a tabela de comandos/anotações utilizadas no projeto.

---

## 🗂️ Organização

```text
2026_fiap_2TDPA/
│
├── DATABASE/
│   ├── Aulas e exercícios
│   └── CP1_DATABASE/
│       └── README.md
│
├── mobile/
│   └── projeto_cont_fiap/
│       └── README.md
│
├── Java_Advanced/
│   └── java_advanced-main/
│       ├── blogBackend/
│       └── README_JAVA_ADVANCED.md
│
└── README.md
```

---

## 🚀 Evolução

Este repositório será atualizado ao longo do ano conforme novos conteúdos, tecnologias e projetos forem desenvolvidos.

Cada projeto poderá ter seu próprio `README.md` com:

- 📌 Objetivo
- 📚 Conteúdos aprendidos
- 💻 Códigos e exemplos
- 🛠️ Tecnologias utilizadas
- 📝 Anotações e explicações