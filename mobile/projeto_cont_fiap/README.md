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



====================================================

-------------AULA DIA 08/09/2026--------------------

====================================================
1º INCLUSAO DE IMAGEM: ICONE DO ANDROID

ACESSE O PROJETO QUE ESTAMOS TRABALHANDO, ENTRE NO ARQUIVO: PUBSPEC.YAMAL

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_launcher_icons: "^0.14.4" #inclusao do pacote de icones

  NO FINAL DO CODIGO PRECISAMOS COLAR O SEGUINTE CODIGO QUE ESTA NA DOCUMENTACAO
  https://pub.dev/packages/flutter_launcher_icons:
  flutter_launcher_icons:
  android: **true** #serve para gerar o icone do app para android  - importante na documentacao alterar o que esta para true.
  ios: true #serve para gerar o icone do app para ios
  **adaptive_icon_background: "#000000"** #cor de fundo do icone adaptativo do android
  **adaptive_icon_foreground: "assets/icons/fiap_logo.jpg"** #caminho da imagem que sera usada para gerar o icone adaptativo do android (PREENCHE TODO O CAMPO DO ICONE)
  image_path: "assets/icons/fiap_icon.jpg" #caminho da imagem que sera usada para gerar o icone do app
  min_sdk_android: 21 # android min sdk min:16, default 21
  web:
    generate: true
    image_path: "path/to/image.png" #NAO PRECISAMOS MEXER NO MOMENTO
    background_color: "#hexcode"
    theme_color: "#hexcode"
  windows:
    generate: true
    image_path: "path/to/image.png" #NAO PRECISAMOS MEXER NO MOMENTO
    icon_size: 48 # min:48, max:256, default: 48
  macos:
    generate: true
    image_path: "path/to/image.png" #NAO PRECISAMOS MEXER NO MOMENTO

Execute o pacote 
Após configurar tudo, basta executar o pacote.
NO CMD RODE:
>>> flutter pub get
>>> dart run flutter_launcher_icons #serve para rodar as dependencias do icone 
>>> flutter run
PARA BUILDAR AS INFORMAÇÕES A ATUALIZAR O PROJETO.
*importante sempre que mudar alguma coisa nas dependencia sempre rodar o flutter pub get*



2 º INCLUSAO DO GOOGLE FONTE 

ACESSE A DOCUMENTACAO: https://pub.dev/packages/google_fonts/install
NO SEU TERMINAL (CMD), ACESSE A PASTA RAIZ DO PROJETO E RODE: 
>>> flutter pub add google_fonts
>>> flutter pub get

PARA CONFERIR, ACESSE O ARQUIVO PUBSPEC.YAML,PRECISA APARECER NAS DEPENDENCIAS:
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^8.2.1

  no arquivo 
>>> lib/main.dart
no topo do arquivo ficará: 
*import 'package:flutter/material.dart';*
*import 'package:google_fonts/google_fonts.dart'; #traz a biblioteca do Google, para dentro do arquivo Dart*

3ª INCLUSAO DO BOTAO AUTOMATICO DO REALOAD

no vs code acesse
>>> configurações e digite
>>> hot reaload
aparecera a opção: Dart Flutter Hot Reaload On Save
coloque a opção *all* #ou seja toda vez que o srquivo é salvo ele ja faz o hot reaload na sequencia

agora para startar o aplicativo/servidor de outra forma, dentro do vs code
botao exceutar na parte superior do vs code 
clicar em:
>>> executar sem depuracao (ctrl + f5 atalho) - ele vai rodar o projeto como se tivesse digitado flutter run 
no vs code vai aparecer uma barra com varios comando que podemos clicar para executar o projeto, e agora o reaload esta automatico.