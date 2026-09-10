# ☕ Java Advanced — Blog Backend

> **FIAP — Análise e Desenvolvimento de Sistemas**  
> Material de revisão do projeto desenvolvido em aula.  
> **Ponto atual (10/09/2026): Entities e Repositories concluídos; camada Service em andamento.**

---

## 🎯 Objetivo do projeto

O projeto está construindo o **backend de um blog usando Java, Spring Boot, JPA e Lombok**.

Até o momento, o projeto foi organizado principalmente nestas camadas:

```text
BLOG BACKEND
│
├── domainmodel/entities
│   ├── User
│   ├── Profile
│   ├── Post
│   ├── Tag
│   ├── Role
│   ├── Order
│   ├── OrderItem
│   ├── OrderKey
│   └── OrderItemKey
│
├── datasource/repositories
│   ├── UserRepository
│   ├── ProfileRepository
│   ├── PostRepository
│   ├── RoleRepository
│   ├── TagRepository
│   ├── OrderRepository
│   ├── OrderItemRepository
│   ├── OrderRepositoryCustom
│   └── OrderRepositoryCustomImpl
│
└── services
    ├── UserService
    └── UserServiceImpl
```

A ideia principal é:

```text
ENTITY
Representa os dados
     ↓
REPOSITORY
Acessa/pesquisa os dados
     ↓
SERVICE
Organiza as operações do sistema
```

---

# 1. Entities — Entidades

As **Entities** representam os objetos do sistema e são mapeadas pelo JPA para persistência no banco de dados.

## User

Representa o usuário do sistema.

Principais informações:

- `id` — identificação do usuário.
- `name` — nome.
- `email` — e-mail.
- `password` — senha.
- `profile` — perfil do usuário.
- `posts` — posts do usuário.
- `roles` — papéis/permissões.
- `orders` — pedidos relacionados ao usuário.

Relacionamentos presentes no projeto:

```text
User 1 ─── 1 Profile
User 1 ─── N Posts
User N ─── N Roles
User 1 ─── N Orders
```

---

## Profile

Representa o perfil de um usuário.

Possui:

- `id`
- `bio`
- `profilePicture`
- `user`

A relação com `User` é:

```text
User 1 ─── 1 Profile
```

No `Profile`, `@JoinColumn(name="user_id")` indica a coluna utilizada para relacionar o perfil ao usuário.

---

## Post

Representa uma publicação do blog.

Possui:

- `id`
- `title`
- `content`
- `user`
- `tags`

Um usuário pode escrever vários posts:

```text
User 1 ─── N Posts
```

Um post pode possuir várias tags e uma tag pode estar em vários posts:

```text
Post N ─── N Tag
```

A tabela intermediária definida no projeto é:

```text
SYS006_POSTS_TAGS
```

---

## Tag

Representa uma tag utilizada para classificar/identificar posts.

Possui:

- `id`
- `name`
- `posts`

A relação é muitos-para-muitos com `Post`.

---

## Role

Representa um papel/permissão relacionado aos usuários.

Possui:

- `id`
- `name`
- `users`

A relação é muitos-para-muitos:

```text
User N ─── N Role
```

A tabela intermediária utilizada é:

```text
SYS008_SYSTEM_USERS_ROLES
```

---

## Order

Representa um pedido.

Possui:

- `key`
- `totalPrice`
- `totalQuantity`
- `items`
- `user`

O projeto utiliza uma chave composta:

```java
@EmbeddedId
private OrderKey key;
```

`OrderKey` contém:

```text
userId
orderId
```

---

## OrderItem

Representa um item de um pedido.

Possui:

- `key`
- `productName`
- `price`
- `quantity`
- `order`

Também utiliza uma chave composta:

```java
@EmbeddedId
private OrderItemKey key;
```

`OrderItemKey` contém:

```text
orderId
orderItemId
```

---

# 2. Relacionamentos

## `@OneToOne`

Um objeto se relaciona com exatamente um do outro tipo.

```text
User 1 ─── 1 Profile
```

## `@OneToMany`

Um objeto pode possuir vários objetos relacionados.

```text
User 1 ─── N Post
```

## `@ManyToOne`

É o outro lado de uma relação um-para-muitos.

```text
Post N ─── 1 User
```

## `@ManyToMany`

Vários objetos podem se relacionar com vários outros.

```text
Post N ─── N Tag

User N ─── N Role
```

## `@JoinColumn`

Define a coluna utilizada na ligação entre entidades.

Exemplo:

```java
@JoinColumn(name = "user_id")
```

## `@JoinTable`

Define uma tabela intermediária usada em relacionamentos muitos-para-muitos.

---

# 3. Chaves simples e compostas

## Chave simples

Exemplo do `User`:

```java
@Id
@GeneratedValue(strategy = GenerationType.UUID)
private UUID id;
```

`@Id` identifica a chave primária e `@GeneratedValue` configura a geração do identificador.

## Chave composta

No projeto também aparecem:

```java
@EmbeddedId
```

e:

```java
@Embeddable
```

Exemplo:

```text
Order
  ↓
OrderKey
  ├── userId
  └── orderId
```

`@Embeddable` marca a classe que pode ser incorporada, enquanto `@EmbeddedId` utiliza esse objeto como identificador da entidade.

---

# 4. Repository — acesso aos dados

Depois das Entities, foram criados os **Repositories**.

A estrutura básica utilizada é:

```java
public interface UserRepository
        extends JpaRepository<User, UUID> {
}
```

Leia assim:

```text
JpaRepository<ENTIDADE, TIPO DA CHAVE>
```

Portanto:

```text
JpaRepository<User, UUID>
              │      │
              │      └── tipo da chave
              └───────── entidade
```

O `JpaRepository` fornece operações de persistência que podem ser utilizadas pelos repositórios.

---

# 5. Repositories criados no projeto

## UserRepository

```java
public interface UserRepository
        extends JpaRepository<User, UUID> {
}
```

Trabalha com:

```text
Entidade → User
Chave    → UUID
```

---

## ProfileRepository

```java
public interface ProfileRepository
        extends JpaRepository<Profile, UUID> {

    Optional<Profile> findByUserId(UUID userId);

    Optional<Profile> findByUser(User user);
}
```

Além das operações herdadas, possui buscas por:

- ID do usuário;
- objeto `User`.

`Optional<Profile>` representa uma busca que pode encontrar um `Profile` ou não.

---

## PostRepository

O `PostRepository` trabalha com:

```text
Entidade → Post
Chave    → UUID
```

No arquivo enviado também foram criadas consultas para:

- buscar posts pelo ID do usuário;
- buscar posts pelo objeto `User`;
- buscar com `Pageable`;
- ordenar com `Sort`;
- buscar por tags usando `@Query`;
- buscar título com consulta nativa.

Essas consultas fazem parte do código atual do repositório.

---

## RoleRepository

```java
public interface RoleRepository
        extends JpaRepository<Role, UUID> {
}
```

Trabalha com:

```text
Entidade → Role
Chave    → UUID
```

---

## TagRepository

```java
public interface TagRepository
        extends JpaRepository<Tag, UUID> {
}
```

Trabalha com:

```text
Entidade → Tag
Chave    → UUID
```

---

## OrderRepository

```java
public interface OrderRepository extends
        JpaRepository<Order, OrderKey>,
        QuerydslPredicateExecutor<Order>,
        OrderRepositoryCustom {
}
```

A parte fundamental é:

```text
JpaRepository<Order, OrderKey>
```

Ou seja:

```text
Entidade → Order
Chave    → OrderKey
```

O arquivo atual também estende `QuerydslPredicateExecutor<Order>` e `OrderRepositoryCustom`.

---

## OrderItemRepository

```java
public interface OrderItemRepository
        extends JpaRepository<OrderItem, OrderItemKey> {
}
```

Leia:

```text
Entidade → OrderItem
Chave    → OrderItemKey
```

Aqui a chave não é `UUID` diretamente porque `OrderItem` utiliza `OrderItemKey`.

---

## OrderRepositoryCustom

O projeto também contém uma interface customizada com:

```java
List<Order> findByTotalQuantityGreaterThanQueryDsl(Integer quantity);

List<Order> findByTotalQuantityGreaterThanCriteria(Integer quantity);
```

Ela define duas operações de busca de `Order` pela quantidade total.

---

## OrderRepositoryCustomImpl

É a implementação do `OrderRepositoryCustom`.

O código atual possui duas formas de realizar a consulta:

- QueryDSL;
- Criteria API.


---

# 6. Service — ponto atual da aula

Depois de Entities e Repositories, o projeto chegou à camada **Service**.

A ideia simples é:

```text
SERVICE
"O que o sistema precisa fazer?"
       ↓
REPOSITORY
"Acessar os dados"
       ↓
ENTITY
"Com qual objeto estamos trabalhando?"
```

---

## UserService

`UserService` é uma interface que define operações relacionadas a usuários.

No arquivo atual existem:

```java
List<User> findAll();

Optional<User> findById(UUID id);

User persist(User user);

void delete(User user);

void deleteById(UUID id);

Page<User> findAll(Pageable pageable);

boolean existsById(UUID id);

boolean existsById(User user);

Optional<User> partialUpdate(UUID id, Map<String, Object> updates);
```

Em linguagem simples:

| Método | Significado |
|---|---|
| `findAll()` | Buscar todos os usuários |
| `findById(id)` | Buscar um usuário pelo ID |
| `persist(user)` | Salvar/persistir um usuário |
| `delete(user)` | Excluir um usuário |
| `deleteById(id)` | Excluir pelo ID |
| `findAll(pageable)` | Buscar usuários usando paginação |
| `existsById(id)` | Verificar se determinado ID existe |
| `existsById(user)` | Verificar a existência usando o usuário |
| `partialUpdate(...)` | Atualizar parcialmente um usuário |

---

## UserServiceImpl

A classe:

```java
@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService
```

é a implementação da interface `UserService`.

Ela possui:

```java
private final UserRepository userRepository;
```

Ou seja, o Service utiliza o Repository.

Exemplo:

```java
public List<User> findAll() {
    return userRepository.findAll();
}
```

O fluxo é:

```text
UserServiceImpl
      ↓
userRepository.findAll()
      ↓
UserRepository
      ↓
dados de User
```

Outro exemplo:

```java
public User persist(User user) {
    return userRepository.save(user);
}
```

Fluxo:

```text
User
 ↓
UserServiceImpl.persist()
 ↓
UserRepository.save()
 ↓
persistência dos dados
```

O `partialUpdate` primeiro procura o usuário pelo ID. Se encontrar, verifica os campos recebidos (`name`, `email` ou `password`), altera o campo correspondente e salva novamente o usuário.

---

# 7. Tabela dos principais comandos e anotações

| Código / anotação | Significado simples |
|---|---|
| `package` | Define onde a classe está organizada no projeto |
| `import` | Traz classes/anotações que serão utilizadas |
| `public class` | Cria uma classe |
| `public interface` | Cria uma interface/contrato |
| `extends` | Herda/estende funcionalidades |
| `implements` | Diz que uma classe implementa uma interface |
| `@Entity` | Marca uma classe como entidade JPA |
| `@Table` | Define o nome da tabela |
| `@Id` | Define a chave primária |
| `@GeneratedValue` | Configura a geração do ID |
| `UUID` | Tipo utilizado para identificadores |
| `@Column` | Configura uma coluna |
| `@NotBlank` | Valida que um texto não esteja em branco |
| `@NotNull` | Valida que um valor não seja `null` |
| `@Size` | Valida o tamanho |
| `@Getter` | Lombok gera o método de leitura |
| `@Setter` | Lombok gera o método de alteração |
| `@NoArgsConstructor` | Lombok gera construtor sem argumentos |
| `@AllArgsConstructor` | Lombok gera construtor com todos os argumentos |
| `@Builder` | Lombok fornece o padrão Builder para criar objetos |
| `@EqualsAndHashCode` | Lombok gera `equals()` e `hashCode()` |
| `@ToString` | Lombok gera `toString()` |
| `@OneToOne` | Relacionamento 1:1 |
| `@OneToMany` | Relacionamento 1:N |
| `@ManyToOne` | Relacionamento N:1 |
| `@ManyToMany` | Relacionamento N:N |
| `@JoinColumn` | Define coluna de ligação |
| `@JoinColumns` | Define mais de uma coluna de ligação |
| `@JoinTable` | Define tabela intermediária |
| `mappedBy` | Indica o atributo do outro lado que mapeia a relação |
| `CascadeType.ALL` | Propaga operações configuradas para o relacionamento |
| `FetchType.EAGER` | Relacionamento configurado para carregamento imediato |
| `FetchType.LAZY` | Relacionamento configurado para carregamento tardio |
| `Set<T>` | Coleção de elementos sem duplicação segundo suas regras |
| `HashSet<>` | Implementação de `Set` usada no projeto |
| `@Embeddable` | Marca uma classe que pode ser incorporada |
| `@EmbeddedId` | Usa um objeto incorporado como ID |
| `JpaRepository<X,Y>` | Repository da entidade `X` com chave `Y` |
| `Optional<T>` | Pode conter um objeto ou estar vazio |
| `List<T>` | Coleção/lista de objetos |
| `Page<T>` | Resultado paginado |
| `Pageable` | Informações/configuração de paginação |
| `Sort` | Configuração de ordenação |
| `@Query` | Define uma consulta no Repository |
| `@Param` | Liga um parâmetro do método à consulta |
| `nativeQuery = true` | Indica consulta SQL nativa |
| `@Service` | Marca a classe como componente da camada Service |
| `@RequiredArgsConstructor` | Lombok cria construtor para campos necessários/finais |
| `findAll()` | Busca todos |
| `findById()` | Busca pelo ID |
| `save()` | Salva/persiste |
| `delete()` | Exclui o objeto |
| `deleteById()` | Exclui pelo ID |
| `existsById()` | Verifica se um ID existe |
| `@Override` | Indica que um método está implementando/sobrescrevendo outro |
| `equals()` | Compara objetos conforme a implementação |
| `hashCode()` | Gera o hash utilizado pelo Java |
| `toString()` | Representa o objeto como texto |

---

# 8. Mapa mental para revisão

```text
                    BLOG BACKEND
                         │
                         ▼
                    ENTITIES
                         │
        ┌────────────────┼────────────────┐
        │                │                │
       User             Post            Order
        │                │                │
     Profile            Tags          OrderItem
        │
      Roles
                         │
                         ▼
                   REPOSITORIES
                         │
              JpaRepository<X,Y>
                         │
                         ▼
                      SERVICE
                         │
                  UserService
                         │
                         ▼
                UserServiceImpl
                         │
                         ▼
                 UserRepository
```


## 📌 Status da matéria — 10/09/2026

```text
Entities       ✅
Relacionamentos ✅
Chaves          ✅
Repositories    ✅
Service         🔵 EM ANDAMENTO
```

Este README deve ser atualizado conforme o projeto evoluir nas próximas aulas.
