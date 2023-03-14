import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<dynamic> register({
    required String name,
    required String registrationNumber,
    required String branch,
    required String phoneNumber,
    required String email,
    required String password,
    required String batch,
  }) async {
    final response = await http.post(
      Uri.parse('https://zairza-app-server.vercel.app/auth/register'),
      body: {
        'name': name,
        'registration_number': registrationNumber,
        'branch': branch,
        'phone_number': phoneNumber,
        'email': email,
        'password': password,
        'batch': batch,
      },
    );
    final responseData = json.decode(response.body);
    return responseData;
  }

  Future<dynamic> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('https://zairza-app-server.vercel.app/auth/login'),
      body: {
        'email': email,
        'password': password,
      },
    );
    final responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      final token = responseData['token'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
      return true;
    } else {
      return false;
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return token;
  }

  Future<bool> isAuthenticated() async {
    final token = await getToken();
    return token != null;
  }
}
