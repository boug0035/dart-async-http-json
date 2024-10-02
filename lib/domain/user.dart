class User {
  final String uid;
  final String firstName;
  final String lastName;

  User({
    required this.uid,
    required this.firstName,
    required this.lastName,
  });

  @override
  String toString() {
    return '$uid: $firstName $lastName';
  }
}
