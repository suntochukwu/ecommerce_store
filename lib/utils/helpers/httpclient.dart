import 'package:http/http.dart' as http;
import 'dart:convert';

class ThttpHelper {
  static const String base_url = 'https://www.asdsd.com';

  // GET REQUEST
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$base_url/$endpoint'));
    return _handleResponse(response);
  }

//POST REQUEST
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse('$base_url/$endpoint'),
        headers: {'Content-Type': 'application-json'}, body: json.encode(data));
    return _handleResponse(response);
  }

  //PUT REQUEST
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse('$base_url/$endpoint'),
        headers: {'Content-Type': 'application-json'}, body: json.encode(data));
    return _handleResponse(response);
  }

//DELETE REQUEST
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$base_url/$endpoint'));
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response callresponse) {
    if (callresponse.statusCode == 200) {
      return json.decode(callresponse.body);
    } else {
      throw Exception('failed to load data ${callresponse.statusCode}');
    }
  }
}
