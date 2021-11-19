import 'dart:convert';

import 'package:bloc_example/data/data_providers/weather_data_provider.dart';
import 'package:bloc_example/data/models/weather.dart';
import 'package:http/http.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider = WeatherDataProvider();

  Future<Weather> getWeather(String location) async {
    final Response rawWeather =
        await weatherDataProvider.getRawWeatherData(location);
    final Weather weather = Weather.fromJson(rawWeather.body);
    return weather;
  }
}