import 'dart:convert';

import '../model/weather_response.dart';
import 'package:http/http.dart' as http;


class ApiClient {
  ApiClient._();

  static final ApiClient initance = ApiClient._();

  Future<WeatherResponse> getWeather() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.https(
          "api.openweathermap.org",
          "/data/2.5/weather",
          {
            "q": "tashkent,uz",
            "units": "metric",
            "appid": "8118ed6ee68db2debfaaa5a44c832918"
          },
        ),
      );
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      return WeatherResponse.fromJson(decodedResponse);
    } finally {
      client.close();
    }
  }
}
