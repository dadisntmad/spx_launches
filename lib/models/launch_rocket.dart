import 'package:json_annotation/json_annotation.dart';

part 'launch_rocket.g.dart';

@JsonSerializable()
class LaunchRocket {
  @JsonKey(name: 'rocket_name')
  final String rocketName;
  @JsonKey(name: 'rocket_type')
  final String rocketType;

  LaunchRocket({
    required this.rocketName,
    required this.rocketType,
  });

  factory LaunchRocket.fromJson(Map<String, dynamic> json) =>
      _$LaunchRocketFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchRocketToJson(this);
}
