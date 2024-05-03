import 'package:get/get.dart';
import 'package:getconnect_test/pages/login/binding/login_binding.dart';
import 'package:getconnect_test/pages/login/view/login_view.dart';
import 'package:getconnect_test/pages/sign_up/binding/sign_up_binding.dart';
import 'package:getconnect_test/pages/sign_up/view/sign_up_view.dart';
import 'package:getconnect_test/pages/welcome/binding/welcome_binding.dart';
import 'package:getconnect_test/pages/welcome/view/welcome_view.dart';
import 'package:getconnect_test/router/routes.dart';

class GetConnectRouter {
  static final routes = [
    GetPage(
        title: 'Login Page',
        name: Routes.login,
        page: () => const LoginView(),
        binding: LoginBinding()),
    GetPage(
        title: 'Sign Up Page',
        name: Routes.signUp,
        page: () => const SignUpView(),
        binding: SignUpBinding()),
    GetPage(
        title: 'Welcome Page',
        name: Routes.welcome,
        page: () => const WelcomeView(),
        binding: WelcomeBinding()),
  ];
}
