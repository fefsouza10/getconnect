import 'package:firebase_auth/firebase_auth.dart';
import 'package:getconnect_test/api/data/models/user/user_model.dart';
import 'package:getconnect_test/api/domain/repositories/firebase_repository.dart';
import 'package:getconnect_test/api/domain/usecases/firebase_usecase.dart';

class FirebaseUseCaseImplementation implements IFirebaseUseCase {
  final IFirebaseRepository _repository;

  FirebaseUseCaseImplementation(this._repository);

  @override
  Future<UserModel> getUser(String email) async {
    return await _repository.getUser(email);
  }

  @override
  Future<UserCredential?> loginUser(String email, String password) async {
    return await _repository.loginUser(email, password);
  }

  @override
  Future<void> signUpUser(
      String firstName, String lastName, String email, String password) async {
    await _repository.signUpUser(firstName, lastName, email, password);
  }
}
