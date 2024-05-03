import 'package:get/get.dart';
import 'package:getconnect_test/api/data/data_sources/firebase_data_source_implementation.dart';
import 'package:getconnect_test/api/domain/repositories/firebase_repository_implementation.dart';
import 'package:getconnect_test/api/domain/usecases/firebase_usecase_implementation.dart';
import 'package:getconnect_test/pages/login/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
        FirebaseUseCaseImplementation(FirebaseRepositoryImplementation(
            FirebaseDataSourceImplementation()))));
  }
}
