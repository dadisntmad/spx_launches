// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) => Rocket(
      country: json['country'] as String,
      company: json['company'] as String,
      rocketName: json['rocket_name'] as String,
      rocketType: json['rocket_type'] as String,
      flickrImages: (json['flickr_images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'country': instance.country,
      'company': instance.company,
      'rocket_name': instance.rocketName,
      'rocket_type': instance.rocketType,
      'flickr_images': instance.flickrImages,
    };
