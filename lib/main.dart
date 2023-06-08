import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex_launches/home_screen.dart';
import 'package:spacex_launches/providers/data_provider.dart';
import 'package:spacex_launches/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SpaceX Launches',
        theme: AppTheme.theme,
        home: const HomeScreen(),
      ),
    );
  }
}
