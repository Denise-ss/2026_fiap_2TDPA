# 📱 projeto_cont_fiap

Projeto desenvolvido durante as aulas de **Mobile Application Development - FIAP**, utilizando **Flutter e Dart**.

O projeto consiste em um contador para controlar a quantidade de pessoas dentro de um laboratório.

---

# 📌 SOBRE O PROJETO

O aplicativo possui dois botões:

- **Entrou** → adiciona uma pessoa ao laboratório.
- **Saiu** → remove uma pessoa do laboratório.

A capacidade máxima definida é de **25 pessoas**.

Quando ainda existem vagas, aparece:

```text
Pode entrar
```

Quando chegar em 25 pessoas:

```text
Lab lotado
```

O sistema também impede:

- que o contador fique menor que `0`;
- que o contador ultrapasse `25`.

---

# 🛠️ TECNOLOGIAS UTILIZADAS

- Flutter
- Dart
- Material Design
- Google Fonts
- Flutter Launcher Icons
- VS Code
- Android

---

# 📚 AULA DIA 08/09/2026

## 1️⃣ INCLUSÃO DE IMAGEM: ÍCONE DO ANDROID

Acesse o projeto que estamos trabalhando e entre no arquivo:

```text
pubspec.yaml
```

Em `dev_dependencies`, incluímos o pacote de ícones:

```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_launcher_icons: "^0.14.4"
```

> O `flutter_launcher_icons` é o pacote utilizado para gerar os ícones do aplicativo.

### 📖 Documentação

Documentação utilizada em aula:

https://pub.dev/packages/flutter_launcher_icons

No final do código precisamos colocar a configuração que está na documentação:

```yaml
flutter_launcher_icons:
  android: true
  ios: true

  adaptive_icon_background: "#000000"
  adaptive_icon_foreground: "assets/icons/fiap_logo.jpg"

  image_path: "assets/icons/fiap_icon.jpg"

  min_sdk_android: 21

  web:
    generate: true
    image_path: "path/to/image.png"
    background_color: "#hexcode"
    theme_color: "#hexcode"

  windows:
    generate: true
    image_path: "path/to/image.png"
    icon_size: 48

  macos:
    generate: true
    image_path: "path/to/image.png"
```

### 📝 Anotações importantes

```yaml
android: true
```

Serve para gerar o ícone do app para **Android**.

> **Importante:** na documentação é necessário alterar essa opção para `true`.

---

```yaml
ios: true
```

Serve para gerar o ícone do app para **iOS**.

---

```yaml
adaptive_icon_background: "#000000"
```

Define a **cor de fundo do ícone adaptativo do Android**.

Neste projeto utilizamos:

```text
#000000 = preto
```

---

```yaml
adaptive_icon_foreground: "assets/icons/fiap_logo.jpg"
```

Caminho da imagem que será utilizada para gerar o **ícone adaptativo do Android**.

Essa imagem preenche o campo do ícone.

---

```yaml
image_path: "assets/icons/fiap_icon.jpg"
```

Caminho da imagem utilizada para gerar o ícone do aplicativo.

---

```yaml
min_sdk_android: 21
```

Define a versão mínima do SDK Android.

Anotação da aula:

```text
Android min SDK
mínimo: 16
default utilizado: 21
```

---

### 🌐 WEB

```yaml
web:
  generate: true
  image_path: "path/to/image.png"
  background_color: "#hexcode"
  theme_color: "#hexcode"
```

> **Não precisamos mexer no momento.**

---

### 🪟 WINDOWS

```yaml
windows:
  generate: true
  image_path: "path/to/image.png"
  icon_size: 48
```

> **Não precisamos mexer no momento.**

O tamanho do ícone pode variar entre:

```text
mínimo: 48
máximo: 256
default: 48
```

---

### 🍎 MACOS

```yaml
macos:
  generate: true
  image_path: "path/to/image.png"
```

> **Não precisamos mexer no momento.**

---

## ▶️ EXECUTAR O PACOTE

Após configurar tudo, basta executar o pacote.

No CMD, rode:

```bash
flutter pub get
```

Depois:

```bash
dart run flutter_launcher_icons
```

Esse comando serve para rodar as dependências relacionadas à geração dos ícones.

Depois:

```bash
flutter run
```

Para buildar as informações e atualizar/executar o projeto.

> ⚠️ **IMPORTANTE:** sempre que mudar alguma coisa nas dependências, lembrar de executar:

```bash
flutter pub get
```

---

# 2️⃣ INCLUSÃO DO GOOGLE FONTS

Acesse a documentação:

https://pub.dev/packages/google_fonts/install

No seu terminal (CMD), acesse a **pasta raiz do projeto** e rode:

```bash
flutter pub add google_fonts
```

Depois:

```bash
flutter pub get
```

---

## 🔎 CONFERINDO A INSTALAÇÃO

Para conferir, acesse o arquivo:

```text
pubspec.yaml
```

Precisa aparecer nas dependências:

```yaml
dependencies:
  flutter:
    sdk: flutter

  google_fonts: ^8.2.1
```

> A versão pode variar dependendo da versão instalada no projeto.

---

## 📄 CONFIGURAÇÃO NO `main.dart`

No arquivo:

```text
lib/main.dart
```

No topo do arquivo ficará:

```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
```

A linha:

```dart
import 'package:google_fonts/google_fonts.dart';
```

traz a biblioteca do **Google Fonts** para dentro do arquivo Dart.

No nosso projeto utilizamos:

```dart
GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 26,
)
```

Ou seja:

```text
GoogleFonts
     ↓
roboto
     ↓
Fonte Roboto
```

---

# 3️⃣ INCLUSÃO DO HOT RELOAD AUTOMÁTICO

No VS Code acesse:

```text
Configurações
```

Digite:

```text
hot reload
```

Aparecerá a opção:

```text
Dart: Flutter Hot Reload On Save
```

Coloque:

```text
all
```

Ou seja, toda vez que o arquivo for salvo, o VS Code envia uma solicitação de **Hot Reload** para o aplicativo Flutter em execução.

---

## 💾 AUTO SAVE

Também configuramos o salvamento automático.

No VS Code:

```text
Configurações
      ↓
Auto Save
```

Configure:

```text
Files: Auto Save → afterDelay
```

E:

```text
Files: Auto Save Delay → 500
```

Dessa forma:

```text
ALTERO O CÓDIGO
      ↓
AUTO SAVE
      ↓
ARQUIVO É SALVO
      ↓
HOT RELOAD
      ↓
APLICATIVO É ATUALIZADO
```

---

## ▶️ EXECUTAR O PROJETO PELO VS CODE

Agora para iniciar o aplicativo/servidor de outra forma, dentro do VS Code:

Na parte superior do VS Code, clique em:

```text
Executar
```

Depois:

```text
Executar sem Depuração
```

Atalho:

```text
CTRL + F5
```

Ele irá iniciar o projeto.

Também podemos executar pelo terminal utilizando:

```bash
flutter run
```

No VS Code aparecerá uma barra com vários comandos que podemos clicar para controlar a execução do projeto.

Com o **Auto Save + Hot Reload** configurados, as alterações comuns realizadas no código são atualizadas automaticamente durante a execução.

---

# 🧠 ENTENDENDO O CÓDIGO DO PROJETO

O arquivo principal utilizado no projeto é:

```text
lib/main.dart
```

## `main()`

```dart
void main() {
  runApp(MyApp());
}
```

É o ponto inicial do programa.

Podemos entender assim:

```text
INICIA O PROGRAMA
       ↓
     main()
       ↓
    runApp()
       ↓
     MyApp()
       ↓
APLICATIVO INICIADO
```

---

## `StatelessWidget`

No projeto temos:

```dart
class MyApp extends StatelessWidget
```

O `StatelessWidget` é utilizado para um Widget que não precisa ter seu próprio estado alterado durante a execução.

---

## `StatefulWidget`

A `HomePage` foi criada como:

```dart
class HomePage extends StatefulWidget
```

Utilizamos `StatefulWidget` porque existem informações na tela que **mudam durante a execução**.

No nosso projeto, quem muda é o:

```text
CONTADOR
```

---

## 🔢 Variável `count`

```dart
int count = 0;
```

A variável `count` armazena a quantidade de pessoas dentro do laboratório.

`int` representa um **número inteiro**.

Começamos com:

```text
count = 0
```

porque inicialmente o laboratório está vazio.

---

## ➕ `increment()`

```dart
void increment() {
  setState(() {
    count++;
  });
}
```

Essa função é executada quando alguém **entra**.

```dart
count++;
```

é equivalente a:

```text
count = count + 1
```

Exemplo:

```text
count = 5

ENTROU UMA PESSOA
       ↓
     5 + 1
       ↓
   count = 6
```

---

## ➖ `decrement()`

```dart
void decrement() {
  setState(() {
    count--;
  });
}
```

Essa função é executada quando alguém **sai**.

```dart
count--;
```

é equivalente a:

```text
count = count - 1
```

---

## 🔄 `setState()`

O `setState()` informa ao Flutter que uma informação do estado foi alterada e que a interface precisa ser atualizada.

```text
count = 5
    ↓
increment()
    ↓
count = 6
    ↓
setState()
    ↓
TELA ATUALIZA
    ↓
MOSTRA 6
```

---

## 🚫 Impedindo números negativos

Criamos:

```dart
bool get isEmpty => count == 0;
```

`bool` pode assumir:

```text
true
false
```

Estamos verificando:

```text
count é igual a 0?
```

Depois utilizamos:

```dart
onPressed: isEmpty ? null : decrement
```

Se:

```text
count = 0
```

então:

```text
isEmpty = true
       ↓
onPressed = null
       ↓
BOTÃO "SAIU" DESABILITADO
```

Isso impede que o contador fique negativo.

---

## 🚫 Impedindo mais de 25 pessoas

Criamos:

```dart
bool get isFull => count == 25;
```

Estamos verificando se o contador chegou à capacidade máxima.

Depois:

```dart
onPressed: isFull ? null : increment
```

Quando:

```text
count = 25
```

temos:

```text
isFull = true
      ↓
BOTÃO "ENTROU" DESABILITADO
```

Assim o contador não ultrapassa `25`.

---

## ❓ Operador ternário

No projeto utilizamos:

```dart
isFull ? "Lab lotado" : "Pode entrar"
```

O:

```text
? :
```

é chamado de **operador ternário**.

Podemos interpretar:

```text
LAB ESTÁ LOTADO?
      ↓
   SIM → "Lab lotado"
      ↓
   NÃO → "Pode entrar"
```

É uma forma reduzida de uma decisão do tipo `if/else`.

---

## 🏗️ `Scaffold`

```dart
return Scaffold(
```

O `Scaffold` fornece a estrutura básica da tela.

Podemos visualizar:

```text
Scaffold
   │
   ├── AppBar
   │
   └── Body
```

---

## 🎀 `AppBar`

```dart
appBar: AppBar(
```

É a barra superior do aplicativo.

No projeto ela mostra:

```text
CONTADOR LAB FIAP
```

E utilizamos:

```dart
backgroundColor: Colors.pink
```

para definir o fundo rosa.

---

## 🖼️ Imagem de fundo

Utilizamos:

```dart
DecorationImage(
  image: AssetImage("assets/img/fiap_bg.png"),
  fit: BoxFit.cover,
)
```

O `AssetImage()` permite carregar uma imagem armazenada dentro do projeto.

Neste caso:

```text
assets
   ↓
img
   ↓
fiap_bg.png
```

---

## 📐 `Column`

A:

```dart
Column()
```

organiza os elementos **verticalmente**.

Exemplo:

```text
Pode entrar
     ↓
     10
     ↓
Saiu    Entrou
```

---

## ↔️ `Row`

A:

```dart
Row()
```

organiza os elementos **horizontalmente**.

Por isso os botões aparecem lado a lado:

```text
[ SAIU ]     [ ENTROU ]
```

---

## 🔘 `TextButton`

Os botões foram criados utilizando:

```dart
TextButton()
```

Temos:

```text
SAIU
 ↓
decrement()
```

e:

```text
ENTROU
 ↓
increment()
```

---

# 🔄 FLUXO COMPLETO DO CONTADOR

Quando clicamos em **Entrou**:

```text
USUÁRIO CLICA EM "ENTROU"
          ↓
       onPressed
          ↓
       increment()
          ↓
       setState()
          ↓
        count++
          ↓
FLUTTER ATUALIZA A INTERFACE
          ↓
NOVO NÚMERO APARECE NA TELA
```

Quando clicamos em **Saiu**:

```text
USUÁRIO CLICA EM "SAIU"
          ↓
       onPressed
          ↓
       decrement()
          ↓
       setState()
          ↓
        count--
          ↓
FLUTTER ATUALIZA A INTERFACE
          ↓
NOVO NÚMERO APARECE NA TELA
```

---

# 📚 RESUMO PARA REVISÃO

| Comando / Conceito | Para que serve |
|---|---|
| `main()` | Ponto inicial do programa |
| `runApp()` | Inicia o aplicativo Flutter |
| `StatelessWidget` | Widget sem estado mutável próprio |
| `StatefulWidget` | Widget que pode possuir estado que muda |
| `State` | Armazena o estado associado ao StatefulWidget |
| `setState()` | Informa ao Flutter que o estado mudou |
| `int` | Representa números inteiros |
| `bool` | Trabalha com `true` ou `false` |
| `count++` | Soma 1 |
| `count--` | Subtrai 1 |
| `Scaffold` | Estrutura básica da tela |
| `AppBar` | Barra superior |
| `Column` | Organiza elementos verticalmente |
| `Row` | Organiza elementos horizontalmente |
| `TextButton` | Cria botão baseado em texto |
| `AssetImage` | Carrega uma imagem dos assets |
| `GoogleFonts` | Permite utilizar as fontes do pacote Google Fonts |
| `? :` | Operador ternário |

---

# 📂 ESTRUTURA DO PROJETO

```text
projeto_cont_fiap/
│
├── assets/
│   │
│   ├── icons/
│   │   └── fiap_logo.jpg
│   │
│   └── img/
│       └── fiap_bg.png
│
├── lib/
│   └── main.dart
│
├── android/
├── ios/
├── web/
├── windows/
│
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

---

# 💻 COMANDOS IMPORTANTES

Atualizar/baixar dependências:

```bash
flutter pub get
```

Adicionar Google Fonts:

```bash
flutter pub add google_fonts
```

Gerar os ícones:

```bash
dart run flutter_launcher_icons
```

Ver dispositivos disponíveis:

```bash
flutter devices
```

Executar o projeto:

```bash
flutter run
```

Executar pelo VS Code sem depuração:

```text
CTRL + F5
```

---

# 🎓 OBJETIVO DE ESTUDO

Este repositório também será utilizado como material de revisão das aulas de **Mobile Application Development**, registrando não somente o código desenvolvido, mas também os conceitos aprendidos durante a construção do projeto.

A ideia é acompanhar a evolução do projeto e do aprendizado de **Flutter e Dart** ao longo das aulas.