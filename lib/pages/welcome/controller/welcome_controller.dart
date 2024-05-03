import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getconnect_test/api/data/models/user/user_model.dart';
import 'package:getconnect_test/api/domain/usecases/firebase_usecase.dart';

class WelcomeController extends GetxController {
  final IFirebaseUseCase _useCase;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final String? email = Get.arguments['email'];

  final _user = Rxn<UserModel>();
  UserModel? get user => _user.value;
  set user(UserModel? newValue) => _user.value = newValue;

  WelcomeController(this._useCase);

  @override
  Future<void> onInit() async {
    try {
      isLoading = true;

      if (email != null) {
        await getUser(email!);
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading = false;
    }
    super.onInit();
  }

  Future<void> getUser(String email) async {
    try {
      user = await _useCase.getUser(email);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
