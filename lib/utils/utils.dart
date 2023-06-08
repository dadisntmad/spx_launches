import 'package:intl/intl.dart';

String getFormattedDate(String date) {
  String result = '';

  final parsed = DateTime.tryParse(date);

  if (parsed != null) {
    final day = DateFormat('d').format(parsed);
    final month = DateFormat('MM').format(parsed);
    final year = DateFormat('yyyy').format(parsed);

    result = '$day/$month/$year';
  }
  return result;
}

String getFormattedTime(String time) {
  String result = '';

  final parsed = DateTime.tryParse(time);

  if (parsed != null) {
    final time = DateFormat('hh:mm a').format(parsed);

    result = time;
  }

  return result;
}
