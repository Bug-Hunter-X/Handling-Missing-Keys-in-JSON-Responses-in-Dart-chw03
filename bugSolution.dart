```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final someKeyValue = jsonData['someKey'];

      // Check if the key exists before accessing it
      if (someKeyValue != null) {
        print('someKey: $someKeyValue');
      } else {
        print('someKey not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```