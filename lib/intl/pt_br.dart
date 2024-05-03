final Map<String, String> ptBR = {
  ...login,
  ...signUp,
  ...welcome,
  ...firebaseAuthErrors
};

final Map<String, String> login = {
  'login.title': 'Login',
  'login.enter': 'Entrar',
  'login.email': 'E-mail',
  'login.email_field_empty': 'Campo de e-mail vazio',
  'login.email_invalid': 'Insira um endereço de e-mail válido',
  'login.password': 'Senha',
  'login.password_empty': 'Campo de senha vazio',
  'login.sign_up': 'Cadastrar',
  'login.success_snackbar_title': 'Sucesso',
  'login.success_snackbar_message': 'Login realizado com sucesso.',
  'login.error_snackbar.title': 'Erro'
};

final Map<String, String> signUp = {
  'sign_up.title': 'Cadastro',
  'sign_up.sign_up': 'Cadastrar',
  'sign_up.name': 'Nome',
  'sign_up.name_field_empty': 'Campo de nome vazio',
  'sign_up.last_name': 'Sobrenome',
  'sign_up.last_name_field_empty': 'Campo de sobrenome vazio',
  'sign_up.email': 'E-mail',
  'sign_up.email_field_empty': 'Campo de e-mail vazio',
  'sign_up.email_invalid': 'Insira um endereço de e-mail válido',
  'sign_up.password': 'Senha',
  'sign_up.password_empty': 'Campo de senha vazio',
  'sign_up.confirm_password': 'Confirmar senha',
  'sign_up.confirm_password_empty': 'Campo de confirmar senha vazio',
  'sign_up.unmatched_passwords': 'As senhas são diferentes',
};

final Map<String, String> welcome = {
  'welcome.title': 'Bem-vindo',
  'welcome.welcome': 'Bem-vindo',
  'welcome.greetings_message': 'Olá @name, seja bem-vindo ao GetConnect!'
};

final Map<String, String> firebaseAuthErrors = {
  'invalid-credential': 'Credenciais inválidas',
  'invalid-email': 'E-mail inválido',
  'wrong-password': 'Senha inválida',
  'user-disabled': 'Usuário desativado',
  'user-not-found': 'Usuário não encontrado'
};
