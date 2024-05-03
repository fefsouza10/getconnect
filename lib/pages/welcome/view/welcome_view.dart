import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect_test/pages/welcome/controller/welcome_controller.dart';
import 'package:getconnect_test/utils/tokens_all.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('welcome.title'.tr),
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
                                          'welcome.welcome'.tr,
                                          style: const TextStyle(
                                              fontSize: TokensAll.fontSize26),
                                        ),
                                        const SizedBox(
                                          height: TokensAll.spacingInset8,
                                        ),
                                        Text('welcome.greetings_message'
                                            .trParams({
                                          'name':
                                              '${controller.user?.firstName}'
                                        }))
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
