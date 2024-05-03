import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect_test/api/domain/usecases/firebase_usecase.dart';
import 'package:getconnect_test/router/routes.dart';
import 'package:getconnect_test/widgets/snackbars/error_snackbar.dart';
import 'package:getconnect_test/widgets/snackbars/success_snackbar.dart';

class LoginController extends GetxController {
  final IFirebaseUseCase _useCase;

  LoginController(this._useCase);

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxBool _hidePassword = true.obs;
  bool get hidePassword => _hidePassword.value;
  set hidePassword(bool value) => _hidePassword.value = value;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> tryLogin() async {
    try {
      isLoading = true;

      final UserCredential? userCredential = await _useCase.loginUser(
          emailController.text, passwordController.text);

      if (userCredential != null) {
        Get.showSnackbar(successSnackbar('login.success_snackbar_title'.tr,
            'login.success_snackbar_message'.tr));
        Get.toNamed(Routes.welcome, arguments: {'email': emailController.text});
      }
    } on FirebaseAuthException catch (authError) {
      Get.showSnackbar(
          errorSnackbar('login.error_snackbar.title'.tr, authError.code.tr));
      emailController.clear();
      passwordController.clear();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    } finally {
      isLoading = false;
    }
  }

  void goToSignUp() {
    emailController.clear();
    passwordController.clear();
    Get.toNamed(Routes.signUp);
  }
}
