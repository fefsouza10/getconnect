abstract class UserEntity {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final DateTime createdAt;

  const UserEntity(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.createdAt});
}
