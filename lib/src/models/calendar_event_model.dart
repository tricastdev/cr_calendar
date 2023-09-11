import 'package:cr_calendar/src/enums/event_priority.dart';
import 'package:flutter/material.dart';

final class CalendarEventModel {
  CalendarEventModel({
    required this.name,
    required this.begin,
    required this.end,
    this.eventColor = Colors.green,
    this.priority = EventPriority.low,
    this.requiresHighlight = false,
  });

  String name;
  DateTime begin;
  DateTime end;
  Color eventColor;
  EventPriority priority;
  bool requiresHighlight;
}
