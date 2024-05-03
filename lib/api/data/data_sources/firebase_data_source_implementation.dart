import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:getconnect_test/api/data/data_sources/firebase_data_source.dart';
import 'package:getconnect_test/api/data/models/user/user_model.dart';

class FirebaseDataSourceImplementation implements IFirebaseDataSource {
  @override
  Future<UserModel> getUser(String email) async {
    try {
      var user =
          await FirebaseFirestore.instance.collection('users').doc(email).get();
      if (user.exists) {
        return UserModel.fromMap(user.id, user.data()!);
      } else {
        throw Exception('Erro ao obter dados do usuário');
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserCredential?> loginUser(String email, String password) async {
    try {
      return await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> signUpUser(
      String firstName, String lastName, String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      await users.doc(email).set({
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'created_at': DateTime.now()
      });
    } catch (_) {
      rethrow;
    }
  }
}
