# 📱 App Lista — Flutter

Projeto desenvolvido durante as aulas de **Mobile Application Development - FIAP**, utilizando **Dart e Flutter**.

O objetivo deste README é acompanhar a evolução do projeto durante as aulas, registrando os principais conceitos, comandos e códigos aprendidos a cada semana.

---

# 📅 Aula — 10/09/2026

## 🎯 O que aprendemos hoje

Nesta aula iniciamos um novo projeto Flutter do zero e começamos a trabalhar com organização de arquivos e entrada de dados pelo usuário.

| Conceito | O que aprendemos |
|---|---|
| Criação do projeto | Criamos um novo projeto Flutter pelo terminal |
| Organização em pastas | Começamos a separar as páginas do aplicativo em arquivos diferentes |
| `import` | Aprendemos a utilizar uma classe que está em outro arquivo |
| `TextField` | Criamos um campo para o usuário digitar texto |
| `TextEditingController` | Aprendemos a controlar e acessar o texto digitado |
| `InputDecoration` | Configuramos informações exibidas no campo |
| `onChanged` | Conhecemos o evento executado quando o texto é alterado |
| `onSubmitted` | Utilizamos um evento quando o texto é enviado |
| `ElevatedButton` | Criamos um botão |
| `onPressed` | Definimos uma ação para o clique do botão |
| `String` | Utilizamos uma variável para armazenar texto |
| `.text` | Pegamos o conteúdo do campo |
| `.clear()` | Limpamos o conteúdo do campo |
| `print()` | Exibimos informações no console |

---

# 1️⃣ Criação do projeto

## Acessando a pasta

No CMD, o primeiro passo é acessar a pasta onde queremos criar o projeto.

Nesta aula utilizamos:

```cmd
cd Desktop
```

### O que significa?

`cd` significa **Change Directory**.

De forma simples:

```text
cd Desktop
     ↓
ENTRAR NA PASTA DESKTOP
```

---

## Criando o projeto Flutter

Depois utilizamos:

```cmd
flutter create --platforms=android,ios app_lista
```

Neste caso:

```text
app_lista
```

é o nome escolhido para o projeto.

O nome pode ser alterado ao criar outros projetos.

### Entendendo o comando

```text
flutter
   ↓
utiliza a ferramenta Flutter

create
   ↓
cria um novo projeto

--platforms=android,ios
   ↓
gera o projeto para Android e iOS

app_lista
   ↓
nome do projeto
```

Portanto:

```text
flutter create --platforms=android,ios app_lista

                ↓

CRIAR UM PROJETO FLUTTER
PARA ANDROID E IOS
CHAMADO app_lista
```

---

# 2️⃣ Organização do projeto

Nesta aula começamos a separar o código em arquivos diferentes.

Dentro da pasta `lib`, temos:

```text
lib/
│
├── main.dart
│
└── pages/
    └── todo_list_page.dart
```

### `main.dart`

É onde iniciamos a aplicação.

### `pages/`

Pasta criada para organizar as páginas/telas da aplicação.

### `todo_list_page.dart`

Arquivo que contém a página que estamos desenvolvendo.

A organização fica:

```text
main.dart
    │
    │ importa
    ▼
todo_list_page.dart
    │
    ▼
TodoListPage
```

Isso permite evitar que todo o código fique dentro de um único arquivo.

---

# 3️⃣ Arquivo `main.dart`

Código utilizado na aula:

```dart
import 'package:flutter/material.dart';

import 'package:app_lista/pages/todo_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListPage(),
    );
  }
}
```

---

## Entendendo o `main.dart`

### Importando o Flutter

```dart
import 'package:flutter/material.dart';
```

Importa os componentes do Material Design utilizados pelo Flutter.

---

### Importando nossa página

```dart
import 'package:app_lista/pages/todo_list_page.dart';
```

Estamos trazendo para o `main.dart` o arquivo:

```text
lib/
└── pages/
    └── todo_list_page.dart
```

Assim conseguimos utilizar:

```dart
TodoListPage()
```

dentro do `main.dart`.

---

### Início da aplicação

```dart
void main() {
  runApp(MyApp());
}
```

Fluxo:

```text
main()
   ↓
runApp()
   ↓
MyApp()
```

---

### Definindo a primeira página

Dentro do `MaterialApp` temos:

```dart
return MaterialApp(
  home: TodoListPage(),
);
```

`home` define a página inicial do aplicativo.

Fluxo:

```text
APLICATIVO INICIA
        ↓
      main()
        ↓
     MyApp()
        ↓
   MaterialApp
        ↓
      home
        ↓
  TodoListPage()
```

---

# 4️⃣ Arquivo `todo_list_page.dart`

Código utilizado na aula:

```dart
import 'package:flutter/material.dart';

final TextEditingController emailController = TextEditingController();

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  hintText: "Digite seu e-mail",
                ),
                // onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              ElevatedButton(
                onPressed: login,
                child: Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String text = emailController.text;

    print("login realizado");
    print(text);

    emailController.clear();
  }

  void onChanged(String text) {
    print(text);
  }

  void onSubmitted(String text) {
    print(text);
  }
}
```

---

# 5️⃣ `TextField`

Nesta aula conhecemos o:

```dart
TextField()
```

O `TextField` cria um campo onde o usuário pode digitar informações.

No nosso projeto:

```dart
TextField(
  controller: emailController,
  decoration: InputDecoration(
    labelText: "E-mail",
    hintText: "Digite seu e-mail",
  ),
)
```

Na tela teremos a ideia de:

```text
┌──────────────────────────────┐
│ E-mail                       │
│ Digite seu e-mail            │
└──────────────────────────────┘
```

---

# 6️⃣ `TextEditingController`

Criamos:

```dart
final TextEditingController emailController =
    TextEditingController();
```

O `TextEditingController` permite controlar o campo de texto e acessar aquilo que o usuário digitou.

Podemos pensar nele como uma ponte:

```text
USUÁRIO DIGITA
      ↓
  TextField
      ↓
emailController
      ↓
podemos acessar o texto
```

Depois conectamos o controller ao campo:

```dart
controller: emailController
```

Agora o `emailController` consegue acessar o conteúdo desse `TextField`.

---

# 7️⃣ `InputDecoration`

Utilizamos:

```dart
decoration: InputDecoration(
  labelText: "E-mail",
  hintText: "Digite seu e-mail",
)
```

### `labelText`

```dart
labelText: "E-mail"
```

Define o nome/rótulo do campo.

### `hintText`

```dart
hintText: "Digite seu e-mail"
```

Mostra uma dica do que o usuário deve digitar.

---

# 8️⃣ Eventos do `TextField`

Também conhecemos eventos relacionados ao campo de texto.

## `onChanged`

```dart
void onChanged(String text) {
  print(text);
}
```

O `onChanged` pode ser utilizado para executar uma ação conforme o conteúdo do campo é alterado.

No código atual ele está comentado:

```dart
// onChanged: onChanged,
```

Por isso não está sendo utilizado no momento.

---

## `onSubmitted`

No `TextField` temos:

```dart
onSubmitted: onSubmitted,
```

E o método:

```dart
void onSubmitted(String text) {
  print(text);
}
```

Quando o texto é submetido, o valor recebido é enviado para o método.

---

# 9️⃣ Botão `Entrar`

Criamos:

```dart
ElevatedButton(
  onPressed: login,
  child: Text("Entrar"),
)
```

### `ElevatedButton`

Cria o botão.

### `child`

```dart
child: Text("Entrar")
```

Define o conteúdo exibido dentro do botão.

### `onPressed`

```dart
onPressed: login
```

Define qual função será chamada quando o usuário clicar no botão.

Fluxo:

```text
[ ENTRAR ]
     ↓
usuário clica
     ↓
onPressed
     ↓
login()
```

---

# 🔟 Método `login()`

Criamos:

```dart
void login() {
  String text = emailController.text;

  print("login realizado");
  print(text);

  emailController.clear();
}
```

Esse método realiza três ações principais.

### 1. Pega o texto digitado

```dart
String text = emailController.text;
```

`String` representa um texto.

O `.text` pega o conteúdo armazenado pelo controller.

Exemplo:

```text
Usuário digitou:

teste@email.com

        ↓

emailController.text

        ↓

String text

        ↓

"teste@email.com"
```

### 2. Exibe no console

```dart
print("login realizado");
print(text);
```

O console poderá mostrar:

```text
login realizado
teste@email.com
```

### 3. Limpa o campo

```dart
emailController.clear();
```

O método `.clear()` limpa o conteúdo do campo.

---

# 🧱 Organização visual da página

Também utilizamos alguns Widgets para organizar os elementos:

```text
Scaffold
└── body
    └── Center
        └── Padding
            └── Column
                ├── TextField
                └── ElevatedButton
```

### `Center`

Centraliza o conteúdo.

### `Padding`

Adiciona espaçamento.

Utilizamos:

```dart
padding: EdgeInsets.symmetric(horizontal: 16)
```

Isso cria um espaçamento horizontal nas laterais.

### `Column`

Organiza os elementos verticalmente:

```text
CAMPO DE E-MAIL
      ↓
BOTÃO ENTRAR
```

---

# 🔄 Fluxo da aplicação até o momento

```text
flutter create
      ↓
PROJETO CRIADO
      ↓
main.dart
      ↓
TodoListPage()
      ↓
todo_list_page.dart
      ↓
TextField
      ↓
USUÁRIO DIGITA O E-MAIL
      ↓
emailController
      ↓
USUÁRIO CLICA EM "ENTRAR"
      ↓
login()
      ↓
emailController.text
      ↓
print()
      ↓
emailController.clear()
      ↓
CAMPO É LIMPO
```

---

# 💻 Principais comandos da aula

| Comando | Significado |
|---|---|
| `cd Desktop` | Entra na pasta Desktop |
| `flutter create --platforms=android,ios app_lista` | Cria o projeto `app_lista` para Android e iOS |
| `flutter create` | Cria um novo projeto Flutter |
| `--platforms=android,ios` | Define Android e iOS como plataformas do projeto |
| `flutter run` | Executa o projeto Flutter |
| `flutter pub get` | Baixa/atualiza as dependências do projeto |

---

# 🧠 Resumo para revisão — 10/09/2026

Nesta aula aprendemos:

- criar um projeto Flutter do zero pelo CMD;
- escolher Android e iOS como plataformas;
- organizar o código utilizando a pasta `pages`;
- separar o `main.dart` da página da aplicação;
- importar arquivos do próprio projeto;
- utilizar `TextField`;
- utilizar `TextEditingController`;
- acessar o texto digitado com `.text`;
- limpar o campo utilizando `.clear()`;
- utilizar `InputDecoration`;
- trabalhar com `labelText` e `hintText`;
- conhecer `onChanged`;
- utilizar `onSubmitted`;
- criar um `ElevatedButton`;
- executar uma função através de `onPressed`;
- utilizar `String`;
- utilizar `print()` para visualizar informações no console;
- organizar elementos com `Center`, `Padding` e `Column`.

---

## 📌 Resumo visual

```text
CRIAÇÃO DO PROJETO
        ↓
ORGANIZAÇÃO EM PASTAS
        ↓
main.dart
        ↓
TodoListPage
        ↓
TextField
        ↓
TextEditingController
        ↓
CAPTURA DO TEXTO
        ↓
ElevatedButton
        ↓
login()
        ↓
print()
        ↓
clear()
```

---

# 📆 Evolução do projeto

Este projeto será atualizado durante as próximas aulas.

Cada nova aula será registrada neste README por data, mantendo um histórico da evolução do projeto e dos novos conceitos aprendidos.

### Aulas

- **10/09/2026** — Criação do projeto, organização em páginas, `TextField`, `TextEditingController`, eventos e captura de texto.
- **Próxima aula** — Continuação do projeto.