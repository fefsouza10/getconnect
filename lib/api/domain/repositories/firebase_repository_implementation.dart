import 'package:firebase_auth/firebase_auth.dart';
import 'package:getconnect_test/api/data/data_sources/firebase_data_source.dart';
import 'package:getconnect_test/api/data/models/user/user_model.dart';
import 'package:getconnect_test/api/domain/repositories/firebase_repository.dart';

class FirebaseRepositoryImplementation implements IFirebaseRepository {
  final IFirebaseDataSource _dataSource;

  FirebaseRepositoryImplementation(this._dataSource);

  @override
  Future<UserModel> getUser(String email) async {
    return await _dataSource.getUser(email);
  }

  @override
  Future<UserCredential?> loginUser(String email, String password) async {
    return await _dataSource.loginUser(email, password);
  }

  @override
  Future<void> signUpUser(
      String firstName, String lastName, String email, String password) async {
    await _dataSource.signUpUser(firstName, lastName, email, password);
  }
}
