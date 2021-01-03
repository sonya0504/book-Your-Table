import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FilterTime extends StatefulWidget {
  @override
  _FilterTimeState createState() => _FilterTimeState();
}

class _FilterTimeState extends State<FilterTime> {

  DateTime _dateTime = DateTime.now();

  String _startTimeReservation;
  String _endTimeReservation;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Wybierz godzinę rozpoczęcia:',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 120.0,
            width: 120.0,
            child: CupertinoDatePicker(
              initialDateTime: _dateTime,
                use24hFormat: true,
                // minimumDate: _dateTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (dateTime){
                  setState(() {
                  _startTimeReservation = dateTime.toIso8601String().substring(11,16);
                });
                }
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Wybierz godzinę zakończenia:',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 120.0,
            width: 120.0,
            child: CupertinoDatePicker(
                initialDateTime: _dateTime,
                use24hFormat: true,
                // minimumDate: _dateTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (dateTime){
                  setState(() {
                    _endTimeReservation = dateTime.toIso8601String().substring(11,16);
                  });
                }
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Align(
          alignment: Alignment.center,
          child: RaisedButton(
              onPressed: (){
                Navigator.of(context).pop('$_startTimeReservation - $_endTimeReservation');
              },
              color: Theme.of(context).accentColor,
              child: Text(
                  'Wybierz',
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
            ),
        ),
      ],
    );
  }
}