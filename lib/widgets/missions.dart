import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:spacex_launches/providers/data_provider.dart';
import 'package:spacex_launches/theme/theme.dart';
import 'package:spacex_launches/utils/utils.dart';
import 'package:spacex_launches/widgets/widgets.dart';

class Missions extends StatefulWidget {
  const Missions({Key? key}) : super(key: key);

  @override
  State<Missions> createState() => _MissionsState();
}

class _MissionsState extends State<Missions> {
  @override
  void initState() {
    super.initState();
    context.read<DataProvider>().getLaunches();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DataProvider>();

    return model.isLoading
        ? const Loader()
        : Expanded(
            child: ListView.builder(
              itemCount: model.launches.length,
              itemBuilder: (BuildContext context, int index) {
                return _MissionsList(index: index);
              },
            ),
          );
  }
}

class _MissionsList extends StatelessWidget {
  final int index;

  const _MissionsList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<DataProvider>();
    final launch = model.launches[index];

    return GestureDetector(
      onTap: () {
        model.openRocketLaunchInBrowser(launch.links.wikipedia.toString());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        height: 96,
        decoration: BoxDecoration(
          color: Palette.missionBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getFormattedDate(launch.launchDateLocal),
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Palette.accentColor,
                        ),
                      ),
                    ),
                    Text(
                      getFormattedTime(launch.launchDateLocal),
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
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      launch.missionName,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Palette.titleColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        launch.launchSite.siteNameLong,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Palette.fontColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
