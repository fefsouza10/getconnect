import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:getconnect_test/api/domain/entities/user/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.createdAt});

  factory UserModel.fromMap(String id, Map<String, dynamic> map) {
    Timestamp timeStamp = map['created_at'];
    DateTime createdAt = timeStamp.toDate();

    return UserModel(
        id: id,
        firstName: map['first_name'],
        lastName: map['last_name'],
        email: map['email'],
        createdAt: createdAt);
  }
}
