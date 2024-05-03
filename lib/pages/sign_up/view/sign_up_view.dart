import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect_test/pages/sign_up/controller/sign_up_controller.dart';
import 'package:getconnect_test/utils/tokens_all.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('sign_up.title'.tr),
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
                                          'sign_up.sign_up'.tr,
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
                                                controller: controller
                                                    .firstNameController,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        'sign_up.name'.tr),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'sign_up.name_field_empty'
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                              ),
                                              const SizedBox(
                                                height: TokensAll.spacingInset8,
                                              ),
                                              TextFormField(
                                                controller: controller
                                                    .lastNameController,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        'sign_up.last_name'.tr),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'sign_up.last_name_field_empty'
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                              ),
                                              const SizedBox(
                                                height: TokensAll.spacingInset8,
                                              ),
                                              TextFormField(
                                                controller:
                                                    controller.emailController,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        'sign_up.email'.tr),
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'sign_up.email_field_empty'
                                                        .tr;
                                                  } else if (!EmailValidator
                                                      .validate(value)) {
                                                    return 'sign_up.email_invalid'
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
                                                  hintText:
                                                      'sign_up.password'.tr,
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
                                                    return 'sign_up.password_empty'
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
                                                    .confirmPasswordController,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'sign_up.confirm_password'
                                                          .tr,
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
                                                    return 'sign_up.confirm_password_empty'
                                                        .tr;
                                                  } else if (value !=
                                                      controller
                                                          .passwordController
                                                          .text) {
                                                    return 'sign_up.unmatched_passwords'
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
                                                onPressed: () async {
                                                  if (controller
                                                      .formKey.currentState!
                                                      .validate()) {
                                                    controller.isLoading = true;
                                                    await controller
                                                        .trySignUp();
                                                  }
                                                },
                                                child:
                                                    Text('sign_up.sign_up'.tr)),
                                            const SizedBox(
                                              width: TokensAll.spacingInset8,
                                            ),
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
