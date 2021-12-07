import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_data_source/src/weather_api.dart';

void main() {
  test(
      "Check if we can get the weather data for a valid town with a valid api key",
      () async {
    WeatherApi weatherApi = WeatherApi();
    String result;
    try {
      await weatherApi.getWeather(
          "27e813d9c89f40bca9c73123210712", "Ekibastuz");
      result = "Success";
    } on DioError {
      result = "Exception was thrown";
    }
    expect(result, "Success");
  });
  test(
      "Check if we can get the weather data for an invalid api key and valid town",
      () async {
    WeatherApi weatherApi = WeatherApi();
    String result;
    try {
      await weatherApi.getWeather("Wrong", "Ekibastuz");
      result = "Success";
    } on DioError {
      result = "Dio error was thrown";
    }
    expect(result, "Dio error was thrown");
  });
}
