import 'package:intl/intl.dart';

class dateTimeHelper {
  String getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(now);
  }

  String getCurrentTime() {
    var now = DateTime.now();
    var formatter = DateFormat('h:mm a');
    return formatter.format(now);
  }

  static String getCurrentDateTime() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd h:mm a');
    return formatter.format(now);
  }
}
