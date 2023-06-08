import 'package:json_annotation/json_annotation.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket {
  final String country;
  final String company;
  @JsonKey(name: 'rocket_name')
  final String rocketName;
  @JsonKey(name: 'rocket_type')
  final String rocketType;
  @JsonKey(name: 'flickr_images')
  final List<String> flickrImages;

  const Rocket({
    required this.country,
    required this.company,
    required this.rocketName,
    required this.rocketType,
    required this.flickrImages,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  Map<String, dynamic> toJson() => _$RocketToJson(this);
}
