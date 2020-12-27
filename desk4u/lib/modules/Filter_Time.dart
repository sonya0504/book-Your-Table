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
                minimumDate: _dateTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (dateTime){
                print('start $dateTime');
                setState(() {
                  _startTimeReservation = dateTime.toIso8601String();
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
                minimumDate: _dateTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (dateTime){
                  print('end $dateTime');
                  setState(() {
                    _endTimeReservation = dateTime.toIso8601String();
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
                Navigator.of(context).pop('Start: $_startTimeReservation, End: $_endTimeReservation');
              },
              color: Theme.of(context).accentColor,
              child: Text(
                  'Zarezerwuj',
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