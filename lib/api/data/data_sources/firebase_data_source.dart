import 'package:firebase_auth/firebase_auth.dart';
import 'package:getconnect_test/api/data/models/user/user_model.dart';

abstract class IFirebaseDataSource {
  Future<UserCredential?> loginUser(String email, String password);
  Future<void> signUpUser(
      String firstName, String lastName, String email, String password);
  Future<UserModel> getUser(String email);
}
