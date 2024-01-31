import 'dart:convert';
// import 'package:fast_api/data/data_providers/http/api_urls.dart';
import 'package:http/http.dart' as http;

import 'api_urls.dart';

class MyHttpClient {
  final String baseUrl = BASE_URL;
  final Map<String, String> headers = {'Content-Type': 'application/json'};


  Future<http.Response> get(String path) async {
    final response = await http.get(
        Uri.parse('$baseUrl/$path'), headers: headers);
    return response;
  }

  Future<dynamic> post(String path,
      {required Map<String, dynamic> body}) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$path'),
      headers: headers,
      body: jsonEncode(body),
    );
    return response;
  }

//   String _handleResponse(http.Response response) {
//     if (response.statusCode >= 200 && response.statusCode < 300) {
//
//       return response.body;
//     } else {
//       // Handle errors
//       throw Exception('Request failed with status: ${response.statusCode}');
//     }
//   }
// }

// Example usage:


}