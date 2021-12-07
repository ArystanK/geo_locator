// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => WeatherDto(
      LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      CurrentDto.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDtoToJson(WeatherDto instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

CurrentDto _$CurrentDtoFromJson(Map<String, dynamic> json) => CurrentDto(
      (json['temp_c'] as num).toDouble(),
      ConditionDto.fromJson(json['condition'] as Map<String, dynamic>),
      (json['feelslike_c'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentDtoToJson(CurrentDto instance) =>
    <String, dynamic>{
      'tempC': instance.tempC,
      'condition': instance.condition,
      'feelslikeC': instance.feelslikeC,
    };

ConditionDto _$ConditionDtoFromJson(Map<String, dynamic> json) => ConditionDto(
      json['text'] as String,
    );

Map<String, dynamic> _$ConditionDtoToJson(ConditionDto instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => LocationDto(
      json['name'] as String,
      json['region'] as String,
      json['country'] as String,
    );

Map<String, dynamic> _$LocationDtoToJson(LocationDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
    };
