# GetConnect

Aplicativo cross-platform Android/iOS em Flutter desenvolvido como parte do teste realizado para a empresa GetConnect.

## Descrição

Aplicativo cross-platform desenvolvido utilizando Flutter e Dart, onde o objetivo foi desenvolver:

```bash
Teste prático de Flutter: Criando Telas
Desenvolva as telas utilizando o Flutter.
As telas devem ter um design limpo e responsivo, adaptável a diferentes tamanhos de dispositivos.
Na tela de login, o usuário deve ser capaz de inserir um nome de usuário e senha.
Na tela de cadastro, o usuário deve ser capaz de inserir um nome, sobrenome, nome de usuário(email), senha e confirmar a senha.
As senhas devem ser ocultas ao digitar.
Implemente validações básicas nos campos de entrada (por exemplo, o nome de usuário e senha não devem estar vazios).
Após o login ou cadastro bem-sucedido, o usuário deve ser redirecionado para a tela de boas-vindas.
Na tela de boas-vindas, exiba uma mensagem de boas-vindas personalizada com o nome do usuário.
Observações:
O Firestore do Firebase deverá ser utilizado para o armazenamento dos dados de usuário (nome, sobrenome, email e data do cadastro).
Usar o Authenticator do Firebase para criar os dados de autenticação do usuário (email e senha). Habilitar somente a autenticação por login e senha.
Na apresentação do projeto, será necessário criar novos usuários para demonstrar as funcionalidades da aplicação.
```

O aplicativo foi desenvolvido em <i>Clean Architecture</i>, utilizando <i>GetX</i> para gerenciamento de estado, controle de rotas, injeção de dependência e traduções. Ao iniciar, o aplicativo coloca a controller _LoginController_ na memória, exibindo a página de login. Permite com que o usuário faça o login ou o cadastro de sua conta, com verificação em tempo real dos campos, utilizando o _Firebase Authentication_. Os dados do usuário são salvos diretamente no _Firebase Cloud Firestore_ após o cadastro bem-sucedido. 

Após realizar o cadastro ou o login, o usuário é redirecionado para a página de boas-vindas, onde os dados do usuário são buscados no _Firebase Cloud Firestore_, e uma mensagem de boas-vindas é exibida junto dos dados do usuário.

## Instalação - ATENÇÃO

1. Ter o Flutter instalado na máquina, pode ser feito através do link: https://docs.flutter.dev/get-started/install, que por sua vez, obriga a instalação do Android Studio, mas o projeto pode ser rodado também através do VS Code se preferir.

2. Clonar o projeto em alguma pasta, e então abrí-lo através do Android Studio ou VS Code.
