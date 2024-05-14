import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  fetchAndDisplayJoke();
}

Future<void> fetchAndDisplayJoke() async {
  try {
    final joke = await fetchJoke();
    print('');
    print('Random Joke');
    print('${joke['setup']}');
    print('${joke['punchline']}');
    print('');
    print("Press Enter for another joke...");
    await stdin.readLineSync(); // Wait for user input to continue
    fetchAndDisplayJoke(); // Fetch and display another joke
  } catch (error) {
    print('Error fetching joke: $error');
  }
}

Future<Map<String, dynamic>> fetchJoke() async {
  final response = await http.get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch joke');
  }
}
