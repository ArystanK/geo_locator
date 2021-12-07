import 'package:json_annotation/json_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDto {
  LocationDto location;
  CurrentDto current;

  WeatherDto(this.location, this.current);

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDtoToJson(this);
}

@JsonSerializable()
class CurrentDto {
  @JsonKey(ignore: true)
  int? lastUpdatedEpoch;

  @JsonKey(ignore: true)
  String? lastUpdated;

  double tempC;

  @JsonKey(ignore: true)
  double? tempF;

  @JsonKey(ignore: true)
  int? isDay;

  ConditionDto condition;

  @JsonKey(ignore: true)
  double? windMph;

  @JsonKey(ignore: true)
  double? windKph;

  @JsonKey(ignore: true)
  int? windDegree;

  @JsonKey(ignore: true)
  String? windDir;

  @JsonKey(ignore: true)
  double? pressureMb;

  @JsonKey(ignore: true)
  double? pressureIn;

  @JsonKey(ignore: true)
  double? precipMm;

  @JsonKey(ignore: true)
  double? precipIn;

  @JsonKey(ignore: true)
  int? humidity;

  @JsonKey(ignore: true)
  int? cloud;

  double feelslikeC;

  @JsonKey(ignore: true)
  double? feelslikeF;

  @JsonKey(ignore: true)
  double? visKm;

  @JsonKey(ignore: true)
  double? visMiles;

  @JsonKey(ignore: true)
  double? uv;

  @JsonKey(ignore: true)
  double? gustMph;

  @JsonKey(ignore: true)
  double? gustKph;


  CurrentDto(this.tempC, this.condition, this.feelslikeC);

  factory CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentDtoToJson(this);
}

@JsonSerializable()
class ConditionDto {
  String text;

  @JsonKey(ignore: true)
  String? icon;

  @JsonKey(ignore: true)
  int? code;

  ConditionDto(this.text);

  factory ConditionDto.fromJson(Map<String, dynamic> json) =>
      _$ConditionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionDtoToJson(this);
}

@JsonSerializable()
class LocationDto {
  String name;
  String region;
  String country;

  @JsonKey(ignore: true)
  double? lat;

  @JsonKey(ignore: true)
  double? lon;

  @JsonKey(ignore: true)
  String? tzId;

  @JsonKey(ignore: true)
  int? localtimeEpoch;

  @JsonKey(ignore: true)
  String? localtime;

  LocationDto(this.name, this.region, this.country);

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDtoToJson(this);
}
