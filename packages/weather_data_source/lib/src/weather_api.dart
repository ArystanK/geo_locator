import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather_data_sourse/src/model/weather_dto.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: "http://api.weatherapi.com/v1/")
abstract class WeatherApi {
  factory WeatherApi() => _WeatherApi(Dio());

  @GET("/current.json")
  Future<WeatherDto> getWeather(
    @Query("key") String apiKey,
    @Query("q") String location,
  );
}
