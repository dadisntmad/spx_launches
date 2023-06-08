import 'package:flutter/material.dart';
import 'package:spacex_launches/theme/theme.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 3,
        color: Palette.accentColor,
      ),
    );
  }
}
