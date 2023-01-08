import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/forecast.json?key=b49ce01f5f8c48a6a59194402230401&q=$city&days=1&aqi=no&alerts=no');

    return response.data;
  }
}
