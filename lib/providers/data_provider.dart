import 'package:flutter/material.dart';
import 'package:spacex_launches/api_client/api_client.dart';
import 'package:spacex_launches/models/models.dart';

class DataProvider extends ChangeNotifier {
  final _apiClient = ApiClient();

  List<Rocket> _rockets = [];
  List<Rocket> get rockets => _rockets;

  List<Launch> _launches = [];
  List<Launch> get launches => _launches;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  int currentIndex = 0;

  Future<void> getRockets() async {
    _isLoading = true;

    _rockets = await _apiClient.fetchRockets();

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getLaunches({String rocketName = 'Falcon 1'}) async {
    _isLoading = true;

    final response = await _apiClient.fetchLaunches();

    final filteredLaunches = response
        .where((launch) => launch.rocket.rocketName == rocketName)
        .toList();

    _launches = filteredLaunches;

    _isLoading = false;

    notifyListeners();
  }

  void getDataOnIndexChanged(int index, String rocketName) {
    currentIndex = index;
    getLaunches(rocketName: rocketName);
  }
}
