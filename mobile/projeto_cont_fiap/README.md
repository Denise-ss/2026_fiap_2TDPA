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

Nesta aula foram realizadas configurações importantes no projeto Flutter:

1. Inclusão de imagem e ícone do Android;
2. Configuração do `flutter_launcher_icons`;
3. Inclusão do Google Fonts;
4. Configuração do Hot Reload automático;
5. Configuração do Auto Save;
6. Execução do projeto pelo VS Code.

---

# 1️⃣ INCLUSÃO DE IMAGEM: ÍCONE DO ANDROID

Acesse o projeto que estamos trabalhando e entre no arquivo:

```text
pubspec.yaml
```

Em `dev_dependencies`, adicionamos:

```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_launcher_icons: "^0.14.4"
```

O:

```yaml
flutter_launcher_icons: "^0.14.4"
```

é a inclusão do pacote de ícones.

---

## 📖 DOCUMENTAÇÃO

No final do código precisamos colocar o código que está na documentação:

https://pub.dev/packages/flutter_launcher_icons

A configuração utilizada ficou semelhante a:

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

---

## 📝 ENTENDENDO AS CONFIGURAÇÕES DO ÍCONE

### Android

```yaml
android: true
```

Serve para gerar o ícone do aplicativo para **Android**.

> ⚠️ **IMPORTANTE:** na documentação é necessário alterar a opção para `true`.

---

### iOS

```yaml
ios: true
```

Serve para gerar o ícone do aplicativo para **iOS**.

---

### Cor de fundo do ícone

```yaml
adaptive_icon_background: "#000000"
```

Define a cor de fundo do ícone adaptativo do Android.

Neste projeto:

```text
#000000
```

representa a cor preta.

---

### Imagem principal do ícone adaptativo

```yaml
adaptive_icon_foreground: "assets/icons/fiap_logo.jpg"
```

É o caminho da imagem que será utilizada para gerar o ícone adaptativo do Android.

Essa imagem é utilizada para preencher o campo do ícone.

---

### Caminho do ícone

```yaml
image_path: "assets/icons/fiap_icon.jpg"
```

É o caminho da imagem que será utilizada para gerar o ícone do aplicativo.

---

### SDK mínimo do Android

```yaml
min_sdk_android: 21
```

Configuração relacionada à versão mínima do SDK Android.

Anotação realizada durante a aula:

```text
Android min SDK
mínimo: 16
default: 21
```

---

## 🌐 CONFIGURAÇÃO WEB

```yaml
web:
  generate: true
  image_path: "path/to/image.png"
  background_color: "#hexcode"
  theme_color: "#hexcode"
```

> **NÃO PRECISAMOS MEXER NO MOMENTO.**

---

## 🪟 CONFIGURAÇÃO WINDOWS

```yaml
windows:
  generate: true
  image_path: "path/to/image.png"
  icon_size: 48
```

> **NÃO PRECISAMOS MEXER NO MOMENTO.**

Anotação sobre o tamanho:

```text
mínimo: 48
máximo: 256
default: 48
```

---

## 🍎 CONFIGURAÇÃO MACOS

```yaml
macos:
  generate: true
  image_path: "path/to/image.png"
```

> **NÃO PRECISAMOS MEXER NO MOMENTO.**

---

# ▶️ EXECUTAR O PACOTE

Após configurar tudo, basta executar o pacote.

No CMD, rode:

```bash
flutter pub get
```

Depois:

```bash
dart run flutter_launcher_icons
```

Esse comando serve para rodar as dependências/configuração do ícone.

Depois:

```bash
flutter run
```

Para buildar as informações, atualizar e executar o projeto.

> ⚠️ **IMPORTANTE: SEMPRE QUE MUDAR ALGUMA COISA NAS DEPENDÊNCIAS, RODAR:**

```bash
flutter pub get
```

---

## 💡 ENTENDENDO MELHOR O `pubspec.yaml`

O arquivo:

```text
pubspec.yaml
```

é um dos arquivos importantes do projeto Flutter.

Nele podemos configurar informações como:

```text
DEPENDÊNCIAS
      ↓
PACOTES
      ↓
ASSETS / IMAGENS
      ↓
FONTES
      ↓
CONFIGURAÇÕES DO PROJETO
```

Quando adicionamos ou modificamos dependências, utilizamos:

```bash
flutter pub get
```

para buscar/atualizar as dependências utilizadas pelo projeto.

---

# 2️⃣ INCLUSÃO DO GOOGLE FONTS

Acesse a documentação:

https://pub.dev/packages/google_fonts/install

No seu terminal **CMD**, acesse a pasta raiz do projeto e rode:

```bash
flutter pub add google_fonts
```

Depois:

```bash
flutter pub get
```

---

## 🔎 CONFERINDO NO `pubspec.yaml`

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

> A versão do pacote pode variar dependendo da versão instalada no projeto.

---

## 📄 CONFIGURAÇÃO NO `main.dart`

No arquivo:

```text
lib/main.dart
```

no topo do arquivo ficará:

```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
```

A linha:

```dart
import 'package:google_fonts/google_fonts.dart';
```

traz a biblioteca do **Google Fonts** para dentro do arquivo Dart.

---

## 🔤 UTILIZANDO O GOOGLE FONTS

No nosso projeto utilizamos:

```dart
Text(
  "CONTADOR LAB FIAP",
  style: GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 26,
  ),
)
```

Podemos entender:

```text
GoogleFonts
     ↓
roboto
     ↓
utiliza a fonte Roboto
```

Também configuramos:

```dart
color: Colors.white
```

para deixar a fonte branca.

E:

```dart
fontSize: 26
```

para definir o tamanho da fonte.

---

# 3️⃣ INCLUSÃO DO HOT RELOAD AUTOMÁTICO

No VS Code, acesse:

```text
Configurações
```

Depois digite:

```text
hot reload
```

Aparecerá a opção:

```text
Dart: Flutter Hot Reload On Save
```

Coloque a opção:

```text
all
```

Ou seja, toda vez que o arquivo é salvo ele já faz o **Hot Reload** na sequência.

---

# 💾 CONFIGURAÇÃO DO AUTO SAVE

Também configuramos o salvamento automático do VS Code.

Acesse:

```text
Configurações
```

Digite:

```text
Auto Save
```

Configure:

```text
Files: Auto Save → afterDelay
```

Depois:

```text
Files: Auto Save Delay → 500
```

Isso faz com que o VS Code salve automaticamente depois de aproximadamente **500 milissegundos**.

---

## 🔥 AUTO SAVE + HOT RELOAD

Agora as duas configurações trabalham juntas:

```text
ALTERO O CÓDIGO
      ↓
AUTO SAVE
      ↓
VS CODE SALVA O ARQUIVO
      ↓
HOT RELOAD
      ↓
APLICATIVO É ATUALIZADO
```

Assim não precisamos ficar utilizando:

```text
CTRL + S
```

toda vez que alteramos o código.

---

# ▶️ STARTAR O APLICATIVO/SERVIDOR PELO VS CODE

Agora, para startar o aplicativo/servidor de outra forma, dentro do VS Code:

Na parte superior do VS Code, clique em:

```text
Executar
```

Depois clique em:

```text
Executar sem Depuração
```

Atalho:

```text
CTRL + F5
```

Ele vai rodar o projeto como se tivéssemos digitado no terminal:

```bash
flutter run
```

No VS Code vai aparecer uma barra com vários comandos que podemos clicar para executar/controlar o projeto.

E agora, como configuramos o:

```text
Hot Reload On Save → all
```

junto com o:

```text
Auto Save → afterDelay
```

o Hot Reload passa a acontecer automaticamente quando o arquivo é salvo.

---

# 🧠 ENTENDENDO O CÓDIGO DO PROJETO

Agora algumas anotações importantes sobre o código desenvolvido no arquivo:

```text
lib/main.dart
```

---

# 1️⃣ FUNÇÃO `main()`

O nosso programa começa aqui:

```dart
void main() {
  runApp(MyApp());
}
```

Todo programa Dart possui um ponto inicial.

Neste caso:

```text
main()
```

Podemos visualizar:

```text
INICIA O PROGRAMA
       ↓
     main()
       ↓
    runApp()
       ↓
     MyApp()
       ↓
APLICATIVO É INICIADO
```

---

# 2️⃣ `runApp()`

Temos:

```dart
runApp(MyApp());
```

O:

```dart
runApp()
```

é responsável por iniciar a interface Flutter.

Estamos dizendo para o Flutter iniciar:

```dart
MyApp()
```

---

# 3️⃣ `StatelessWidget`

Temos:

```dart
class MyApp extends StatelessWidget
```

O `StatelessWidget` é utilizado para um Widget que não precisa ter seu próprio estado alterado durante a execução.

No nosso projeto, `MyApp` é responsável principalmente pela estrutura inicial do aplicativo.

---

# 4️⃣ `MaterialApp`

Dentro de `MyApp` temos:

```dart
return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
);
```

O `MaterialApp` é utilizado para configurar a aplicação seguindo os componentes e padrões do Material Design.

---

## 🏷️ REMOVENDO A FAIXA DEBUG

Utilizamos:

```dart
debugShowCheckedModeBanner: false
```

Isso remove a faixa:

```text
DEBUG
```

que aparece no canto da aplicação durante o desenvolvimento.

---

# 5️⃣ `HomePage`

Temos:

```dart
home: HomePage()
```

Estamos dizendo que a tela inicial do aplicativo será:

```text
HomePage
```

---

# 6️⃣ `StatefulWidget`

Nossa `HomePage` foi criada assim:

```dart
class HomePage extends StatefulWidget
```

Utilizamos:

```text
StatefulWidget
```

porque nossa tela possui informações que **mudam durante a execução**.

No nosso projeto, quem muda é o:

```text
CONTADOR
```

Toda vez que uma pessoa entra ou sai, o valor precisa ser atualizado na tela.

---

# 7️⃣ `State`

Temos:

```dart
State<HomePage> createState() => _HomePageState();
```

E depois:

```dart
class _HomePageState extends State<HomePage>
```

O `State` é onde ficam os dados e comportamentos que podem mudar durante a execução da `HomePage`.

No nosso caso, dentro dele temos:

- o contador;
- a função de incrementar;
- a função de decrementar;
- a verificação se está vazio;
- a verificação se está cheio.

---

# 8️⃣ VARIÁVEL `count`

Criamos:

```dart
int count = 0;
```

Essa variável armazena a quantidade de pessoas dentro do laboratório.

O:

```text
int
```

representa números inteiros.

Começamos com:

```text
count = 0
```

porque inicialmente o laboratório está vazio.

---

# 9️⃣ FUNÇÃO `increment()`

Criamos:

```dart
void increment() {
  setState(() {
    count++;
  });
}
```

Essa função é chamada quando alguém entra.

O:

```dart
count++;
```

significa:

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

# 🔟 FUNÇÃO `decrement()`

Criamos:

```dart
void decrement() {
  setState(() {
    count--;
  });
}
```

Essa função é chamada quando alguém sai.

O:

```dart
count--;
```

significa:

```text
count = count - 1
```

Exemplo:

```text
count = 5

SAIU UMA PESSOA
       ↓
     5 - 1
       ↓
   count = 4
```

---

# 🔄 `setState()`

Nas duas funções utilizamos:

```dart
setState(() {
```

O `setState()` é muito importante neste projeto.

Ele informa ao Flutter que uma informação do estado mudou e que a interface precisa ser atualizada.

Exemplo:

```text
count = 5
     ↓
increment()
     ↓
count = 6
     ↓
setState()
     ↓
FLUTTER ATUALIZA A INTERFACE
     ↓
MOSTRA 6 NA TELA
```

---

# 🚫 IMPEDINDO O CONTADOR DE FICAR NEGATIVO

Criamos:

```dart
bool get isEmpty => count == 0;
```

O tipo:

```text
bool
```

trabalha com dois valores:

```text
true
false
```

Estamos perguntando:

```text
count é igual a 0?
```

Se sim:

```text
isEmpty = true
```

Se não:

```text
isEmpty = false
```

Depois utilizamos:

```dart
onPressed: isEmpty ? null : decrement
```

Quando:

```text
count = 0
```

temos:

```text
isEmpty = true
       ↓
onPressed = null
       ↓
BOTÃO "SAIU" DESABILITADO
```

Isso impede que o contador fique:

```text
-1
-2
-3
...
```

---

# 🚫 IMPEDINDO MAIS DE 25 PESSOAS

Criamos:

```dart
bool get isFull => count == 25;
```

Estamos verificando:

```text
count chegou em 25?
```

Quando chegar:

```text
isFull = true
```

Depois utilizamos:

```dart
onPressed: isFull ? null : increment
```

Portanto:

```text
count = 25
     ↓
isFull = true
     ↓
BOTÃO "ENTROU" DESABILITADO
```

Isso impede que o laboratório ultrapasse a capacidade máxima de **25 pessoas**.

---

# ❓ OPERADOR TERNÁRIO

No projeto temos:

```dart
isFull ? "Lab lotado" : "Pode entrar"
```

O:

```text
? :
```

é chamado de **operador ternário**.

Ele é utilizado para fazer uma decisão de maneira mais curta.

Podemos ler:

```text
isFull é verdadeiro?
        ↓
       SIM
        ↓
   "Lab lotado"

        OU

       NÃO
        ↓
   "Pode entrar"
```

Seria semelhante a:

```dart
if (isFull) {
  // Lab lotado
} else {
  // Pode entrar
}
```

---

# 🏗️ `Scaffold`

Temos:

```dart
return Scaffold(
```

O `Scaffold` fornece uma estrutura básica para a tela do aplicativo.

Podemos visualizar:

```text
Scaffold
   │
   ├── AppBar
   │
   └── Body
```

---

# 🎀 `AppBar`

No projeto temos:

```dart
appBar: AppBar(
```

É a barra superior do aplicativo.

Nela colocamos:

```text
CONTADOR LAB FIAP
```

Também configuramos:

```dart
backgroundColor: Colors.pink
```

para deixar o fundo rosa.

---

# 🖼️ IMAGEM DE FUNDO

No `Container` utilizamos:

```dart
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/img/fiap_bg.png"),
    fit: BoxFit.cover,
  ),
),
```

O:

```dart
AssetImage()
```

permite utilizar uma imagem que está armazenada dentro do próprio projeto.

Neste caso:

```text
assets
   ↓
img
   ↓
fiap_bg.png
```

O:

```dart
fit: BoxFit.cover
```

faz a imagem cobrir o espaço disponível.

---

# 📐 `Column`

Temos:

```dart
Column(
```

A `Column` organiza os elementos na **vertical**.

No nosso projeto podemos visualizar:

```text
Pode entrar
     ↓
     10
     ↓
Saiu    Entrou
```

---

# ↔️ `Row`

Temos:

```dart
Row(
```

A `Row` organiza os elementos na **horizontal**.

Por isso os botões aparecem lado a lado:

```text
[ SAIU ]     [ ENTROU ]
```

---

# 🎯 `mainAxisAlignment`

Utilizamos:

```dart
mainAxisAlignment: MainAxisAlignment.center
```

Essa configuração é utilizada para centralizar os elementos no eixo principal do Widget.

No projeto ela foi utilizada para ajudar no posicionamento dos componentes na tela.

---

# 🔘 `TextButton`

Os botões foram criados utilizando:

```dart
TextButton()
```

Temos dois botões:

```text
SAIU
```

e:

```text
ENTROU
```

Cada botão chama uma função diferente:

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

# 🎨 ESTILO DOS BOTÕES

Utilizamos:

```dart
TextButton.styleFrom(
```

para configurar o estilo dos botões.

Exemplo:

```dart
backgroundColor: Colors.white
```

define a cor de fundo.

Também utilizamos:

```dart
fixedSize: Size(100, 20)
```

para definir um tamanho para o botão.

---

# 🌫️ BOTÃO DESABILITADO

Quando o botão não pode ser utilizado, usamos:

```dart
Colors.white.withAlpha(90)
```

Isso altera a transparência da cor e ajuda visualmente a indicar que o botão está desabilitado.

No botão **Saiu**:

```dart
backgroundColor:
    isEmpty ? Colors.white.withAlpha(90) : Colors.white
```

No botão **Entrou**:

```dart
backgroundColor:
    isFull ? Colors.white.withAlpha(90) : Colors.white
```

---

# 🔄 FLUXO COMPLETO DO NOSSO CONTADOR

## Quando alguém entra

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

---

## Quando alguém sai

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
| `runApp()` | Inicia a aplicação Flutter |
| `StatelessWidget` | Widget sem estado mutável próprio |
| `StatefulWidget` | Widget utilizado quando existem informações que podem mudar |
| `State` | Guarda o estado associado ao StatefulWidget |
| `setState()` | Informa ao Flutter que o estado mudou |
| `int` | Tipo utilizado para números inteiros |
| `bool` | Trabalha com `true` ou `false` |
| `count++` | Soma 1 ao contador |
| `count--` | Subtrai 1 do contador |
| `isEmpty` | Verifica se o contador está em 0 |
| `isFull` | Verifica se o contador chegou em 25 |
| `MaterialApp` | Configuração principal da aplicação Material |
| `Scaffold` | Estrutura básica da tela |
| `AppBar` | Barra superior |
| `Container` | Widget utilizado para agrupar e estilizar elementos |
| `Column` | Organiza elementos verticalmente |
| `Row` | Organiza elementos horizontalmente |
| `Text` | Exibe textos |
| `TextButton` | Cria botão baseado em texto |
| `AssetImage` | Carrega uma imagem dos assets |
| `BoxDecoration` | Permite configurar decoração de um Container |
| `DecorationImage` | Permite utilizar imagem na decoração |
| `BoxFit.cover` | Faz a imagem cobrir o espaço disponível |
| `GoogleFonts` | Permite utilizar fontes do pacote Google Fonts |
| `? :` | Operador ternário |
| `null` no `onPressed` | Desabilita o botão |

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
├── linux/
├── macos/
├── web/
├── windows/
│
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

---

# 💻 COMANDOS IMPORTANTES DA AULA

## Atualizar/baixar dependências

```bash
flutter pub get
```

## Adicionar Google Fonts

```bash
flutter pub add google_fonts
```

## Gerar os ícones

```bash
dart run flutter_launcher_icons
```

## Ver dispositivos disponíveis

```bash
flutter devices
```

## Executar o projeto

```bash
flutter run
```

## Executar pelo VS Code sem depuração

```text
CTRL + F5
```

---

# 📝 LEMBRETES IMPORTANTES

### Alterou dependências?

Execute:

```bash
flutter pub get
```

### Quer gerar novamente os ícones?

Execute:

```bash
dart run flutter_launcher_icons
```

### Quer executar o projeto pelo terminal?

Execute:

```bash
flutter run
```

### Quer executar pelo VS Code?

```text
Executar
   ↓
Executar sem Depuração
   ↓
CTRL + F5
```

### Quer atualização automática?

Configure:

```text
Auto Save → afterDelay
Auto Save Delay → 500
Flutter Hot Reload On Save → all
```

---

# 🎓 OBJETIVO DE ESTUDO

Este repositório também será utilizado como material de revisão das aulas de **Mobile Application Development**, registrando não somente o código desenvolvido, mas também os conceitos aprendidos durante a construção do projeto.

A ideia é acompanhar a evolução do projeto e do aprendizado de **Flutter e Dart** ao longo das aulas.

A cada nova aula, novas anotações e funcionalidades poderão ser adicionadas ao projeto.