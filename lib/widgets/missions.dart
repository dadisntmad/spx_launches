import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_launches/theme/theme.dart';

class Missions extends StatelessWidget {
  const Missions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: double.infinity,
              height: 96,
              decoration: BoxDecoration(
                color: Palette.missionBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10/06/2023',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Palette.accentColor,
                            ),
                          ),
                        ),
                        Text(
                          '06:34 PM',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Palette.captionColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Starlink Group 2-10',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Palette.titleColor,
                            ),
                          ),
                        ),
                        Text(
                          'Kwajalein Atoll Omelek Island',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Palette.fontColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
