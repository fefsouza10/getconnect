import 'package:get/get.dart';
import 'package:getconnect_test/api/data/data_sources/firebase_data_source_implementation.dart';
import 'package:getconnect_test/api/domain/repositories/firebase_repository_implementation.dart';
import 'package:getconnect_test/api/domain/usecases/firebase_usecase_implementation.dart';
import 'package:getconnect_test/pages/welcome/controller/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController(
        FirebaseUseCaseImplementation(FirebaseRepositoryImplementation(
            FirebaseDataSourceImplementation()))));
  }
}
