import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:flutter/cupertino.dart';

class Utils {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height / 844;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width / 390;
  }

  static String numberFormat(int k) {
    if (k > 9) {
      return k.toString();
    } else {
      return "0$k";
    }
  }

  static String getMonthFormat(DateTime dateTime) {
    return "${numberFormat(dateTime.day)}-${monthFormat(dateTime.month)}";
  }

  static String getHourFormat(DateTime dateTime) {
    return "${numberFormat(dateTime.hour)}:${numberFormat(dateTime.minute)}:${numberFormat(dateTime.second)}";
  }

  static Color getColor(int type) {
    return type == 1
        ? AppColor.green50
        : type == 2
            ? AppColor.red
            : type == 3
                ? AppColor.blue
                : AppColor.yellow;
  }

  static String monthFormat(int n) {
    if (n == 1) {
      return "January";
    }
    if (n == 2) {
      return "February";
    }
    if (n == 3) {
      return "March";
    }
    if (n == 4) {
      return "April";
    }
    if (n == 5) {
      return "May";
    }
    if (n == 6) {
      return "June";
    }
    if (n == 7) {
      return "July";
    }
    if (n == 8) {
      return "August";
    }
    if (n == 9) {
      return "September";
    }
    if (n == 10) {
      return "October";
    }
    if (n == 11) {
      return "November";
    } else {
      return "December";
    }
  }
}
