import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://example.com/api/items";

  Future<http.Response> getItems() => http.get(Uri.parse(baseUrl));
  Future<http.Response> createItem(Map<String, dynamic> data) =>
      http.post(Uri.parse(baseUrl), body: data);
  Future<http.Response> updateItem(String id, Map<String, dynamic> data) =>
      http.put(Uri.parse('$baseUrl/$id'), body: data);
  Future<http.Response> deleteItem(String id) =>
      http.delete(Uri.parse('$baseUrl/$id'));
}
