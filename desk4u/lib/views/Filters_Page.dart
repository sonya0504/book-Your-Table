import 'package:flutter/material.dart';
import 'package:desk4u/modules/Filter_Calendar.dart';

class FiltersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Dzień'),
                    IconButton(
                      icon: Icon(Icons.arrow_drop_down_sharp),
                    ),
                  ],
                ),
                    FilterCalendar(),
              ],
            ),
          )
        ],
      )
    );
  }
}
