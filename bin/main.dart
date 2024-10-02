import 'package:exc_4/core/api_helper.dart';
import 'package:exc_4/domain/user_service.dart';

void main() async {
  final ApiHelper apiHelper = ApiHelper();
  final UserService userService = UserService(apiHelper);

  try {
    List users = await userService.getUsers();
    for (var user in users) {
      print(user);
    }
  } catch (e) {
    print('Error: $e');
  }
}
