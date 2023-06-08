// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchRocket _$LaunchRocketFromJson(Map<String, dynamic> json) => LaunchRocket(
      rocketName: json['rocket_name'] as String,
      rocketType: json['rocket_type'] as String,
    );

Map<String, dynamic> _$LaunchRocketToJson(LaunchRocket instance) =>
    <String, dynamic>{
      'rocket_name': instance.rocketName,
      'rocket_type': instance.rocketType,
    };
