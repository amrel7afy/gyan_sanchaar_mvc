import 'package:intl/intl.dart';

unixToDDMMYYYY(String timestamp) {
  try {
    DateTime dateTime = DateTime.parse(
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000)
            .toString());
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}

unixToDDMMMYYYY(timestamp) {
  try {
    DateTime dateTime = DateTime.parse(
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000)
            .toString());
    var formatter = new DateFormat('dd-MMM-yyyy');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}

unixToHHMMA(timestamp) {
  try {
    DateTime dateTime = DateTime.parse(
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000)
            .toString());
    var formatter = new DateFormat('hh:mm a');
    String formattedTimes = formatter.format(dateTime);
    return formattedTimes;
  } catch (e) {
    return "Invalid";
  }
}

unixToDDMMYYYYHHMMA(timestamp) {
  try {
    DateTime dateTime = DateTime.parse(
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000)
            .toString());
    var formatter = new DateFormat('dd-MM-yyyy hh:mm a');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}

unixToDDMMMYYYYHHMMA(timestamp) {
  try {
    DateTime dateTime = DateTime.parse(
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000)
            .toString());
    var formatter = new DateFormat('dd-MMM-yyyy hh:mm a');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}

int dateTimeToUnix({required DateTime date}) {
  // print(timestamp);
  return ((date.toUtc().millisecondsSinceEpoch) ~/ 1000).toInt();
}

DateTime stringToDDMMMYYYY({required String date}) {
  var formatter = new DateFormat('dd-MMM-yyyy');
  return formatter.parse(date);
}

// DateTime stringToDDMMMYYYY({required String date}) {
//   var formatter = new DateFormat('dd-MMM-yyyy');
//   return formatter.parse(date);
// }

String DateTimeToDDMMMMYYYYHHMMA({required DateTime dateTime}) {
  var formatter = new DateFormat('dd-MMMM-yyyy hh:mm a');
  return formatter.format(dateTime);
}

String DateTimeToDDMMMYYYYHHMMA({required DateTime dateTime}) {
  var formatter = new DateFormat('dd-MMM-yyyy hh:mm a');
  return formatter.format(dateTime);
}

String DateTimeToDDMMMYYYY({required DateTime dateTime}) {
  var formatter = new DateFormat('dd-MMM-yyyy');
  return formatter.format(dateTime);
}

String splitDate(String inputString) {
  String date = '';
  List<String> splitString = inputString.split('  ');

  if (splitString.length == 2) {
    date = splitString[0].trim();
  }

  return date;
}

String splitDateTime(String inputString) {
  String date = '';
  List<String> splitString = inputString.split(' ');

  if (splitString.length == 3) {
    date = splitString[0].trim() +
        "\n" +
        splitString[1].trim() +
        " " +
        splitString[2].trim().toUpperCase();
  }

  return date;
}

String splitTime(String inputString) {
  String time = '';
  List<String> splitString = inputString.split('  ');

  if (splitString.length == 2) {
    time = splitString[1].trim();
  }
  return time;
}

String splitDate1(String inputString) {
  String date = '';
  List<String> splitString = inputString.split(' ');

  if (splitString.length == 3) {
    date = splitString[0].trim();
  }

  return date;
}

String splitTime1(String inputString) {
  String time = '';
  List<String> splitString = inputString.split(' ');

  if (splitString.length == 3) {
    time = splitString[1].trim() + " " + splitString[2].trim();
  }
  return time;
}

String StingToDDMMMYYYY(String date) {
  try {
    var formatter = new DateFormat('dd-MMM-yyyy');
    String formattedDate = formatter.format(DateTime.parse(date));
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}

String StingToDDMMMYYYYHHMMA(String date) {
  try {
    var formatter = new DateFormat('dd-MMM-yyyy hh:mm a');
    String formattedDate = formatter.format(DateTime.parse(date));
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}
