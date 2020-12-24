import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class FilterCalendar extends StatefulWidget {
  @override
  _FilterCalendarState createState() => _FilterCalendarState();
}

class _FilterCalendarState extends State<FilterCalendar> {

  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return TableCalendar(
      calendarController: _calendarController,
      locale: 'pl_PL',
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        todayColor: Theme.of(context).primaryColor,
        todayStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18.0,
          color: Colors.white,
        ),
        selectedColor: Theme.of(context).accentColor,
        selectedStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
      onDaySelected: (date, events, _) {
        print(date.toIso8601String());
      },
    );
  }
}
