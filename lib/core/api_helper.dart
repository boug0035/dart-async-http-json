import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  final String url =
      'https://random-data-api.com/api/users/random_user?size=10';

  Future<List<Map<String, dynamic>>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return List<Map<String, dynamic>>.from(json.decode(response.body));
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Error fetching users: $e');
    }
  }
}
