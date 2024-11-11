// services/api_service.dart

import 'dart:convert';
import 'package:example_api/PremierLeaguemodel.dart';
import 'package:example_api/makananmodel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = '';

  Future<List<Category>> fetchPosts() async {
    final response = await http.get(
        Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> teamsJson = data['categories'];
      return teamsJson.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
