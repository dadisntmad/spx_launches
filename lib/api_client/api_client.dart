import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacex_launches/models/models.dart';

class ApiClient {
  final _httpClient = http.Client();

  static const _rocketsBaseUrl = 'https://api.spacexdata.com/v3/rockets';
  static const _launchesBaseUrl = 'https://api.spacexdata.com/v3/launches';

  Future<List<Rocket>> fetchRockets() async {
    final response = await _httpClient.get(Uri.parse(_rocketsBaseUrl));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) as List;

      return result.map((rocket) => Rocket.fromJson(rocket)).toList();
    } else {
      throw Exception('Failed to load rockets.');
    }
  }

  Future<List<Launch>> fetchLaunches() async {
    final response = await _httpClient.get(Uri.parse(_launchesBaseUrl));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) as List;

      return result.map((launch) => Launch.fromJson(launch)).toList();
    } else {
      throw Exception('Failed to load launches.');
    }
  }
}
