import 'package:json_annotation/json_annotation.dart';
import 'package:spacex_launches/models/launch_rocket.dart';
import 'package:spacex_launches/models/models.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch {
  @JsonKey(name: 'mission_name')
  final String missionName;
  @JsonKey(name: 'launch_year')
  final String launchYear;
  @JsonKey(name: 'launch_date_utc')
  final String launchDateUtc;
  @JsonKey(name: 'launch_date_local')
  final String launchDateLocal;
  final LaunchRocket rocket;
  @JsonKey(name: 'launch_site')
  final LaunchSite launchSite;
  final Links links;

  Launch({
    required this.missionName,
    required this.launchYear,
    required this.launchDateUtc,
    required this.launchDateLocal,
    required this.rocket,
    required this.launchSite,
    required this.links,
  });

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchToJson(this);
}
