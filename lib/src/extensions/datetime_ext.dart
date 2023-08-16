import 'package:jiffy/jiffy.dart';

extension Converting on DateTime {
  Jiffy toJiffy() => Jiffy.parseFromDateTime(this);

  bool isDateBefore(DateTime other) {
    return _compare(other) < 0;
  }

  bool isDateAfter(DateTime other) {
    return _compare(other) > 0;
  }

  int _compare(DateTime other) {
    var cmp = year - other.year;
    if (cmp == 0) {
      cmp = month - other.month;
      if (cmp == 0) {
        cmp = day - other.day;
      }
    }
    return cmp;
  }
}
