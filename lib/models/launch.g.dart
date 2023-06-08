// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) => Launch(
      missionName: json['mission_name'] as String,
      launchYear: json['launch_year'] as String,
      launchDateUtc: json['launch_date_utc'] as String,
      launchDateLocal: json['launch_date_local'] as String,
      rocket: LaunchRocket.fromJson(json['rocket'] as Map<String, dynamic>),
      launchSite:
          LaunchSite.fromJson(json['launch_site'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'mission_name': instance.missionName,
      'launch_year': instance.launchYear,
      'launch_date_utc': instance.launchDateUtc,
      'launch_date_local': instance.launchDateLocal,
      'rocket': instance.rocket,
      'launch_site': instance.launchSite,
      'links': instance.links,
    };
