import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_launches/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceX Launches'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Carousel(),
            const SizedBox(height: 24),
            Text(
              'Missions',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Missions(),
          ],
        ),
      ),
    );
  }
}
