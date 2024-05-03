import 'package:get/get.dart';
import 'package:getconnect_test/api/data/data_sources/firebase_data_source_implementation.dart';
import 'package:getconnect_test/api/domain/repositories/firebase_repository_implementation.dart';
import 'package:getconnect_test/api/domain/usecases/firebase_usecase_implementation.dart';
import 'package:getconnect_test/pages/sign_up/controller/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController(
        (FirebaseUseCaseImplementation(FirebaseRepositoryImplementation(
            FirebaseDataSourceImplementation())))));
  }
}
