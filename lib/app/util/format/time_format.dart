import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzdata;

class TimeFormat {
  static String formatDate(String? inputDate) {
    // Parse the input date string into a DateTime object
    DateTime parsedDate = DateTime.tryParse(inputDate ?? "") ?? DateTime.now();

    // Create a DateFormat for the desired output format
    DateFormat outputFormat = DateFormat('dd/MM/yyyy');

    // Format the DateTime into the desired format
    String formattedDate = outputFormat.format(parsedDate);

    return formattedDate;
  }

  static String formatDateTime(String? inputDate, {String desiredTimeZone = "America/New_York"}) {
    // Parse the input date string into a DateTime object
    DateTime parsedDate = DateTime.tryParse(inputDate ?? "") ?? DateTime.now();

    tzdata.initializeTimeZones();

    // Set the desired time zone
    final tz.Location location = tz.getLocation(desiredTimeZone);

    // Get the current UTC time
    final DateTime utcNow = parsedDate.toUtc();

    // Format the UTC time with time zone abbreviation in parentheses

    // Convert UTC time to the desired time zone
    final tz.TZDateTime desiredTime = tz.TZDateTime.from(utcNow, location);

    // Format the time in the desired time zone with time zone abbreviation in parentheses
    String formattedDateTime =
        '${DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(desiredTime)} (${desiredTime.timeZoneName})';

    return formattedDateTime;
  }

  static String formatTime(String? inputDate) {
    // Parse the input date string into a DateTime object

    DateTime dateTime = DateTime.parse(inputDate ?? "");

    // Format the DateTime to 'h:mm' format
    String formattedTime = DateFormat('H:mm').format(dateTime);

    return formattedTime;
  }
}
