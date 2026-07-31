import 'package:http/http.dart' as http;
import 'dart:convert';

/// Requests short, actionable savings advice from OpenRouter.
///
/// The API key is supplied at build/run time and must never be committed:
///   flutter run --dart-define=OPENROUTER_API_KEY=your_key_here
/// Grab a free key at https://openrouter.ai/keys
class ApiService {
  static const _baseUrl = 'https://openrouter.ai/api/v1/chat/completions';
  static const _apiKey = String.fromEnvironment('OPENROUTER_API_KEY');

  Future<http.Response> fetchAdvice(double moneySaved, String goalDate, double pace, String goal) {
    final int currentYear = DateTime.now().year;
    final int currentDay = DateTime.now().day;
    final int currentMonth = DateTime.now().month;
    final uri = Uri.parse(_baseUrl);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey',
    };
    final body = jsonEncode({
      'model': 'deepseek/deepseek-r1:free',
      'messages': [
        {
          'role': 'user',
          'content': 'Currently I have saved Rp $moneySaved, I am saving at the rate of Rp $pace per month, my goal is to save Rp $goal by $goalDate, today is $currentDay $currentMonth $currentYear. Give me 20 words or less detailed actionable advice for me to reach my goal. Be to the point no need to add any excess characters like \'*\' or \'(20 words)\'. Use English.'
        }
      ],
    });

    return http.post(uri, headers: headers, body: body);
  }
}