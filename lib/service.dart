import 'package:http/http.dart' as http;

class DataService {
  void getWeather(String city) async {
    final queryParametrs = {
      'q' : city, 
      'appid': '37279a3be9eb5678a378e453112f694d',
    };

    final uri = Uri.https('api.openweathermap.org', 'data/2.5/weather', queryParametrs);

    final response = await http.get(uri);

    print(response.body);
  }
}