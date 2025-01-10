import 'dart:convert';

extension MapStringExtension on Map<String, dynamic> {
  Map<String, dynamic> cleanJson() {
    // Convert the map to a JSON string and then back to a map
    // to fix issues when converting a Model to Entity
    return jsonDecode(jsonEncode(this));
  }
}
