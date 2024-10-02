import 'package:exc_4/core/api_helper.dart';

import 'user.dart';

class UserService {
  final ApiHelper apiHelper;

  UserService(this.apiHelper);

  Future<List<User>> getUsers() async {
    final List<Map<String, dynamic>> userData = await apiHelper.fetchUsers();
    return userData.map((data) {
      return User(
        uid: data['uid'] as String,
        firstName: data['first_name'] as String,
        lastName: data['last_name'] as String,
      );
    }).toList();
  }
}
