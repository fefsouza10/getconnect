import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect_test/pages/login/controller/login_controller.dart';
import 'package:getconnect_test/utils/tokens_all.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('login.title'.tr),
        ),
        body: Center(
          child: controller.isLoading
              ? const CircularProgressIndicator()
              : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(TokensAll.spacingInset16),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepPurple),
                                borderRadius: BorderRadius.circular(
                                    TokensAll.borderRadius20)),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                  TokensAll.spacingInset16),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'login.enter'.tr,
                                          style: const TextStyle(
                                              fontSize: TokensAll.fontSize26),
                                        ),
                                        const SizedBox(
                                          height: TokensAll.spacingInset8,
                                        ),
                                        Form(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          key: controller.formKey,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                controller:
                                                    controller.emailController,
                                                decoration: InputDecoration(
                                                    hintText: 'login.email'.tr),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'login.email_field_empty'
                                                        .tr;
                                                  } else if (!EmailValidator
                                                      .validate(value)) {
                                                    return 'login.email_invalid'
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                              ),
                                              const SizedBox(
                                                height: TokensAll.spacingInset8,
                                              ),
                                              TextFormField(
                                                obscureText:
                                                    controller.hidePassword,
                                                controller: controller
                                                    .passwordController,
                                                decoration: InputDecoration(
                                                  hintText: 'login.password'.tr,
                                                  suffixIcon: IconButton(
                                                    icon: Icon(
                                                        controller.hidePassword
                                                            ? Icons.visibility
                                                            : Icons
                                                                .visibility_off,
                                                        color:
                                                            Colors.deepPurple),
                                                    onPressed: () {
                                                      controller.hidePassword =
                                                          !controller
                                                              .hidePassword;
                                                    },
                                                  ),
                                                ),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'login.password_empty'
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: TokensAll.spacingInset16,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  controller.goToSignUp();
                                                },
                                                child:
                                                    Text('login.sign_up'.tr)),
                                            const SizedBox(
                                              width: TokensAll.spacingInset8,
                                            ),
                                            ElevatedButton(
                                                onPressed: () async {
                                                  if (controller
                                                      .formKey.currentState!
                                                      .validate()) {
                                                    await controller.tryLogin();
                                                  }
                                                },
                                                child: Text('login.enter'.tr)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
        ),
      );
    });
  }
}
